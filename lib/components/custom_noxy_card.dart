import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/modals/on_boarding_modal.dart';

class CustomNoxyCard extends StatelessWidget {
  const CustomNoxyCard({
    super.key,
    required this.data,
  });

  final OnBoardingModal data;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: data.backgroundColor,
      margin: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(
            flex: 1,
          ),
          LottieBuilder.asset(
            data.lottieAssetIconName,
            fit: BoxFit.cover,
          ),
          const Spacer(
            flex: 1,
          ),
          Text(data.title,
          style: GoogleFonts.montserrat(
            
          ),)

        ],
      ),
    );
  }
}
