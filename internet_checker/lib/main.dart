import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_checker/service/network_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<NetworkStatus>(
            create: ((context) =>
                NetworkService().networkStatusController.stream),
            initialData: NetworkStatus.online),
      ],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future showDialogBox() {
      return showCupertinoDialog(
          context: context,
          builder: ((context) {
            return CupertinoAlertDialog(
              actions: [
                TextButton(
                    onPressed: (() => Navigator.of(context).pop()),
                    child: const Text('Ok'))
              ],
              title: const Text('No internet'),
              content: const Text('Please check your internet connection'),
            );
          }));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Network status'),
      ),
      body: Consumer<NetworkStatus>(
        builder: (context, value, child) {
          value == NetworkStatus.offline ? showDialogBox() : null;
          return const Center(
            child: Text('Welcome to your homepage'),
          );
        },
      ),
    );
  }
}
