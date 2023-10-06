part of '../pages/number_page.dart';

class _NumpadNumberButton extends StatelessWidget {
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

enum _NumpadNumber {
  one,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
  zero;

  const _NumpadNumber();

  @override
  String toString() {
    switch (this) {
      case one:
        return '1';
      case two:
        return '2';
      case three:
        return '3';
      case four:
        return '4';
      case five:
        return '5';
      case six:
        return '6';
      case seven:
        return '7';
      case eight:
        return '8';
      case nine:
        return '9';
      case zero:
        return '0';
    }
  }
}
