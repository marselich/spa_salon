import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spa_salon/core/presentation/widgets/spa_salon_card.dart';
import 'package:spa_salon/core/router/app_router.dart';
import 'package:spa_salon/features/spa_services/presentation/widgets/service_list_item.dart';

@RoutePage()
class SpaServicesScreen extends StatelessWidget {
  const SpaServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final subServicesList = [
      SpaSalonCard(
        imageUrl:
            "https://actual-cosmetology.ru/wp-content/uploads/2022/08/7-1.jpg",
        itemText: "Спортивный массаж",
        priceText: "3000 Р",
        onTap: () {},
      ),
      SpaSalonCard(
        imageUrl:
            "https://actual-cosmetology.ru/wp-content/uploads/2022/08/7-1.jpg",
        itemText: "Спортивный массаж",
        priceText: "3000 Р",
        onTap: () {},
      ),
      SpaSalonCard(
        imageUrl:
            "https://actual-cosmetology.ru/wp-content/uploads/2022/08/7-1.jpg",
        itemText: "Спортивный массаж",
        priceText: "3000 Р",
        onTap: () {},
      ),
    ];
    final serviceList = [
      ServiceListItem(
        imageUrl:
            "https://actual-cosmetology.ru/wp-content/uploads/2022/08/7-1.jpg",
        itemText: "Массаж",
        onTap: () {
          AutoRouter.of(context).push(
            SpaSubservicesRoute(
              titleServices: "Массаж",
              subServicesList: subServicesList,
            ),
          );
        },
      ),
      ServiceListItem(
        imageUrl:
            "https://actual-cosmetology.ru/wp-content/uploads/2022/08/7-1.jpg",
        itemText: "Массаж",
        onTap: () {
          AutoRouter.of(context).push(
            SpaSubservicesRoute(
              titleServices: "Массаж",
              subServicesList: subServicesList,
            ),
          );
        },
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Услуги"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return serviceList[index];
        },
        separatorBuilder: (context, i) => const SizedBox(height: 10),
        itemCount: serviceList.length,
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
        ),
      ),
    );
  }
}
