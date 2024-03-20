import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spa_salon/features/spa_services/domain/entities/subservice/subservice_model.dart';

class SubserviceContainer extends StatelessWidget {
  const SubserviceContainer({super.key, required this.subservice});

  final SubserviceModel subservice;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 8,
        ),
        child: Column(
          children: [
            CachedNetworkImage(imageUrl: subservice.imageUrl),
            const SizedBox(height: 16),
            Center(
              child: Text(subservice.title),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(subservice.price.toString()),
            ),
            const SizedBox(height: 16),
            Text(subservice.description[0]),
            const SizedBox(height: 16),
            const VerticalDivider(),
            const SizedBox(height: 16),
            subservice.description.length > 1
                ? ListView.builder(
                    itemBuilder: (context, i) {
                      return Text("\u2022 ${subservice.description[i + 1]}");
                    },
                    itemCount: subservice.description.length - 1,
                  )
                : Container(),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () {},
              child: const Text("Добавить в корзину"),
            ),
          ],
        ),
      ),
    );
  }
}
