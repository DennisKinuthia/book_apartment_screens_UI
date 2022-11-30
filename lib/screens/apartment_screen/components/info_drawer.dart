import 'package:book_apartment/models/apartments_model.dart';
import 'package:book_apartment/screens/apartment_screen/components/apartment_description.dart';
import 'package:book_apartment/utils/constants.dart';
import 'package:flutter/material.dart';

class ApartmentInfoDrawer extends StatelessWidget {
  const ApartmentInfoDrawer({
    Key? key,
    required this.apartment,
  }) : super(key: key);

  final Apartment apartment;

  @override
  Widget build(BuildContext context) {
    const padding = 24.0;
    return DraggableScrollableSheet(
      initialChildSize: .4,
      maxChildSize: .6,
      minChildSize: .4,
      builder: (context, controller) {
        return SingleChildScrollView(
          controller: controller,
          scrollDirection: Axis.vertical,
          child: Stack(
            children: <Widget>[
              ApartmentDescription(
                padding: padding,
                apartment: apartment,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: padding),
                  child: FloatingActionButton(
                    backgroundColor: primary,
                    onPressed: () {},
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
