import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../settings.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
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
                    loaded: OptionsListView.new,
                  ),
                ),
              ),
              const CopyrightText(),
            ],
          ),
        ),
      );
}
