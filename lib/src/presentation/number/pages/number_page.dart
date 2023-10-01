import 'package:custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/presentation/presentation.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          kAppTitle,
          iconPath: kSettingsIconPath,
          iconSize: kSmallIconSize,
          iconColor: Theme.of(context).primaryColorLight,
          titleSpacing: kHorizontalSpace,
          onTap: () => context.read<NumberCubit>().onTapSettingsButton(context),
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kHorizontalSpace,
              vertical: kVerticalSpace,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                NumberTextFormField(),
                SizedBox(height: kVerticalSpace),
                Expanded(child: InfoContainer()),
                SizedBox(height: kVerticalSpace),
                NumpadGridView(),
              ],
            ),
          ),
        ),
      );
}
