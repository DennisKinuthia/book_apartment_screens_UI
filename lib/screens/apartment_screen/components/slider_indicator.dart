import 'package:flutter/material.dart';
import 'package:flutter_slider_indicator/flutter_slider_indicator.dart';

class SliderDotIndicators extends StatelessWidget {
  const SliderDotIndicators({
    Key? key,
    required this.padding,
    required this.images,
    required this.activeIndex,
  }) : super(key: key);

  final double padding;
  final List<dynamic> images;
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: padding * 2),
        child: SliderIndicator(
          length: images.length,
          activeIndex: activeIndex,
          indicator: const Icon(
            Icons.radio_button_unchecked,
            color: Colors.white,
            size: 15.0,
          ),
          activeIndicator: const Icon(
            Icons.fiber_manual_record,
            color: Colors.white,
            size: 15.0,
          ),
        ),
      ),
    );
  }
}
