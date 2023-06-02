import 'package:flutter/material.dart';
import 'package:sqaure_project/presentation/services/colorConverter.dart';

import '../../packages.dart';
import '../constants/appcolors.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({
    super.key,
    this.itemname,
    this.rating,
    this.price,
    this.imageurl,
    this.id,
    this.category,
  });

  final String? itemname;
  final double? rating;
  final double? price;
  final String? imageurl;
  final int? id;
  final String? category;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: MaterialStateMouseCursor.clickable,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Appcolors.itemcardcolor.toColor(),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 175,
              decoration: BoxDecoration(
                color: Appcolors.secondaryColor.toColor(),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.network(
                  imageurl.toString(),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // color: Colors.amber,
                  constraints: const BoxConstraints(
                    maxWidth: 150,
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 5,
                  ),
                  child: Text(
                    itemname ?? 'item',
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                      color: Appcolors.secondaryColor.toColor(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Wrap(
                    children: List.generate(
                      rating!.floor(),
                      (index) => Icon(
                        Icons.star_rate_rounded,
                        color: Appcolors.primaryColor.toColor(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                            text: 'Price: ',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: Appcolors.secondaryColor.toColor(),
                              fontSize: 15,
                            ),
                          ),
                          TextSpan(
                            text: '${price ?? 2000}'.toCurrencyString(
                              mantissaLength: 2,
                              leadingSymbol: '\$',
                            ),
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Appcolors.secondaryColor.toColor(),
                            ),
                          )
                        ]),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
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
                              size: 15,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '${25 * price!.toInt()}'.toCurrencyString(
                                mantissaLength: 1,
                                shorteningPolicy: ShorteningPolicy.Automatic,
                              ),
                              style: GoogleFonts.montserratAlternates(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Appcolors.secondaryColor.toColor(),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  MouseRegion(
                    cursor: MaterialStateMouseCursor.clickable,
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.favorite_outline_rounded,
                        color: Appcolors.secondaryColor.toColor(),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
