import 'package:flutter/material.dart';

import '../../../core/core.dart';

class CopyrightText extends StatelessWidget {
  const CopyrightText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: Text(
          kCopyrightText,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      );
}
