import 'package:custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nil/nil.dart';
import 'package:numbers/src/app/app.dart';
import 'package:numbers/src/config/config.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/settings/settings.dart';
import 'package:sharp_toggle_switch/sharp_toggle_switch.dart';

part '../widgets/copyright_text.dart';
part '../widgets/options_list_view.dart';
part '../widgets/themes_bottom_sheet.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          kSettingsTitle,
          iconPath: kBackIconPath,
          iconSize: kSmallIconSize,
          iconColor: Theme.of(context).primaryColorLight,
          titleSpacing: kHorizontalSpace,
          onTap: () => context.read<SettingsCubit>().onTapBackButton(context),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorizontalSpace,
              vertical: kVerticalSpace,
            ),
            child: Column(
              children: [
                Expanded(
                  child: BlocBuilder<SettingsCubit, SettingsState>(
                    builder: (_, state) => state.when(
                      initial: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      loaded: _OptionsListView.new,
                    ),
                  ),
                ),
                const _CopyrightText(),
              ],
            ),
          ),
        ),
      );
}
