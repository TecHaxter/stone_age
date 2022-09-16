extension ListExtension on List {
  Iterable<E> mapIndexed<E, T>(E Function(int index, T item) f) sync* {
    var index = 0;

    for (final item in this) {
      yield f(index, item);
      index = index + 1;
    }
  }
}
