part of '../pages/number_page.dart';

class _InfoContainer extends StatelessWidget {
  const _InfoContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.general,
      decoration: BoxDecoration(
        border: Border.all(color: context.theme.dividerColor),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: BlocBuilder<NumberCubit, NumberState>(
            builder: (context, state) {
              return switch (state) {
                Initial() => Text(
                  context.l10n.searchANumber,
                  textAlign: TextAlign.center,
                  style: context.textTheme.titleMedium,
                ),
                Loading() => const CircularProgressIndicator(),
                Loaded(:final info) => Text(
                  info,
                  textAlign: TextAlign.center,
                  style: context.textTheme.titleMedium,
                ),
                Error() => Text(
                  context.l10n.checkInternetConnection,
                  textAlign: TextAlign.center,
                  style: context.textTheme.titleMedium,
                ),
              };
            },
          ),
        ),
      ),
    );
  }
}
