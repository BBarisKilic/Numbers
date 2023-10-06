import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:numbers/src/core/core.dart';

class NumpadNumberButton extends StatelessWidget {
  const NumpadNumberButton(
    this.title, {
    required this.onPressed,
    super.key,
    this.mainAxisCellCount = 1,
    this.crossAxisCellCount = 1,
    this.borderRadius = BorderRadius.zero,
  });

  final String title;
  final void Function() onPressed;
  final int mainAxisCellCount;
  final int crossAxisCellCount;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) => StaggeredGridTile.count(
        mainAxisCellCount: mainAxisCellCount,
        crossAxisCellCount: crossAxisCellCount,
        child: OutlinedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: MaterialStateProperty.all(
              context.colorScheme.primary,
            ),
            overlayColor: MaterialStateProperty.all(context.theme.splashColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: borderRadius),
            ),
          ),
          child: Text(
            title,
            style: context.textTheme.displayMedium
                ?.copyWith(color: const Color(0xFFF8F3F7)),
          ),
        ),
      );
}
