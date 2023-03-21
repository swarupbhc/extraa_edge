import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';

import 'controllers/routes.dart';
import 'models/rocket_details_model.dart';
import 'models/rockets_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await Isar.open([RocketsModelSchema, RocketDetailsModelSchema]);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'ExtraaEdge',
        theme: ThemeData(useMaterial3: true, primarySwatch: Colors.blue),
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false);
  }
}
