import 'package:book_apartment/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApartmentFeatures extends StatelessWidget {
  const ApartmentFeatures({
    Key? key,
    required this.index,
    required this.apartmentList,
  }) : super(key: key);

  final List<dynamic> apartmentList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      runSpacing: 1.0,
      children: <Widget>[
        ...apartmentList[index].features.map(
              (feature) => Container(
                margin: const EdgeInsets.only(bottom: 2.0, right: 8.0),
                decoration: const BoxDecoration(
                  color: secondary,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30.0),
                    right: Radius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    feature,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 9.0,
                    ),
                  ),
                ),
              ),
            ),
      ],
    );
  }
}
