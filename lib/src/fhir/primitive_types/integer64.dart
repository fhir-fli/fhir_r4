import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [num] to a [FhirInteger64].
extension FhirInteger64NumExtension on num {
  /// Returns a [FhirInteger64] object
  FhirInteger64 get toFhirInteger64 => FhirInteger64(this);
}

/// Extension to convert a [String] to a [FhirInteger64].
extension FhirInteger64StringExtension on String {
  /// Returns a [FhirInteger64] object
  FhirInteger64 get toFhirInteger64 => FhirInteger64(this);
}

/// Extension to convert a [BigInt] to a [FhirInteger64].
extension FhirInteger64BigIntExtension on BigInt {
  /// Returns a [FhirInteger64] object
  FhirInteger64 get toFhirInteger64 => FhirInteger64(this);
}

/// [FhirInteger64] represents a 64-bit integer in the FHIR spec.
class FhirInteger64 extends PrimitiveType<BigInt>
    implements Comparable<FhirInteger64> {
  /// Constructor accepts a valid int, BigInt, or String input.
  FhirInteger64(dynamic input, [Element? element])
      : value = _validateInteger64(input),
        super(element: element);

  /// Factory constructor to create a [FhirInteger64] from JSON.
  factory FhirInteger64.fromJson(dynamic json) => FhirInteger64(json);

  /// Factory constructor to create a [FhirInteger64] from YAML.
  factory FhirInteger64.fromYaml(String yaml) => FhirInteger64.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as String,
      );

  /// The validated BigInt value of the [FhirInteger64].
  @override
  final BigInt value;

  /// Validation logic for handling different input types.
  static BigInt _validateInteger64(dynamic input) {
    if (input is int) {
      return BigInt.from(input);
    } else if (input is BigInt) {
      return input;
    } else if (input is String) {
      final parsed = BigInt.tryParse(input);
      if (parsed != null) {
        return parsed;
      }
    }
    throw FormatException('Invalid input for FhirInteger64: $input');
  }

  /// Attempts to parse the input and return a [FhirInteger64].
  static FhirInteger64? tryParse(dynamic input) {
    if (input is int) {
      try {
        return FhirInteger64(input);
      } catch (e) {
        return null;
      }
    } else if (input is BigInt) {
      return FhirInteger64(input);
    } else if (input is String) {
      try {
        return FhirInteger64(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  /// Returns the FHIR type as 'integer64'.
  @override
  String get fhirType => 'integer64';

  /// Converts the [FhirInteger64] to a [String].
  @override
  String toString() => value.toString();

  /// Converts the [FhirInteger64] to a JSON [String].
  @override
  String toJson() => value.toString();

  /// Converts the [FhirInteger64] to a YAML [String].
  @override
  String toYaml() => value.toString();

  /// Converts the [FhirInteger64] to a JSON string.
  @override
  String toJsonString() => jsonEncode(toJson());

  /// Returns the hash code for the [FhirInteger64].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  /// Compares [FhirInteger64] for equality with another object.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Checks equality between [FhirInteger64] and other objects.
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirInteger64 && other.value == value) ||
      (other is BigInt && other == value);

  /// Adds two [FhirInteger64] values or [BigInt].
  FhirInteger64 operator +(dynamic other) {
    final result =
        value + (other is FhirInteger64 ? other.value : other as BigInt);
    return FhirInteger64(result);
  }

  /// Subtracts two [FhirInteger64] values or [BigInt].
  FhirInteger64 operator -(dynamic other) {
    final result =
        value - (other is FhirInteger64 ? other.value : other as BigInt);
    return FhirInteger64(result);
  }

  /// Multiplies two [FhirInteger64] values or [BigInt].
  FhirInteger64 operator *(dynamic other) {
    final result =
        value * (other is FhirInteger64 ? other.value : other as BigInt);
    return FhirInteger64(result);
  }

  /// Modulo operation between two [FhirInteger64] values or [BigInt].
  FhirInteger64 operator %(dynamic other) {
    final result =
        value % (other is FhirInteger64 ? other.value : other as BigInt);
    return FhirInteger64(result);
  }

  /// Integer division between two [FhirInteger64] values or [BigInt].
  FhirInteger64 operator ~/(dynamic other) {
    final result =
        value ~/ (other is FhirInteger64 ? other.value : other as BigInt);
    return FhirInteger64(result);
  }

  /// Unary negation of a [FhirInteger64].
  FhirInteger64 operator -() => FhirInteger64(-value);

  /// Bitwise AND between two [FhirInteger64] values or [BigInt].
  FhirInteger64 operator &(dynamic other) {
    final result =
        value & (other is FhirInteger64 ? other.value : other as BigInt);
    return FhirInteger64(result);
  }

  /// Bitwise OR between two [FhirInteger64] values or [BigInt].
  FhirInteger64 operator |(dynamic other) {
    final result =
        value | (other is FhirInteger64 ? other.value : other as BigInt);
    return FhirInteger64(result);
  }

  /// Bitwise XOR between two [FhirInteger64] values or [BigInt].
  FhirInteger64 operator ^(dynamic other) {
    final result =
        value ^ (other is FhirInteger64 ? other.value : other as BigInt);
    return FhirInteger64(result);
  }

  /// Left shift the bits of [FhirInteger64].
  FhirInteger64 operator <<(int shiftAmount) =>
      FhirInteger64(value << shiftAmount);

  /// Right shift the bits of [FhirInteger64].
  FhirInteger64 operator >>(int shiftAmount) =>
      FhirInteger64(value >> shiftAmount);

  /// Returns the remainder when dividing by another [BigInt].
  BigInt remainder(BigInt other) => value.remainder(other);

  /// Compares if this [FhirInteger64] is less than [other].
  bool operator <(dynamic other) {
    return other is FhirInteger64
        ? value < other.value
        : other is BigInt
            ? value < other
            : BigInt.tryParse(other.toString()) != null
                ? value < BigInt.parse(other.toString())
                : throw ArgumentError(
                    'Invalid input for FhirInteger64: $other',
                  );
  }

  /// Compares if this [FhirInteger64] is less than or equal to [other].
  bool operator <=(dynamic other) => this == other || this < other;

  /// Compares if this [FhirInteger64] is greater than [other].
  bool operator >(dynamic other) {
    return other is FhirInteger64
        ? value > other.value
        : other is BigInt
            ? value > other
            : BigInt.tryParse(other.toString()) != null
                ? value > BigInt.parse(other.toString())
                : throw ArgumentError(
                    'Invalid input for FhirInteger64: $other',
                  );
  }

  /// Compares if this [FhirInteger64] is greater than or equal to [other].
  bool operator >=(dynamic other) => this == other || this > other;

  /// Compares two [FhirInteger64] values.
  @override
  int compareTo(FhirInteger64 other) => value.compareTo(other.value);

  /// Clones the [FhirInteger64] object.
  @override
  FhirInteger64 clone() => FhirInteger64.fromJson(toJson());

  /// Returns the absolute value of the [FhirInteger64].
  BigInt abs() => value.abs();

  /// Raises the value to the power of [exponent].
  BigInt pow(int exponent) => value.pow(exponent);

  /// Modular exponentiation with [modulus].
  BigInt modPow(BigInt exponent, BigInt modulus) =>
      value.modPow(exponent, modulus);

  /// Returns the modular inverse of [value].
  BigInt modInverse(BigInt modulus) => value.modInverse(modulus);

  /// Returns the greatest common divisor with [other].
  BigInt gcd(BigInt other) => value.gcd(other);

  /// Converts to unsigned with a given bit width.
  BigInt toUnsigned(int width) => value.toUnsigned(width);

  /// Converts to signed with a given bit width.
  BigInt toSigned(int width) => value.toSigned(width);

  /// Checks if the [FhirInteger64] is even.
  bool get isEven => value.isEven;

  /// Checks if the [FhirInteger64] is odd.
  bool get isOdd => value.isOdd;

  /// Checks if the [FhirInteger64] is negative.
  bool get isNegative => value.isNegative;

  /// Checks if the [FhirInteger64] is a valid integer.
  bool get isValidInt => value.isValidInt;

  /// Converts the [FhirInteger64] to an integer.
  int toInt() => value.toInt();

  /// Converts the [FhirInteger64] to a double.
  double toDouble() => value.toDouble();

  /// Converts the [FhirInteger64] to a radix string.
  String toRadixString(int radix) => value.toRadixString(radix);

  /// Returns the bit length of the [FhirInteger64].
  int get bitLength => value.bitLength;

  /// Sets an element property.
  @override
  FhirInteger64 setElement(String name, dynamic elementValue) {
    return FhirInteger64(value, element?.setProperty(name, elementValue));
  }

  /// Copies the [FhirInteger64] with optional modifications.
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
