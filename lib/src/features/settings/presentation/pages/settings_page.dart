import 'package:custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:numbers/bootstrap.dart';
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
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SettingsCubit>()..init(),
      child: const _SettingsView(),
    );
  }
}

class _SettingsView extends StatelessWidget {
  const _SettingsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        kSettingsTitle,
        iconPath: kBackIconPath,
        iconSize: IconSize.small,
        iconColor: context.theme.primaryColorLight,
        titleSpacing: Space.large,
        onTap: context.pop,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Space.large,
            vertical: Space.medium,
          ),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<SettingsCubit, SettingsState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      loaded: _OptionsListView.new,
                    );
                  },
                ),
              ),
              const _CopyrightText(),
            ],
          ),
        ),
      ),
    );
  }
}

const _kHeroTagPrefix = 'option';
