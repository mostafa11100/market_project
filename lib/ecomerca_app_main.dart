import 'package:ecommerca_app/approuter.dart';
import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:flutter/material.dart';

class EcommercaApp extends StatelessWidget {
  const EcommercaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.rout,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        buttonTheme: const ButtonThemeData(buttonColor: primary_color),
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
