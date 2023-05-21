import 'package:flutter/material.dart';
import 'package:sqaure_project/presentation/constants/theme.dart';
import 'package:sqaure_project/presentation/routes/routeManager.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: normalTheme,
      
      debugShowCheckedModeBanner: false,
      routerConfig: RouteManagerclass.router,
    );
  }
}
