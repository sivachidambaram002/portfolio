import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:pro/globals/app_assets.dart';

import '../globals/app_colors.dart';
import '../globals/app_text_styles.dart';
import '../globals/constants.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  final onHovereffect = Matrix4.identity()..scale(1.0);
  List images = <String>[
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2
  ];
  List<String> textList = ['app', 'text', 'gold', 'coin', 'eat', 'good'];
  List<String> descList = ['a', 'b', 'v', 'f', 'f', 's'];
  var hoveredIndex;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1400),
            child: Text(
              'Latest Projects',
              style: AppTextStyles.headingStyles(fontSize: 30),
            ),
          ),
          Constants.sizedBox(height: 40),
          Expanded(
            child: GridView.builder(
              itemCount: images.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent:
                    210, // Adjusted height to accommodate image and text
                mainAxisSpacing: 30,
                crossAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                var image = images[index];
                var text = textList[index];
                var desc = descList[index]; // Corrected variable name
                return FadeInUpBig(
                  duration: const Duration(milliseconds: 1600),
                  child: InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        if (value) {
                          hoveredIndex = index;
                        } else {
                          hoveredIndex = null;
                        }
                      });
                    },
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: AssetImage(image),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Visibility(
                          visible: index == hoveredIndex,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            transform:
                                index == hoveredIndex ? onHovereffect : null,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0.2, vertical: 0.2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.themeColor.withOpacity(1.0),
                                  AppColors.themeColor.withOpacity(0.9),
                                  AppColors.themeColor.withOpacity(0.8),
                                  AppColors.themeColor.withOpacity(0.6),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  text,
                                  style: AppTextStyles.montserratStyle(
                                      color: Colors.black45, fontsize: 15),
                                ),
                                Constants.sizedBox(height: 5),
                                Text(
                                  desc,
                                  style: AppTextStyles.normalStyle(
                                      color: Colors.black45),
                                  textAlign: TextAlign.start,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Constants.sizedBox(height: 10),
                                CircleAvatar(
                                  maxRadius: 18,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                    AppAssets.share,
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
