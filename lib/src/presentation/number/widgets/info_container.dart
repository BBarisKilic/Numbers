import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../number.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(
          vertical: kVerticalSpace,
          horizontal: kHorizontalSpace,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).dividerColor),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: BlocBuilder<NumberCubit, NumberState>(
              builder: (_, state) => state.when(
                initial: () => const SizedBox(),
                loading: () => const CircularProgressIndicator(),
                loaded: (info) => Text(
                  info,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                error: () => const SizedBox(),
              ),
            ),
          ),
        ),
      );
}
