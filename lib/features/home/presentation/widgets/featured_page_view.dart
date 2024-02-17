import 'package:flutter/material.dart';
import 'package:spa_salon/core/presentation/widgets/spa_salon_card.dart';

class FeaturedPageView extends StatelessWidget {
  const FeaturedPageView({
    super.key,
    required this.featuredPageViewTitle,
    required this.featuredCardList,
    this.onViewAllButton,
  });

  final String featuredPageViewTitle;
  final List<SpaSalonCard> featuredCardList;
  final VoidCallback? onViewAllButton;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 225,
      // width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  featuredPageViewTitle,
                  style: theme.textTheme.titleLarge,
                ),
                TextButton(
                  onPressed: onViewAllButton,
                  child: Text(
                    "Подробнее...",
                    style: theme.textTheme.labelMedium?.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10, left: 5),
                  child: featuredCardList[i],
                );
              },
              itemCount: featuredCardList.length,
              padEnds: false,
              controller: PageController(viewportFraction: 0.7),
            ),
          ),
        ],
      ),
    );
  }
}
