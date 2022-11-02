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
      home: const HomePage(),
    );
  }
}

final names = [
  'orket',
  'sam',
  'hozier',
  'shanaya',
  'mercy',
  'shalom',
];

final counterStream = StreamProvider(((ref) {
  return getCountStream();

  //  Stream.periodic(
  //     const Duration(seconds: 1), ((computationCount) => computationCount + 1));
}));

final namesStream = StreamProvider(((ref) =>
    ref.watch(counterStream.stream).map((event) => names.getRange(0, event))));

Stream<int> getCountStream() async* {
  int count = 0;
  while (count <= names.length) {
    yield count++;
    await Future.delayed(const Duration(seconds: 1));
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var counterData = ref.watch(namesStream);

    ref.listen(counterStream, ((previous, next) {
      if (next.value == names.length) {
        showDialog(
            context: context,
            builder: ((context) => AlertDialog(
                  content: Text('End of list'),
                )));
      }
    }));
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            counterData.when(
                data: (names) => Expanded(
                      child: ListView.builder(
                          itemCount: names.length,
                          itemBuilder: ((context, index) => ListTile(
                                title: Text(names.toList()[index]),
                              ))),
                    ),
                error: (e, s) => const Text('Reached end of list'),
                loading: () => const CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
