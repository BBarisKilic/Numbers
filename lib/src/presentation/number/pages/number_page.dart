import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/core.dart';
import '../number.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          titleSpacing: kHorizontalSpace,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () =>
                    context.read<NumberCubit>().onTapSettingsButton(context),
                child: SvgPicture.asset(
                  kSettingsIconPath,
                  color: Theme.of(context).primaryColorLight,
                  width: kIconSize,
                ),
              ),
              const Text(kMaterialAppTitle),
              const SizedBox(width: kIconSize)
            ],
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1.0),
            child: Divider(thickness: kThinStrokeWidth, height: 0.0),
          ),
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
