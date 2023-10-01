import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numbers/src/presentation/presentation.dart';

class NumberTextFormField extends StatelessWidget {
  const NumberTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: context.read<NumberCubit>().getEditingController,
        enabled: false,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            borderSide: BorderSide(color: Theme.of(context).dividerColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            borderSide: BorderSide(color: Theme.of(context).dividerColor),
          ),
        ),
      );
}
