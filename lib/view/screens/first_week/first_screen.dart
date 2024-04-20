import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/image/bg.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 60.0,
                ),
                Text(
                  'Hi! Welcome to',
                  style: GoogleFonts.ptSansNarrow().copyWith(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                const SizedBox(
                  height: 60.0,
                ),
                Text(
                  'Sonatshi',
                  style: GoogleFonts.dancingScript().copyWith(
                    color: Colors.white,
                    fontSize: 60.0,
                  ),
                ),
                Text(
                  'Travel',
                  style: GoogleFonts.dancingScript().copyWith(
                    color: Colors.white,
                    fontSize: 60.0,
                  ),
                ),
                const SizedBox(
                  height: 350.0,
                ),
                IconButton(
                  onPressed: () {

                      Get.to(()=> const LoginScreen());

                  },
                  icon: const Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.white,
                    size: 60.0,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
