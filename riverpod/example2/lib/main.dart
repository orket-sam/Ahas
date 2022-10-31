import 'package:example2/counter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: HomePage(),
    );
  }
}

class HomePage extends ConsumerWidget {
  final counterProvider =
      StateNotifierProvider<Counter, int>(((ref) => Counter()));

  HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).increment();
        },
      ),
      appBar: AppBar(),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            return Text((ref.watch(counterProvider).toString()));
          },
        ),
      ),
    );
  }
}
