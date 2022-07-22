import 'package:flutter/material.dart';
import 'package:flutter_basics/Models/PersonModel.dart';
import 'package:flutter_basics/Models/PersonOfEarthModel.dart';
import 'package:flutter_basics/Models/PersonOfPluto.dart';

class Stage extends StatefulWidget {
  final String name;
  const Stage({Key? key, required this.name}) : super(key: key);

  @override
  State<Stage> createState() => _StageState();
}

class _StageState extends State<Stage> {
  late String name;
  String data = "";

//person model
  List<Person> people = [];

//void function
  void carlsVoidFunction() {
    String name = "carl";
    print(name);
  }

//unnamed function
  carlsUnnamedFunction() {
    String name = "Carl";
    //return name;
  }

//declared function
  Widget carlsDeclaredFunction() {
    String name = "Carl";
    int IntName = 10;
    var thisContainer = Container();
    return thisContainer;
  }

//parameter function,
  carlsUnnamedParameterFunction(String name) {
    //print(name);
    return name;
  }

// named function parameters
  carlsNamedParameterFunction({required String name}) {
    print(name);
  }

  @override
  void initState() {
    name = widget.name;
    people.add(plutoian);
    people.add(earthPerson);
    print("amount of people: ${people.length}");

    for (Person p in people) {
      print("this person is: ${p.name}");
    }

    //carlsVoidFunction();
    //data = carlsUnnamedFunction();
    //data = carlsDeclaredFunction();
    //data = carlsUnnamedParameterFunction("Carl is a turkey");
    //carlsNamedParameterFunction(name: "Carl is a string turkey");
    //print(data);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basics App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Color.fromARGB(255, 61, 18, 126),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
