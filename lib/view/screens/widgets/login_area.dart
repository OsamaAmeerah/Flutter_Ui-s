import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'def_btn.dart';
import 'def_text_form.dart';

class LoginArea extends StatelessWidget {
  const LoginArea({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Let\'s go',
            style: GoogleFonts.ptSansNarrow().copyWith(
              color: Colors.white,
              fontSize: 40.0,
            ),
          ),
          Text(
            'Traveling around 01 Planet',
            style: GoogleFonts.ptSansNarrow().copyWith(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(height: 20.0,),
          const AuthTextFormField(
            isPassword: false,
            prefix: Icon(Icons.email),
            prefixIconColor: Colors.grey,
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            label: 'Email',
            controller: null,
          ),
          const SizedBox(height: 20.0,),
          const AuthTextFormField(
            prefix: Icon(Icons.email),
            prefixIconColor: Colors.grey,
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            isPassword: false,
            label: 'Password',
            controller: null,
          ),
          const SizedBox(height: 20.0,),
          AuthButton(
            text: 'Login',
            onPressed: (){},
          )
        ],
      ),
    );
  }
}
