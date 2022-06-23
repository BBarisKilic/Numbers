import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../number.dart';

class NumberTextFromField extends StatelessWidget {
  const NumberTextFromField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: context.read<NumberCubit>().getEditingController,
        enabled: false,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
            borderSide: BorderSide(color: Theme.of(context).dividerColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
            borderSide: BorderSide(color: Theme.of(context).dividerColor),
          ),
        ),
      );
}
