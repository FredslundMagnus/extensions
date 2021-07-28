extension Mixer<E> on Iterable<E> {
  List<E> mix() {
    List<E> l = this.toList();
    l.shuffle();
    return l;
  }
}


extension Capitalize on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(int i, E e) f) {
    var i = 0;
    return map((e) => f(i++, e));
  }
}