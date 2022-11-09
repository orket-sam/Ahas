import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tests_app/users.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(fetchUsersProvider);
    return Scaffold(
      appBar: AppBar(),
      body: users.when(
          data: ((data) => Column(children: data.map((e) => Text(e)).toList())),
          error: ((error, stackTrace) => Text(error.toString())),
          loading: (() => const CircularProgressIndicator())),
    );
  }
}
