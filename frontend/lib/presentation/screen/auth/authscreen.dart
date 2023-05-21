import 'package:flutter/material.dart';
import 'package:sqaure_project/presentation/constants/appcolors.dart';
import 'package:sqaure_project/presentation/services/colorConverter.dart';
import 'authpage/authpageExports.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //Pageview for different signup/login page
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              color: Appcolors.background.toColor(),
              height: MediaQuery.of(context).size.height,
              child: PageView(
                children: const [
                  LoginPage(),
                  SignupPage(),
                ],
              ),
            ),
          ),
          //Design images,
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              height: MediaQuery.of(context).size.height,
            ),
          ),
        ],
      ),
    );
  }
}
