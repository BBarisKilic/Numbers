import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NumpadNumberButton extends StatelessWidget {
  const NumpadNumberButton(
    this.title, {
    Key? key,
    required this.onPressed,
    this.mainAxisCellCount = 1,
    this.crossAxisCellCount = 1,
    this.borderRadius = BorderRadius.zero,
  }) : super(key: key);

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
              Theme.of(context).colorScheme.primary,
            ),
            overlayColor:
                MaterialStateProperty.all(Theme.of(context).splashColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: borderRadius),
            ),
          ),
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: const Color(0xffF8F3F7)),
          ),
        ),
      );
}
