import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Find your flat',
          style: GoogleFonts.montserrat(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 26.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              splashRadius: 20.0,
              icon: Icon(
                Icons.search,
                size: 28.0,
                color: Colors.grey[500],
              ),
            ),
            IconButton(
              onPressed: () {},
              splashRadius: 20.0,
              icon: Icon(
                Icons.filter_list,
                size: 28.0,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
