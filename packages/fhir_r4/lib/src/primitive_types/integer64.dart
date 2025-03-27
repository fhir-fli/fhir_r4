part of 'primitive_types.dart';

/// Extension to convert a [num] to a [FhirInteger64].
extension FhirInteger64NumExtension on num {
  /// Converts a [num] to a [FhirInteger64].
  FhirInteger64 get toFhirInteger64 => FhirInteger64.fromNum(this);
}

/// Extension to convert a [String] to a [FhirInteger64].
extension FhirInteger64StringExtension on String {
  /// Converts a [String] to a [FhirInteger64].
  FhirInteger64 get toFhirInteger64 => FhirInteger64.fromString(this);
}

/// Extension to convert a [BigInt] to a [FhirInteger64].
extension FhirInteger64BigIntExtension on BigInt {
  /// Converts a [BigInt] to a [FhirInteger64].
  FhirInteger64 get toFhirInteger64 => FhirInteger64.fromBigInt(this);
}

/// Represents a 64-bit integer in the FHIR specification.
class FhirInteger64 extends PrimitiveType<BigInt?>
    implements Comparable<FhirInteger64> {
  /// Private underscore constructor that assigns [validatedValue] to
  /// `super._(value: validatedValue)` and checks if both [value] & [element]
  /// are null => throw.
  FhirInteger64._({
    required BigInt? validatedValue,
    this.input,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Integer64',
  }) : super._(value: validatedValue) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required for FhirInteger64');
    }
  }

  /// Single public constructor that ensures valid input.
  /// If [input] is not null, calls `_validateInteger64(input)`;
  /// otherwise `null`.
  // ignore: sort_unnamed_constructors_first
  factory FhirInteger64(
    BigInt? input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Integer64',
  }) {
    final validated = input != null ? _validateInteger64(input) : null;
    return FhirInteger64._(
      validatedValue: validated,
      input: input,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Factory constructor to create a [FhirInteger64] from a [num].
  factory FhirInteger64.fromNum(
    num input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    return FhirInteger64(
      BigInt.from(input),
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create a [FhirInteger64] from a [String].
  factory FhirInteger64.fromString(
    String input, {
    Element? element,
    String? objectPath,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    return FhirInteger64(
      BigInt.parse(input),
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath ?? 'Integer64',
    );
  }

  /// Factory constructor to create a [FhirInteger64] from a [BigInt].
  factory FhirInteger64.fromBigInt(
    BigInt input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Integer64',
  }) {
    return FhirInteger64(
      input,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirInteger64] object
  factory FhirInteger64.empty() =>
      FhirInteger64(null, element: Element.empty());

  /// Factory constructor to create a [FhirInteger64] from JSON input.
  factory FhirInteger64.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson == null ? null : Element.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Integer64';
    return FhirInteger64.fromString(
      value ?? '',
      element: element,
      objectPath: objectPath,
    );
  }

  /// Factory constructor to create a [FhirInteger64] from YAML input.
  factory FhirInteger64.fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirInteger64.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirInteger64.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw const FormatException(
                'Invalid input for FhirInteger64: must be YAML string or map.',
              );
  }

  /// Attempts to parse the input as [FhirInteger64].
  static FhirInteger64? tryParse(dynamic input) {
    try {
      if (input is BigInt) {
        return FhirInteger64(input);
      }
      if (input is num) {
        return FhirInteger64.fromNum(input);
      }
      if (input is String) {
        return FhirInteger64.fromString(input);
      }
      return null;
    } catch (_) {
      return null;
    }
  }

  /// Validates that the input is a valid 64-bit integer.
  static BigInt _validateInteger64(BigInt input) => input;

  /// The original input value.
  final BigInt? input;

  /// Returns the FHIR type as 'integer64'.
  @override
  String get fhirType => 'integer64';

  /// Serializes the instance to JSON.
  @override
  Map<String, dynamic> toJson() => {
        if (value != null) 'value': value!.toString(),
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to [FhirInteger64] instances.
  static List<FhirInteger64> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length.',
      );
    }
    return List.generate(values.length, (i) {
      final val = values[i] as String?;
      final elem = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirInteger64.fromString(val ?? '', element: elem);
    });
  }

  /// Converts a list of [FhirInteger64] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirInteger64> integers) => {
        'value': integers.map((i) => i.value?.toString()).toList(),
        '_value': integers.map((i) => i.element?.toJson()).toList(),
      };

  /// String representation of the instance.
  @override
  String toString() => value.toString();

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value?.toString();

  /// Compares two [FhirInteger64] values.
  @override
  int compareTo(FhirInteger64 other) =>
      value == null || other.value == null ? 0 : value!.compareTo(other.value!);

  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirInteger64 &&
      other.value == value &&
      other.element == element;

  /// Checks equality.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirInteger64 && other.value == value) ||
      (other is BigInt && other == value) ||
      (other is String && BigInt.tryParse(other) == value);

  /// Generates hash code.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Clones the current instance.
  @override
  FhirInteger64 clone() => FhirInteger64.fromBigInt(
        value!,
        element: element?.clone() as Element?,
      );

  /// Creates a modified copy with updated properties.
  @override
  FhirInteger64 copyWith({
    BigInt? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    return FhirInteger64(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }

  /// Returns a new [FhirInteger64] with extensions disallowed.
  FhirInteger64 noExtensions() => copyWith(disallowExtensions: true);

  // ──────────────────────────────────────────────────────────────────────────
  // Arithmetic Operators
  // ──────────────────────────────────────────────────────────────────────────

  /// Addition operator.
  FhirInteger64? operator +(dynamic other) => _operate(other, (a, b) => a + b);

  /// Subtraction operator.
  FhirInteger64? operator -(dynamic other) => _operate(other, (a, b) => a - b);

  /// Multiplication operator.
  FhirInteger64? operator *(dynamic other) => _operate(other, (a, b) => a * b);

  /// Division operator (integer).
  FhirInteger64? operator ~/(dynamic other) =>
      _operate(other, (a, b) => a ~/ b);

  /// Modulo operator.
  FhirInteger64? operator %(dynamic other) => _operate(other, (a, b) => a % b);

  /// Unary negation operator.
  FhirInteger64? operator -() => value == null ? null : FhirInteger64(-value!);

  /// Division operator (floating).
  FhirInteger64? operator /(dynamic other) => _operate(
        other,
        (a, b) => BigInt.from(a / b),
      );

  /// Power operator.
  FhirInteger64? pow(int exponent) =>
      value == null ? null : FhirInteger64(value!.pow(exponent));

  /// Modulo inverse operator.
  FhirInteger64? modInverse(FhirInteger64 modulus) =>
      value == null ? null : FhirInteger64(value!.modInverse(modulus.value!));

  // ──────────────────────────────────────────────────────────────────────────
  // Bitwise Operators
  // ──────────────────────────────────────────────────────────────────────────

  /// Bitwise AND operator.
  FhirInteger64? operator &(dynamic other) => _operate(other, (a, b) => a & b);

  /// Bitwise OR operator.
  FhirInteger64? operator |(dynamic other) => _operate(other, (a, b) => a | b);

  /// Bitwise XOR operator.
  FhirInteger64? operator ^(dynamic other) => _operate(other, (a, b) => a ^ b);

  /// Bitwise NOT operator.
  FhirInteger64? operator ~() => value == null ? null : FhirInteger64(~value!);

  /// Bitwise Shift Operators
  ///
  /// Shift the bits of this integer to the left by [shiftAmount].
  /// Shifting to the left makes the number larger, effectively multiplying the
  /// number by pow(2, shiftIndex).
  /// There is no limit on the size of the result. It may be relevant to limit
  /// intermediate values by using the "and" operator with a suitable mask.
  /// It is an error if [shiftAmount] is negative.
  FhirInteger64? operator <<(int shiftAmount) =>
      value == null ? null : FhirInteger64(value! << shiftAmount);

  /// Shift the bits of this integer to the right by [shiftAmount].
  /// Shifting to the right makes the number smaller and drops the least
  /// significant bits, effectively doing an integer division by
  /// pow(2, shiftIndex).
  /// It is an error if [shiftAmount] is negative.
  FhirInteger64? operator >>(int shiftAmount) =>
      value == null ? null : FhirInteger64(value! >> shiftAmount);

  /// Remainder operator.
  FhirInteger64? remainder(dynamic other) =>
      _operate(other, (a, b) => a.remainder(b));

  /// To unsigned.
  FhirInteger64? toUnsigned(int width) =>
      value == null ? null : FhirInteger64(value!.toUnsigned(width));

  /// To signed.
  FhirInteger64? toSigned(int width) =>
      value == null ? null : FhirInteger64(value!.toSigned(width));

  /// Absolute value.
  FhirInteger64? abs() => value == null ? null : FhirInteger64(value!.abs());

  /// Greatest common divisor (GCD).
  FhirInteger64? gcd(dynamic other) => _operate(other, (a, b) => a.gcd(b));

  /// Check if the value is negative.
  bool get isNegative => value?.isNegative ?? false;

  /// Check if the value is even.
  bool get isEven => value?.isEven ?? false;

  /// Check if the value is odd.
  bool get isOdd => value?.isOdd ?? false;

  /// Convert to an integer.
  int? toInt() => value?.toInt();

  /// Convert to a double.
  double? toDouble() => value?.toDouble();

  // ──────────────────────────────────────────────────────────────────────────
  // Comparison Operators
  // ──────────────────────────────────────────────────────────────────────────

  /// Less than operator.
  bool operator <(dynamic other) => _compare(other, (a, b) => a < b);

  /// Less than or equal to operator.
  bool operator <=(dynamic other) => _compare(other, (a, b) => a <= b);

  /// Greater than operator.
  bool operator >(dynamic other) => _compare(other, (a, b) => a > b);

  /// Greater than or equal to operator.
  bool operator >=(dynamic other) => _compare(other, (a, b) => a >= b);

  // ──────────────────────────────────────────────────────────────────────────
  // Helper Methods
  // ──────────────────────────────────────────────────────────────────────────

  bool _compare(dynamic other, bool Function(BigInt, BigInt) compare) {
    if (value == null) return false;
    final otherVal = _extractValue(other);
    if (otherVal == null) return false;
    return compare(value!, otherVal);
  }

  FhirInteger64? _operate(
    dynamic other,
    BigInt Function(BigInt, BigInt) operation,
  ) {
    final otherVal = _extractValue(other);
    return (value == null || otherVal == null)
        ? null
        : FhirInteger64(operation(value!, otherVal));
  }

  BigInt? _extractValue(dynamic other) {
    if (other is FhirInteger64) return other.value;
    if (other is BigInt) return other;
    if (other is int) return BigInt.from(other);
    return BigInt.tryParse(other.toString());
  }

  /// Creates an empty property in the object
  @override
  FhirInteger64 createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirInteger64] object
  @override
  FhirInteger64 clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirInteger64(
      input ? null : this.input,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
