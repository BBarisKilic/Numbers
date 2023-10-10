part of '../pages/settings_page.dart';

class _CopyrightText extends StatelessWidget {
  const _CopyrightText();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.l10n.copyRight,
        style: context.textTheme.bodyMedium,
      ),
    );
  }
}
