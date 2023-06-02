import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/formatter_extension_methods.dart';
import 'package:sqaure_project/presentation/services/colorConverter.dart';

import '../../buisness/ProductBloc/product_bloc.dart';
import '../../data/resources/squareapiwiithoutpackage.dart';
import '../../packages.dart';
import '../constants/appcolors.dart';

class CustomInitCardForHomeScreen extends StatelessWidget {
  const CustomInitCardForHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      bloc: ProductBloc()..add(const GetSingleproduct(value: 5)),
      builder: (context, state) {
        if (state is LoadSingleProduct) {
          return Row(
            children: [
              //ImageCard
              Container(
                width: 250,
                height: 250,
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
                    state.product.image.toString(),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              //Product info
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Name and Favicon

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          constraints: const BoxConstraints(maxWidth: 200),
                          child: Text(
                            state.product.title.toString(),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: Appcolors.secondaryColor.toColor(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            SquareApi.makepayment();
                          },
                          child: Icon(
                            Icons.favorite_outline_rounded,
                            color: Appcolors.secondaryColor.toColor(),
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    //Produt rating
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Wrap(
                            children: List.generate(
                              state.product.rating!.rate!.floor(),
                              (index) => Icon(
                                Icons.star_rate_rounded,
                                size: 20,
                                color: Appcolors.primaryColor.toColor(),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '${state.product.rating!.count} reviews',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w100,
                              fontSize: 15,
                              color: Appcolors.secondaryColor.toColor(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //product description
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      constraints: const BoxConstraints(
                        maxWidth: 230,
                      ),
                      child: Text(
                        state.product.description.toString(),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Appcolors.secondaryColor.toColor(),
                        ),
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
                                  fontSize: 17,
                                  color: Appcolors.secondaryColor.toColor(),
                                ),
                              ),
                              TextSpan(
                                text: '${state.product.price}'.toCurrencyString(
                                  mantissaLength: 2,
                                  leadingSymbol: '\$',
                                ),
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  color: Appcolors.secondaryColor.toColor(),
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
                              color: Appcolors.background.toColor(),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 5,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                  '${25 * state.product.price!.toInt()}'
                                      .toCurrencyString(
                                    mantissaLength: 1,
                                    shorteningPolicy:
                                        ShorteningPolicy.Automatic,
                                  ),
                                  style: GoogleFonts.montserratAlternates(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 17,
                                    color: Appcolors.secondaryColor.toColor(),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        }
        return Container(
          color: Colors.transparent,
          width: 30,
          height: 30,
          child: CircularProgressIndicator(
            color: Appcolors.secondaryColor.toColor(),
          ),
        );
      },
    );
  }
}
