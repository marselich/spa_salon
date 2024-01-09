import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hello"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: const [
                Text("hello"),
                Text("hello"),
                Text("hello"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
