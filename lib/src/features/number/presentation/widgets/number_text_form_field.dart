import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

class NumberTextFormField extends StatelessWidget {
  const NumberTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: context.read<NumberCubit>().getEditingController,
      style: context.textTheme.titleMedium,
      enabled: false,
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          borderSide: BorderSide(color: context.theme.dividerColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          borderSide: BorderSide(color: context.theme.dividerColor),
        ),
      ),
    );
  }
}
