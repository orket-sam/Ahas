import 'package:example_1/second.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

Stream<DateTime> getTime() async* {
  while (true) {
    yield DateTime.now();
    await Future.delayed(const Duration(seconds: 1));
  }
}

final localStream = StreamProvider<DateTime>((_) => getTime());
final timeProvider = StreamProvider<DateTime>(((ref) => Stream.periodic(
    const Duration(seconds: 1), ((computationCount) => DateTime.now()))));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          drawer: Drawer(
            child: Builder(builder: (context) {
              return Column(
                children: [
                  IconButton(
                      onPressed: (() {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => const HomeScreen())));
                      }),
                      icon: const Icon(Icons.home))
                ],
              );
            }),
          ),
          body: Stack(
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                    // width: 100,
                    color: Colors.purpleAccent,
                  )),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Center(
                        child: ref.watch(localStream).when(
                            data: ((data) => Text(
                                  DateFormat().format(data),
                                  style: const TextStyle(
                                      fontSize: 25,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold),
                                )),
                            error: ((error, stackTrace) =>
                                Text(error.toString())),
                            loading: (() =>
                                const CircularProgressIndicator()))),
                    // width: 100,
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Builder(builder: (context) {
                      return IconButton(
                          onPressed: (() {
                            Scaffold.of(context).openDrawer();
                          }),
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                          ));
                    }),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
