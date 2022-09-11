import 'package:flutter/material.dart';
import 'package:navigation/layouts/main_layout.dart';
import 'package:navigation/screens/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Home Screen', children: [
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (BuildContext context) => const RouteOneScreen()),
          );
        },
        child: const Text('Push'),
      )
    ]);
  }
}
