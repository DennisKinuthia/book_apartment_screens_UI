import 'package:book_apartment/screens/home_screen/components/apartment_image.dart';
import 'package:book_apartment/screens/home_screen/components/apartment_info.dart';
import 'package:flutter/material.dart';

class ApartmentCard extends StatelessWidget {
  const ApartmentCard({
    Key? key,
    required this.padding,
    required this.size,
    required this.apartmentList,
    required this.index,
  }) : super(key: key);

  final double padding;
  final Size size;
  final List<dynamic> apartmentList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding * 0.5),
      height: size.height * 0.3,
      child: Stack(
        children: <Widget>[
          ApartmentImage(
            size: size,
            padding: padding,
            apartmentList: apartmentList,
            index: index,
          ),
          ApartmentInformation(
            padding: padding,
            size: size,
            index: index,
            apartmentList: apartmentList,
          ),
        ],
      ),
    );
  }
}
