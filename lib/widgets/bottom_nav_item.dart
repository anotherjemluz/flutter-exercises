import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

class BottomNavItem extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function onPressed;
  final bool isActive;

  const BottomNavItem({
    Key key,
    this.svgSrc,
    this.title,
    this.onPressed,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset(
            svgSrc,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          )
        ],
      ),
    );
  }
}
