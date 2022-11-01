import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// enum City { nairobi, kisumu, mombasa, nakuru, eldoret, marurui }

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

typedef WeatherEmoji = String;

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

List<String> cities = ['nakuru', 'mombasa', 'nairobi', 'eldoret', 'kisumu'];

Future<WeatherEmoji> getWeather(String city) {
  return Future.delayed(
      const Duration(milliseconds: 200),
      (() => {
            'nakuru': '🌧️',
            'mombasa': '🎐',
            'nairobi': '⛈️',
            'eldoret': '☀️',
            'kisumu': '☁️'
          }[city]!));
}

final cityProvider = StateProvider<String?>(((ref) => null));
final weatherProvider = FutureProvider<WeatherEmoji>(((ref) {
  final city = ref.watch(cityProvider);
  if (city != null) {
    return getWeather(city);
  } else {
    return '😞';
  }
}));

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(weatherProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          data.when(
              loading: () => const CircularProgressIndicator(),
              data: (val) => Text(val),
              error: (e, s) => Text('$e 😞')),
          Expanded(
            child: ListView.builder(
                itemCount: cities.length,
                itemBuilder: ((context, index) {
                  var city = cities[index];
                  bool isSelected = city == ref.watch(cityProvider);
                  return ListTile(
                    trailing: isSelected
                        ? const Icon(
                            Icons.check,
                            color: Colors.green,
                          )
                        : null,
                    onTap: (() {
                      ref.read(cityProvider.notifier).state = city;
                    }),
                    leading: Text(
                      city.toUpperCase(),
                    ),
                  );
                })),
          ),
        ],
      ),
    );
  }
}
