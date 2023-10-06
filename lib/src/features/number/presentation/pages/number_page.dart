import 'package:custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

part '../widgets/info_container.dart';
part '../widgets/number_text_form_field.dart';
part '../widgets/numpad_action_button.dart';
part '../widgets/numpad_grid_view.dart';
part '../widgets/numpad_number_button.dart';

class NumberPage extends StatefulWidget {
  const NumberPage({super.key});

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '0');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        kAppTitle,
        iconPath: kSettingsIconPath,
        iconSize: IconSize.small,
        iconColor: context.theme.primaryColorLight,
        titleSpacing: Space.large,
        onTap: () => context.push('/${Path.settingsPage}'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Space.large,
            vertical: Space.medium,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _NumberTextFormField(controller: _controller),
              const SizedBox(height: Space.medium),
              const Expanded(child: _InfoContainer()),
              const SizedBox(height: Space.medium),
              _NumpadGridView(controller: _controller),
            ],
          ),
        ),
      ),
    );
  }
}
