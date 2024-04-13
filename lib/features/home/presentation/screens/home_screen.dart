import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe/flutter_swipe.dart';
import 'package:spa_salon/features/home/presentation/widgets/featured_page_view.dart';
import 'package:spa_salon/features/home/presentation/widgets/home_swiper_item.dart';
import 'package:spa_salon/core/presentation/widgets/spa_salon_card.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final swiperItems = [
      const HomeSwiperItem(
        imageUrl:
            "https://static.insales-cdn.com/files/1/2308/6531332/original/%D0%AD%D0%BA%D0%B7%D0%BE%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5_%D0%A1%D0%9F%D0%90-%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D0%B4%D1%83%D1%80%D1%8B.jpg",
        itemText: "Скидка! Скидка! Скидка! Скидка! 40%",
      ),
      const HomeSwiperItem(
        imageUrl:
            "https://static.insales-cdn.com/files/1/2308/6531332/original/%D0%AD%D0%BA%D0%B7%D0%BE%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5_%D0%A1%D0%9F%D0%90-%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D0%B4%D1%83%D1%80%D1%8B.jpg",
        itemText: "Скидка! Скидка! Скидка! Скидка! 40%",
      ),
    ];

    final serviceSwiperItems = [
      SpaSalonCard(
        imageUrl:
            "https://actual-cosmetology.ru/wp-content/uploads/2022/08/7-1.jpg",
        itemText: "Массаж",
        onTap: () {
          print("sad...");
        },
        priceText: "3000",
      ),
      SpaSalonCard(
        imageUrl:
            "https://actual-cosmetology.ru/wp-content/uploads/2022/08/7-1.jpg",
        itemText: "Массаж",
        onTap: () {
          print("sad...");
        },
        priceText: "12",
      ),
      SpaSalonCard(
        imageUrl:
            "https://actual-cosmetology.ru/wp-content/uploads/2022/08/7-1.jpg",
        itemText: "Массаж",
        onTap: () {
          print("sad...");
        },
        priceText: "12",
      ),
    ];

    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              expandedHeight: 250.0,
              floating: true,
              //pinned: true,
              snap: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Swiper(
                  itemBuilder: (context, index) {
                    return swiperItems[index];
                  },
                  itemCount: swiperItems.length,
                  autoplay: true,
                  loop: true,
                  autoplayDelay: 5000,
                  duration: 2000,
                  autoplayDisableOnInteraction: true,
                  pagination: const SwiperPagination(),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  FeaturedPageView(
                    featuredPageViewTitle: 'Рекомендуемые услуги',
                    featuredCardList: serviceSwiperItems,
                    onViewAllButton: () {},
                  ),
                  const SizedBox(height: 15),
                  FeaturedPageView(
                    featuredPageViewTitle: 'Рекомендуемые услуги',
                    featuredCardList: serviceSwiperItems,
                    onViewAllButton: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
