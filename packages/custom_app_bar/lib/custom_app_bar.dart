/// A Flutter package that provides a custom app bar widget.
library;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
    this.title, {
    required this.onTap,
    required this.iconPath,
    required this.iconSize,
    this.titleColor,
    this.titleSpacing = 8.0,
    this.iconColor,
    super.key,
  });

  final String title;
  final VoidCallback onTap;
  final Color? titleColor;
  final double titleSpacing;
  final String iconPath;
  final double iconSize;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) => AppBar(
    titleSpacing: titleSpacing,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onTap,
          child: SvgPicture.asset(
            iconPath,
            width: iconSize,
            colorFilter:
                iconColor != null
                    ? ColorFilter.mode(iconColor!, BlendMode.srcIn)
                    : null,
          ),
        ),
        Text(title, style: TextStyle(color: titleColor)),
        SizedBox(width: iconSize),
      ],
    ),
    automaticallyImplyLeading: false,
    bottom: const PreferredSize(
      preferredSize: Size.fromHeight(1),
      child: Divider(thickness: 1, height: 0),
    ),
  );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
