import 'package:flutter/material.dart';
import 'package:sqaure_project/packages.dart';

class SvgWidget extends StatelessWidget {
  const SvgWidget({super.key, required this.assetname});

  final String assetname;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetname,
      matchTextDirection: true,
    );
  }
}
