import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:pro/globals/app_assets.dart';
import 'package:pro/globals/app_buttons.dart';
import 'package:pro/globals/app_colors.dart';
import 'package:pro/globals/app_text_styles.dart';
import 'package:pro/globals/constants.dart';
import 'package:pro/views/about_me.dart';
import 'package:pro/views/contact_us.dart';
import 'package:pro/views/my_portfolio.dart';
import 'package:pro/views/my_services.dart';
import 'package:pro/widgets/profile_animation.dart';
import 'package:pro/globals/app_buttons.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Spacer(),
              Text(
                'Home',
                style: AppTextStyles.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                'About',
                style: AppTextStyles.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                'Services',
                style: AppTextStyles.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                'Portfolio',
                style: AppTextStyles.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                'Contact',
                style: AppTextStyles.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: size.height * 0.2,
          left: size.width * 0.04,
          //right: size.width * 0.1,
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInDown(
                  duration: const Duration(milliseconds: 1200),
                  child: Text(
                    'Hello It\'s',
                    style: AppTextStyles.montserratStyle(color: Colors.blue),
                  ),
                ),
                Constants.sizedBox(height: 15),
                FadeInRight(
                  duration: const Duration(milliseconds: 1300),
                  child: Text(
                    'Sivachidambaram',
                    style: AppTextStyles.headingStyles(),
                  ),
                ),
                Constants.sizedBox(height: 15),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1400),
                  child: Row(
                    children: [
                      Text(
                        'And I\'m a ',
                        style:
                            AppTextStyles.montserratStyle(color: Colors.blue),
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText('Flutter Developer',
                              textStyle: AppTextStyles.montserratStyle(
                                  color: Colors.black)),
                          TyperAnimatedText('Software developer',
                              textStyle: AppTextStyles.montserratStyle(
                                  color: Colors.greenAccent)),
                          TyperAnimatedText('Digital Marketer (SEO)',
                              textStyle: AppTextStyles.montserratStyle(
                                  color: Colors.red))
                        ],
                        pause: const Duration(milliseconds: 1000),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      ),
                    ],
                  ),
                ),
                Constants.sizedBox(height: 15),
                FadeInDown(
                  duration: const Duration(milliseconds: 1500),
                  child: SizedBox(
                    width: size.width * 0.5,
                    child: Text(
                      'I m a recent Computer Science Engineering graduate, all geared up and ready to jump into the professional world',
                      style: AppTextStyles.normalStyle(),
                    ),
                  ),
                ),
                Constants.sizedBox(height: 22),
                FadeInUp(
                  duration: const Duration(milliseconds: 1600),
                  child: Row(
                    children: [
                      buildSocialButton(asset: AppAssets.facebook),
                      Constants.sizedBox(width: 12),
                      buildSocialButton(asset: AppAssets.insta),
                      Constants.sizedBox(width: 12),
                      buildSocialButton(asset: AppAssets.twitter),
                      Constants.sizedBox(width: 12),
                      buildSocialButton(asset: AppAssets.linkedIn),
                      Constants.sizedBox(width: 12),
                      buildSocialButton(asset: AppAssets.github)
                    ],
                  ),
                ),
                Constants.sizedBox(height: 18),
                FadeInUp(
                  duration: const Duration(milliseconds: 1700),
                  child: AppButtons.buildMaterialButton(
                      onTap: () {}, buttonName: 'Download Resume'),
                ),
                SizedBox(
                  height: size.height,
                  width: size.width,
                  child: Padding(
                    padding: EdgeInsets.only(top: size.height * 0.2),
                    child: AboutMe(),
                  ),
                ),
                const MyServices(),
                const MyPortfolio(),
                const ContactUs(),
              ],
            ),
            const Positioned(
              top: 0,
              right: 100,
              child: SizedBox(
                height: 300, // Adjusted height
                width: 250, // Adjusted width
                child: ProfileAnimation(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Ink buildSocialButton({required String asset}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.bgColor, width: 1.0),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: EdgeInsets.all(6),
      child: InkWell(
        radius: 50,
        borderRadius: BorderRadius.circular(500.0),
        hoverColor: AppColors.aqua,
        splashColor: AppColors.lawGreen,
        onTap: () {},
        child: Image.asset(
          asset,
          width: 20,
          height: 18,
          color: AppColors.themeColor,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
