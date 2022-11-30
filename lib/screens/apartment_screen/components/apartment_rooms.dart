import 'package:book_apartment/models/apartments_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApartmentRooms extends StatelessWidget {
  const ApartmentRooms({
    Key? key,
    required this.padding,
    required this.apartment,
  }) : super(key: key);

  final double padding;
  final Apartment apartment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: padding * .5),
              child: Text(
                'Living room',
                style: GoogleFonts.montserrat(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              '${apartment.sizeLivingRoom} sqft',
              style: GoogleFonts.montserrat(
                color: Colors.black54,
              ),
            ),
          ],
        ),
        Container(
          width: 1,
          height: 40.0,
          color: Colors.black38,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: padding * .5),
              child: Text(
                'Bedroom',
                style: GoogleFonts.montserrat(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              '${apartment.sizeBedRoom} sqft',
              style: GoogleFonts.montserrat(
                color: Colors.black54,
              ),
            ),
          ],
        ),
        Container(
          width: 1,
          height: 40.0,
          color: Colors.black38,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: padding * .5),
              child: Text(
                'Bathroom',
                style: GoogleFonts.montserrat(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              '${apartment.sizeBathRoom} sqft',
              style: GoogleFonts.montserrat(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
