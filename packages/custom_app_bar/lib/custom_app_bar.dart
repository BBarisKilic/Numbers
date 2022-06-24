library custom_app_bar;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
    this.title, {
    super.key,
    required this.iconPath,
    required this.iconSize,
    this.titleSpacing = 8.0,
    required this.onTap,
  });

  final String title;
  final String iconPath;
  final double iconSize;
  final double titleSpacing;
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
                color: Theme.of(context).primaryColorLight,
                width: iconSize,
              ),
            ),
            Text(title),
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
