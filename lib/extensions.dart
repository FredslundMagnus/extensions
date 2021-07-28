extension Mixer<E> on Iterable<E> {
  List<E> mix() {
    var l = toList();
    l.shuffle();
    return l;
  }
}

extension Capitalize on String {
  String capitalize() {
    if (isEmpty) return '';
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}

extension CapitalizeWithNull on String? {
  String? capitalize() {
    var temp = this;
    if (temp == null) return null;
    return temp.capitalize();
  }
}

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(int i, E e) f) {
    var i = 0;
    return map((e) => f(i++, e));
  }
}
