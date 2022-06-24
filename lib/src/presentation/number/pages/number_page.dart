import 'package:custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../number.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          kAppTitle,
          iconPath: kSettingsIconPath,
          iconSize: kSmallIconSize,
          titleSpacing: kHorizontalSpace,
          onTap: () => context.read<NumberCubit>().onTapSettingsButton(context),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              NumberTextFormField(),
              SizedBox(height: kVerticalSpace),
              InfoContainer(),
              SizedBox(height: kVerticalSpace),
              NumpadGridView(),
            ],
          ),
        ),
      );
}
