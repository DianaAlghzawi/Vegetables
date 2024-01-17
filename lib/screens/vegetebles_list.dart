import 'package:flutter/material.dart';
import 'package:vegetables/data/vegetebles_dummy.dart';
import 'package:vegetables/screens/vegetables_item.dart';

class VegetablesList extends StatelessWidget {
  const VegetablesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        vegeteblesList.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: VegetableItemScreen(item: vegeteblesList[index]),
        ),
      ),
    );
  }
}
