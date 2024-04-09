import 'package:flutter/material.dart';

class SpaLoadingScreen extends StatelessWidget {
  const SpaLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
