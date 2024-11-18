import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/components/custom_noxy_card.dart';
import 'package:page_transition/modals/card_data.dart';
import 'package:page_transition/screens/home_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      /// screen 1
      CardData(
        title: "Superpowers",
        subTitle: "Use innovative coping methods against your smoking cravings",
        lottieAssetIconName: "star-animation",
        titleColor: const Color(0xFFCBC3DF),
        subTitleColor: const Color(0xFFAFA1DA),
        backgroundColor: const Color(0xFF453192),
      ),

      // screen 2
      CardData(
        title: "Health",
        subTitle: "Get all the information about your health progress",
        lottieAssetIconName: "alien-animation",
        titleColor: Colors.black,
        subTitleColor: Colors.black,
        backgroundColor: const Color(0xFFDD9096),
      ),

      // screen 3
      CardData(
        title: "Milestones",
        subTitle:
            "Stay on top of things and complete important tasks to achieve your goals",
        lottieAssetIconName: "emoji-animation",
        titleColor: const Color(0xFFCBC3DF),
        subTitleColor: const Color(0xFFAFA1DA),
        backgroundColor: const Color(0xFFDD9096),
      ),

      /// screen 4
      CardData(
        title: "Buddy",
        subTitle: "Get support from someone close to you",
        lottieAssetIconName: "success-animation",
        titleColor: const Color(0xFFCBC3DF),
        subTitleColor: const Color(0xFFAFA1DA),
        backgroundColor: const Color(0xFFDD9096),
      ),
    ];

    return Scaffold(
      body: ConcentricPageView(
        // Custom ball colors
        colors: const [
          /// first page
          Color(0xFF453192),

          /// second page
          Color(0xFF64BEA1),

          /// third page
          Color(0xFF4C4AC6),

          /// fourth page
          Color(0xFF6C53A4)
        ],
        itemCount: data.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (int index) {
          return CustomNoxyCard(
            data: data[index],
          );
        },
        onChange: (index) {
          print('Page changed to index $index');
        },
        onFinish: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const HomeScreen();
              },
            ),
          );
        },
      ),
    );
  }
}
