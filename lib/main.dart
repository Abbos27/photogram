import 'package:flutter/material.dart';
import 'package:photogram/routes/app_pages.dart';
import 'package:photogram/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppPages.page,
      initialRoute: AppRoutes.initial,
      themeMode: ThemeMode.system,
    );
  }
}
