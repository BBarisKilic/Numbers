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
          border: Border.all(color: Theme.of(context).dividerColor),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: BlocBuilder<NumberCubit, NumberState>(
              builder: (_, state) => state.when(
                initial: () => Text(
                  kSearchANumberText,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                loading: () => const CircularProgressIndicator(),
                loaded: (info) => Text(
                  info,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                error: () => Text(
                  kCheckInternetConnection,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ),
        ),
      );
}
