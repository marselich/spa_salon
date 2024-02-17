import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spa_salon/features/spa_options/presentation/widgets/option_card.dart';

@RoutePage()
class SpaOptionsScreen extends StatelessWidget {
  const SpaOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Дополнительно"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: const [
          OptionCard(
            cardIcon: FontAwesomeIcons.person,
            cardName: "О нас",
          ),
          OptionCard(
            cardIcon: FontAwesomeIcons.image,
            cardName: "Галерея",
            curcleColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
