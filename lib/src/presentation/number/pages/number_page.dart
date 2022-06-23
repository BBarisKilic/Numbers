import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../number.dart';

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
            children: const [
              NumberTextFromField(),
              SizedBox(height: kVerticalSpace),
              InfoContainer(),
              SizedBox(height: kVerticalSpace),
              NumpadGridView(),
            ],
          ),
        ),
      );
}
