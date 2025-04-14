part of 'primitive_types.dart';

/// An abstract class representing a FHIR numeric type (integer, decimal, etc.).
///
/// Extends [PrimitiveTypeBuilder] and implements
/// [Comparable<FhirNumberBuilder>].
/// The idea is that [FhirDecimalBuilder], [FhirIntegerBuilder],
/// [FhirPositiveIntBuilder], [FhirUnsignedInt], etc., all subclass
/// [FhirNumberBuilder].
///
/// *Note:* This class itself cannot be directly instantiated. Use its
/// public factory methods
/// ([fromNum], [fromNumPositiveInt], [fromNumUnsignedInt])
/// to create a concrete subclass instance.
abstract class FhirNumberBuilder extends PrimitiveTypeBuilder
    implements Comparable<FhirNumberBuilder> {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Internal constructor for child classes. Does no validation—just calls
  /// [super._].
  FhirNumberBuilder._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Number',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factory Methods (Routing to child classes)
  // --------------------------------------------------------------------------

  /// Creates either a [FhirIntegerBuilder] or [FhirDecimalBuilder] from
  /// [value].
  ///
  /// - If [value] is an integer, returns a [FhirIntegerBuilder].
  /// - Otherwise, returns a [FhirDecimalBuilder].
  factory FhirNumberBuilder.fromNum({
    required num value,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    String? objectPath,
  }) {
    return value is int
        ? FhirIntegerBuilder(
            value.toString(),
            element: element,
            id: id,
            extension_: extension_,
            objectPath: objectPath ?? 'Integer',
          )
        : FhirDecimalBuilder(
            value.toString(),
            element: element,
            id: id,
            extension_: extension_,
            objectPath: objectPath ?? 'Decimal',
          );
  }

  /// Creates either a [FhirPositiveIntBuilder] or [FhirDecimalBuilder]
  /// from [value],
  /// intended for positive integers. (If [value] is not an integer,
  /// returns [FhirDecimalBuilder].)
  factory FhirNumberBuilder.fromNumPositiveInt({
    required num value,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
  }) {
    return value is int
        ? FhirPositiveIntBuilder(
            value.toString(),
            element: element,
            id: id,
            extension_: extension_,
          )
        : FhirDecimalBuilder(
            value.toString(),
            element: element,
            id: id,
            extension_: extension_,
          );
  }

  /// Creates either a [FhirUnsignedInt] or [FhirDecimalBuilder] from [value],
  /// intended for unsigned integers. (If [value] is not an integer,
  /// returns [FhirDecimalBuilder].)
  factory FhirNumberBuilder.fromNumUnsignedInt({
    required num value,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
  }) {
    return value is int
        ? FhirUnsignedIntBuilder(
            value.toString(),
            element: element,
            id: id,
            extension_: extension_,
          )
        : FhirDecimalBuilder(
            value.toString(),
            element: element,
            id: id,
            extension_: extension_,
          );
  }

  /// Creates a [FhirNumberBuilder] from a JSON [Map].
  ///
  /// Uses [fromNum] internally. Expects `'value'` to be a [num].
  factory FhirNumberBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson == null ? null : ElementBuilder.fromJson(elementJson);

    if (value == null) {
      throw const FormatException(
        'FhirNumberBuilder cannot be created with a null value.',
      );
    }
    return FhirNumberBuilder.fromNum(value: value, element: element);
  }

  /// Creates a [FhirNumberBuilder] from a YAML input ([String] or [YamlMap]).
  static FhirNumberBuilder fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirNumberBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirNumberBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError('Input must be a YAML string or YAML map.');
    }
  }

  // --------------------------------------------------------------------------
  // Overrides from PrimitiveTypeBuilder
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

  /// Returns a [List<FhirNumberBuilder>] from parallel [values] and [elements].
  static List<FhirNumberBuilder> fromJsonList(
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
          ? ElementBuilder.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      if (v == null) {
        throw const FormatException(
          'FhirNumberBuilder cannot be created with a null value in array.',
        );
      }
      return FhirNumberBuilder.fromNum(value: v, element: e);
    });
  }

  /// Converts a list of [FhirNumberBuilder] to a JSON map with parallel
  /// `'value'` and `'_value'`.
  static Map<String, dynamic> toJsonList(List<FhirNumberBuilder> values) => {
        'value': values.map((val) => val.valueNum).toList(),
        '_value': values.map((val) => val.element?.toJson()).toList(),
      };

  /// Returns this numeric value as a [num], or `null` if there's no value.
  num? get valueNum {
    // Subclasses typically override with specialized parsing.
    if (valueString == null) return null;
    try {
      if (this is FhirIntegerBuilder ||
          this is FhirPositiveIntBuilder ||
          this is FhirUnsignedInt) {
        return int.parse(valueString!);
      } else if (this is FhirDecimalBuilder) {
        return double.parse(valueString!);
      } else {
        throw FormatException(
          'FhirNumberBuilder cannot interpret non-numeric value: $valueString',
        );
      }
    } catch (e) {
      throw FormatException(
        'FhirNumberBuilder cannot parse non-numeric value: $valueString',
      );
    }
  }

  @override
  String toString() => valueString ?? 'null';

  @override
  String? get primitiveValue => valueString;

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirNumberBuilder &&
      other.valueString == valueString &&
      other.element == element;

  /// Equality operator checks if [other] is a [FhirNumberBuilder] with the same
  /// string, or if [other] is a Dart [num] with the same numeric value.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirNumberBuilder && other.valueString == valueString) ||
      (other is num && other == valueNum);

  /// Combines [valueString] and [element] for hashing.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Comparable & Basic Arithmetic
  // --------------------------------------------------------------------------

  /// Compares this [FhirNumberBuilder] to [other] by numeric value.
  /// Returns 0 if either is `null`.
  @override
  int compareTo(FhirNumberBuilder other) {
    if (valueNum == null || other.valueNum == null) return 0;
    return valueNum!.compareTo(other.valueNum!);
  }

  /// Addition operator. Returns `null` if either operand is `null`.
  /// Otherwise returns a new [FhirNumberBuilder] with the sum.
  FhirNumberBuilder? operator +(Object other) =>
      _operateOrNull(other, (a, b) => a + b);

  /// Subtraction operator. Returns `null` if either operand is `null`.
  FhirNumberBuilder? operator -(Object other) =>
      _operateOrNull(other, (a, b) => a - b);

  /// Multiplication operator. Returns `null` if either operand is `null`.
  FhirNumberBuilder? operator *(Object other) =>
      _operateOrNull(other, (a, b) => a * b);

  /// Division operator. Returns [FhirDecimalBuilder] result if not null.
  FhirNumberBuilder? operator /(Object other) =>
      _operateOrNull(other, (a, b) => a / b);

  /// Euclidean modulo operator. Returns `null` if either operand is `null`.
  FhirNumberBuilder? operator %(Object other) =>
      _operateOrNull(other, (a, b) => a % b);

  /// Truncating division operator. Returns `null` if either operand is `null`.
  FhirNumberBuilder? operator ~/(Object other) =>
      _operateOrNull(other, (a, b) => a ~/ b);

  /// Negation operator (unary minus). Returns a new [FhirNumberBuilder]
  /// with negated value.
  FhirNumberBuilder? operator -() =>
      valueNum == null ? null : FhirNumberBuilder.fromNum(value: -valueNum!);

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
  FhirNumberBuilder? _operateOrNull(
    Object other,
    num Function(num, num) operation,
  ) {
    if (!_bothNonNull(other)) return null;
    final otherVal = _extractValue(other)!;
    return this is FhirDecimalBuilder || other is FhirDecimalBuilder
        ? FhirDecimalBuilder(operation(valueNum!, otherVal))
        : FhirNumberBuilder.fromNum(value: operation(valueNum!, otherVal));
  }

  /// Applies [comparison] if both sides are non-null, else returns false.
  bool _compareOrFalse(Object other, bool Function(num, num) comparison) {
    return _bothNonNull(other) && comparison(valueNum!, _extractValue(other)!);
  }

  /// Extracts a [num] from [other] if it's [FhirNumberBuilder] or [num].
  num? _extractValue(Object other) {
    if (other is FhirNumberBuilder) return other.valueNum;
    if (other is num) return other;
    throw ArgumentError('Expected FhirNumberBuilder or num, got: $other.');
  }

  // --------------------------------------------------------------------------
  // Abstract Subclass Requirements
  // --------------------------------------------------------------------------

  @override
  FhirNumberBuilder clone();

  @override
  FhirNumberBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  });
}
