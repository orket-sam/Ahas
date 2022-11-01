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
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}

class HomePage extends ConsumerWidget {
  HomePage({super.key});

  final counterProvider = StateNotifierProvider<Counter, int>(((ref) {
    return Counter();
  }));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(counterProvider, ((previous, next) {
      if (next > 5) {
        showDialog(
            context: context,
            builder: ((context) {
              return AlertDialog(
                content: const Text('Mehn am balling!'),
                actions: [
                  TextButton(
                      onPressed: (() => Navigator.of(context).pop()),
                      child: const Text('Ok'))
                ],
              );
            }));
      }
    }));
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ref.watch(counterProvider).toString()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: (() =>
                          ref.read(counterProvider.notifier).decrement()),
                      child: const Text('-')),
                  TextButton(
                      onPressed: (() =>
                          ref.read(counterProvider.notifier).reset()),
                      child: const Text('*')),
                  TextButton(
                      onPressed: (() =>
                          ref.read(counterProvider.notifier).increment()),
                      child: const Text('+'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
