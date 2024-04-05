import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SpaCartScreen extends StatelessWidget {
  const SpaCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Корзина"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container();
          },
        ),
      ),
    );
  }
}
