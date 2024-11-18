import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/modals/card_data.dart';

class CustomNoxyCard extends StatelessWidget {
  const CustomNoxyCard({
    super.key,
    required this.data,
  });

  final CardData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(
            flex: 1,
          ),
          LottieBuilder.asset(
            "assets/animations/lottie/${data.lottieAssetIconName}.json",
            fit: BoxFit.cover,
          ),
          const Spacer(
            flex: 1,
          ),
          Text(
            textAlign: TextAlign.center,
            data.title,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w700,
              color: data.titleColor,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            textAlign: TextAlign.center,
            data.subTitle,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              color: data.subTitleColor,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
