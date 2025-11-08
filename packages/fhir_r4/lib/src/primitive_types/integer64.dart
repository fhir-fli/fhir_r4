part of 'primitive_types.dart';

/// Extension methods on [num], [String], and [BigInt] to easily convert
/// them to [FhirInteger64].
extension FhirInteger64NumExtension on num {
  /// Converts this [num] to a [FhirInteger64].
  FhirInteger64 get toFhirInteger64 => FhirInteger64.fromNum(this);
}

/// Extension methods on [String] to easily convert them to [FhirInteger64].
extension FhirInteger64StringExtension on String {
  /// Converts this [String] to a [FhirInteger64].
  FhirInteger64 get toFhirInteger64 => FhirInteger64.fromString(this);
}

/// Extension methods on [BigInt] to easily convert them to [FhirInteger64].
extension FhirInteger64BigIntExtension on BigInt {
  /// Converts this [BigInt] to a [FhirInteger64].
  FhirInteger64 get toFhirInteger64 => FhirInteger64.fromBigInt(this);
}

/// Represents a 64-bit integer in FHIR (`integer64`).
///
/// It is *not* a subclass of other numeric FHIR primitives; it is standalone.
/// Uses [BigInt] internally to handle arbitrarily large integers that fit
/// within 64-bit boundaries.
class FhirInteger64 extends PrimitiveType implements Comparable<FhirInteger64> {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor. Calls [super._] with [valueString].
  const FhirInteger64._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirInteger64] from [rawValue], which can be:
  /// - `null` (with [element] non-null),
  /// - A [String] that is validated as 64-bit,
  /// - A [BigInt].
  ///
  /// If [rawValue] is a [String], calls [_validateInteger64(rawValue)].
  // ignore: sort_unnamed_constructors_first
  factory FhirInteger64(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    String? validated;

    if (rawValue != null) {
      if (rawValue is BigInt) {
        validated = rawValue.toString();
      } else if (rawValue is String) {
        validated = _validateInteger64(rawValue);
      }
    }

    return FhirInteger64._(
      valueString: validated,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Creates a [FhirInteger64] from a [num], via `BigInt.from(...)`.
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

  /// Creates a [FhirInteger64] from a [String].
  factory FhirInteger64.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    return FhirInteger64(
      input,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Creates a [FhirInteger64] from a [BigInt].
  factory FhirInteger64.fromBigInt(
    BigInt input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    return FhirInteger64(
      input,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Creates a [FhirInteger64] from a JSON [Map].
  factory FhirInteger64.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'];
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement = elemJson == null ? null : Element.fromJson(elemJson);
    return FhirInteger64(
      rawValue != null ? (rawValue is num ? rawValue.toString() : rawValue) : null,
      element: parsedElement,
    );
  }

  /// Creates a [FhirInteger64] from a YAML input ([String] or [YamlMap]).
  factory FhirInteger64.fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirInteger64.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirInteger64.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw const FormatException(
        'Invalid input for FhirInteger64: must be YAML string or map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirInteger64].
  /// Returns `null` if parsing fails.
  static FhirInteger64? tryParse(dynamic input) {
    try {
      if (input is BigInt) {
        return FhirInteger64(input);
      } else if (input is num) {
        return FhirInteger64.fromNum(input);
      } else if (input is String) {
        return FhirInteger64.fromString(input);
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

  /// A [BigInt] version of [valueString].
  BigInt? get valueBigInt =>
      valueString == null ? null : BigInt.tryParse(valueString!);

  /// Returns the string representation (or `''`).
  @override
  String toString() => valueString ?? '';

  /// The "primitive" representation as a string.
  @override
  String? get primitiveValue => valueString;

  /// Compares two [FhirInteger64] by [valueBigInt].
  @override
  int compareTo(FhirInteger64 other) {
    if (valueBigInt == null || other.valueBigInt == null) return 0;
    return valueBigInt!.compareTo(other.valueBigInt!);
  }

  /// Deep equality check.
  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirInteger64 &&
      other.valueString == valueString &&
      ((element == null && other.element == null) ||
          (element != null && element!.equalsDeep(other.element)));

  /// Equality operator checks other [FhirInteger64], [BigInt], or [String].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirInteger64 && other.valueString == valueString) ||
      (other is BigInt && other.toString() == valueString) ||
      (other is String && other == valueString);

  /// Hash code uses [valueString] and [element].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  /// Creates a deep clone of this [FhirInteger64].
  @override
  FhirInteger64 clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  $FhirInteger64CopyWithImpl<FhirInteger64> get copyWith =>
      $FhirInteger64CopyWithImpl<FhirInteger64>(this, (value) => value);

  /// Returns a copy with [disallowExtensions] set to `true`.
  FhirInteger64 noExtensions() => copyWith(disallowExtensions: true);

  // --------------------------------------------------------------------------
  // Arithmetic & Bitwise Operators
  // --------------------------------------------------------------------------

  /// `+` operator. Returns a [FhirInteger64] with the sum.
  FhirInteger64? operator +(dynamic other) => _operate(other, (a, b) => a + b);

  /// `-` operator. Returns a [FhirInteger64] with the difference.
  FhirInteger64? operator -(dynamic other) => _operate(other, (a, b) => a - b);

  /// `*` operator. Returns a [FhirInteger64] with the product.
  FhirInteger64? operator *(dynamic other) => _operate(other, (a, b) => a * b);

  /// `~/` operator (truncating division). Returns a [FhirInteger64].
  FhirInteger64? operator ~/(dynamic other) =>
      _operate(other, (a, b) => a ~/ b);

  /// `%` operator (modulo). Returns a [FhirInteger64].
  FhirInteger64? operator %(dynamic other) => _operate(other, (a, b) => a % b);

  /// `-()`: Unary negation.
  FhirInteger64? operator -() =>
      valueBigInt == null ? null : FhirInteger64(-valueBigInt!);

  /// `/` operator: Divides [this] by [other], returns a [FhirInteger64] from
  /// `BigInt.from(...)` of the result. (Truncates if necessary.)
  FhirInteger64? operator /(dynamic other) =>
      _operate(other, (a, b) => BigInt.from(a / b));

  /// `^`: Bitwise XOR.
  FhirInteger64? operator ^(dynamic other) => _operate(other, (a, b) => a ^ b);

  /// `&`: Bitwise AND.
  FhirInteger64? operator &(dynamic other) => _operate(other, (a, b) => a & b);

  /// `|`: Bitwise OR.
  FhirInteger64? operator |(dynamic other) => _operate(other, (a, b) => a | b);

  /// `~()`: Bitwise NOT.
  FhirInteger64? operator ~() =>
      valueBigInt == null ? null : FhirInteger64(~valueBigInt!);

  /// Left shift.
  FhirInteger64? operator <<(int shiftAmount) =>
      valueBigInt == null ? null : FhirInteger64(valueBigInt! << shiftAmount);

  /// Right shift.
  FhirInteger64? operator >>(int shiftAmount) =>
      valueBigInt == null ? null : FhirInteger64(valueBigInt! >> shiftAmount);

  /// `remainder(...)`: Remainder of division.
  FhirInteger64? remainder(dynamic other) =>
      _operate(other, (a, b) => a.remainder(b));

  /// `toUnsigned(width)`: Zero-extend the number to [width] bits.
  FhirInteger64? toUnsigned(int width) => valueBigInt == null
      ? null
      : FhirInteger64(valueBigInt!.toUnsigned(width));

  /// `toSigned(width)`: Sign-extend the number to [width] bits.
  FhirInteger64? toSigned(int width) =>
      valueBigInt == null ? null : FhirInteger64(valueBigInt!.toSigned(width));

  /// `abs()`: Absolute value.
  FhirInteger64? abs() =>
      valueBigInt == null ? null : FhirInteger64(valueBigInt!.abs());

  /// `gcd(...)`: Greatest common divisor.
  FhirInteger64? gcd(dynamic other) => _operate(other, (a, b) => a.gcd(b));

  /// `pow(exponent)`: Exponentiation.
  FhirInteger64? pow(int exponent) =>
      valueBigInt == null ? null : FhirInteger64(valueBigInt!.pow(exponent));

  /// `modInverse(modulus)`: Modular multiplicative inverse.
  FhirInteger64? modInverse(FhirInteger64 modulus) =>
      (valueBigInt == null || modulus.valueBigInt == null)
          ? null
          : FhirInteger64(valueBigInt!.modInverse(modulus.valueBigInt!));

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

  FhirInteger64? _operate(dynamic other, BigInt Function(BigInt, BigInt) op) {
    if (valueBigInt == null) return null;
    final otherVal = _extractValue(other);
    return otherVal == null ? null : FhirInteger64(op(valueBigInt!, otherVal));
  }

  BigInt? _extractValue(dynamic other) {
    if (other is FhirInteger64) return other.valueBigInt;
    if (other is BigInt) return other;
    if (other is int) return BigInt.from(other);
    return BigInt.tryParse(other.toString());
  }
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class $FhirInteger64CopyWithImpl<T> implements $PrimitiveTypeCopyWith<T> {
  /// Constructor for the copyWith implementation.
  $FhirInteger64CopyWithImpl(this._value, this._then);

  final FhirInteger64 _value;
  final T Function(FhirInteger64) _then;

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirInteger64(
        identical(newValue, fhirSentinel) ? _value.valueString : newValue,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
