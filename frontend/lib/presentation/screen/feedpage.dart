import 'package:flutter/material.dart';
import 'package:sqaure_project/packages.dart';
import 'package:sqaure_project/presentation/constants/appcolors.dart';
import 'package:sqaure_project/presentation/services/colorConverter.dart';
import 'package:sqaure_project/presentation/widgets/widgetExports.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: const NeverScrollableScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const SliverToBoxAdapter(
              child: Customappbar(),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                ),
                child: Text(
                  'Feed',
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Appcolors.secondaryColor.toColor(),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  itemCount: 50,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 30,
                    childAspectRatio: 16 / 9,
                    mainAxisExtent: 280,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return const FeedCard();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
