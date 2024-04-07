import 'package:flutter/material.dart';

class SpaLoadingScreen extends StatelessWidget {
  const SpaLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
