import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vegetables/main.dart';
import 'package:vegetables/models/vegeteble_item.dart';
import 'package:vegetables/widgets/icon_buttons.dart';

class BackDropModel extends StatelessWidget {
  const BackDropModel({required this.item, super.key});
  final VegetableItem item;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 215,
      bottom: 0,
      width: 414,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(30),
          ),
          color: colorScheme.background,
        ),
        child: ListView(
          padding: const EdgeInsets.only(top: 52),
          children: [
            Text(
              item.vegetableName,
              style: const TextStyle(
                color: Color(0xFF2D0C57),
                fontSize: 30,
                fontWeight: FontWeight.w700,
                height: 0.05,
                letterSpacing: 0.41,
              ),
            ),
            const SizedBox(height: 50),
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
            const SizedBox(height: 30),
            Text(
              item.quantity,
              style: const TextStyle(
                color: Color(0xFF05BE77),
                fontSize: 17,
                fontWeight: FontWeight.w500,
                height: 0.09,
                letterSpacing: -0.41,
              ),
            ),
            const SizedBox(height: 50),
            Text(
              item.title,
              style: const TextStyle(
                color: Color(0xFF2D0C57),
                fontSize: 22,
                fontWeight: FontWeight.w700,
                height: 0.05,
                letterSpacing: -0.41,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 373,
              height: 194,
              child: Text(
                item.decription,
                style: const TextStyle(
                  color: Color(0xFF9586A8),
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.41,
                ),
              ),
            ),
            const Row(
              children: [
                IconButtonScreen(
                    iconPath: 'assets/icons/heart.svg',
                    iconMargin:
                        EdgeInsets.only(top: 0, bottom: 65, left: 0, right: 10),
                    iconPadding: EdgeInsets.fromLTRB(29, 15, 29, 15),
                    borderColor: Color(0xFFD8D0E3),
                    iconWidth: 78,
                    iconHeight: 56),
                IconButtonScreen(
                  iconPath: 'assets/icons/shopping-cart.svg',
                  color: Color(0xFF0BCE83),
                  label: 'ADD TO CART',
                  iconWidth: 275,
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                  iconHeight: 56,
                  iconMargin:
                      EdgeInsets.only(top: 0, bottom: 65, left: 0, right: 9),
                  iconPadding: EdgeInsets.fromLTRB(60, 16, 60, 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
