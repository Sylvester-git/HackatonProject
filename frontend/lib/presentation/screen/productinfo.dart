import 'package:flutter/material.dart';
import 'package:sqaure_project/buisness/productPriceMultiplierCubit/product_price_multiplier_cubit.dart';
import 'package:sqaure_project/data/model/productmodel.dart';
import 'package:sqaure_project/packages.dart';
import 'package:sqaure_project/presentation/constants/appcolors.dart';
import 'package:sqaure_project/presentation/services/colorConverter.dart';

import '../widgets/widgetExports.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
    this.productnfo,
  });

  final ProductModel? productnfo;
  final String dummytext2 = 'Enter your postal code for delivery availability';
  final String dummytext =
      'Immerse yourself in a world of stunning sound quality with AirPods Max, featuring high-fidelity audio and adaptive EQ for an unparalleled listening experience.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              color: Colors.amber,
              height: MediaQuery.of(context).size.height,
            ),
          ),
          //Produt into container
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${productnfo!.category} / ',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w100,
                            fontSize: 15,
                            color: Appcolors.secondaryColor.toColor(),
                          ),
                        ),
                        TextSpan(
                          text: productnfo!.title,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Appcolors.secondaryColor.toColor(),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //image
                    Container(
                      width: 360,
                      height: 360,
                      margin: const EdgeInsets.only(right: 30),
                      decoration: BoxDecoration(
                        color: Appcolors.secondaryColor.toColor(),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        child: Image.network(
                          productnfo!.image.toString(),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    //Product info
                    SizedBox(
                      width: 450,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //product name
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                constraints:
                                    const BoxConstraints(maxWidth: 370),
                                child: Text(
                                  productnfo!.title.toString(),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 30,
                                    color: Appcolors.secondaryColor.toColor(),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Icon(
                                Icons.favorite_outline_rounded,
                                color: Appcolors.secondaryColor.toColor(),
                                size: 30,
                              ),
                            ],
                          ),
                          //Rating
                          Row(
                            children: [
                              Wrap(
                                children: List.generate(
                                  productnfo!.rating!.rate!.floor(),
                                  (index) => Icon(
                                    Icons.star_rate_rounded,
                                    size: 30,
                                    color: Appcolors.primaryColor.toColor(),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '${productnfo!.rating!.count} reviews',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 15,
                                  color: Appcolors.secondaryColor.toColor(),
                                ),
                              ),
                            ],
                          ),
                          //Product description
                          Text(
                            dummytext,
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Appcolors.secondaryColor.toColor(),
                            ),
                          ),
                          //price
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Row(
                              children: [
                                Text.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                      text: 'Price: ',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 30,
                                        color:
                                            Appcolors.secondaryColor.toColor(),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '${productnfo!.price}'
                                          .toCurrencyString(
                                        mantissaLength: 2,
                                        leadingSymbol: '\$',
                                      ),
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 30,
                                        color:
                                            Appcolors.secondaryColor.toColor(),
                                      ),
                                    ),
                                  ]),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                //Token value
                                Container(
                                  decoration: BoxDecoration(
                                    color: Appcolors.itemcardcolor.toColor(),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 5,
                                    vertical: 5,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.token_rounded,
                                        color: Appcolors.primaryColor.toColor(),
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '${25 * productnfo!.price!.toInt()}'
                                            .toCurrencyString(
                                          mantissaLength: 1,
                                          shorteningPolicy:
                                              ShorteningPolicy.Automatic,
                                        ),
                                        style: GoogleFonts.montserratAlternates(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 18,
                                          color: Appcolors.secondaryColor
                                              .toColor(),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Add to cart
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //Add to cart Button
                                BlocBuilder<ProductPriceMultiplierCubit,
                                    ProductPriceMultiplierState>(
                                  builder: (context, priceMultiplierstate) {
                                    if (priceMultiplierstate.priceIncreament >=
                                        1) {
                                      return
                                          //Price Multiplier
                                          Container(
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(20),
                                          ),
                                          color: Appcolors
                                              .counterButtonBackgroud
                                              .toColor(),
                                        ),
                                        child: Row(children: [
                                          //Minus Button
                                          MouseRegion(
                                            cursor: MaterialStateMouseCursor
                                                .clickable,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                left: 2,
                                              ),
                                              child: GestureDetector(
                                                onTap: () {
                                                  context
                                                      .read<
                                                          ProductPriceMultiplierCubit>()
                                                      .decrement();
                                                },
                                                child: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 2,
                                                    vertical: 2,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Appcolors
                                                        .secondaryColor
                                                        .toColor(),
                                                  ),
                                                  child: const Center(
                                                    child: Icon(
                                                      Icons.arrow_left_outlined,
                                                      size: 20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          //Price Multiplier Value
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 5,
                                            ),
                                            child: Text(
                                              '${priceMultiplierstate.priceIncreament}',
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20,
                                                color: Appcolors
                                                    .priceValueMultiplier
                                                    .toColor(),
                                              ),
                                            ),
                                          ),
                                          //Add Button
                                          MouseRegion(
                                            cursor: MaterialStateMouseCursor
                                                .clickable,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                right: 2,
                                              ),
                                              child: GestureDetector(
                                                onTap: () {
                                                  context
                                                      .read<
                                                          ProductPriceMultiplierCubit>()
                                                      .increment();
                                                },
                                                child: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 2,
                                                    vertical: 2,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Appcolors
                                                        .secondaryColor
                                                        .toColor(),
                                                  ),
                                                  child: const Center(
                                                    child: Icon(
                                                      Icons.add,
                                                      size: 20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ]),
                                      );
                                    }
                                    return MouseRegion(
                                      cursor:
                                          MaterialStateMouseCursor.clickable,
                                      child: GestureDetector(
                                        onTap: () {
                                          context
                                              .read<
                                                  ProductPriceMultiplierCubit>()
                                              .increment();
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: 5,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(20),
                                            ),
                                            border: Border.all(
                                              color: Appcolors.primaryColor
                                                  .toColor(),
                                              width: 2,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Add to Cart',
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                color: Appcolors.secondaryColor
                                                    .toColor(),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                //Buy Now
                                MouseRegion(
                                  cursor: MaterialStateMouseCursor.clickable,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        border: Border.all(
                                          color:
                                              Appcolors.primaryColor.toColor(),
                                          width: 2,
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Buy Now',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            color: Appcolors.secondaryColor
                                                .toColor(),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              padding: const EdgeInsets.only(
                                top: 5,
                                left: 10,
                                right: 10,
                                bottom: 10,
                              ),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                border: Border.all(
                                  color: Appcolors.primaryColor.toColor(),
                                  width: 2,
                                ),
                                color: Appcolors.background.toColor(),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  //Free Delivery
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 22,
                                        ),
                                        child: Icon(
                                          Icons.agriculture_rounded,
                                          size: 25,
                                          color: Appcolors.secondaryColor
                                              .toColor(),
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Free Delivery',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15,
                                              color: Appcolors.secondaryColor
                                                  .toColor(),
                                            ),
                                          ),
                                          Text(
                                            dummytext2,
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color: Appcolors.secondaryColor
                                                  .toColor(),
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor: Appcolors
                                                  .secondaryColor
                                                  .toColor(),
                                              decorationThickness: 2,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  //Return delivery
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 22,
                                          ),
                                          child: Icon(
                                            Icons.directions_walk_outlined,
                                            size: 25,
                                            color: Appcolors.secondaryColor
                                                .toColor(),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Return Delivery',
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15,
                                                color: Appcolors.secondaryColor
                                                    .toColor(),
                                              ),
                                            ),
                                            Text(
                                              dummytext2,
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13,
                                                color: Appcolors.secondaryColor
                                                    .toColor(),
                                                decoration:
                                                    TextDecoration.underline,
                                                decorationColor: Appcolors
                                                    .secondaryColor
                                                    .toColor(),
                                                decorationThickness: 2,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
