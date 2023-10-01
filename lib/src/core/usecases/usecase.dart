// ignore_for_file: one_member_abstracts

abstract class UseCase<T, P> {
  Future<T> call({required P params});
}
