import 'package:flutter/material.dart';
import 'package:sqaure_project/data/resources/Product-api-provider.dart';

import 'package:sqaure_project/packages.dart';
import 'package:sqaure_project/presentation/constants/appcolors.dart';
import 'package:sqaure_project/presentation/services/colorConverter.dart';
import 'package:sqaure_project/presentation/widgets/widgetExports.dart';

import '../../buisness/ProductBloc/product_bloc.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: BlocConsumer<ProductBloc, ProductState>(
                listener: (context, state) {},
                builder: (context, state) {
                  if (state is ProductLoaded) {
                    return GridView.builder(
                      itemCount: state.productModel.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 30,
                        childAspectRatio: 16 / 9,
                        mainAxisExtent: 280,
                        mainAxisSpacing: 20,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            context.go(
                              '/home/feed/product',
                              extra: state.productModel[index],
                            );
                          },
                          child: FeedCard(
                            itemname: state.productModel[index].title,
                            price: state.productModel[index].price,
                            rating: state.productModel[index].rating?.rate,
                            imageurl: state.productModel[index].image,
                            id: state.productModel[index].id,
                            category: state.productModel[index].category,
                          ),
                        );
                      },
                    );
                  } else if (state is ProductError) {
                    return Center(
                      child: Text(state.errorMessage),
                    );
                  } else if (state is ProductLoading) {
                    return Center(
                      child: CircularProgressIndicator(
                          color: Appcolors.secondaryColor.toColor()),
                    );
                  }
                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
