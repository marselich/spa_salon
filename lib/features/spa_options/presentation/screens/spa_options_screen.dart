import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SpaOptionsScreen extends StatelessWidget {
  const SpaOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Text("Дополнительно"),
      ),
    );
  }
}
