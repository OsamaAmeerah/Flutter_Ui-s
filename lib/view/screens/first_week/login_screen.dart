import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_kit/view/screens/widgets/login_area.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          Column(
            children: [
              const SizedBox(
                height: 50.0,
              ),
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ],
          ),
          const LoginArea(),

        ],
      ),
    );
  }
}
