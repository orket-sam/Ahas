import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

@immutable
class Person {
  final String name;
  final int age;
  final String? uuid;
  Person({
    required this.name,
    required this.age,
    String? uuid,
  }) : uuid = const Uuid().v4();

  String displayMessage() => '$name $age years old';
  Person update([String? name, int? age]) =>
      Person(name: name ?? this.name, age: age ?? this.age, uuid: uuid);
}

class DataModel extends ChangeNotifier {
  final List<Person> _people = [];
  UnmodifiableListView<Person> get people => UnmodifiableListView(_people);

  // Add person
  void add(Person newPerson) {
    _people.add(newPerson);
    notifyListeners();
  }

  // Update
  void updatePerson(Person updatedPerson) {
    final index = _people.indexOf(updatedPerson);
    final oldPerson = _people[index];
    if (oldPerson.name != updatedPerson.name ||
        oldPerson.age != updatedPerson.age) {
      oldPerson.update(updatedPerson.name, updatedPerson.age);
      notifyListeners();
    }
  }
}
