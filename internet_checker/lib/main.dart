import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:internet_checker/custom_button.dart';
import 'package:internet_checker/second_page.dart';
import 'package:internet_checker/service/network_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    checkUserConnection();
    super.initState();
  }

  bool isConnected = false;
  Future checkUserConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        setState(() {
          isConnected = true;
        });
      }
    } on SocketException catch (_) {
      setState(() {
        isConnected = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<NetworkStatus>(
            create: ((context) =>
                NetworkService().networkStatusController.stream),
            initialData:
                isConnected ? NetworkStatus.online : NetworkStatus.offline),
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
    NetworkService().getNetworkStatus;

    Future showDialogBox() {
      return showDialog(
          context: context,
          builder: ((context) => CupertinoAlertDialog(
                title: const Text('No internet connection'),
                content: const Text('Please check your internet connection'),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Ok'))
                ],
              )));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Network status'),
      ),
      body: Consumer<NetworkStatus>(
        builder: (context, value, child) {
          bool isConnected = (value == NetworkStatus.online);
          return Column(
            children: [
              Text(!isConnected
                  ? 'Please connect to the internet'
                  : 'Welcome to your homepage'),
              GestureDetector(
                onTap: (() {
                  !isConnected ? showDialogBox() : null;
                }),
                child: CustomButton(
                    funky: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const SecondScreen())));
                    },
                    isActive: isConnected),
              )
            ],
          );
        },
      ),
    );
  }
}
