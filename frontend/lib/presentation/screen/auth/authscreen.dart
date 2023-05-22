import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sqaure_project/presentation/constants/appcolors.dart';
import 'package:sqaure_project/presentation/services/colorConverter.dart';
import 'authpage/authpageExports.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final PageController _controller = PageController(
    initialPage: 1,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //Pageview for different signup/login page
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              height: MediaQuery.of(context).size.height,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  LoginPage(
                    nextscreencallback: () {
                      _controller.animateToPage(
                        1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                  SignupPage(
                    loginscreencallback: () {
                      _controller.animateToPage(
                        0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          //Design images,
          Container(
            width: 600,
            color: Appcolors.background.toColor(),
            height: MediaQuery.of(context).size.height,
            child: Stack(children: [
              Positioned(
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    left: 600 - 553,
                  ),
                  width: 553,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Appcolors.background.toColor(),
                      ),
                      top: BorderSide(
                        color: Appcolors.primaryColor.toColor(),
                        width: 3,
                      ),
                      right: BorderSide(
                        color: Appcolors.background.toColor(),
                      ),
                      left: BorderSide(
                        color: Appcolors.primaryColor.toColor(),
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
              
            ]),
          ),
        ],
      ),
    );
  }
}
