import 'package:flutter/material.dart';

void main()
{
  TestClass tc = TestClass(id: 1000, name: "Hej");

  print("Id: ${tc.id}");
  print("Name: " + tc.name.toString());

}

class TestClass
{
  int? _id;
  String? _name;

  TestClass({ int? id, String? name})
  {
    this.id = id;
    this.name = name;
  }

  int? get id => _id;

  set id(int? value)
  {
    _id = value;
  }

  String? get name => _name;

  set name(String? value) {
    _name = value;
  }
}
