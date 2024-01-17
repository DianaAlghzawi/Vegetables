import 'package:vegetables/models/vegeteble_item.dart';
import 'package:flutter/material.dart';
import 'package:vegetables/screens/backdrop.dart';
import 'package:vegetables/screens/image_slider.dart';

class VegetableDetailsModels extends StatelessWidget {
  const VegetableDetailsModels({required this.item, super.key});
  final VegetableItem item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.chevron_left),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          MyCarouselSliderModel(images: item.images),
          BackDropModel(item: item),
        ],
      ),
    );
  }
}
