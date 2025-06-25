part of 'primitive_types.dart';

/// An abstract class representing a FHIR numeric type (integer, decimal, etc.).
///
/// Extends [PrimitiveType] and implements [Comparable<FhirNumber>].
/// The idea is that [FhirDecimal], [FhirInteger], [FhirPositiveInt],
/// [FhirUnsignedInt], etc., all subclass [FhirNumber].
///
/// *Note:* This class itself cannot be directly instantiated. Use its
/// public factory methods
/// ([fromNum], [fromNumPositiveInt], [fromNumUnsignedInt])
/// to create a concrete subclass instance.
abstract class FhirNumber extends PrimitiveType
    implements Comparable<FhirNumber> {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Internal constructor for child classes. Does no validation—just calls
  /// [super._].
  const FhirNumber._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factory Methods (Routing to child classes)
  // --------------------------------------------------------------------------

  /// Creates either a [FhirInteger] or [FhirDecimal] from [value].
  ///
  /// - If [value] is an integer, returns a [FhirInteger].
  /// - Otherwise, returns a [FhirDecimal].
  factory FhirNumber.fromNum({
    required num value,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) {
    return value is int
        ? FhirInteger(
            value.toString(),
            element: element,
            id: id,
            extension_: extension_,
          )
        : FhirDecimal(
            value.toString(),
            element: element,
            id: id,
            extension_: extension_,
          );
  }

  /// Creates either a [FhirPositiveInt] or [FhirDecimal] from [value],
  /// intended for positive integers. (If [value] is not an integer,
  /// returns [FhirDecimal].)
  factory FhirNumber.fromNumPositiveInt({
    required num value,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) {
    return value is int
        ? FhirPositiveInt(
            value.toString(),
            element: element,
            id: id,
            extension_: extension_,
          )
        : FhirDecimal(
            value.toString(),
            element: element,
            id: id,
            extension_: extension_,
          );
  }

  /// Creates either a [FhirUnsignedInt] or [FhirDecimal] from [value],
  /// intended for unsigned integers. (If [value] is not an integer,
  /// returns [FhirDecimal].)
  factory FhirNumber.fromNumUnsignedInt({
    required num value,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) {
    return value is int
        ? FhirUnsignedInt(
            value.toString(),
            element: element,
            id: id,
            extension_: extension_,
          )
        : FhirDecimal(
            value.toString(),
            element: element,
            id: id,
            extension_: extension_,
          );
  }

  /// Creates a [FhirNumber] from a JSON [Map].
  ///
  /// Uses [fromNum] internally. Expects `'value'` to be a [num].
  factory FhirNumber.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson == null ? null : Element.fromJson(elementJson);

    if (value == null) {
      throw const FormatException(
        'FhirNumber cannot be created with a null value.',
      );
    }
    return FhirNumber.fromNum(value: value, element: element);
  }

  /// Creates a [FhirNumber] from a YAML input ([String] or [YamlMap]).
  static FhirNumber fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirNumber.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirNumber.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError('Input must be a YAML string or YAML map.');
    }
  }

  // --------------------------------------------------------------------------
  // Overrides from PrimitiveType
  // --------------------------------------------------------------------------

  /// Returns `"number"` by default, though subclasses often override
  /// (e.g. `"decimal"`, `"integer"`).
  @override
  String get fhirType => 'number';

  /// Converts this numeric type to JSON.
  ///
  /// - `'value'`: the numeric value (if non-null).
  /// - `'_value'`: the [element] (if non-null).
  @override
  Map<String, dynamic> toJson() {
    return {
      if (valueNum != null) 'value': valueNum,
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Returns a [List<FhirNumber>] from parallel [values] and [elements].
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
      final v = values[i] as num?;
      final e = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      if (v == null) {
        throw const FormatException(
          'FhirNumber cannot be created with a null value in array.',
        );
      }
      return FhirNumber.fromNum(value: v, element: e);
    });
  }

  /// Converts a list of [FhirNumber] to a JSON map with parallel `'value'`
  /// and `'_value'`.
  static Map<String, dynamic> toJsonList(List<FhirNumber> values) => {
        'value': values.map((val) => val.valueNum).toList(),
        '_value': values.map((val) => val.element?.toJson()).toList(),
      };

  /// Returns this numeric value as a [num], or `null` if there's no value.
  num? get valueNum {
    // Subclasses typically override with specialized parsing.
    if (valueString == null) return null;
    try {
      if (this is FhirInteger ||
          this is FhirPositiveInt ||
          this is FhirUnsignedInt) {
        return int.parse(valueString!);
      } else if (this is FhirDecimal) {
        return double.parse(valueString!);
      } else {
        throw FormatException(
          'FhirNumber cannot interpret non-numeric value: $valueString',
        );
      }
    } catch (e) {
      throw FormatException(
        'FhirNumber cannot parse non-numeric value: $valueString',
      );
    }
  }

  @override
  String toString() => valueString ?? 'null';

  @override
  String? get primitiveValue => valueString;

  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirNumber &&
      other.valueString == valueString &&
      ((element == null && other.element == null) ||
          (element != null && element!.equalsDeep(other.element)));

  /// Equality operator checks if [other] is a [FhirNumber] with the same
  /// string, or if [other] is a Dart [num] with the same numeric value.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirNumber && other.valueString == valueString) ||
      (other is num && other == valueNum);

  /// Combines [valueString] and [element] for hashing.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Comparable & Basic Arithmetic
  // --------------------------------------------------------------------------

  /// Compares this [FhirNumber] to [other] by numeric value.
  /// Returns 0 if either is `null`.
  @override
  int compareTo(FhirNumber other) {
    if (valueNum == null || other.valueNum == null) return 0;
    return valueNum!.compareTo(other.valueNum!);
  }

  /// Addition operator. Returns `null` if either operand is `null`.
  /// Otherwise returns a new [FhirNumber] with the sum.
  FhirNumber? operator +(Object other) =>
      _operateOrNull(other, (a, b) => a + b);

  /// Subtraction operator. Returns `null` if either operand is `null`.
  FhirNumber? operator -(Object other) =>
      _operateOrNull(other, (a, b) => a - b);

  /// Multiplication operator. Returns `null` if either operand is `null`.
  FhirNumber? operator *(Object other) =>
      _operateOrNull(other, (a, b) => a * b);

  /// Division operator. Returns [FhirDecimal] result if not null.
  FhirNumber? operator /(Object other) =>
      _operateOrNull(other, (a, b) => a / b);

  /// Euclidean modulo operator. Returns `null` if either operand is `null`.
  FhirNumber? operator %(Object other) =>
      _operateOrNull(other, (a, b) => a % b);

  /// Truncating division operator. Returns `null` if either operand is `null`.
  FhirNumber? operator ~/(Object other) =>
      _operateOrNull(other, (a, b) => a ~/ b);

  /// Negation operator (unary minus). Returns a new [FhirNumber]
  /// with negated value.
  FhirNumber? operator -() =>
      valueNum == null ? null : FhirNumber.fromNum(value: -valueNum!);

  /// Greater-than operator returning `true`/`false`.
  bool operator >(Object other) => _compareOrFalse(other, (a, b) => a > b);

  /// Greater-than-or-equal operator returning `true`/`false`.
  bool operator >=(Object other) => _compareOrFalse(other, (a, b) => a >= b);

  /// Less-than operator returning `true`/`false`.
  bool operator <(Object other) => _compareOrFalse(other, (a, b) => a < b);

  /// Less-than-or-equal operator returning `true`/`false`.
  bool operator <=(Object other) => _compareOrFalse(other, (a, b) => a <= b);

  /// Rounds this number to the nearest integer.
  int round() => valueNum!.round();

  /// Rounds this number down to the nearest integer
  /// (towards negative infinity).
  int floor() => valueNum!.floor();

  /// Rounds this number up to the nearest integer (towards positive infinity).
  int ceil() => valueNum!.ceil();

  /// Returns the absolute value (positive magnitude).
  num abs() => valueNum!.abs();

  // --------------------------------------------------------------------------
  // Internal Helpers
  // --------------------------------------------------------------------------

  bool _bothNonNull(Object other) =>
      valueNum != null && _extractValue(other) != null;

  /// Applies [operation] if both [this.valueNum] and `_extractValue(other)`
  /// are non-null.
  /// Returns `null` otherwise.
  FhirNumber? _operateOrNull(Object other, num Function(num, num) operation) {
    if (!_bothNonNull(other)) return null;
    final otherVal = _extractValue(other)!;
    return this is FhirDecimal || other is FhirDecimal
        ? FhirDecimal(operation(valueNum!, otherVal))
        : FhirNumber.fromNum(value: operation(valueNum!, otherVal));
  }

  /// Applies [comparison] if both sides are non-null, else returns false.
  bool _compareOrFalse(Object other, bool Function(num, num) comparison) {
    return _bothNonNull(other) && comparison(valueNum!, _extractValue(other)!);
  }

  /// Extracts a [num] from [other] if it's [FhirNumber] or [num].
  num? _extractValue(Object other) {
    if (other is FhirNumber) return other.valueNum;
    if (other is num) return other;
    throw ArgumentError('Expected FhirNumber or num, got: $other.');
  }

  // --------------------------------------------------------------------------
  // Abstract Subclass Requirements
  // --------------------------------------------------------------------------

  @override
  FhirNumber clone();
}
