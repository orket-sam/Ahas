import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tests_app/message.dart';
import 'package:tests_app/screen_2.dart';

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
  final messageProvider =
      FutureProvider<String>(((ref) => Message.fetchMessage()));
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (() async {
        final messenger = ScaffoldMessenger.of(context);
        final message = await Message.fetchMessage();
        messenger.showSnackBar(SnackBar(content: Text(message)));
      })),
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: (() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const SecondScreen())));
              }),
              child: const Text(
                'Nav',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Center(
        child: ref.watch(messageProvider).when(
            data: ((data) => Text(data)),
            error: (e, s) => Text(e.toString()),
            loading: (() => const CircularProgressIndicator())),
      ),
    );
  }
}
