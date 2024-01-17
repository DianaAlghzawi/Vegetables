import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vegetables/screens/bottom_tab_bar.dart';
import 'package:vegetables/screens/chip_choice.dart';
import 'package:vegetables/screens/search_bar.dart';
import 'package:vegetables/screens/vegetebles_list.dart';

class Vegetables extends StatelessWidget {
  const Vegetables({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topRight,
            color: Theme.of(context).colorScheme.background,
            child: SvgPicture.asset('assets/icons/Vector.svg'),
          ),
          ListView(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chevron_left),
                color: Theme.of(context).colorScheme.primary,
                iconSize: 30,
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(6, 12)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.only(top: 40, left: 11)),
                  alignment: Alignment.bottomLeft,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Vegetable',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ),
              const SearchBarScreen(),
              const ChipsChoiceScreen(),
              const SizedBox(height: 32),
              const VegetablesList(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const BottomTabBarWidget(),
    );
  }
}
