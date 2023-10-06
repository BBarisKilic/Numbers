import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Space.large,
          vertical: Space.medium,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: context.theme.dividerColor),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: BlocBuilder<NumberCubit, NumberState>(
              builder: (_, state) {
                return state.when(
                  initial: () => Text(
                    kSearchANumberText,
                    textAlign: TextAlign.center,
                    style: context.textTheme.titleMedium,
                  ),
                  loading: () => const CircularProgressIndicator(),
                  loaded: (info) => Text(
                    info,
                    textAlign: TextAlign.center,
                    style: context.textTheme.titleMedium,
                  ),
                  error: () => Text(
                    kCheckInternetConnection,
                    textAlign: TextAlign.center,
                    style: context.textTheme.titleMedium,
                  ),
                );
              },
            ),
          ),
        ),
      );
}
