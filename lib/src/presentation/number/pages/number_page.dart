import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../core/core.dart';
import '../number.dart';
import '../widgets/numpad_grid_view.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Numbers'),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1.0),
            child: Divider(thickness: kThinStrokeWidth, height: 0.0),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: context.read<NumberCubit>().getEditingController,
                enabled: false,
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                    borderSide:
                        BorderSide(color: Theme.of(context).dividerColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                    borderSide:
                        BorderSide(color: Theme.of(context).dividerColor),
                  ),
                ),
              ),
              const SizedBox(height: kVerticalSpace),
              Container(
                height: 28.h,
                padding: const EdgeInsets.symmetric(
                  vertical: kVerticalSpace,
                  horizontal: kHorizontalSpace,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).dividerColor),
                ),
                child: Center(
                  child: SingleChildScrollView(
                    child: BlocBuilder<NumberCubit, NumberState>(
                      builder: (_, state) => state.when(
                        initial: () => const SizedBox(),
                        loading: () => const CircularProgressIndicator(),
                        loaded: (info) => Text(
                          info,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        error: () => const SizedBox(),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: kVerticalSpace),
              const NumpadGridView(),
            ],
          ),
        ),
      );
}
