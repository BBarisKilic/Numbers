// ignore_for_file: one_member_abstracts

import 'package:numbers/src/core/core.dart';

abstract interface class UseCase<T, P extends Params> {
  Future<T> call({required P params});
}
