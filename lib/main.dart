import 'package:flutter/material.dart';
import 'package:flutter_basics/View/StagePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Hello World Travel App", //'Flutter basics',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TravelPage()
        //Stage(name: "Flutter Basics"),
        );
  }
}

class TravelPage extends StatefulWidget {
  const TravelPage({Key? key}) : super(key: key);

  @override
  State<TravelPage> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
  void contactUs({required BuildContext context}) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Contact Us"),
            content: Text("Send E-mail to sucker@crap.com"),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    print("Sent Email");
                  },
                  child: Text("Close"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Hello World Travel App"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Hello World Travel",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800]),
                ),
                Text(
                  "Discover the world",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple),
                ),
                Image.network(
                  "https://cdn.mos.cms.futurecdn.net/PTmw2FetAK9jgNJ9TqLHFj-1200-80.jpg",
                  height: 350,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: MaterialButton(
                    onPressed: () {
                      contactUs(context: context);
                      print("Button was pressed!");
                    },
                    child: Text(
                      "Enter",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    color: Colors.blue[800],
                    height: 75,
                    minWidth: MediaQuery.of(context).size.width,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
