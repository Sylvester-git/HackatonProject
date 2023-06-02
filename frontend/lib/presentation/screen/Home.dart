import 'package:flutter/material.dart';
import 'package:sqaure_project/buisness/ProductBloc/product_bloc.dart';
import 'package:sqaure_project/data/resources/square-api-provider.dart';
import 'package:sqaure_project/data/resources/squareapiwiithoutpackage.dart';
import 'package:sqaure_project/packages.dart';

import 'package:sqaure_project/presentation/constants/appcolors.dart';

import 'package:sqaure_project/presentation/services/colorConverter.dart';
import 'package:sqaure_project/presentation/widgets/widgetExports.dart';

import '../widgets/productHomeOverViewCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isHoveringonfeed = false;
  final String dummytext =
      'Immerse yourself in a world of stunning sound quality with AirPods Max, featuring high-fidelity audio and adaptive EQ for an unparalleled listening experience.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: const NeverScrollableScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            //TODO Pin this widget to the top.
            const SliverToBoxAdapter(
              child: Customappbar(),
            ),
          ];
        },
        body: Row(
          children: [
            //feed and points
            Container(
              color: Appcolors.background.toColor(),
              width: 125,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  //Points
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                        left: 15,
                        right: 15,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(100, 102, 111, 0.5),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Custom icon
                          Icon(
                            Icons.token_sharp,
                            color: Appcolors.primaryColor.toColor(),
                          ),
                          //Number of points
                          Text(
                            '${2000}'.toCurrencyString(
                              mantissaLength: 0,
                              shorteningPolicy: ShorteningPolicy.Automatic,
                            ),
                            style: GoogleFonts.montserratAlternates(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Appcolors.secondaryColor.toColor(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  MouseRegion(
                    cursor: MaterialStateMouseCursor.clickable,
                    onExit: (event) {
                      setState(() {
                        isHoveringonfeed = false;
                      });
                    },
                    hitTestBehavior: HitTestBehavior.translucent,
                    onHover: (event) {
                      setState(() {
                        isHoveringonfeed = true;
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        context.go('/home/feed');
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: AnimatedContainer(
                          curve: Curves.linear,
                          duration: const Duration(
                            milliseconds: 100,
                          ),
                          color: isHoveringonfeed == true
                              ? const Color.fromRGBO(100, 102, 111, 0.5)
                              : Colors.transparent,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 5,
                          ),
                          child: Row(children: [
                            Icon(
                              Icons.feed_rounded,
                              color: Appcolors.primaryColor.toColor(),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Feed',
                              style: GoogleFonts.montserratAlternates(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Appcolors.secondaryColor.toColor(),
                              ),
                            )
                          ]),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            //mainpage
            Expanded(
              child: Container(
                color: Colors.amber,
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //first section
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 550,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            color: Appcolors.itemcardcolor.toColor(),
                          ),
                          child: const CustomInitCardForHomeScreen(),
                        ),
                      ],
                    ),
                    //second section
                    Column(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
