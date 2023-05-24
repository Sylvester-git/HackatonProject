import 'package:flutter/material.dart';
import 'package:sqaure_project/packages.dart';

import 'package:sqaure_project/presentation/constants/appcolors.dart';

import 'package:sqaure_project/presentation/services/colorConverter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  color: Appcolors.background.toColor(),
                  border: const Border(
                    bottom: BorderSide(color: Appcolors.overlaycolor, width: 2),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        //hamburger button
                        MouseRegion(
                          cursor: MaterialStateMouseCursor.clickable,
                          child: Icon(
                            Icons.menu,
                            color: Appcolors.secondaryColor.toColor(),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        //search textfield
                        SizedBox(
                          width: 350,
                          height: 35,
                          child: TextFormField(
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Appcolors.secondaryColor.toColor(),
                            ),
                            cursorColor: Appcolors.secondaryColor.toColor(),
                            decoration: InputDecoration(
                              fillColor: Appcolors.overlaycolor,
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                              hintText: 'Search',
                              hintStyle: GoogleFonts.quicksand(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Appcolors.secondaryColor.toColor(),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                borderSide: BorderSide(
                                  color: Appcolors.overlaycolor,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                borderSide: BorderSide(
                                  color: Appcolors.secondaryColor.toColor(),
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Appcolors.secondaryColor.toColor(),
                                size: 22.5,
                              ),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                borderSide: BorderSide(
                                  color: Appcolors.overlaycolor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //info
                    Row(
                      children: [
                        SelectableText(
                          'MEGALODON',
                          style: GoogleFonts.lustria(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Appcolors.secondaryColor.toColor(),
                          ),
                        ),
                        MouseRegion(
                          cursor: MaterialStateMouseCursor.clickable,
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Appcolors.secondaryColor.toColor(),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        MouseRegion(
                          cursor: MaterialStateMouseCursor.clickable,
                          child: Icon(
                            Icons.favorite_outline_rounded,
                            color: Appcolors.secondaryColor.toColor(),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        MouseRegion(
                          cursor: MaterialStateMouseCursor.clickable,
                          child: Icon(
                            Icons.person,
                            color: Appcolors.secondaryColor.toColor(),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ];
        },
        body: Row(
          children: [
            //feed and points
            Container(
              color: Colors.red,
              width: 300,
              height: MediaQuery.of(context).size.height,
            ),
            //mainpage
            Expanded(
              child: Container(
                color: Colors.amber,
                height: MediaQuery.of(context).size.height,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
