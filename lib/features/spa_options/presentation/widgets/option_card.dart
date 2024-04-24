import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    super.key,
    required this.cardIcon,
    required this.cardName,
    this.curcleColor,
    required this.onTap,
  });

  final IconData cardIcon;
  final String cardName;
  final Color? curcleColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onTap,
      splashColor: theme.highlightColor,
      child: Ink(
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white, //theme.colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 1.5),
                blurRadius: 1,
              ),
            ]),
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
