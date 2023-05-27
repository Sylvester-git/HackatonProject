import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sqaure_project/buisness/signUpCubit/sign_up_cubit.dart';
import 'package:sqaure_project/controller/controllerExports.dart';
import 'package:sqaure_project/data/Repository/FirebaseAuth.dart';
import 'package:sqaure_project/presentation/services/colorConverter.dart';
import 'package:sqaure_project/presentation/widgets/widgetExports.dart';

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

  var _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        context.read<AuthRepo>(),
      ),
      child: Form(
        key: _formkey,
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
                          child: SignUpTextFormField(
                            hinttext: 'Name',
                            textcontroller: _nameText,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please Enter a name';
                              }
                              return null;
                            },
                          )),
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
                        child: SignUpTextFormField(
                          textcontroller: _emailText,
                          validator: (value) {
                            if (!(value!.contains('@gmail.com') ||
                                value.contains('@outlook.com') ||
                                value.contains('@yahoo.com'))) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                          hinttext: 'Email',
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
                        child: SignUpTextFormField(
                            textcontroller: _passwordText,
                            validator: (value) {
                              if (value!.length < 6) {
                                return 'Must be 6+ charaters';
                              } else if (value.contains(
                                RegExp(r'[A-Z]'),
                              )) {
                                return 'Must contain atleast one uppercase';
                              }
                              return null;
                            },
                            hinttext: 'Password'),
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
                  FirebaseFirestore.instance.collection('Users').doc().set({
                    'Username': _nameText.text,
                    'Email': _emailText.text,
                  });
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
                      child:
                          signupBuilderstate.status == SignupStatus.submitting
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
                        if (_formkey.currentState!.validate()) {
                          AuthController.signup(
                            ctx: context,
                            email: _emailText.text,
                            password: _passwordText.text,
                          );
                        }
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
      ),
    );
  }
}
