import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:speed_dial/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: kToDark),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: SpeedDial(
        overlayColor: Colors.purple.withOpacity(0.1),
        overlayOpacity: 0.3,
        // switchLabelPosition: true,
        direction: SpeedDialDirection.up,
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Colors.purple,
        children: [
          SpeedDialChild(
              labelStyle: const TextStyle(color: Colors.white),
              labelBackgroundColor: Colors.purple,
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
              child: const Icon(
                Icons.person_add,
              ),
              label: 'Profile'),
          SpeedDialChild(
              labelStyle: const TextStyle(color: Colors.white),
              labelBackgroundColor: Colors.purple,
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
              child: const Icon(
                Icons.phone,
              ),
              label: 'Contact'),
          SpeedDialChild(),
        ],
      ),
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: List.generate(400, (index) => const Text('hha')),
            ),
          ),
        ],
      ),
    );
  }
}
