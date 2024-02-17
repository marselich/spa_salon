import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:spa_salon/core/presentation/widgets/spa_salon_card.dart';

@RoutePage()
class SpaProductsScreen extends StatelessWidget {
  const SpaProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productList = [
      SpaSalonCard(
        imageUrl:
            "https://img.freepik.com/premium-photo/photo-showcasing-various-spa-products-like-scrubs-masks-lotions_933496-11111.jpg",
        itemText: "Продукт asdasdasdsdsdasdas",
        priceText: "1200",
        onTap: () {},
      ),
      SpaSalonCard(
        imageUrl:
            "https://img.freepik.com/premium-photo/photo-showcasing-various-spa-products-like-scrubs-masks-lotions_933496-11111.jpg",
        itemText: "Продукт",
        priceText: "1200",
        onTap: () {},
      ),
      SpaSalonCard(
        imageUrl:
            "https://img.freepik.com/premium-photo/photo-showcasing-various-spa-products-like-scrubs-masks-lotions_933496-11111.jpg",
        itemText: "Продукт",
        priceText: "1200",
        onTap: () {},
      ),
      SpaSalonCard(
        imageUrl:
            "https://img.freepik.com/premium-photo/photo-showcasing-various-spa-products-like-scrubs-masks-lotions_933496-11111.jpg",
        itemText: "Продукт",
        priceText: "1200",
        onTap: () {},
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Товары"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, i) {
          return productList[i];
        },
        itemCount: productList.length,
      ),
    );
  }
}
