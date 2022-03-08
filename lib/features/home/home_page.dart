import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:platzi_best_ui/core/presentation/res/assets.dart';
import 'package:platzi_best_ui/core/presentation/res/colors.dart';
import 'package:platzi_best_ui/core/presentation/theme/type.dart';
import 'package:platzi_best_ui/core/presentation/widgets/spacing.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: SvgPicture.asset(
            Assets.platziIsoMini,
            fit: BoxFit.scaleDown,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.bell),
          ),
          const HSpacing(32),
          const CircleAvatar(
            radius: 13.5,
            child: FlutterLogo(size: 13),
            backgroundColor: Colors.white,
          ),
          const HSpacing(16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const VSpacing(37),
            const Text(
              '¿Qué vas aprender hoy?',
              style: paragraphDefault,
            ),
            const VSpacing(24),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                hintText: '¿Qué te gustaría aprender hoy?',
                hintStyle: paragraphDefault.copyWith(
                  color: Colors.white.withOpacity(0.5),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                fillColor: UIColors.bigStone,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide.none),
                errorBorder: InputBorder.none,
                filled: true,
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.white,
                ),
              ),
            ),
            const VSpacing(24),
            Row(
              children: const [Text('Cursos'), Spacer(), Text('Ver todos')],
            ),
            const VSpacing(21),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CourseItem(
                    assetName: Assets.development,
                    title: 'Desarrollo',
                    color: UIColors.vistaBlue,
                  ),
                  HSpacing(17),
                  CourseItem(
                    assetName: Assets.designingTablet,
                    title: 'Diseño UI/UX',
                    color: UIColors.zombie,
                  ),
                  HSpacing(17),
                  CourseItem(
                    assetName: Assets.emailMarketingGoal,
                    title: 'Marketing',
                    color: UIColors.jordyBlue,
                  ),
                  HSpacing(17),
                  CourseItem(
                    assetName: Assets.bulb,
                    title: 'Negocios',
                    color: UIColors.deco,
                  ),
                  HSpacing(17),
                  CourseItem(
                    assetName: Assets.startUp,
                    title: 'Startups',
                    color: UIColors.perfume2,
                  ),
                  HSpacing(17),
                ],
              ),
            ),
            const VSpacing(34),
            Row(
              children: const [
                Text('Aprende gratis'),
                Spacer(),
                Text('Ver todos')
              ],
            ),
            const VSpacing(34),
            SizedBox(
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.asset(Assets.teacher),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      const VSpacing(11),
                      Text(
                        'Aprende sobre la nube',
                        style: paragraphDefault.copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const VSpacing(7),
                      Row(
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.usb_rounded,
                                color: UIColors.atlantis,
                              ),
                              HSpacing(4),
                              Text(
                                'Hector Vega',
                                style: paragraphDefault,
                              )
                            ],
                          ),
                          const HSpacing(12),
                          Row(
                            children: const [
                              Icon(
                                Icons.usb_rounded,
                                color: UIColors.atlantis,
                              ),
                              HSpacing(4),
                              Text(
                                '2k alumnos',
                                style: paragraphDefault,
                              )
                            ],
                          ),
                        ],
                      ),
                      const VSpacing(11),
                      DecoratedBox(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 11,
                          ),
                          child: Text(
                            'Nube con azure',
                            style: paragraphDefault.copyWith(
                              fontWeight: FontWeight.w500,
                              color: UIColors.dodgerBlue,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: UIColors.dodgerBlue.withOpacity(0.21),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CourseItem extends StatelessWidget {
  const CourseItem({
    Key? key,
    required this.title,
    required this.assetName,
    required this.color,
  }) : super(key: key);

  final String title, assetName;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: SizedBox(
            height: 68,
            width: 68,
            child: Image.asset(assetName),
          ),
        ),
        const VSpacing(13),
        Text(
          title,
          style: paragraphDefault,
        )
      ],
    );
  }
}
