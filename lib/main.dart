import 'package:flutter/material.dart';

import 'src/app/app.dart';
import 'src/injector.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.initializeDependencies();

  runApp(const App());
}
