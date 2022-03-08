import 'package:flutter/material.dart';
import 'package:platzi_best_ui/core/presentation/theme/theme.dart';
import 'package:platzi_best_ui/features/splash/presentation/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: materialTheme,
      title: 'Material App',
      home: const SplashPage(),
    );
  }
}
