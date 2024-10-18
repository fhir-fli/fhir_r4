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
  FhirInteger64(BigInt? input, [Element? element])
      : super(input != null ? _validateInteger64(input) : null, element) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
  }

  /// Named constructor to create a [FhirInteger64] from an [int].
  FhirInteger64.fromNum(num input, [Element? element])
      : super(BigInt.from(input), element);

  /// Named constructor to create a [FhirInteger64] from a [String].
  FhirInteger64.fromString(String input, [Element? element])
      : super(_validateInteger64(input), element);

  /// Named constructor to create a [FhirInteger64] from a [BigInt].
  FhirInteger64.fromBigInt(super.input, [super.element]);

  /// Factory constructor to create from JSON.
  factory FhirInteger64.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as dynamic;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    return FhirInteger64.fromString(value?.toString() ?? '', element);
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

  /// Tries to parse the input and return a [FhirInteger64] or `null`.
  static FhirInteger64? tryParse(dynamic input) {
    try {
      return FhirInteger64.fromString(input.toString());
    } catch (_) {
      return null;
    }
  }

  /// Validates input to convert to [BigInt], supporting nullable values.
  static BigInt? _validateInteger64(dynamic input) {
    if (input == null) return null;
    if (input is int) return BigInt.from(input);
    if (input is BigInt) return input;
    if (input is String) return BigInt.parse(input);
    throw FormatException('Invalid input for FhirInteger64: $input');
  }

  /// Returns the FHIR type as 'integer64'.
  @override
  String get fhirType => 'integer64';

  /// Serializes the instance to JSON with standardized keys.
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
      return FhirInteger64.fromString(value ?? '', element);
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
  int compareTo(FhirInteger64 other) {
    if (value == null || other.value == null) return 0;
    return value!.compareTo(other.value!);
  }

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

  /// Modular exponentiation.
  FhirInteger64? modPow(FhirInteger64 exponent, FhirInteger64 modulus) =>
      value == null
          ? null
          : FhirInteger64(value!.modPow(exponent.value!, modulus.value!));

  /// Bitwise AND operator.
  FhirInteger64? operator &(dynamic other) => _operate(other, (a, b) => a & b);

  /// Bitwise OR operator.
  FhirInteger64? operator |(dynamic other) => _operate(other, (a, b) => a | b);

  /// Bitwise XOR operator.
  FhirInteger64? operator ^(dynamic other) => _operate(other, (a, b) => a ^ b);

  /// Bitwise NOT operator.
  FhirInteger64? operator ~() => value == null ? null : FhirInteger64(~value!);

  /// Left shift operator.
  FhirInteger64? operator <<(int shiftAmount) =>
      value == null ? null : FhirInteger64(value! << shiftAmount);

  /// Right shift operator.
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
    if (value == null) return null;
    final otherValue = _extractValue(other);
    if (otherValue == null) return null;
    return FhirInteger64(operation(value!, otherValue));
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
  FhirInteger64 setElement(String name, dynamic elementValue) {
    return FhirInteger64(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  @override
  FhirInteger64 copyWith({
    BigInt? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirInteger64(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
