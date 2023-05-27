import 'package:flutter/material.dart';
import 'package:sqaure_project/presentation/services/colorConverter.dart';

import '../../packages.dart';
import '../constants/appcolors.dart';

class SignUpTextFormField extends StatelessWidget {
  const SignUpTextFormField({
    super.key,
    required this.textcontroller,
    required this.validator,
    required this.hinttext,
  });

  final String? Function(String?)? validator;
  final TextEditingController textcontroller;
  final String hinttext;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: textcontroller,
      style: GoogleFonts.lustria(
        fontSize: 15,
        fontWeight: FontWeight.w200,
        color: Appcolors.secondaryColor.toColor(),
      ),
      cursorColor: Appcolors.secondaryColor.toColor(),
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: GoogleFonts.lustria(
          fontSize: 15,
          fontWeight: FontWeight.w200,
          color: Appcolors.overlaycolor,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          borderSide: BorderSide(
            color: Appcolors.primaryColor.toColor(),
            width: 3,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          borderSide: BorderSide(
            color: Appcolors.primaryColor.toColor(),
            width: 3,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          borderSide: BorderSide(
            color: Appcolors.primaryColor.toColor(),
            width: 3,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          borderSide: BorderSide(
            color: Appcolors.primaryColor.toColor(),
            width: 3,
          ),
        ),
      ),
    );
  }
}
