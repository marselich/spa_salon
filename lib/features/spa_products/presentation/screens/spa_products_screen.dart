import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SpaProductsScreen extends StatelessWidget {
  const SpaProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Text("Товары"),
      ),
    );
  }
}