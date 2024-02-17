import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:spa_salon/core/presentation/widgets/spa_salon_card.dart';

@RoutePage()
class SpaSubservicesScreen extends StatelessWidget {
  const SpaSubservicesScreen({
    super.key,
    required this.titleServices,
    required this.subServicesList,
  });

  final String titleServices;
  final List<dynamic> subServicesList; // TODO

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleServices),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          return subServicesList[i];
        },
        itemCount: subServicesList.length,
      ),
    );
  }
}
