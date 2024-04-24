import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swipe/flutter_swipe.dart';

@RoutePage()
class SpaAboutUsScreen extends StatelessWidget {
  const SpaAboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final swiperItems = [
      Image.asset(
        "assets/img/spa_icon.png",
        fit: BoxFit.cover,
      ),
      CachedNetworkImage(
        imageUrl:
            "https://static.insales-cdn.com/files/1/2308/6531332/original/%D0%AD%D0%BA%D0%B7%D0%BE%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5_%D0%A1%D0%9F%D0%90-%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D0%B4%D1%83%D1%80%D1%8B.jpg",
        fit: BoxFit.cover,
      ),
      CachedNetworkImage(
        imageUrl:
            "https://static.insales-cdn.com/files/1/2308/6531332/original/%D0%AD%D0%BA%D0%B7%D0%BE%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5_%D0%A1%D0%9F%D0%90-%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D0%B4%D1%83%D1%80%D1%8B.jpg",
        fit: BoxFit.cover,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("О нас"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              child: Swiper(
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
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 1,
                    color: Colors.black12,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Нежные ручки",
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: theme.colorScheme.secondary,
                      fontSize: 26,
                    ),
                  ),
                  Text(
                    "Массаж и SPA",
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: Colors.black26,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Card(
              color: Colors.white,
              surfaceTintColor: Colors.white,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Адрес",
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: theme.colorScheme.secondary,
                        ),
                      ),
                      subtitle: Text(
                        "Октябрьская 79, 2 этаж, г. Уссурийск",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Расписание",
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: theme.colorScheme.secondary,
                        ),
                      ),
                      subtitle: Text(
                        "✅ Круглосуточно – по предварительной записи",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Телефон",
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: theme.colorScheme.secondary,
                        ),
                      ),
                      subtitle: Text(
                        "+79990595839",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
