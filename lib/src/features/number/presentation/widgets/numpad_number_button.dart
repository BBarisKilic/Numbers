part of '../pages/number_page.dart';

class _NumpadNumberButton extends StatelessWidget {
  const _NumpadNumberButton(
    this.title, {
    required this.onPressed,
    this.borderRadius = BorderRadius.zero,
    int? mainAxisCellCount,
    int? crossAxisCellCount,
  }) : mainAxisCellCount = mainAxisCellCount ?? 1,
       crossAxisCellCount = crossAxisCellCount ?? 1;

  final String title;
  final VoidCallback onPressed;
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
          backgroundColor: WidgetStateProperty.all(context.colorScheme.primary),
          overlayColor: WidgetStateProperty.all(context.theme.splashColor),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: borderRadius),
          ),
        ),
        child: Text(
          title,
          style: context.textTheme.displayMedium?.copyWith(
            color: const Color(0xFFF8F3F7),
          ),
        ),
      ),
    );
  }
}
