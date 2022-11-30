import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingsReviews extends StatelessWidget {
  const RatingsReviews({
    Key? key,
    required this.padding,
    required this.apartmentList,
    required this.index,
  }) : super(key: key);

  final double padding;
  final List<dynamic> apartmentList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        RatingBar.builder(
          itemSize: padding * .5,
          initialRating: 3.5,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(
            horizontal: 1.0,
          ),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {},
        ),
        Text(
          '${apartmentList[index].reviewCount.toStringAsFixed(0)} reviews',
          style: GoogleFonts.montserrat(
            fontSize: 12.0,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
