import 'package:book_apartment/utils/reusable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApartmentName extends StatelessWidget {
  const ApartmentName({
    Key? key,
    required this.size,
    required this.apartmentList,
    required this.index,
  }) : super(key: key);

  final Size size;
  final List apartmentList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.only(left: 40.0, right: 12.0, bottom: 12.0),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: size.width * .18,
              child: Text(
                '${apartmentList[index].name}',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
            ),
            addHorizontalSpace(5.0),
            Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: const Icon(
                Icons.directions,
                color: Colors.white,
                size: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
