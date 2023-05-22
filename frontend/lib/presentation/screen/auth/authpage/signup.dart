import 'package:flutter/material.dart';
import 'package:sqaure_project/presentation/services/colorConverter.dart';

import '../../../../packages.dart';
import '../../../constants/appcolors.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({
    super.key,
    required this.loginscreencallback,
  });

  final void Function()? loginscreencallback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(
          'New Ranker!!',
          textAlign: TextAlign.center,
          style: GoogleFonts.lustria(
            fontSize: 60,
            color: Appcolors.secondaryColor.toColor(),
            decoration: TextDecoration.underline,
            decorationColor: Appcolors.secondaryColor.toColor(),
            decorationThickness: 2,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 40,
            right: 40,
            top: 20,
          ),
          child: Column(children: [
            //Name
            Container(
              // color: Colors.amber,
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Name',
                    style: GoogleFonts.lustria(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      color: Appcolors.secondaryColor.toColor(),
                    ),
                  ),
                  SizedBox(
                    width: 360,
                    child: TextFormField(
                      style: GoogleFonts.lustria(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        color: Appcolors.secondaryColor.toColor(),
                      ),
                      cursorColor: Appcolors.secondaryColor.toColor(),
                      decoration: InputDecoration(
                        hintText: 'Name',
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
                    ),
                  ),
                ],
              ),
            ),
            //Email
            Container(
              // color: Colors.red,
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Email',
                    style: GoogleFonts.lustria(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      color: Appcolors.secondaryColor.toColor(),
                    ),
                  ),
                  SizedBox(
                    width: 360,
                    child: TextFormField(
                      style: GoogleFonts.lustria(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        color: Appcolors.secondaryColor.toColor(),
                      ),
                      cursorColor: Appcolors.secondaryColor.toColor(),
                      decoration: InputDecoration(
                        hintText: 'Email',
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
                    ),
                  ),
                ],
              ),
            ),
            //Email
            Container(
              // color: Colors.red,
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Password',
                    style: GoogleFonts.lustria(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      color: Appcolors.secondaryColor.toColor(),
                    ),
                  ),
                  SizedBox(
                    width: 360,
                    child: TextFormField(
                      style: GoogleFonts.lustria(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        color: Appcolors.secondaryColor.toColor(),
                      ),
                      cursorColor: Appcolors.secondaryColor.toColor(),
                      decoration: InputDecoration(
                        hintText: 'Password',
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
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //color: Colors.blue,
              margin: const EdgeInsets.only(bottom: 20, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      MouseRegion(
                        cursor: MaterialStateMouseCursor.clickable,
                        child: Icon(
                          Icons.check_box_outline_blank,
                          weight: 5,
                          color: Appcolors.primaryColor.toColor(),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Remeber me',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Appcolors.secondaryColor.toColor(),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget Password',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Appcolors.secondaryColor.toColor(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),

        //Login Button
        Center(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Appcolors.primaryColor.toColor(),
                  fixedSize: const Size(150, 50),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  )),
              child: Text(
                'Sign Up',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Appcolors.secondaryColor.toColor(),
                ),
              ),
              onPressed: () {
                debugPrint('Login  pressed');
              },
            ),
          ),
        ),
        //Other text
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText(
              "Already have an account?",
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Appcolors.secondaryColor.toColor(),
              ),
            ),
            TextButton(
              onPressed: loginscreencallback,
              child: Text(
                'Login',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Appcolors.secondaryColor.toColor(),
                  decoration: TextDecoration.underline,
                  decorationColor: Appcolors.secondaryColor.toColor(),
                  decorationThickness: 1.5,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
