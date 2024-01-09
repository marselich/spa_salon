import 'package:flutter/material.dart';
import 'package:spa_salon/core/router/app_router.dart';
import 'package:spa_salon/core/theme/theme.dart';

class SpaSalonApp extends StatelessWidget {
  SpaSalonApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: themeData,
      routerConfig: _appRouter.config(),
    );
  }
}
