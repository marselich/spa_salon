import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:spa_salon/firebase_options.dart';
import 'package:spa_salon/spa_salon_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(SpaSalonApp());
}
