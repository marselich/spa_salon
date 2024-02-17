import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    super.key,
    required this.cardIcon,
    required this.cardName,
    this.curcleColor,
  });

  final IconData cardIcon;
  final String cardName;
  final Color? curcleColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: Colors.white,
      child: SizedBox(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: curcleColor ?? theme.colorScheme.primary,
              radius: 50,
              child: FaIcon(
                cardIcon,
                size: 50,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Text(cardName, style: theme.textTheme.labelLarge),
          ],
        ),
      ),
    );
  }
}
