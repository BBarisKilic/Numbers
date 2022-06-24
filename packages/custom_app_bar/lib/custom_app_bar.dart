library custom_app_bar;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
    this.title, {
    super.key,
    this.titleColor,
    this.titleSpacing = 8.0,
    required this.iconPath,
    required this.iconSize,
    this.iconColor,
    required this.onTap,
  });

  final String title;
  final Color? titleColor;
  final double titleSpacing;
  final String iconPath;
  final double iconSize;
  final Color? iconColor;

  final void Function() onTap;

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
                color: iconColor,
                width: iconSize,
              ),
            ),
            Text(
              title,
              style: TextStyle(color: titleColor),
            ),
            SizedBox(width: iconSize),
          ],
        ),
        automaticallyImplyLeading: false,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(thickness: 1.0, height: 0.0),
        ),
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
