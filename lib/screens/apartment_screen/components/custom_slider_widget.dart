import 'package:book_apartment/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class CustomSliderWidget extends StatefulWidget {
  const CustomSliderWidget({super.key});

  @override
  State<CustomSliderWidget> createState() => _CustomSliderWidgetState();
}

class _CustomSliderWidgetState extends State<CustomSliderWidget> {
  var _maxWidth = 0.0;
  var _width = 0.0;
  var _value = 0.0;
  var _booked = false;

  void _onDrag(DragUpdateDetails details) {
    setState(() {
      _value = (details.globalPosition.dx) / _maxWidth;
      _width = _maxWidth;
    });
  }

  void _onDragEnd(DragEndDetails details) {
    if (_value > .9) {
      _value = 1;
    } else {
      _value = 0;
    }

    setState(() {
      _width = _maxWidth * _value;
      _booked = _value > .9;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        _maxWidth = constraints.maxWidth;
        return Container(
          decoration: BoxDecoration(
            color: _booked ? Colors.greenAccent : secondary,
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(50.0),
              right: Radius.circular(50.0),
            ),
            border: Border.all(
              color: _booked ? Colors.greenAccent : secondary,
              width: 3.0,
            ),
          ),
          height: 60.0,
          child: Stack(
            children: <Widget>[
              Center(
                child: Shimmer(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.black87,
                      Colors.white60,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  child: Text(
                    _booked ? 'Booked' : 'Slide to book',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              AnimatedContainer(
                width: _width <= 55.0 ? 55.0 : _width,
                duration: const Duration(milliseconds: 700),
                child: Row(
                  children: <Widget>[
                    const Expanded(
                      child: SizedBox(),
                    ),
                    GestureDetector(
                      onVerticalDragUpdate: _onDrag,
                      onVerticalDragEnd: _onDragEnd,
                      child: Container(
                        width: 55.0,
                        height: 55.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: const Icon(
                          Icons.keyboard_arrow_right,
                          color: secondary,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
