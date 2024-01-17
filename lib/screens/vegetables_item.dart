import 'package:flutter/material.dart';
import 'package:vegetables/models/vegeteble_item.dart';
import 'package:vegetables/widgets/icon_buttons.dart';
import 'package:vegetables/screens/vegetable_details.dart';

class VegetableItemScreen extends StatelessWidget {
  const VegetableItemScreen({required this.item, super.key});
  final VegetableItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => VegetableDetailsModels(
                item: item,
              ),
            ),
          ),
          child: Container(
            width: 177,
            height: 128,
            margin: const EdgeInsets.all(10),
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage(item.images[0]),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 10),
            margin: const EdgeInsets.symmetric(vertical: 7),
            child: Wrap(
              children: [
                SizedBox(
                  width: 177,
                  height: 24,
                  child: Text(item.vegetableName,
                      style: const TextStyle(
                        color: Color(0xFF2D0C57),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 0.07,
                        letterSpacing: -0.41,
                      )),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      item.price,
                      style: const TextStyle(
                        color: Color(0xFF2D0C57),
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        height: 0.05,
                        letterSpacing: -0.41,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Opacity(
                      opacity: 0.6,
                      child: Text(
                        item.measurementType,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFF9586A8),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 0.09,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    IconButtonScreen(
                      iconPath: 'assets/icons/heart.svg',
                    ),
                    IconButtonScreen(
                      iconPath: 'assets/icons/shopping-cart.svg',
                      color: Color(0xFF0BCE83),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
