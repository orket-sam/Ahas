import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prefs_app/counter.dart';
import 'package:prefs_app/preferences.dart';
import 'dart:math';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}

class HomePage extends ConsumerWidget {
  final scrollProvider = StateProvider(((ref) => false));
  final counterProvider =
      StateNotifierProvider<Counter, int>(((ref) => Counter()));
  HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isScrolling = ref.watch(scrollProvider);
    return Scaffold(
      floatingActionButton: !isScrolling
          ? Consumer(
              builder: ((context, ref, child) => FloatingActionButton.extended(
                  backgroundColor: Colors.green,
                  label: const Text('Increment'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: (() =>
                      ref.read(counterProvider.notifier).increment()))))
          : null,
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: (() => ref.read(counterProvider.notifier).reset()),
              child: const Text(
                'Reset',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          if (notification.direction == ScrollDirection.forward ||
              notification.direction == ScrollDirection.reverse) {
            ref.read(scrollProvider.notifier).state = true;
          } else {
            ref.read(scrollProvider.notifier).state = false;
          }
          return true;
        },
        child: Column(
          children: [
            Consumer(builder: ((context, ref, child) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(ref.watch(counterProvider).toString()),
                ),
              );
            })),
            Expanded(
              child: ListView(
                children: List.generate(
                    40,
                    (index) => Container(
                        height: 200,
                        color: Color.fromRGBO(Random().nextInt(256),
                            Random().nextInt(256), Random().nextInt(256), 1),
                        child: Text('!!!!!'))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
