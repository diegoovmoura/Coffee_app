import 'package:coffee_shop/components/My_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'lib/images/Coffee_beans.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0, right: 35.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Coffee so good, your taste buds will love it",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sora(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "The best grain, the finest roast, the powerful flavor",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sora(
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MyButton(
              text: "Get Started",
              onTap: () {
                Navigator.pushNamed(context, "/HomePage");
              },
            ),
          )
        ],
      ),
    );
  }
}
