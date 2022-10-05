import 'package:finandina_test/routes/routes.dart';
import 'package:finandina_test/themes/theme_app.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finandina',
      theme: ThemeApp.ligthTheme,
      initialRoute: Routes.initialRoute,
      routes: Routes.routes,
    );
  }
}

