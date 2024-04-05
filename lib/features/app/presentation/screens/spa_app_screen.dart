import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spa_salon/core/router/app_router.dart';
import 'package:spa_salon/core/utils/spa_icons/spa_salon_icons.dart';

@RoutePage()
class SpaAppScreen extends StatelessWidget {
  const SpaAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        SpaServicesRoute(),
        SpaProductsRoute(),
        SpaCartRoute(),
        SpaOptionsRoute(),
      ],
      lazyLoad: true,
      inheritNavigatorObservers: true,
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (value) {
              tabsRouter.setActiveIndex(value);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: FaIcon(FontAwesomeIcons.house),
                ),
                label: "Главное",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Icon(SpaSalon.spa_face_mask),
                ),
                label: "Услуги",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Icon(SpaSalon.spa_products),
                ),
                label: "Товары",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: FaIcon(FontAwesomeIcons.cartShopping),
                ),
                label: "Корзина",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: FaIcon(
                    FontAwesomeIcons.ellipsisVertical,
                    size: 28,
                  ),
                ),
                label: "",
              ),
            ],
          ),
        );
      },
    );
  }
}
