import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AuthTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final InputDecoration? decoration;
  final bool isPassword;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final InputBorder? enabledBorderStyle;
  final InputBorder? focusedBorderStyle;
  final TextStyle? style;
  final TextStyle? labelStyle;
  final void Function(String)? onChange;
  final void Function()? onTap;
  final void Function()? suffixPressed;
  final String label;
  final bool isClickable = true;
  final Widget? prefix;
  final Widget? suffix;
  final dynamic validate;
  const AuthTextFormField({
    super.key,
    required this.controller,
    this.decoration,
    required this.isPassword,
    this.suffixIconColor,
    this.prefixIconColor,
    this.enabledBorderStyle,
    this.focusedBorderStyle,
    this.style,
    this.labelStyle,
    this.onChange,
    this.onTap,
    this.suffixPressed,
    required this.label,
    this.prefix,
    this.suffix,
    this.validate,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: Colors.white,
      ),
      validator: validate,
      controller: controller,
      obscureText: isPassword,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        suffixIconColor: suffixIconColor,
        prefixIconColor: prefixIconColor,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black,),
          borderRadius: BorderRadius.circular(20.0),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(20.0),
        ),
        errorBorder:   OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(20.0)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(20.0)),
        labelText: label,
        labelStyle: labelStyle,
        prefixIcon: prefix,
        suffixIcon: suffix,
        filled: true,
        fillColor: Colors.grey.withOpacity(0.2),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
