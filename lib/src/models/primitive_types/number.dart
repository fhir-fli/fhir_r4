import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Abstract class representing a FHIR number type, which could be an
/// integer or a decimal. Extends [PrimitiveType] and implements [Comparable].
abstract class FhirNumber extends PrimitiveType<num?>
    implements Comparable<FhirNumber> {
  /// Constructor accepting a [num] value and an optional [element].
  FhirNumber(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Number',
  }) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
  }

  /// Factory to create either a [FhirInteger] or [FhirDecimal] based on input.
  factory FhirNumber.fromNum({
    required num value,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    String? objectPath,
  }) {
    return value is int
        ? FhirInteger(
            value,
            element: element,
            id: id,
            extension_: extension_,
            objectPath: objectPath,
          )
        : FhirDecimal(
            value,
            element: element,
            id: id,
            extension_: extension_,
            objectPath: objectPath,
          );
  }

  /// Factory to create either a [FhirInteger] or [FhirDecimal] for PositiveInt.
  factory FhirNumber.fromNumPositiveInt({
    required num value,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) {
    return value is int
        ? FhirPositiveInt(
            value,
            element: element,
            id: id,
            extension_: extension_,
          )
        : FhirDecimal(
            value,
            element: element,
            id: id,
            extension_: extension_,
          );
  }

  /// Factory to create either a [FhirInteger] or [FhirDecimal] for UnsignedInt.
  factory FhirNumber.fromNumUnsignedInt({
    required num value,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) {
    return value is int
        ? FhirUnsignedInt(
            value,
            element: element,
            id: id,
            extension_: extension_,
          )
        : FhirDecimal(
            value,
            element: element,
            id: id,
            extension_: extension_,
          );
  }

  /// Factory constructor to create a [FhirNumber] from JSON input.
  factory FhirNumber.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null) {
      throw const FormatException(
        'FhirNumber cannot be created with a null value.',
      );
    }
    return FhirNumber.fromNum(value: value, element: element);
  }

  /// Factory constructor to create a [FhirNumber] from YAML input.
  static FhirNumber fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirNumber.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirNumber.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw ArgumentError('Input must be a YAML string or YAML map.');
  }

  /// Returns the FHIR type: 'number'.
  @override
  String get fhirType => 'number';

  /// Serializes the instance to JSON with standardized keys.
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
      return FhirNumber.fromNum(value: value!, element: element);
    });
  }

  /// Converts a list of [FhirNumber] instances to a JSON map.
  static Map<String, dynamic> toJsonList(List<FhirNumber> numbers) => {
        'value': numbers.map((n) => n.value).toList(),
        '_value': numbers.map((n) => n.element?.toJson()).toList(),
      };

  /// String representation of the instance.
  @override
  String toString() => value.toString();

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value?.toString();

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

  /// Arithmetic operators.
  /// Returns null if either value is null.

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

  /// Integer division operator.
  FhirNumber? operator ~/(Object other) =>
      _operateOrNull(other, (a, b) => a ~/ b);

  /// Unary negation operator.
  FhirNumber? operator -() =>
      value == null ? null : FhirNumber.fromNum(value: -value!);

  /// Comparison operators.

  /// Greater than operator.
  bool operator >(Object other) => _compareOrFalse(other, (a, b) => a > b);

  /// Greater than or equal to operator.
  bool operator >=(Object other) => _compareOrFalse(other, (a, b) => a >= b);

  /// Less than operator.
  bool operator <(Object other) => _compareOrFalse(other, (a, b) => a < b);

  /// Less than or equal to operator.
  bool operator <=(Object other) => _compareOrFalse(other, (a, b) => a <= b);

  /// Rounding methods.
  int round() => value!.round();

  /// Flooring methods.
  int floor() => value!.floor();

  /// Ceiling methods.
  int ceil() => value!.ceil();

  /// Absolute value method.
  num abs() => value!.abs();

  /// Helper methods for arithmetic and comparisons.
  bool _bothNonNull(Object other) =>
      value != null && _extractValue(other) != null;

  FhirNumber? _operateOrNull(Object other, num Function(num, num) operation) {
    if (!_bothNonNull(other)) return null;
    final otherValue = _extractValue(other)!;
    return FhirNumber.fromNum(value: operation(value!, otherValue));
  }

  bool _compareOrFalse(Object other, bool Function(num, num) comparison) {
    return _bothNonNull(other) && comparison(value!, _extractValue(other)!);
  }

  num? _extractValue(Object other) {
    if (other is FhirNumber) return other.value;
    if (other is num) return other;
    throw ArgumentError('Expected FhirNumber or num, but got: $other.');
  }

  /// Clones this instance.
  @override
  FhirNumber clone() =>
      FhirNumber.fromNum(value: value!, element: element?.clone() as Element?);

  /// Creates a modified copy with updated properties.
  @override
  FhirNumber copyWith({
    num? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return FhirNumber.fromNum(
      value: newValue ?? value!,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
