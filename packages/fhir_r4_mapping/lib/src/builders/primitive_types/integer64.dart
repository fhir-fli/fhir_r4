part of 'primitive_types.dart';

/// Extension methods on [num], [String], and [BigInt] to easily convert
/// them to [FhirInteger64Builder].
extension FhirInteger64NumBuilderExtension on num {
  /// Converts this [num] to a [FhirInteger64Builder].
  FhirInteger64Builder get toFhirInteger64Builder =>
      FhirInteger64Builder.fromNum(this);
}

/// Extension methods on [String] to easily convert to [FhirInteger64Builder].
extension FhirInteger64StringBuilderExtension on String {
  /// Converts this [String] to a [FhirInteger64Builder].
  FhirInteger64Builder get toFhirInteger64Builder =>
      FhirInteger64Builder.fromString(this);
}

/// Extension methods on [BigInt] to easily convert to [FhirInteger64Builder].
extension FhirInteger64BigIntBuilderExtension on BigInt {
  /// Converts this [BigInt] to a [FhirInteger64Builder].
  FhirInteger64Builder get toFhirInteger64Builder =>
      FhirInteger64Builder.fromBigInt(this);
}

/// Represents a 64-bit integer in FHIR (`integer64`).
///
/// It is *not* a subclass of other numeric FHIR primitives; it is standalone.
/// Uses [BigInt] internally to handle arbitrarily large integers that fit
/// within 64-bit boundaries.
class FhirInteger64Builder extends PrimitiveTypeBuilder
    implements Comparable<FhirInteger64Builder> {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor. Calls [super._] with [valueString].
  FhirInteger64Builder._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Integer64',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirInteger64Builder] from [rawValue], which can be:
  /// - `null` (with [element] non-null),
  /// - A [String] that is validated as 64-bit,
  /// - A [BigInt].
  ///
  /// If [rawValue] is a [String], calls [_validateInteger64(rawValue)].
  // ignore: sort_unnamed_constructors_first
  factory FhirInteger64Builder(
    dynamic rawValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Integer64',
  }) {
    String? validated;

    if (rawValue != null) {
      if (rawValue is BigInt) {
        validated = rawValue.toString();
      } else if (rawValue is String) {
        validated = _validateInteger64(rawValue);
      }
    }

    return FhirInteger64Builder._(
      valueString: validated,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates a [FhirInteger64Builder] from a [num], via `BigInt.from(...)`.
  factory FhirInteger64Builder.fromNum(
    num input, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
  }) {
    return FhirInteger64Builder(
      BigInt.from(input),
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Creates a [FhirInteger64Builder] from a [String].
  factory FhirInteger64Builder.fromString(
    String input, {
    ElementBuilder? element,
    String? objectPath,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
  }) {
    return FhirInteger64Builder(
      input,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath ?? 'Integer64',
    );
  }

  /// Creates a [FhirInteger64Builder] from a [BigInt].
  factory FhirInteger64Builder.fromBigInt(
    BigInt input, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Integer64',
  }) {
    return FhirInteger64Builder(
      input,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirInteger64Builder] (with [ElementBuilder.empty]
  /// metadata).
  factory FhirInteger64Builder.empty() =>
      FhirInteger64Builder(null, element: ElementBuilder.empty());

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Creates a [FhirInteger64Builder] from a JSON [Map].
  factory FhirInteger64Builder.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elemJson == null ? null : ElementBuilder.fromJson(elemJson);
    final objectPath = json['objectPath'] as String? ?? 'Integer64';
    return FhirInteger64Builder.fromString(
      rawValue ?? '',
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Creates a [FhirInteger64Builder] from a YAML input
  /// ([String] or [YamlMap]).
  factory FhirInteger64Builder.fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirInteger64Builder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirInteger64Builder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw const FormatException(
        'Invalid input for FhirInteger64: must be YAML string or map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirInteger64Builder].
  /// Returns `null` if parsing fails.
  static FhirInteger64Builder? tryParse(dynamic input) {
    try {
      if (input is BigInt) {
        return FhirInteger64Builder(input);
      } else if (input is num) {
        return FhirInteger64Builder.fromNum(input);
      } else if (input is String) {
        return FhirInteger64Builder.fromString(input);
      }
      return null;
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // Validation
  // --------------------------------------------------------------------------

  /// Validates [input] as a valid 64-bit integer string.
  /// Throws a [FormatException] if invalid.
  static String? _validateInteger64(String input) {
    if (input.isEmpty) return null; // Could allow empty => null
    final bigVal = BigInt.tryParse(input);
    if (bigVal == null) {
      throw const FormatException(
        'Invalid integer64 format. Must be a valid 64-bit integer string.',
      );
    }
    return input;
  }

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns `"integer64"`.
  @override
  String get fhirType => 'integer64';

  /// Serializes the instance to JSON.
  @override
  Map<String, dynamic> toJson() => {
        if (valueString != null) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// Method to convert the builder object to the original Element object
  @override
  FhirInteger64 build() => FhirInteger64.fromJson(toJson());

  /// A [BigInt] version of [valueString].
  BigInt? get valueBigInt =>
      valueString == null ? null : BigInt.tryParse(valueString!);

  /// Returns the string representation (or `''`).
  @override
  String toString() => valueString ?? '';

  /// The "primitive" representation as a string.
  @override
  String? get primitiveValue => valueString;

  /// Compares two [FhirInteger64Builder] by [valueBigInt].
  @override
  int compareTo(FhirInteger64Builder other) {
    if (valueBigInt == null || other.valueBigInt == null) return 0;
    return valueBigInt!.compareTo(other.valueBigInt!);
  }

  /// Deep equality check.
  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirInteger64Builder &&
      other.valueString == valueString &&
      other.element == element;

  /// Equality operator checks other [FhirInteger64Builder], [BigInt],
  /// or [String].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirInteger64Builder && other.valueString == valueString) ||
      (other is BigInt && other.toString() == valueString) ||
      (other is String && other == valueString);

  /// Hash code uses [valueString] and [element].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  /// Creates a deep clone of this [FhirInteger64Builder].
  @override
  FhirInteger64Builder clone() => FhirInteger64Builder(
        valueString,
        element: element?.clone() as ElementBuilder?,
        id: id,
        extension_: extension_?.map((e) => e.clone()).toList(),
        disallowExtensions: disallowExtensions,
        objectPath: objectPath!,
      );

  /// Creates a modified copy with updated properties.
  @override
  FhirInteger64Builder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    return FhirInteger64Builder(
      newValue ?? valueString,
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

  /// Returns a copy with [disallowExtensions] set to `true`.
  FhirInteger64Builder noExtensions() => copyWith(disallowExtensions: true);

  // --------------------------------------------------------------------------
  // Arithmetic & Bitwise Operators
  // --------------------------------------------------------------------------

  /// `+` operator. Returns a [FhirInteger64Builder] with the sum.
  FhirInteger64Builder? operator +(dynamic other) =>
      _operate(other, (a, b) => a + b);

  /// `-` operator. Returns a [FhirInteger64Builder] with the difference.
  FhirInteger64Builder? operator -(dynamic other) =>
      _operate(other, (a, b) => a - b);

  /// `*` operator. Returns a [FhirInteger64Builder] with the product.
  FhirInteger64Builder? operator *(dynamic other) =>
      _operate(other, (a, b) => a * b);

  /// `~/` operator (truncating division). Returns a [FhirInteger64Builder].
  FhirInteger64Builder? operator ~/(dynamic other) =>
      _operate(other, (a, b) => a ~/ b);

  /// `%` operator (modulo). Returns a [FhirInteger64Builder].
  FhirInteger64Builder? operator %(dynamic other) =>
      _operate(other, (a, b) => a % b);

  /// `-()`: Unary negation.
  FhirInteger64Builder? operator -() =>
      valueBigInt == null ? null : FhirInteger64Builder(-valueBigInt!);

  /// `/` operator: Divides [this] by [other], returns a [FhirInteger64Builder] from
  /// `BigInt.from(...)` of the result. (Truncates if necessary.)
  FhirInteger64Builder? operator /(dynamic other) =>
      _operate(other, (a, b) => BigInt.from(a / b));

  /// `^`: Bitwise XOR.
  FhirInteger64Builder? operator ^(dynamic other) =>
      _operate(other, (a, b) => a ^ b);

  /// `&`: Bitwise AND.
  FhirInteger64Builder? operator &(dynamic other) =>
      _operate(other, (a, b) => a & b);

  /// `|`: Bitwise OR.
  FhirInteger64Builder? operator |(dynamic other) =>
      _operate(other, (a, b) => a | b);

  /// `~()`: Bitwise NOT.
  FhirInteger64Builder? operator ~() =>
      valueBigInt == null ? null : FhirInteger64Builder(~valueBigInt!);

  /// Left shift.
  FhirInteger64Builder? operator <<(int shiftAmount) => valueBigInt == null
      ? null
      : FhirInteger64Builder(valueBigInt! << shiftAmount);

  /// Right shift.
  FhirInteger64Builder? operator >>(int shiftAmount) => valueBigInt == null
      ? null
      : FhirInteger64Builder(valueBigInt! >> shiftAmount);

  /// `remainder(...)`: Remainder of division.
  FhirInteger64Builder? remainder(dynamic other) =>
      _operate(other, (a, b) => a.remainder(b));

  /// `toUnsigned(width)`: Zero-extend the number to [width] bits.
  FhirInteger64Builder? toUnsigned(int width) => valueBigInt == null
      ? null
      : FhirInteger64Builder(valueBigInt!.toUnsigned(width));

  /// `toSigned(width)`: Sign-extend the number to [width] bits.
  FhirInteger64Builder? toSigned(int width) => valueBigInt == null
      ? null
      : FhirInteger64Builder(valueBigInt!.toSigned(width));

  /// `abs()`: Absolute value.
  FhirInteger64Builder? abs() =>
      valueBigInt == null ? null : FhirInteger64Builder(valueBigInt!.abs());

  /// `gcd(...)`: Greatest common divisor.
  FhirInteger64Builder? gcd(dynamic other) =>
      _operate(other, (a, b) => a.gcd(b));

  /// `pow(exponent)`: Exponentiation.
  FhirInteger64Builder? pow(int exponent) => valueBigInt == null
      ? null
      : FhirInteger64Builder(valueBigInt!.pow(exponent));

  /// `modInverse(modulus)`: Modular multiplicative inverse.
  FhirInteger64Builder? modInverse(FhirInteger64Builder modulus) =>
      (valueBigInt == null || modulus.valueBigInt == null)
          ? null
          : FhirInteger64Builder(valueBigInt!.modInverse(modulus.valueBigInt!));

  // --------------------------------------------------------------------------
  // Comparison Operators
  // --------------------------------------------------------------------------

  /// `<` (less than).
  bool operator <(dynamic other) => _compare(other, (a, b) => a < b);

  /// `<=` (less or equal).
  bool operator <=(dynamic other) => _compare(other, (a, b) => a <= b);

  /// `>` (greater).
  bool operator >(dynamic other) => _compare(other, (a, b) => a > b);

  /// `>=` (greater or equal).
  bool operator >=(dynamic other) => _compare(other, (a, b) => a >= b);

  // --------------------------------------------------------------------------
  // Additional Methods
  // --------------------------------------------------------------------------

  /// Returns `true` if [valueBigInt] is negative, otherwise `false`.
  bool get isNegative => valueBigInt?.isNegative ?? false;

  /// Returns `true` if [valueBigInt] is even, otherwise `false`.
  bool get isEven => valueBigInt?.isEven ?? false;

  /// Returns `true` if [valueBigInt] is odd, otherwise `false`.
  bool get isOdd => valueBigInt?.isOdd ?? false;

  /// Converts [valueBigInt] to a Dart `int`. Might overflow if too large.
  int? toInt() => valueBigInt?.toInt();

  /// Converts [valueBigInt] to a Dart `double`. Might lose precision.
  double? toDouble() => valueBigInt?.toDouble();

  // --------------------------------------------------------------------------
  // Internal Helpers
  // --------------------------------------------------------------------------

  bool _compare(dynamic other, bool Function(BigInt, BigInt) compareFn) {
    if (valueBigInt == null) return false;
    final otherVal = _extractValue(other);
    if (otherVal == null) return false;
    return compareFn(valueBigInt!, otherVal);
  }

  FhirInteger64Builder? _operate(
    dynamic other,
    BigInt Function(BigInt, BigInt) op,
  ) {
    if (valueBigInt == null) return null;
    final otherVal = _extractValue(other);
    return otherVal == null
        ? null
        : FhirInteger64Builder(op(valueBigInt!, otherVal));
  }

  BigInt? _extractValue(dynamic other) {
    if (other is FhirInteger64Builder) return other.valueBigInt;
    if (other is BigInt) return other;
    if (other is int) return BigInt.from(other);
    return BigInt.tryParse(other.toString());
  }

  // --------------------------------------------------------------------------
  // Subclass Contract
  // --------------------------------------------------------------------------

  @override
  FhirInteger64Builder createProperty(String propertyName) => this;
}
