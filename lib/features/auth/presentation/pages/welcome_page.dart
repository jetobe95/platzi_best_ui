import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:platzi_best_ui/core/presentation/res/assets.dart';
import 'package:platzi_best_ui/core/presentation/res/colors.dart';
import 'package:platzi_best_ui/core/presentation/theme/type.dart';
import 'package:platzi_best_ui/core/presentation/widgets/spacing.dart';
import 'package:platzi_best_ui/features/home/home_page.dart';
import 'package:platzi_best_ui/widgets/button/primary_button.dart';
import 'package:platzi_best_ui/widgets/button/secondary_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const HomePage(),
          ),
        );
      },
      child: Scaffold(
        body: SafeArea(
          top: false,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const VSpacing(55),
                const ProgramingLanguages(),
                const VSpacing(47),
                const Text(
                  'Logra todas tus\nmetas ahora',
                  style: h2,
                ),
                const VSpacing(29),
                const Text(
                    'Cursos online para especializarte en las\nprofesiones que lideran el mercado hoy.',
                    style: paragraphDefault),
                const VSpacing(61),
                PrimaryButton(text: 'Iniciar sesión', onPressed: () {}),
                const VSpacing(19),
                SecondaryButton(
                  text: 'Crear cuenta',
                  onPressed: () {},
                ),
                const VSpacing(29),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Iniciar más tarde',
                    style: button.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProgramingLanguages extends StatelessWidget {
  const ProgramingLanguages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      clipBehavior: Clip.none,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: const [
        _ProgramingLanguage(
          UIColors.casablanca,
          0.20,
          Assets.javascript,
          Alignment.centerLeft,
          EdgeInsets.fromLTRB(22, 24, 25, 22),
        ),
        _ProgramingLanguage(
          UIColors.puertoRico,
          0.20,
          Assets.figma,
          Alignment.topRight,
          EdgeInsets.fromLTRB(23, 26, 27, 24),
        ),
        _ProgramingLanguage(
          UIColors.perfume,
          -0.19,
          Assets.css,
          Alignment.bottomLeft,
          EdgeInsets.fromLTRB(20, 22, 22, 20),
        ),
        _ProgramingLanguage(
          UIColors.dodgerBlue,
          0.20,
          Assets.python,
          Alignment.bottomRight,
          EdgeInsets.fromLTRB(29, 31, 32, 30),
        ),
      ],
    );
  }
}

class _ProgramingLanguage extends StatelessWidget {
  const _ProgramingLanguage(
    this.color,
    this.angle,
    this.assetName,
    this.alignment,
    this.padding,
  );
  final Color color;
  final double angle;
  final String assetName;
  final Alignment alignment;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Transform.rotate(
        angle: angle,
        child: DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: color,
              boxShadow: [
                BoxShadow(
                  color: color.withOpacity(0.8),
                  blurRadius: 120,
                  offset: const Offset(0, 4),
                )
              ]),
          child: Padding(
            padding: padding,
            child: SvgPicture.asset(
              assetName,
            ),
          ),
        ),
      ),
    );
  }
}
