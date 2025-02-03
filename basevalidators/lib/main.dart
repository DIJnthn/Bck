import 'package:basevalidators/screens/categories_meals.dart';
import 'package:basevalidators/screens/category_screens.dart';
import 'package:basevalidators/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Teste Validades",
      theme: ThemeData(
          primaryColor: Colors.blueAccent,
          fontFamily: 'Raleway',
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
                  titleMedium: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ))),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('pt', 'BR')],
      ///home: const Categoryscreens(),
      home: const MyLoginPage(),
      routes: {
        '/categories-meals': (ctx) => const CategoriesMealsScreen(),
      },
    );
  }
}
