import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:pro/globals/app_assets.dart';
import 'package:pro/globals/app_buttons.dart';
import 'package:pro/globals/app_colors.dart';
import 'package:pro/globals/constants.dart';

import '../globals/app_text_styles.dart';

class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isApp = false, isGraphic = false, isDataAnalyst = false;
  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
      child: Column(
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1400),
            child: Text(
              'My Services',
              style: AppTextStyles.headingStyles(fontSize: 30),
            ),
          ),
          Constants.sizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isApp = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'App Development',
                  asset: AppAssets.code,
                  hover: isApp,
                  description:
                      'Transforming ideas into intuitive, engaging digital experiences through innovative coding and user-centric design, unlocking the potential of mobile technology to meet diverse needs and exceed expectations.',
                ),
              ),
              Constants.sizedBox(width: 10),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isGraphic = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Graphics Designing',
                  asset: AppAssets.brush,
                  hover: isGraphic,
                  description:
                      'Crafting visually stunning and impactful designs that captivate audiences, communicate messages effectively, and elevate brands through a fusion of creativity, strategy, and technical process.',
                ),
              ),
              Constants.sizedBox(width: 10),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isDataAnalyst = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Digital Marketing',
                  asset: AppAssets.analyst,
                  hover: isDataAnalyst,
                  description:
                      'Harnessing the synergy of data-driven SEO strategies, compelling storytelling, and targeted outreach to optimize online visibility, enhance brand authority, and drive sustainable growth in the dynamic digital ecosystem.',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String asset,
    required bool hover,
    required String description,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: hover ? 400 : 390,
      height: hover ? 440 : 430,
      alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(30),
        border:
            hover ? Border.all(color: AppColors.themeColor, width: 10) : null,
        boxShadow: const [
          BoxShadow(
              color: Colors.black54,
              spreadRadius: 4.0,
              blurRadius: 4.5,
              offset: Offset(3.0, 4.5))
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            asset,
            width: 50,
            height: 50,
            color: AppColors.themeColor,
          ),
          Constants.sizedBox(height: 30),
          Text(
            title,
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
          Constants.sizedBox(height: 12),
          Text(
            description,
            style: AppTextStyles.normalStyle(),
            textAlign: TextAlign.center,
          ),
          Constants.sizedBox(height: 20),
          AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
        ],
      ),
    );
  }
}
