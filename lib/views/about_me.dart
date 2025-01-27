import 'package:flutter/material.dart';
import 'package:pro/globals/app_assets.dart';
import 'package:pro/globals/app_colors.dart';
import 'package:pro/globals/app_text_styles.dart';
import 'package:pro/globals/constants.dart';
import 'package:animate_do/animate_do.dart';

import '../globals/app_buttons.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInRight(
              duration: const Duration(milliseconds: 1200),
              child: Image.asset(
                AppAssets.profile2,
                height: size.height * 0.5, // Adjust as needed
                width: size.width * 0.2, // Adjust as needed
              ),
            ),
            SizedBox(width: 20), // Add spacing between image and text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInRight(
                    duration: const Duration(milliseconds: 1400),
                    child: Text(
                      'ABOUT ME',
                      style: AppTextStyles.headingStyles(fontSize: 30),
                    ),
                  ),
                  Constants.sizedBox(height: 6),
                  FadeInLeft(
                    duration: const Duration(milliseconds: 1400),
                    child: Text(
                      'Flutter Developer!',
                      style: AppTextStyles.montserratStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Constants.sizedBox(height: 8),
                  FadeInLeft(
                    duration: const Duration(milliseconds: 1600),
                    child: Text(
                      'I\'m a passionate individual with a keen interest in technology and business development. Currently, '
                      'I\'m diving deep into the world of application development through the Flutter framework. '
                      'I\'m enrolled in the Complete Flutter App Development Bootcamp with Dart on Udemy, where I\'m honing my skills to create innovative and user-friendly applications. '
                      'Beyond app development, I\'m also eager to expand my knowledge in business strategies and tactics. '
                      'Moreover, I\'ve recently delved into the realm of digital marketing, recognizing its significance in today\'s digital age. '
                      'I completed a comprehensive course offered by Google and earned certificates to validate my expertise in digital marketing strategies. '
                      'My goal is to leverage these skills and knowledge across different environments, ensuring adaptability and success in any venture I pursue. '
                      'In essence, I\'m dedicated to continuous learning and growth, seeking to merge my technical expertise with business acumen and marketing process to make a meaningful impact in the ever-evolving digital world.',
                      style: AppTextStyles.normalStyle(),
                    ),
                  ),
                  Constants.sizedBox(height: 15),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1700),
                    child: AppButtons.buildMaterialButton(
                        onTap: () {}, buttonName: 'Read More'),
                  ), // Add spacing between text and next widget
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
