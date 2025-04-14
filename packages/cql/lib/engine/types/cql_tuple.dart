import '../../cql.dart';

class CqlTuple implements CqlType {
  Map<String, dynamic>? elements;
  State? state;

  CqlTuple({Map<String, dynamic>? elements, this.state})
      : elements = elements ?? (state != null ? <String, dynamic>{} : null);

  CqlTuple copyWith({Map<String, dynamic>? elements, State? state}) =>
      CqlTuple(elements: elements ?? this.elements, state: state ?? this.state);

  @override
  bool equivalent(Object other) => other is CqlTuple
      ? Equivalent.equivalent(this, other).valueBoolean ?? false
      : false;

  @override
  bool? equal(Object other) =>
      other is CqlTuple ? Equal.equal(this, other)?.valueBoolean : null;

  @override
  String toString() {
    if ((elements?.length ?? 0) == 0) {
      return "Tuple { : }";
    } else {
      String builder = 'Tuple {\n';
      elements?.forEach((key, value) {
        builder += '\t"$key": "$value"\n';
      });
      builder += '}';
      return builder;
    }
  }
}

class State {}
