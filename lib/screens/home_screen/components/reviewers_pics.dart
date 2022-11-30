import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewersImages extends StatelessWidget {
  const ReviewersImages({
    Key? key,
    required this.index,
    required this.apartmentList,
  }) : super(key: key);

  final int index;
  final List<dynamic> apartmentList;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ...apartmentList[index].personImages.map(
              (img) => Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  radius: 16.0,
                  backgroundImage: AssetImage('assets/images/$img.jpeg'),
                ),
              ),
            ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CircleAvatar(
            backgroundColor: Colors.black26,
            radius: 16.0,
            child: Text(
              '+99',
              style: GoogleFonts.montserrat(
                fontSize: 12.0,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
