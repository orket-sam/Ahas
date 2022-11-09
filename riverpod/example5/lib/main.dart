import 'package:example5/person.dart';
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
  HomePage({super.key});

  final dataProvider = ChangeNotifierProvider((_) => DataModel());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer(
        builder: (context, ref, child) {
          final dataModel = ref.watch(dataProvider);
          return ListView.builder(
              itemCount: dataModel.count,
              itemBuilder: ((context, index) {
                final person = dataModel.people[index];
                return GestureDetector(
                  onTap: (() async {
                    var updatedPerson =
                        await createOrUpdatePersonDialog(person, context);
                    updatedPerson != null
                        ? ref
                            .read(dataProvider)
                            .updatePerson(updatedPerson, index)
                        : null;
                  }),
                  child: ListTile(
                    title: Text(person.displayMessage()),
                  ),
                );
              }));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var person = await createOrUpdatePersonDialog(null, context);
          person != null ? ref.read(dataProvider).add(person) : null;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
