import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../core/core.dart';
import '../number.dart';

class NumpadGridView extends StatelessWidget {
  const NumpadGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
        children: [
          NumpadNumberButton(
            kNumpadOneText,
            onPressed: () => context
                .read<NumberCubit>()
                .onPressedNumberButton(context, kNumpadOneText),
          ),
          NumpadNumberButton(
            kNumpadTwoText,
            onPressed: () => context
                .read<NumberCubit>()
                .onPressedNumberButton(context, kNumpadTwoText),
          ),
          NumpadNumberButton(
            kNumpadThreeText,
            onPressed: () => context
                .read<NumberCubit>()
                .onPressedNumberButton(context, kNumpadThreeText),
          ),
          NumpadActionButton(
            kNumpadClearText,
            onPressed: () => context.read<NumberCubit>().onPressedClearButton(),
          ),
          NumpadNumberButton(
            kNumpadFourText,
            onPressed: () => context
                .read<NumberCubit>()
                .onPressedNumberButton(context, kNumpadFourText),
          ),
          NumpadNumberButton(
            kNumpadFiveText,
            onPressed: () => context
                .read<NumberCubit>()
                .onPressedNumberButton(context, kNumpadFiveText),
          ),
          NumpadNumberButton(
            kNumpadSixText,
            onPressed: () => context
                .read<NumberCubit>()
                .onPressedNumberButton(context, kNumpadSixText),
          ),
          NumpadActionButton(
            kNumpadRemoveLastText,
            onPressed: () =>
                context.read<NumberCubit>().onPressedRemoveLastButton(),
          ),
          NumpadNumberButton(
            kNumpadSevenText,
            onPressed: () => context
                .read<NumberCubit>()
                .onPressedNumberButton(context, kNumpadSevenText),
          ),
          NumpadNumberButton(
            kNumpadEightText,
            onPressed: () => context
                .read<NumberCubit>()
                .onPressedNumberButton(context, kNumpadEightText),
          ),
          NumpadNumberButton(
            kNumpadNineText,
            onPressed: () => context
                .read<NumberCubit>()
                .onPressedNumberButton(context, kNumpadNineText),
          ),
          NumpadActionButton(
            kNumpadRandomText,
            onPressed: () =>
                context.read<NumberCubit>().onPressedRandomButton(),
          ),
          NumpadNumberButton(
            kNumpadZeroText,
            crossAxisCellCount: 2,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(12.0),
            ),
            onPressed: () => context
                .read<NumberCubit>()
                .onPressedNumberButton(context, kNumpadZeroText),
          ),
          NumpadActionButton(
            kNumpadSearchText,
            crossAxisCellCount: 2,
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(12.0),
            ),
            onPressed: () =>
                context.read<NumberCubit>().onPressedSearchButton(),
          ),
        ],
      );
}
