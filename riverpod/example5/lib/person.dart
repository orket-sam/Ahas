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

  // @override
  // bool operator ==(covariant Person other) => other.uuid == uuid;

  // @override
  // int get hashCode => uuid.hashCode;
}

class DataModel extends ChangeNotifier {
  final List<Person> _people = [];
  int get count => _people.length;
  UnmodifiableListView<Person> get people => UnmodifiableListView(_people);

  // Add person
  void add(Person newPerson) {
    _people.add(newPerson);
    notifyListeners();
  }

  // Update person
  void updatePerson(Person updatedPerson, int index) {
    final oldPerson = _people[index];
    if (oldPerson.name != updatedPerson.name ||
        oldPerson.age != updatedPerson.age) {
      _people[index] = oldPerson.update(updatedPerson.name, updatedPerson.age);
      notifyListeners();
    }
  }
}

// App dialog
Future<Person?> createOrUpdatePersonDialog(
    Person? existingPerson, BuildContext context) {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  String? name = existingPerson?.name;
  int? age = existingPerson?.age;
  nameController.text = name ?? '';
  ageController.text = age?.toString() ?? '';
  return showDialog<Person?>(
      context: context,
      builder: ((context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration:
                    const InputDecoration(labelText: 'Enter name here..'),
                controller: nameController,
                onChanged: (value) => name = value,
              ),
              TextField(
                decoration:
                    const InputDecoration(labelText: 'Enter age here..'),
                controller: ageController,
                onChanged: ((value) => age = int.tryParse(value)),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: (() {
                if (name != null && age != null) {
                  Person newPerson;
                  if (existingPerson != null) {
                    newPerson = existingPerson.update(name, age);
                  } else {
                    newPerson = Person(name: name!, age: age!);
                  }
                  Navigator.of(context).pop(newPerson);
                } else {
                  Navigator.of(context).pop();
                }
              }),
              child: const Text('Create'),
            ),
            TextButton(
                onPressed: (() => Navigator.of(context).pop()),
                child: const Text('Cancel'))
          ],
        );
      }));
}
