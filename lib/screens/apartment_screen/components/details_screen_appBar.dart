import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({
    Key? key,
    required this.size,
    required this.padding,
    required this.price,
  }) : super(key: key);

  final Size size;
  final double padding;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: size.width * 0.09,
          height: size.height * 0.04,
          margin: EdgeInsets.fromLTRB(padding, padding * 2, padding, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.grey[600],
          ),
          child: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(
              Icons.close,
              color: Colors.white,
              size: 18.0,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(padding, padding * 2, padding, 0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(30.0),
              right: Radius.circular(30.0),
            ),
            color: Colors.grey[600],
          ),
          child: Padding(
            padding: EdgeInsets.all(padding * .4),
            child: Text(
              '€${price.toStringAsFixed(0)}/month',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
