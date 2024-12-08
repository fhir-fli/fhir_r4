import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

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

/// Represents a 64-bit integer in the FHIR spec.
class FhirInteger64 extends PrimitiveType<BigInt?>
    implements Comparable<FhirInteger64> {
  /// Constructor that allows nullable BigInt input.
  FhirInteger64(
    BigInt? input, {
    super.element,
    super.id,
    super.extension_,
  }) : super(input != null ? _validateInteger64(input) : null) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
  }

  /// Named constructor to create a [FhirInteger64] from a [num].
  FhirInteger64.fromNum(num input, {super.element}) : super(BigInt.from(input));

  /// Named constructor to create a [FhirInteger64] from a [String].
  FhirInteger64.fromString(String input, {super.element})
      : super(_validateInteger64(input));

  /// Named constructor to create a [FhirInteger64] from a [BigInt].
  FhirInteger64.fromBigInt(super.input, {super.element});

  /// Factory constructor to create from JSON.
  factory FhirInteger64.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as dynamic;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    return FhirInteger64.fromString(
      value?.toString() ?? '',
      element: element,
    );
  }

  /// Factory constructor to create from YAML.
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
      return FhirInteger64.fromString(input.toString());
    } catch (_) {
      return null;
    }
  }

  /// Validates input to convert to [BigInt].
  static BigInt _validateInteger64(dynamic input) {
    if (input == null) {
      throw const FormatException('Null value provided for FhirInteger64');
    }
    if (input is int) return BigInt.from(input);
    if (input is BigInt) return input;
    if (input is String) return BigInt.parse(input);
    throw FormatException('Invalid input for FhirInteger64: $input');
  }

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
      final value = values[i] as String?;
      final element = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirInteger64.fromString(value ?? '', element: element);
    });
  }

  /// Converts a list of [FhirInteger64] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirInteger64> integers) => {
        'value': integers.map((i) => i.value?.toString()).toList(),
        '_value': integers.map((i) => i.element?.toJson()).toList(),
      };

  /// String representation of the instance.
  @override
  String toString() => value?.toString() ?? 'null';

  /// Compares two [FhirInteger64] values.
  @override
  int compareTo(FhirInteger64 other) =>
      value == null || other.value == null ? 0 : value!.compareTo(other.value!);

  /// Arithmetic Operators

  /// Addition operator.
  FhirInteger64? operator +(dynamic other) => _operate(other, (a, b) => a + b);

  /// Subtraction operator.
  FhirInteger64? operator -(dynamic other) => _operate(other, (a, b) => a - b);

  /// Multiplication operator.
  FhirInteger64? operator *(dynamic other) => _operate(other, (a, b) => a * b);

  /// Division operator.
  FhirInteger64? operator ~/(dynamic other) =>
      _operate(other, (a, b) => a ~/ b);

  /// Modulo operator.
  FhirInteger64? operator %(dynamic other) => _operate(other, (a, b) => a % b);

  /// Unary negation operator.
  FhirInteger64? operator -() => value == null ? null : FhirInteger64(-value!);

  /// Division operator.
  FhirInteger64? operator /(dynamic other) =>
      _operate(other, (a, b) => BigInt.from(a / b));

  /// Power operator.
  FhirInteger64? pow(int exponent) =>
      value == null ? null : FhirInteger64(value!.pow(exponent));

  /// Modulo inverse operator.
  FhirInteger64? modInverse(FhirInteger64 modulus) =>
      value == null ? null : FhirInteger64(value!.modInverse(modulus.value!));

  /// Bitwise Operators

  /// Bitwise AND operator.
  FhirInteger64? operator &(dynamic other) => _operate(other, (a, b) => a & b);

  /// Bitwise OR operator.
  FhirInteger64? operator |(dynamic other) => _operate(other, (a, b) => a | b);

  /// Bitwise XOR operator.
  FhirInteger64? operator ^(dynamic other) => _operate(other, (a, b) => a ^ b);

  /// Bitwise NOT operator.
  FhirInteger64? operator ~() => value == null ? null : FhirInteger64(~value!);

  /// Bitwise Shift Operators
  FhirInteger64? operator <<(int shiftAmount) =>
      value == null ? null : FhirInteger64(value! << shiftAmount);

  /// Bitwise Shift Operators
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

  /// Comparison Operators

  /// Equality operator.
  bool operator <(dynamic other) => _compare(other, (a, b) => a < b);

  /// Less than or equal to operator.
  bool operator <=(dynamic other) => _compare(other, (a, b) => a <= b);

  /// Greater than or equal to operator.
  bool operator >(dynamic other) => _compare(other, (a, b) => a > b);

  /// Greater than or equal to operator.
  bool operator >=(dynamic other) => _compare(other, (a, b) => a >= b);

  /// Helper Methods

  bool _compare(dynamic other, bool Function(BigInt, BigInt) compare) {
    if (value == null) return false;
    final otherValue = _extractValue(other);
    if (otherValue == null) return false;
    return compare(value!, otherValue);
  }

  FhirInteger64? _operate(
    dynamic other,
    BigInt Function(BigInt, BigInt) operation,
  ) {
    final otherValue = _extractValue(other);
    return value == null || otherValue == null
        ? null
        : FhirInteger64(operation(value!, otherValue));
  }

  BigInt? _extractValue(dynamic other) {
    if (other is FhirInteger64) return other.value;
    if (other is BigInt) return other;
    if (other is int) return BigInt.from(other);
    return BigInt.tryParse(other.toString());
  }

  @override
  FhirInteger64 clone() => FhirInteger64.fromJson(toJson());

  @override
  FhirInteger64 copyWith({
    BigInt? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return FhirInteger64(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
      ),
    );
  }
}
