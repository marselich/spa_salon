import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SpaServicesScreen extends StatelessWidget {
  const SpaServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Text("Услуги"),
      ),
    );
  }
}
