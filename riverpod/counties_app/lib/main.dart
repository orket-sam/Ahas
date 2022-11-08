import 'package:example5_clone/counties.dart';
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

final subCountiesPrvider = Provider<List>(((ref) {
  var city = ref.watch(pickedCityProvider);
  return city != null ? getSubcounties(city) : [];
}));

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var subCounties = ref.watch(subCountiesPrvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(ref.watch(pickedCityProvider).toString()),
      ),
      body: Center(
        child: Column(
          children: [
            subCounties.isEmpty
                ? const SizedBox()
                : Column(
                    children: subCounties.map((e) => Text(e)).toList(),
                  ),
            Expanded(
              child: ListView(
                  children: countiesList
                      .map((county) => InkWell(
                            onTap: (() => ref
                                .read(pickedCityProvider.notifier)
                                .state = county),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                county,
                              ),
                            ),
                          ))
                      .toList()),
            ),
          ],
        ),
      ),
    );
  }
}
