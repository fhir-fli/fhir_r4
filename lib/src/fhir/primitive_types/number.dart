import 'dart:convert';
import '../../../fhir_r4.dart';

abstract class FhirNumber extends PrimitiveType<num>
    implements Comparable<FhirNumber> {
  FhirNumber(this.valueNumber, {super.element});

  @override
  String get fhirType => 'number';

  final num valueNumber;

  @override
  num get value => valueNumber;

  @override
  String toString() => valueNumber.toString();
  @override
  num toJson() => valueNumber;
  @override
  num toYaml() => valueNumber;
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirNumber && other.valueNumber == valueNumber) ||
      (other is num && other == valueNumber);

  // Comparison operations
  @override
  int compareTo(FhirNumber other) {
    return valueNumber.compareTo(other.valueNumber);
  }

  bool operator >(Object other) {
    if (other is FhirNumber) {
      return valueNumber > other.valueNumber;
    } else if (other is num) {
      return valueNumber > other;
    }
    throw InvalidTypes<FhirNumber>('Comparison with invalid types');
  }

  bool operator >=(Object other) => this == other || this > other;

  bool operator <(Object other) {
    if (other is FhirNumber) {
      return valueNumber < other.valueNumber;
    } else if (other is num) {
      return valueNumber < other;
    }
    throw InvalidTypes<FhirNumber>('Comparison with invalid types');
  }

  bool operator <=(Object other) => this == other || this < other;

  // Arithmetic operations
  FhirNumber operator +(Object other) {
    final num otherValue =
        other is FhirNumber ? other.valueNumber : other as num;
    return FhirNumber.fromNum(valueNumber + otherValue);
  }

  FhirNumber operator -(Object other) {
    final num otherValue =
        other is FhirNumber ? other.valueNumber : other as num;
    return FhirNumber.fromNum(valueNumber - otherValue);
  }

  FhirNumber operator *(Object other) {
    final num otherValue =
        other is FhirNumber ? other.valueNumber : other as num;
    return FhirNumber.fromNum(valueNumber * otherValue);
  }

  FhirNumber operator /(Object other) {
    final num otherValue =
        other is FhirNumber ? other.valueNumber : other as num;
    return FhirNumber.fromNum(valueNumber / otherValue);
  }

  FhirNumber operator %(Object other) {
    final num otherValue =
        other is FhirNumber ? other.valueNumber : other as num;
    return FhirNumber.fromNum(valueNumber % otherValue);
  }

  FhirNumber operator ~/(Object other) {
    final num otherValue =
        other is FhirNumber ? other.valueNumber : other as num;
    return FhirNumber.fromNum(valueNumber ~/ otherValue);
  }

  FhirNumber operator -() {
    return FhirNumber.fromNum(-valueNumber);
  }

  // Numeric methods
  num abs() => valueNumber.abs();
  num get sign => valueNumber.sign;

  num clamp(num lowerLimit, num upperLimit) {
    return valueNumber.clamp(lowerLimit, upperLimit);
  }

  int round() => valueNumber.round();
  int floor() => valueNumber.floor();
  int ceil() => valueNumber.ceil();
  int truncate() => valueNumber.truncate();

  double roundToDouble() => valueNumber.roundToDouble();
  double floorToDouble() => valueNumber.floorToDouble();
  double ceilToDouble() => valueNumber.ceilToDouble();
  double truncateToDouble() => valueNumber.truncateToDouble();

  String toStringAsFixed(int fractionDigits) =>
      valueNumber.toStringAsFixed(fractionDigits);
  String toStringAsExponential([int? fractionDigits]) =>
      valueNumber.toStringAsExponential(fractionDigits);
  String toStringAsPrecision(int precision) =>
      valueNumber.toStringAsPrecision(precision);

  // Factory constructors for creating FhirNumber from a num
  factory FhirNumber.fromNum(num value) {
    if (value is int) {
      return FhirInteger(value);
    }
    return FhirDecimal(value);
  }

  @override
  FhirNumber setElement(String name, dynamic elementValue) {
    throw UnimplementedError();
  }
}
