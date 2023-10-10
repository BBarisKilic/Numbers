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
              return state.when(
                initial: () {
                  return Text(
                    context.l10n.searchANumber,
                    textAlign: TextAlign.center,
                    style: context.textTheme.titleMedium,
                  );
                },
                loading: () {
                  return const CircularProgressIndicator();
                },
                loaded: (info) {
                  return Text(
                    info,
                    textAlign: TextAlign.center,
                    style: context.textTheme.titleMedium,
                  );
                },
                error: () {
                  return Text(
                    context.l10n.checkInternetConnection,
                    textAlign: TextAlign.center,
                    style: context.textTheme.titleMedium,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
