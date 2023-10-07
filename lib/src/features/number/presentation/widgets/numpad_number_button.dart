part of '../pages/number_page.dart';

final class _NumpadNumberButton extends StatelessWidget {
  const _NumpadNumberButton(
    this.title, {
    required this.onPressed,
    this.borderRadius = BorderRadius.zero,
    int? mainAxisCellCount,
    int? crossAxisCellCount,
  })  : mainAxisCellCount = mainAxisCellCount ?? 1,
        crossAxisCellCount = crossAxisCellCount ?? 1;

  final String title;
  final void Function() onPressed;
  final int mainAxisCellCount;
  final int crossAxisCellCount;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
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
}
