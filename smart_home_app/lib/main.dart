import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_home_app/device_widget.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}

List<Map> data = [
  {'url': 'assets/tv.svg', 'name': 'Smart Tv', 'color': Colors.green},
  {
    'url': 'assets/ac.svg',
    'name': 'Air conditioner',
    'color': Colors.lightBlueAccent
  },
  {'url': 'assets/fan.svg', 'name': 'Fan', 'color': Colors.blue},
  {'url': 'assets/bulb.svg', 'name': 'Lights', 'color': Colors.yellow}
];

List<StateProvider<bool>> deviceProviders =
    List.generate(4, (index) => StateProvider(((ref) => false)));

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.menu),
                  Icon(CupertinoIcons.person),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Welcome to your Smart Home.'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'John Doe.',
                style: TextStyle(fontSize: 35),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Your devices.'),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 2.5 / 3,
                              crossAxisSpacing: 10,
                              crossAxisCount: 2,
                              mainAxisSpacing: 10),
                      itemCount: data.length,
                      itemBuilder: ((context, index) {
                        return DeviceWidget(
                            color: data[index]['color'],
                            prov: deviceProviders[index],
                            title: data[index]['name'] as String,
                            url: data[index]['url'] as String);
                      })))
            ],
          ),
        ),
      ),
    );
  }
}
