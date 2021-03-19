import 'package:flutter/material.dart';

import './bottom_nav_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding:
          EdgeInsets.symmetric(horizontal: size.width * .15, vertical: 18),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: 'Today',
            svgSrc: "assets/icons/calendar.svg",
          ),
          BottomNavItem(
            title: 'All Exercises',
            svgSrc: "assets/icons/gym.svg",
            isActive: true,
          ),
          BottomNavItem(
            title: 'Today',
            svgSrc: "assets/icons/Settings.svg",
          ),
        ],
      ),
    );
  }
}