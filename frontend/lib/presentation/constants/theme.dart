import 'package:flutter/material.dart';
import 'package:sqaure_project/presentation/constants/appcolors.dart';
import 'package:sqaure_project/presentation/services/colorConverter.dart';

ThemeData normalTheme = ThemeData(
  scaffoldBackgroundColor: Appcolors.background.toColor(),
  appBarTheme: AppBarTheme(
    backgroundColor: Appcolors.background.toColor(),
    elevation: 0,
  
  ),
);
