import 'package:flutter/material.dart';
import 'package:sqaure_project/data/Repository/FirebaseAuth.dart';
import 'package:sqaure_project/presentation/constants/theme.dart';
import 'package:sqaure_project/presentation/routes/routeManager.dart';

class RootApp extends StatelessWidget {
  final AuthRepo _authRepo;
  const RootApp({super.key, required AuthRepo authRepo}) : _authRepo = authRepo;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: normalTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: RouteManagerclass.router,
    );
  }
}
