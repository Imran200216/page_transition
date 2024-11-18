import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/components/custom_noxy_card.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [];

    return Scaffold(
      body: ConcentricPageView(
        colors: <Color>[Colors.white, Colors.blue, Colors.red],
        itemCount: data.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (int index) {
          return Container();
        },
      ),
    );
  }
}
