import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sqaure_project/buisness/signUpCubit/sign_up_cubit.dart';
import 'package:sqaure_project/controller/controllerExports.dart';
import 'package:sqaure_project/data/Repository/FirebaseAuth.dart';
import 'package:sqaure_project/presentation/services/colorConverter.dart';

import '../../../../packages.dart';
import '../../../constants/appcolors.dart';

class SignupPage extends StatelessWidget {
  SignupPage({
    super.key,
    required this.loginscreencallback,
  });

  final void Function()? loginscreencallback;
  final TextEditingController _emailText = TextEditingController();
  final TextEditingController _passwordText = TextEditingController();
  final TextEditingController _nameText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        context.read<AuthRepo>(),
      ),
      child: Column(
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
                        controller: _nameText,
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
                        controller: _emailText,
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
              //Password
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
                        controller: _passwordText,
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

          BlocConsumer<SignUpCubit, SignUpState>(
            listener: (context, signupListinerstate) {
              if (signupListinerstate.status == SignupStatus.success) {
                context.go('/home');
              }
            },
            builder: (context, signupBuilderstate) {
              return
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
                    child: signupBuilderstate.status == SignupStatus.submitting
                        ? CircularProgressIndicator(
                            color: Appcolors.secondaryColor.toColor(),
                          )
                        : Text(
                            'Sign Up',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Appcolors.secondaryColor.toColor(),
                            ),
                          ),
                    onPressed: () {
                      AuthController.signup(
                        ctx: context,
                        email: _emailText.text,
                        password: _passwordText.text,
                      );
                      FirebaseFirestore.instance.collection('Users').doc().set({
                        'Username': _nameText.text,
                        'Email': _emailText.text,
                      });
                      debugPrint('SignUp pressed');
                    },
                  ),
                ),
              );
            },
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
      ),
    );
  }
}
