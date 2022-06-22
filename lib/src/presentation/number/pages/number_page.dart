import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../number.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Numbers',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1.0),
            child: Divider(thickness: 1.0, height: 0.0),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              OutlinedButton(
                onPressed: () =>
                    context.read<NumberCubit>().getNumberInfo(number: 5),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Get Info'),
                ),
              ),
              BlocBuilder<NumberCubit, NumberState>(
                builder: (_, state) => state.when(
                  initial: () => const SizedBox(),
                  loading: () => const CircularProgressIndicator(),
                  loaded: Text.new,
                  error: () => const SizedBox(),
                ),
              ),
            ],
          ),
        ),
      );
}
