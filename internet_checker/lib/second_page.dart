import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:internet_checker/service/network_service.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<NetworkStatus>(
        builder: ((context, value, child) => Center(
              child: Text(value == NetworkStatus.online ? 'Online' : 'Offline'),
            )),
      ),
    );
  }
}
