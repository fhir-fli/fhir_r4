import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';

/// Abstract class representing a FHIR number type, which could either be an
/// integer or a decimal. This class extends [PrimitiveType] and implements
/// [Comparable].
abstract class FhirNumber extends PrimitiveType<num>
    implements Comparable<FhirNumber> {
  /// Constructor that accepts a [num] value and optionally an [element].
  FhirNumber(this.valueNumber, {super.element});

  /// Factory constructor that returns either a [FhirInteger] or [FhirDecimal]
  /// based on the type of the [value].
  factory FhirNumber.fromNum(num value) {
    if (value is int) {
      return FhirInteger(value);
    }
    return FhirDecimal(value);
  }

  /// The FHIR type, which is always 'number' for this abstract class.
  @override
  String get fhirType => 'number';

  /// The [num] value stored in this [FhirNumber].
  final num valueNumber;

  /// The getter for the [valueNumber] stored in this [FhirNumber].
  @override
  num get value => valueNumber;

  /// Converts the [FhirNumber] to a string.
  @override
  String toString() => valueNumber.toString();

  /// Converts the [FhirNumber] to JSON format.
  @override
  num toJson() => valueNumber;

  /// Converts the [FhirNumber] to YAML format.
  @override
  num toYaml() => valueNumber;

  /// Converts the [FhirNumber] to a JSON string.
  @override
  String toJsonString() => jsonEncode(toJson());

  /// Hash code for the [FhirNumber], based on the [value].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  /// Compares equality between this [FhirNumber] and [other].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Checks if this [FhirNumber] is equal to [other].
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirNumber && other.valueNumber == valueNumber) ||
      (other is num && other == valueNumber);

  /// Compares this [FhirNumber] to [other] for ordering.
  @override
  int compareTo(FhirNumber other) {
    return valueNumber.compareTo(other.valueNumber);
  }

  /// Greater-than comparison between this [FhirNumber] and [other].
  bool operator >(Object other) {
    if (other is FhirNumber) {
      return valueNumber > other.valueNumber;
    } else if (other is num) {
      return valueNumber > other;
    }
    throw InvalidTypes<FhirNumber>('Comparison with invalid types');
  }

  /// Greater-than or equal-to comparison between this [FhirNumber] and [other].
  bool operator >=(Object other) => this == other || this > other;

  /// Less-than comparison between this [FhirNumber] and [other].
  bool operator <(Object other) {
    if (other is FhirNumber) {
      return valueNumber < other.valueNumber;
    } else if (other is num) {
      return valueNumber < other;
    }
    throw InvalidTypes<FhirNumber>('Comparison with invalid types');
  }

  /// Less-than or equal-to comparison between this [FhirNumber] and [other].
  bool operator <=(Object other) => this == other || this < other;

  /// Addition of two [FhirNumber] values or [num] values.
  FhirNumber operator +(Object other) {
    final otherValue = other is FhirNumber ? other.valueNumber : other as num;
    return FhirNumber.fromNum(valueNumber + otherValue);
  }

  /// Subtraction of two [FhirNumber] values or [num] values.
  FhirNumber operator -(Object other) {
    final otherValue = other is FhirNumber ? other.valueNumber : other as num;
    return FhirNumber.fromNum(valueNumber - otherValue);
  }

  /// Multiplication of two [FhirNumber] values or [num] values.
  FhirNumber operator *(Object other) {
    final otherValue = other is FhirNumber ? other.valueNumber : other as num;
    return FhirNumber.fromNum(valueNumber * otherValue);
  }

  /// Division of two [FhirNumber] values or [num] values.
  FhirNumber operator /(Object other) {
    final otherValue = other is FhirNumber ? other.valueNumber : other as num;
    return FhirNumber.fromNum(valueNumber / otherValue);
  }

  /// Modulo operation between two [FhirNumber] values or [num] values.
  FhirNumber operator %(Object other) {
    final otherValue = other is FhirNumber ? other.valueNumber : other as num;
    return FhirNumber.fromNum(valueNumber % otherValue);
  }

  /// Integer division between two [FhirNumber] values or [num] values.
  FhirNumber operator ~/(Object other) {
    final otherValue = other is FhirNumber ? other.valueNumber : other as num;
    return FhirNumber.fromNum(valueNumber ~/ otherValue);
  }

  /// Unary negation for a [FhirNumber] value.
  FhirNumber operator -() {
    return FhirNumber.fromNum(-valueNumber);
  }

  /// Returns the absolute value of this [FhirNumber].
  num abs() => valueNumber.abs();

  /// Returns the sign of this [FhirNumber].
  num get sign => valueNumber.sign;

  /// Clamps this [FhirNumber] to a range between [lowerLimit] and [upperLimit].
  num clamp(num lowerLimit, num upperLimit) {
    return valueNumber.clamp(lowerLimit, upperLimit);
  }

  /// Rounds the [FhirNumber] to the nearest integer.
  int round() => valueNumber.round();

  /// Returns the largest integer less than or equal to the [FhirNumber].
  int floor() => valueNumber.floor();

  /// Returns the smallest integer greater than or equal to the [FhirNumber].
  int ceil() => valueNumber.ceil();

  /// Truncates the [FhirNumber] to the nearest integer.
  int truncate() => valueNumber.truncate();

  /// Returns the [FhirNumber] rounded to a double.
  double roundToDouble() => valueNumber.roundToDouble();

  /// Returns the [FhirNumber] floored to a double.
  double floorToDouble() => valueNumber.floorToDouble();

  /// Returns the [FhirNumber] ceiled to a double.
  double ceilToDouble() => valueNumber.ceilToDouble();

  /// Returns the [FhirNumber] truncated to a double.
  double truncateToDouble() => valueNumber.truncateToDouble();

  /// Converts the [FhirNumber] to a string with [fractionDigits].
  String toStringAsFixed(int fractionDigits) =>
      valueNumber.toStringAsFixed(fractionDigits);

  /// Converts the [FhirNumber] to a string in exponential notation.
  String toStringAsExponential([int? fractionDigits]) =>
      valueNumber.toStringAsExponential(fractionDigits);

  /// Converts the [FhirNumber] to a string with [precision] digits.
  String toStringAsPrecision(int precision) =>
      valueNumber.toStringAsPrecision(precision);

  /// Sets an element value to the [FhirNumber] object.
  @override
  FhirNumber setElement(String name, dynamic elementValue) {
    throw UnimplementedError();
  }
}
