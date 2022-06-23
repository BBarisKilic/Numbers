import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../number.dart';
import 'numpad_action_button.dart';
import 'numpad_number_button.dart';

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
            '1',
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '1'),
          ),
          NumpadNumberButton(
            '2',
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '2'),
          ),
          NumpadNumberButton(
            '3',
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '3'),
          ),
          NumpadActionButton(
            'C',
            onPressed: () => context.read<NumberCubit>().onPressedClearButton(),
          ),
          NumpadNumberButton(
            '4',
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '4'),
          ),
          NumpadNumberButton(
            '5',
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '5'),
          ),
          NumpadNumberButton(
            '6',
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '6'),
          ),
          NumpadActionButton(
            'CE',
            onPressed: () =>
                context.read<NumberCubit>().onPressedRemoveLastButton(),
          ),
          NumpadNumberButton(
            '7',
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '7'),
          ),
          NumpadNumberButton(
            '8',
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '8'),
          ),
          NumpadNumberButton(
            '9',
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '9'),
          ),
          NumpadActionButton(
            'Rand',
            onPressed: () =>
                context.read<NumberCubit>().onPressedRandomButton(),
          ),
          NumpadNumberButton(
            '0',
            crossAxisCellCount: 2,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(12.0),
            ),
            onPressed: () =>
                context.read<NumberCubit>().onPressedNumberButton(context, '0'),
          ),
          NumpadActionButton(
            'Search',
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
