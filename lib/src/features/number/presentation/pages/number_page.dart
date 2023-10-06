import 'package:custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          kAppTitle,
          iconPath: kSettingsIconPath,
          iconSize: IconSize.small,
          iconColor: context.theme.primaryColorLight,
          titleSpacing: Space.large,
          onTap: () => context.read<NumberCubit>().onTapSettingsButton(context),
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Space.large,
              vertical: Space.medium,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                NumberTextFormField(),
                SizedBox(height: Space.medium),
                Expanded(child: InfoContainer()),
                SizedBox(height: Space.medium),
                NumpadGridView(),
              ],
            ),
          ),
        ),
      );
}
