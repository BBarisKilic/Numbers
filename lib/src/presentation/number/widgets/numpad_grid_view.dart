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
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '1'),
          ),
          NumpadNumberButton(
            kNumpadTwoText,
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '2'),
          ),
          NumpadNumberButton(
            kNumpadThreeText,
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '3'),
          ),
          NumpadActionButton(
            kNumpadClearText,
            onPressed: () => context.read<NumberCubit>().onPressedClearButton(),
          ),
          NumpadNumberButton(
            kNumpadFourText,
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '4'),
          ),
          NumpadNumberButton(
            kNumpadFiveText,
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '5'),
          ),
          NumpadNumberButton(
            kNumpadSixText,
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '6'),
          ),
          NumpadActionButton(
            kNumpadRemoveLastText,
            onPressed: () =>
                context.read<NumberCubit>().onPressedRemoveLastButton(),
          ),
          NumpadNumberButton(
            kNumpadSevenText,
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '7'),
          ),
          NumpadNumberButton(
            kNumpadEightText,
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '8'),
          ),
          NumpadNumberButton(
            kNumpadNineText,
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '9'),
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
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '0'),
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
