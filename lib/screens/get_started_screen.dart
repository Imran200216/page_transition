import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/screens/on_boarding_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF482B87),
      body: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Spacer(
              flex: 1,
            ),
            Lottie.asset(
              "assets/animations/lottie/get-started-animation.json",
              fit: BoxFit.cover,
            ),
            RichText(
              text: TextSpan(
                text: "Hello,\nI'm noxy,\n",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                ),
                children: [
                  TextSpan(
                    text: 'your personal notes can\nbe added.',
                    style: GoogleFonts.montserrat(
                      color: const Color(0xFF8777A7),
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const OnBoardingScreen();
                }));
              },
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "Hi, Noxy!",
                    style: GoogleFonts.montserrat(
                      color: const Color(0xFF201261),
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "I already have an account",
                  style: GoogleFonts.montserrat(
                    color: const Color(0xFF8777A7),
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
