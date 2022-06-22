import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/core/core.dart';
import 'src/injector.dart' as di;
import 'src/presentation/number/number.dart';
import 'src/presentation/number/pages/number_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.initializeDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<NumberCubit>(
        create: (context) => di.injector(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: kMaterialAppTitle,
          home: NumberPage(),
        ),
      );
}
