import 'package:flutter/material.dart';
import 'package:navigation/layouts/main_layout.dart';
import 'package:navigation/screens/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int number;
  const RouteOneScreen({
    required this.number,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Route One', children: [
      Text(
        number.toString(),
        textAlign: TextAlign.center,
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop(456);
        },
        child: const Text('Pop'),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => RouteTwoScreen(),
            settings: RouteSettings(arguments: 789),
          ));
        },
        child: Text('Push'),
      )
    ]);
  }
}
