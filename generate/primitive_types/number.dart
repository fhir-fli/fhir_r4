// Package imports:
import 'package:meta/meta.dart';

import 'primitive_types.dart';

@immutable
abstract class FhirNumber implements PrimitiveType, Comparable<FhirNumber> {
  const FhirNumber(this.valueString, this.valueNumber, this.isValid);

  final String valueString;
  final num? valueNumber;
  @override
  final bool isValid;

  @override
  int get hashCode => valueString.hashCode;
  @override
  num? get value => valueNumber;

  @override
  String toString() => valueString;

  @override
  dynamic toJson() => valueNumber;
  @override
  dynamic toYaml() => valueNumber;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirNumber && other.valueNumber == valueNumber) ||
      (other is num && other == valueNumber);

  bool operator >(Object o) => valueNumber == null ||
          (o is! FhirNumber && o is! num) ||
          (o is FhirNumber && o.valueNumber == null)
      ? throw InvalidTypes<FhirNumber>(
          'One of the values is not valid or null\n'
          'This number is: ${toString()}, compared number is $o')
      : o is FhirNumber
          ? valueNumber! > o.valueNumber!
          : valueNumber! > (o as num);

  bool operator >=(Object o) => this == o || this > o;

  bool operator <(Object o) => valueNumber == null ||
          (o is! FhirNumber && o is! num) ||
          (o is FhirNumber && o.valueNumber == null)
      ? throw InvalidTypes<FhirNumber>(
          'One of the values is not valid or null\n'
          'This number is: ${toString()}, compared number is $o')
      : o is FhirNumber
          ? valueNumber! < o.valueNumber!
          : valueNumber! < (o as num);

  bool operator <=(Object o) => this == o || this < o;
}
