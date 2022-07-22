import 'package:flutter/material.dart';
import 'package:flutter_basics/Models/PersonModel.dart';

class PersonOfEarth implements Person {
  String name;
  int age;
  Color color;
  bool hair;
  PersonOfEarth(
      {required this.name,
      required this.age,
      required this.color,
      required this.hair});
}

PersonOfEarth earthPerson =
    PersonOfEarth(name: "Carl", age: 25, color: Colors.brown, hair: true);
