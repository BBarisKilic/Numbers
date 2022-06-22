import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../number.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(title: const Text('Number')),
        body: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () =>
                    context.read<NumberCubit>().getNumberInfo(number: 5),
                child: const Text('Get Info'),
              ),
              BlocBuilder<NumberCubit, NumberState>(
                builder: (context, state) => state.when(
                  initial: () => const SizedBox(),
                  loading: () => const CircularProgressIndicator(),
                  loaded: (info) => Text(info),
                  error: () => const SizedBox(),
                ),
              ),
            ],
          ),
        ),
      );
}
