import 'package:flutter/material.dart';

import 'package:sqaure_project/presentation/constants/appcolors.dart';

import '../widgets/widgetExports.dart';
import 'package:sqaure_project/presentation/services/colorConverter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Center(child: SelectableText('Hello')),
          Container(
            width: 142,
            height: 44,
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              color: Appcolors.overlaycolor,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
          ClikableWidget(
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Appcolors.secondaryColor.toColor(),
            ),
            tapfunction: () {},
          ),
          ClikableWidget(
            child: Icon(
              Icons.favorite_border,
              color: Appcolors.secondaryColor.toColor(),
            ),
            tapfunction: () {},
          ),
          ClikableWidget(
            child: Icon(
              Icons.person,
              color: Appcolors.secondaryColor.toColor(),
            ),
            tapfunction: () {},
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 5),
          child: Divider(
            color: Appcolors.overlaycolor,
          ),
        ),
      ),
      body: const Center(
          child: MouseRegion(
        cursor: MaterialStateMouseCursor.textable,
        child: Text('Hello world'),
      )),
    );
  }
}
