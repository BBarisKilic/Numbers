part of '../pages/settings_page.dart';

class _CopyrightText extends StatelessWidget {
  const _CopyrightText();

  @override
  Widget build(BuildContext context) => Center(
        child: Text(
          kCopyrightText,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      );
}
