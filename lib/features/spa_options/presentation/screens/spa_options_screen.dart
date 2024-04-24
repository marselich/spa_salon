import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spa_salon/core/router/app_router.dart';
import 'package:spa_salon/features/spa_options/presentation/widgets/option_card.dart';
import 'package:url_launcher/url_launcher.dart';

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
        padding: const EdgeInsets.all(16),
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        crossAxisCount: 2,
        children: [
          OptionCard(
            cardIcon: FontAwesomeIcons.person,
            cardName: "О нас",
            onTap: () {
              AutoRouter.of(context).push(const SpaAboutUsRoute());
            },
          ),
          OptionCard(
            cardIcon: FontAwesomeIcons.image,
            cardName: "Галерея",
            curcleColor: Colors.blue,
            onTap: () {},
          ),
          OptionCard(
            cardIcon: FontAwesomeIcons.star,
            cardName: "Отзывы",
            curcleColor: Colors.yellow,
            onTap: () {},
          ),
          OptionCard(
            cardIcon: FontAwesomeIcons.percent,
            cardName: "Предложения",
            curcleColor: Colors.purpleAccent,
            onTap: () {},
          ),
          OptionCard(
            cardIcon: FontAwesomeIcons.youtube,
            cardName: "YouTube",
            curcleColor: Colors.red,
            onTap: () async {
              await launchUrl(
                Uri.parse("https://www.youtube.com/@nezhnye.ruchki"),
              );
            },
          ),
          OptionCard(
            cardIcon: FontAwesomeIcons.telegram,
            cardName: "Telegram",
            curcleColor: Colors.blue,
            onTap: () async {
              await launchUrl(
                Uri.parse("https://www.t.me/nezhnye_ruchki"),
              );
            },
          ),
        ],
      ),
    );
  }
}
