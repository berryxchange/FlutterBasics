//person pluto
import 'package:flutter/material.dart';
import 'package:flutter_basics/Models/PersonModel.dart';

class PersonOfPluto implements Person {
  String name;
  int age;
  Color color;
  bool evenronmentAdaptationMechanism;
  PersonOfPluto(
      {required this.name,
      required this.age,
      required this.color,
      required this.evenronmentAdaptationMechanism});
}

PersonOfPluto plutoian = PersonOfPluto(
    name: "Ichibot",
    age: 130,
    color: Colors.blueGrey,
    evenronmentAdaptationMechanism: true);

//
