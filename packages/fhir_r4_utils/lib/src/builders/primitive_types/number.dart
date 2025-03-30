part of 'primitive_types.dart';

/// Abstract class representing a FHIR number type, which could be an
/// integer or a decimal. Extends [PrimitiveTypeBuilder] and
/// implements [Comparable].
abstract class FhirNumberBuilder extends PrimitiveTypeBuilder<num?>
    implements Comparable<FhirNumberBuilder> {
  /// Private underscore constructor for child classes.
  /// (No validation logic here—just field assignment.)
  FhirNumberBuilder._({
    required num? validatedValue,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Number',
  }) : super._(value: validatedValue);

  /// Because `FhirNumber` is abstract, we have no public constructor here.
  /// Instead, child classes (like `FhirDecimal`) do `: super._(...)`.

  // ──────────────────────────────────────────────────────────────────────────
  // Static / factory methods for routing to child classes
  // ──────────────────────────────────────────────────────────────────────────

  /// Creates either a `FhirInteger` or `FhirDecimal` from [value].
  factory FhirNumberBuilder.fromNum({
    required num value,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    String? objectPath,
  }) {
    // If it's an integer, return FhirInteger(...)
    // If it's not an integer, we do FhirDecimal(...)
    // (You can keep your existing logic here.)
    return value is int
        ? FhirIntegerBuilder(
            value,
            element: element,
            id: id,
            extension_: extension_,
            objectPath: objectPath ?? 'Integer',
          )
        : FhirDecimalBuilder(
            value,
            element: element,
            id: id,
            extension_: extension_,
            objectPath: objectPath ?? 'Decimal',
          );
  }

  /// Similar for a positive int
  factory FhirNumberBuilder.fromNumPositiveInt({
    required num value,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
  }) {
    return value is int
        ? FhirPositiveIntBuilder(
            value,
            element: element,
            id: id,
            extension_: extension_,
          )
        : FhirDecimalBuilder(
            value,
            element: element,
            id: id,
            extension_: extension_,
          );
  }

  /// Similar for an unsigned int
  factory FhirNumberBuilder.fromNumUnsignedInt({
    required num value,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
  }) {
    return value is int
        ? FhirUnsignedIntBuilder(
            value,
            element: element,
            id: id,
            extension_: extension_,
          )
        : FhirDecimalBuilder(
            value,
            element: element,
            id: id,
            extension_: extension_,
          );
  }

  /// If you had an `empty()` method, you can keep it throwing:
  factory FhirNumberBuilder.empty() => throw UnimplementedError();

  /// Creates a [FhirNumber] from JSON input (which routes to .fromNum).
  factory FhirNumberBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson == null ? null : ElementBuilder.fromJson(elementJson);
    if (value == null) {
      throw const FormatException(
        'FhirNumber cannot be created with a null value.',
      );
    }
    // Delegate to fromNum
    return FhirNumberBuilder.fromNum(value: value, element: element);
  }

  /// Creates a [FhirNumberBuilder] from YAML input
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

  // ──────────────────────────────────────────────────────────────────────────
  // Overrides from PrimitiveType
  // ──────────────────────────────────────────────────────────────────────────

  @override
  String get fhirType => 'number';

  @override
  Map<String, dynamic> toJson() {
    return {
      if (value != null) 'value': value,
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Returns a List of [FhirNumberBuilder] from a JSON list.
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
          'FhirNumber cannot be created with a null value in array.',
        );
      }
      return FhirNumberBuilder.fromNum(value: v, element: e);
    });
  }

  /// Returns a JSON list from a List of [FhirNumberBuilder].
  static Map<String, dynamic> toJsonList(List<FhirNumberBuilder> numbers) => {
        'value': numbers.map((n) => n.value).toList(),
        '_value': numbers.map((n) => n.element?.toJson()).toList(),
      };

  @override
  String toString() => value?.toString() ?? 'null';

  @override
  String? get primitiveValue => value?.toString();

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirNumberBuilder &&
      other.value == value &&
      other.element == element;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirNumberBuilder && other.value == value) ||
      (other is num && other == value);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  // ──────────────────────────────────────────────────────────────────────────
  // Comparable & Arithmetic
  // ──────────────────────────────────────────────────────────────────────────

  @override
  int compareTo(FhirNumberBuilder other) {
    if (value == null || other.value == null) return 0;
    return value!.compareTo(other.value!);
  }

  /// Adds [other] to this [FhirNumberBuilder]. The result is a
  /// [FhirIntegerBuilder], if both this number and [other] is a
  /// [FhirIntegerBuilder] otherwise the result is a [FhirDecimalBuilder].
  FhirNumberBuilder? operator +(Object other) =>
      _operateOrNull(other, (a, b) => a + b);

  /// Subtracts [other] from this [FhirNumberBuilder]. The result is a
  /// [FhirIntegerBuilder], if both this number and [other] is a
  /// [FhirIntegerBuilder] otherwise the result is a [FhirDecimalBuilder].
  FhirNumberBuilder? operator -(Object other) =>
      _operateOrNull(other, (a, b) => a - b);

  /// Multiples [other] and this [FhirNumberBuilder]. The result is a
  /// [FhirIntegerBuilder] if both this number and [other] is a
  /// [FhirIntegerBuilder] otherwise the result is a [FhirDecimalBuilder].
  FhirNumberBuilder? operator *(Object other) =>
      _operateOrNull(other, (a, b) => a * b);

  /// Dived this [FhirNumberBuilder] by [other],
  /// the result is a [FhirDecimalBuilder].
  FhirNumberBuilder? operator /(Object other) =>
      _operateOrNull(other, (a, b) => a / b);

  /// Euclidean modulo of this number by [other].
  ///
  /// Returns the remainder of the Euclidean division.
  /// The Euclidean division of two integers `a` and `b`
  /// yields two integers `q` and `r` such that
  /// `a == b * q + r` and `0 <= r < b.abs()`.
  ///
  /// The Euclidean division is only defined for integers, but can be easily
  /// extended to work with doubles. In that case, `q` is still an integer,
  /// but `r` may have a non-integer value that still satisfies `0 <= r < |b|`.
  ///
  /// The sign of the returned value `r` is always positive.
  ///
  /// See [remainder] for the remainder of the truncating division.
  ///
  /// The result is an [FhirIntegerBuilder], if both this number and [other] are
  /// [FhirIntegerBuilder]s, otherwise the result is a [FhirDecimalBuilder].
  ///
  /// Example:
  /// ```dart
  /// print(5 % 3); // 2
  /// print(-5 % 3); // 1
  /// print(5 % -3); // 2
  /// print(-5 % -3); // 1
  /// ```
  FhirNumberBuilder? operator %(Object other) =>
      _operateOrNull(other, (a, b) => a % b);

  /// Truncating division operator.
  ///
  /// Performs truncating division of this number by [other].
  /// Truncating division is division where a fractional result
  /// is converted to an integer by rounding towards zero.
  ///
  /// If both operands are [FhirIntegerBuilder]s, then [other] must not be zero.
  /// Then `a ~/ b` corresponds to `a.remainder(b)`
  /// such that `a == (a ~/ b) * b + a.remainder(b)`.
  ///
  /// If either operand is a [FhirDecimalBuilder], then the other operand is
  /// converted to a double before performing the division and truncation of
  /// the result. Then `a ~/ b` is equivalent to `(a / b).truncate()`.
  /// This means that the intermediate result of the double division
  /// must be a finite integer (not an infinity or [double.nan]).
  FhirNumberBuilder? operator ~/(Object other) =>
      _operateOrNull(other, (a, b) => a ~/ b);

  /// The negation of this value.
  ///
  /// The negation of a number is a number of the same kind
  /// (`int` or `double`) representing the negation of the
  /// numbers numerical value (the result of subtracting the
  /// number from zero), if that value *exists*.
  ///
  /// Negating a double gives a number with the same magnitude
  /// as the original value (`number.abs() == (-number).abs()`),
  /// and the opposite sign (`-(number.sign) == (-number).sign`).
  ///
  /// Negating an integer, `-number`, is equivalent to subtracting
  /// it from zero, `0 - number`.
  ///
  /// (Both properties generally also hold for the other type,
  /// but with a few edge case exceptions).
  FhirNumberBuilder? operator -() =>
      value == null ? null : FhirNumberBuilder.fromNum(value: -value!);

  /// Whether this number is numerically greater than [other].
  ///
  /// Returns `true` if this number is greater than [other].
  /// Returns `false` if this number is smaller than or equal to [other]
  bool operator >(Object other) => _compareOrFalse(other, (a, b) => a > b);

  /// Whether this number is numerically greater than or equal to [other].
  ///
  /// Returns `true` if this number is greater than or equal to [other].
  /// Returns `false` if this number is smaller than [other]
  bool operator >=(Object other) => _compareOrFalse(other, (a, b) => a >= b);

  /// Whether this number is numerically smaller than [other].
  ///
  /// Returns `true` if this number is smaller than [other].
  /// Returns `false` if this number is greater than or equal to [other]
  bool operator <(Object other) => _compareOrFalse(other, (a, b) => a < b);

  /// Whether this number is numerically smaller than or equal to [other].
  ///
  /// Returns `true` if this number is smaller than or equal to [other].
  /// Returns `false` if this number is greater than [other]
  bool operator <=(Object other) => _compareOrFalse(other, (a, b) => a <= b);

  /// The integer closest to this number.
  ///
  /// Rounds away from zero when there is no closest integer:
  ///  `(3.5).round() == 4` and `(-3.5).round() == -4`.
  ///
  /// The number must be finite (see [isFinite]).
  ///
  /// If the value is greater than the highest representable positive integer,
  /// the result is that highest positive integer.
  /// If the value is smaller than the highest representable negative integer,
  /// the result is that highest negative integer.
  int round() => value!.round();

  /// The greatest integer no greater than this number.
  ///
  /// Rounds fractional values towards negative infinity.
  ///
  /// The number must be finite (see [isFinite]).
  ///
  /// If the value is greater than the highest representable positive integer,
  /// the result is that highest positive integer.
  /// If the value is smaller than the highest representable negative integer,
  /// the result is that highest negative integer.
  int floor() => value!.floor();

  /// The least integer no smaller than `this`.
  ///
  /// Rounds fractional values towards positive infinity.
  ///
  /// The number must be finite (see [isFinite]).
  ///
  /// If the value is greater than the highest representable positive integer,
  /// the result is that highest positive integer.
  /// If the value is smaller than the highest representable negative integer,
  /// the result is that highest negative integer.
  int ceil() => value!.ceil();

  /// The absolute value of this number.
  ///
  /// The absolute value is the value itself, if the value is non-negative,
  /// and `-value` if the value is negative.
  ///
  /// Integer overflow may cause the result of `-value` to stay negative.

  num abs() => value!.abs();

  bool _bothNonNull(Object other) =>
      value != null && _extractValue(other) != null;

  FhirNumberBuilder? _operateOrNull(
    Object other,
    num Function(num, num) operation,
  ) {
    if (!_bothNonNull(other)) return null;
    final otherVal = _extractValue(other)!;
    return FhirNumberBuilder.fromNum(value: operation(value!, otherVal));
  }

  bool _compareOrFalse(Object other, bool Function(num, num) comparison) {
    return _bothNonNull(other) && comparison(value!, _extractValue(other)!);
  }

  num? _extractValue(Object other) {
    if (other is FhirNumberBuilder) return other.value;
    if (other is num) return other;
    throw ArgumentError('Expected FhirNumber or num, but got: $other.');
  }

  // ──────────────────────────────────────────────────────────────────────────
  // Inherited from DataType
  // (but we must override to finalize the return type if desired)
  // ──────────────────────────────────────────────────────────────────────────

  @override
  FhirNumberBuilder clone() => FhirNumberBuilder.fromNum(
        value: value!,
        element: element?.clone() as ElementBuilder?,
      );

  @override
  FhirNumberBuilder copyWith({
    num? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return FhirNumberBuilder.fromNum(
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
