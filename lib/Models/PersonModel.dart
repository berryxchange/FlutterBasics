//template
import 'package:flutter/material.dart';

abstract class Person {
  String name;
  int age;
  Color color;
  Person({required this.name, required this.age, required this.color});
}
