import 'package:book_apartment/models/apartments_model.dart';
import 'package:book_apartment/screens/apartment_screen/components/custom_slider_widget.dart';
import 'package:book_apartment/screens/apartment_screen/components/details_screen_appBar.dart';
import 'package:book_apartment/screens/apartment_screen/components/info_drawer.dart';
import 'package:book_apartment/screens/apartment_screen/components/slider_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ApartmentScreen extends StatefulWidget {
  const ApartmentScreen({super.key, required this.apartment});

  final Apartment apartment;

  @override
  State<ApartmentScreen> createState() => _ApartmentScreenState();
}

class _ApartmentScreenState extends State<ApartmentScreen> {
  int _activeIndex = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    const padding = 24.0;
    _pageController.addListener(() {
      setState(() {
        _activeIndex = _pageController.page!.round();
      });
    });
    final Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.15,
          right: size.width * .15,
          bottom: 24.0 * 2,
        ),
        child: const CustomSliderWidget(),
      ),
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: size.height * .6,
            child: PageView.builder(
              controller: _pageController,
              itemCount: widget.apartment.images.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  'assets/images/${widget.apartment.images[index]}.jpg',
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          SliderDotIndicators(
              padding: padding,
              images: widget.apartment.images,
              activeIndex: _activeIndex),
          DetailsAppBar(
            size: size,
            padding: padding,
            price: widget.apartment.price,
          ),
          ApartmentInfoDrawer(
            apartment: widget.apartment,
          ),
        ],
      ),
    );
  }
}
