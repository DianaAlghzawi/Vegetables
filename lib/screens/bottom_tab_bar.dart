import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vegetables/data/vegetable_filters.dart';

class BottomTabBarWidget extends StatelessWidget {
  const BottomTabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: tabItems.map((item) => _buildTabItem(item['iconPath']!)).toList(),
    );
  }

  BottomNavigationBarItem _buildTabItem(String iconPath) {
    return BottomNavigationBarItem(
      icon: _buildTabItemContent(iconPath),
      label: '',
    );
  }

  Widget _buildTabItemContent(String iconPath) {
    return SizedBox(
      height: 55,
      child: SvgPicture.asset(
        alignment: Alignment.bottomCenter,
        iconPath,
      ),
    );
  }
}
