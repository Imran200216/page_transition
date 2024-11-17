import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/components/custom_noxy_card.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      const CustomNoxyCard(
        title:
        "With this app, you will get the best features for a successful scheduling",
        subTitle: "",
        lottieAssetIconName: "",
        titleColor: Colors.white,
        subTitleColor: Colors.transparent,
        backgroundColor: Color(0xFFE0E1E2),
      ),
      const CustomNoxyCard(
        title:
        "With this app, you will get the best features for a successful scheduling",
        subTitle: "",
        lottieAssetIconName: "",
        titleColor: Colors.white,
        subTitleColor: Colors.transparent,
        backgroundColor: Color(0xFF453193),
      ),
      const CustomNoxyCard(
        title:
        "With this app, you will get the best features for a successful scheduling",
        subTitle: "",
        lottieAssetIconName: "",
        titleColor: Colors.white,
        subTitleColor: Colors.transparent,
        backgroundColor: Color(0xFFDF9395),
      ),
      const CustomNoxyCard(
        title:
        "With this app, you will get the best features for a successful scheduling",
        subTitle: "",
        lottieAssetIconName: "",
        titleColor: Colors.white,
        subTitleColor: Colors.transparent,
        backgroundColor: Color(0xFF504FCC),
      ),
      const CustomNoxyCard(
        title:
        "With this app, you will get the best features for a successful scheduling",
        subTitle: "",
        lottieAssetIconName: "",
        titleColor: Colors.white,
        subTitleColor: Colors.transparent,
        backgroundColor: Color(0xFF62BC9F),
      ),
      const CustomNoxyCard(
        title:
        "With this app, you will get the best features for a successful scheduling",
        subTitle: "",
        lottieAssetIconName: "",
        titleColor: Colors.white,
        subTitleColor: Colors.transparent,
        backgroundColor: Color(0xFF6C55A5),
      ),
    ];

    return Scaffold(
      body: ConcentricPageView(
        colors: <Color>[Colors.white, Colors.blue, Colors.red],

        itemCount: data.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (int index) {
          return CustomNoxyCard(title: title,
              subTitle: subTitle,
              lottieAssetIconName: lottieAssetIconName,
              titleColor: titleColor,
              subTitleColor: subTitleColor,
              backgroundColor: backgroundColor)
        },
      ),
    );
  }
}
