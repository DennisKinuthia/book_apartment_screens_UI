import 'package:book_apartment/models/apartments_model.dart';
import 'package:book_apartment/screens/apartment_screen/components/apartment_rooms.dart';
import 'package:book_apartment/utils/constants.dart';
import 'package:book_apartment/utils/reusable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApartmentDescription extends StatefulWidget {
  const ApartmentDescription({
    Key? key,
    required this.padding,
    required this.apartment,
  }) : super(key: key);

  final double padding;
  final Apartment apartment;

  @override
  State<ApartmentDescription> createState() => _ApartmentDescriptionState();
}

class _ApartmentDescriptionState extends State<ApartmentDescription> {
  int _maxLines = 3;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      margin: EdgeInsets.only(top: widget.padding),
      decoration: const BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Center(
            child: Icon(
              Icons.drag_handle_rounded,
              color: secondary,
              size: 30.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: widget.padding * .5, horizontal: widget.padding),
            child: Text(
              widget.apartment.name,
              style: GoogleFonts.montserrat(
                color: Colors.black87,
                fontWeight: FontWeight.w900,
                fontSize: 24.0,
              ),
            ),
          ),
          ApartmentRooms(
            padding: widget.padding,
            apartment: widget.apartment,
          ),
          addVerticalHeight(widget.padding),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: widget.padding),
            child: Text(
              widget.apartment.desc,
              maxLines: _maxLines,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.montserrat(
                color: Colors.black87,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: widget.padding * .5, horizontal: widget.padding),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (_maxLines == 3) {
                    _maxLines = 10;
                  } else {
                    _maxLines = 3;
                  }
                });
              },
              child: Text(
                _maxLines == 3 ? 'Show more' : 'Show less',
                style: GoogleFonts.montserrat(
                  color: secondary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
