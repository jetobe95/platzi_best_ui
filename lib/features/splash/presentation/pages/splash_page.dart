import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:platzi_best_ui/core/presentation/res/assets.dart';
import 'package:platzi_best_ui/features/auth/presentation/pages/welcome_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const WelcomePage(),
          ),
        );
      },
      child: Scaffold(
        body: Center(
          child: SvgPicture.asset(Assets.platzi),
        ),
      ),
    );
  }
}
