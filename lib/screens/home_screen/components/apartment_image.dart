import 'package:book_apartment/screens/home_screen/components/apartment_name.dart';
import 'package:book_apartment/screens/home_screen/components/linear_gradient.dart';
import 'package:flutter/material.dart';

class ApartmentImage extends StatelessWidget {
  const ApartmentImage({
    Key? key,
    required this.size,
    required this.padding,
    required this.apartmentList,
    required this.index,
  }) : super(key: key);

  final Size size;
  final double padding;
  final List apartmentList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: size.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(padding * .5),
          boxShadow: const [
            BoxShadow(
              blurRadius: 7.0,
              color: Colors.black12,
              spreadRadius: 1.0,
            ),
          ],
          image: DecorationImage(
            image: ExactAssetImage(
                'assets/images/${apartmentList[index].images.first}.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            const CardLinearGradient(),
            ApartmentName(
                size: size, apartmentList: apartmentList, index: index),
          ],
        ),
      ),
    );
  }
}
