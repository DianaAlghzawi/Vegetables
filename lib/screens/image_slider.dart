import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class MyCarouselSliderModel extends StatefulWidget {
  const MyCarouselSliderModel({required this.images, super.key});
  final List<String> images;
  @override
  State<MyCarouselSliderModel> createState() => _MyCarouselSliderModelState();
}

class _MyCarouselSliderModelState extends State<MyCarouselSliderModel> {
  late List<String> images;

  @override
  void initState() {
    super.initState();
    images = widget.images;
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
            height: 285,
            viewportFraction: 1.0,
          ),
          items: images.map(
            (url) {
              return Stack(
                children: [
                  Image.asset(
                    url,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 110),
                    child: DotsIndicator(
                      dotsCount: images.length,
                      position: _currentIndex,
                      decorator: DotsDecorator(
                        color: Colors.grey,
                        activeColor: Colors.white,
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
