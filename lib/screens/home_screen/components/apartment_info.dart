import 'package:book_apartment/screens/home_screen/components/apartment_features.dart';
import 'package:book_apartment/screens/home_screen/components/reviewers_pics.dart';
import 'package:book_apartment/screens/home_screen/components/reviews.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApartmentInformation extends StatelessWidget {
  const ApartmentInformation({
    Key? key,
    required this.padding,
    required this.size,
    required this.index,
    required this.apartmentList,
  }) : super(key: key);

  final double padding;
  final Size size;
  final int index;
  final List<dynamic> apartmentList;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(padding * 0.5),
        width: size.width * 0.45,
        height: size.height * 0.225,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(padding * 0.5),
          boxShadow: const [
            BoxShadow(
              spreadRadius: 1.0,
              blurRadius: 7.0,
              color: Colors.black12,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '€${apartmentList[index].price.toStringAsFixed(0)}/month',
                textAlign: TextAlign.left,
                style: GoogleFonts.montserrat(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                apartmentList[index].sizeDesc,
                textAlign: TextAlign.left,
                style: GoogleFonts.montserrat(
                  fontSize: 12.0,
                  color: Colors.grey[500],
                ),
              ),
              RatingsReviews(
                padding: padding,
                index: index,
                apartmentList: apartmentList,
              ),
              ReviewersImages(
                index: index,
                apartmentList: apartmentList,
              ),
              ApartmentFeatures(index: index, apartmentList: apartmentList),
            ],
          ),
        ),
      ),
    );
  }
}
