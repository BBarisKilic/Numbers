import 'package:custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:numbers/bootstrap.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

part '../widgets/info_container.dart';
part '../widgets/number_text_form_field.dart';
part '../widgets/numpad_action_button.dart';
part '../widgets/numpad_grid_view.dart';
part '../widgets/numpad_number_button.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<NumberCubit>(),
      child: const _NumberView(),
    );
  }
}

class _NumberView extends StatefulWidget {
  const _NumberView();

  @override
  State<_NumberView> createState() => _NumberViewState();
}

class _NumberViewState extends State<_NumberView> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '${_NumpadNumber.zero}');
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
        context.l10n.appTitle,
        iconPath: Assets.images.settings,
        iconSize: IconSize.small,
        iconColor: context.theme.primaryColorLight,
        titleSpacing: AppPadding.large,
        onTap: () => context.push('/${Path.settingsPage}'),
      ),
      body: SafeArea(
        child: Padding(
          padding: AppPadding.general,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _NumberTextFormField(controller: _controller),
              const SizedBox(height: AppPadding.medium),
              const Expanded(child: _InfoContainer()),
              const SizedBox(height: AppPadding.medium),
              _NumpadGridView(controller: _controller),
            ],
          ),
        ),
      ),
    );
  }
}

enum _NumpadNumber {
  one,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
  zero;

  @override
  String toString() {
    switch (this) {
      case one:
        return '1';
      case two:
        return '2';
      case three:
        return '3';
      case four:
        return '4';
      case five:
        return '5';
      case six:
        return '6';
      case seven:
        return '7';
      case eight:
        return '8';
      case nine:
        return '9';
      case zero:
        return '0';
    }
  }
}
