import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Abstract class representing a FHIR number type, which could be an
/// integer or a decimal. Extends [PrimitiveType] and implements [Comparable].
abstract class FhirNumber extends PrimitiveType<num?>
    implements Comparable<FhirNumber> {
  /// Constructor accepting a [num] value and an optional [element].
  FhirNumber(super.value, [super.element]);

  /// Factory to create either a [FhirInteger] or [FhirDecimal] based on input.
  factory FhirNumber.fromNum(num? value, [Element? element]) {
    if (value == null) {
      throw const FormatException(
        'FhirNumber cannot be created with a null value',
      );
    }
    return value is int
        ? FhirInteger(value, element)
        : FhirDecimal(value, element);
  }

  /// Factory to create either a [FhirInteger] or [FhirDecimal] based on input.
  factory FhirNumber.fromNumPositiveInt(num? value, [Element? element]) {
    if (value == null) {
      throw const FormatException(
        'FhirNumber cannot be created with a null value',
      );
    }
    return value is int
        ? FhirPositiveInt(value, element)
        : FhirDecimal(value, element);
  }

  /// Factory to create either a [FhirInteger] or [FhirDecimal] based on input.
  factory FhirNumber.fromNumUnsignedInt(num? value, [Element? element]) {
    if (value == null) {
      throw const FormatException(
        'FhirNumber cannot be created with a null value',
      );
    }
    return value is int
        ? FhirUnsignedInt(value, element)
        : FhirDecimal(value, element);
  }

  /// Factory constructor to create a [FhirNumber] from JSON input.
  factory FhirNumber.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;

    if (value == null) {
      throw const FormatException(
        'Invalid input for FhirNumber: value is null',
      );
    }
    return FhirNumber.fromNum(value, element);
  }

  /// Factory constructor to create a [FhirNumber] from YAML input.
  static FhirNumber fromYaml(dynamic yaml) => yaml is String
      ? FhirNumber.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirNumber.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError('Input must be a YAML string or YAML map.');

  /// Returns the FHIR type: 'number'.
  @override
  String get fhirType => 'number';

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FhirNumber] instances.
  static List<FhirNumber> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length.',
      );
    }

    return List.generate(values.length, (i) {
      final value = values[i] as num?;
      final element = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirNumber.fromNum(value, element);
    });
  }

  /// Converts a list of [FhirNumber] instances to a JSON map.
  static Map<String, dynamic> toJsonList(List<FhirNumber> numbers) => {
        'value': numbers.map((n) => n.value).toList(),
        '_value': numbers.map((n) => n.element?.toJson()).toList(),
      };

  /// String representation of the instance.
  @override
  String toString() => value?.toString() ?? 'null';

  /// Overrides equality operator.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirNumber && other.value == value) ||
      (other is num && other == value);

  /// Hash code for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Compares this instance with another [FhirNumber].
  @override
  int compareTo(FhirNumber other) {
    if (value == null || other.value == null) return 0;
    return value!.compareTo(other.value!);
  }

  /// Arithmetic Operators

  /// Addition operator.
  FhirNumber? operator +(Object other) =>
      _operateOrNull(other, (a, b) => a + b);

  /// Subtraction operator.
  FhirNumber? operator -(Object other) =>
      _operateOrNull(other, (a, b) => a - b);

  /// Multiplication operator.
  FhirNumber? operator *(Object other) =>
      _operateOrNull(other, (a, b) => a * b);

  /// Division operator.
  FhirNumber? operator /(Object other) =>
      _operateOrNull(other, (a, b) => a / b);

  /// Modulo operator.
  FhirNumber? operator %(Object other) =>
      _operateOrNull(other, (a, b) => a % b);

  /// Truncating division operator.
  FhirNumber? operator ~/(Object other) =>
      _operateOrNull(other, (a, b) => a ~/ b);

  /// Unary minus operator.
  FhirNumber? operator -() =>
      value == null ? null : FhirNumber.fromNum(-value!);

  /// Comparison Operators

  /// Equality operator.
  bool operator >(Object other) => _compareOrFalse(other, (a, b) => a > b);

  /// Greater than or equal to operator.
  bool operator >=(Object other) => _compareOrFalse(other, (a, b) => a >= b);

  /// Less than operator.
  bool operator <(Object other) => _compareOrFalse(other, (a, b) => a < b);

  /// Less than or equal to operator.
  bool operator <=(Object other) => _compareOrFalse(other, (a, b) => a <= b);

  // Helper Methods

  bool _bothNonNull(Object other) =>
      value != null && _extractValue(other) != null;

  FhirNumber? _operateOrNull(Object other, num Function(num, num) operation) {
    if (!_bothNonNull(other)) return null;
    final otherValue = _extractValue(other)!;
    return this is FhirPositiveInt
        ? FhirNumber.fromNumPositiveInt(operation(value!, otherValue))
        : this is FhirUnsignedInt
            ? FhirNumber.fromNumUnsignedInt(operation(value!, otherValue))
            : FhirNumber.fromNum(operation(value!, otherValue));
  }

  bool _compareOrFalse(Object other, bool Function(num, num) comparison) {
    return _bothNonNull(other) && comparison(value!, _extractValue(other)!);
  }

  num? _extractValue(Object other) {
    if (other is FhirNumber) return other.value;
    if (other is num) return other;
    throw ArgumentError('Expected FhirNumber or num, but got: $other.');
  }

  // Additional Methods

  /// Returns the absolute value of the number.
  num? abs() => value?.abs();

  /// Returns the sign of the number.
  num? get sign => value?.sign;

  /// Returns the remainder of the division of this number by [other].
  num? clamp(num lowerLimit, num upperLimit) =>
      value?.clamp(lowerLimit, upperLimit);

  /// Returns the integer value closest to this number.
  int? round() => value?.round();

  /// Returns the greatest integer no greater than this number.
  int? floor() => value?.floor();

  /// Returns the smallest integer no smaller than this number.
  int? ceil() => value?.ceil();

  /// Returns the integer obtained by discarding any fractional digits.
  int? truncate() => value?.truncate();

  /// Returns the number rounded to the nearest integer.
  double? roundToDouble() => value?.roundToDouble();

  /// Returns the greatest double value no greater than this number.
  double? floorToDouble() => value?.floorToDouble();

  /// Returns the smallest double value no smaller than this number.
  double? ceilToDouble() => value?.ceilToDouble();

  /// Returns the double obtained by discarding any fractional digits.
  double? truncateToDouble() => value?.truncateToDouble();

  /// Returns the number raised to the power of [exponent].
  String? toStringAsFixed(int fractionDigits) =>
      value?.toStringAsFixed(fractionDigits);

  /// Returns the number in exponential notation.
  String? toStringAsExponential([int? fractionDigits]) =>
      value?.toStringAsExponential(fractionDigits);

  /// Returns the number in decimal notation.
  String? toStringAsPrecision(int precision) =>
      value?.toStringAsPrecision(precision);

  @override
  FhirNumber clone() => FhirNumber.fromNum(value, element?.clone() as Element?);

  @override
  FhirNumber setElement(String name, dynamic elementValue) =>
      FhirNumber.fromNum(value, element?.setProperty(name, elementValue));

  @override
  FhirNumber copyWith({
    num? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirNumber.fromNum(
      newValue ?? value,
      element?.copyWith(
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
        children: children,
        namedChildren: namedChildren,
      ),
    );
  }
}
