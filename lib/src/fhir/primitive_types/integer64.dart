import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirInteger64NumExtension on num {
  FhirInteger64 get toFhirInteger64 => FhirInteger64(this);
}

extension FhirInteger64StringExtension on String {
  FhirInteger64 get toFhirInteger64 => FhirInteger64(this);
}

extension FhirInteger64BigIntExtension on BigInt {
  FhirInteger64 get toFhirInteger64 => FhirInteger64(this);
}

@Entity()
class FhirInteger64 extends PrimitiveType<BigInt>
    implements Comparable<FhirInteger64> {
  @override
  final BigInt value; // Store the validated BigInt value

  // Constructor accepts valid int, BigInt, or String input
  FhirInteger64(dynamic input, [Element? element])
      : value = _validateInteger64(input),
        super(element: element);

  // Validation logic for handling different input types
  static BigInt _validateInteger64(dynamic input) {
    if (input is int) {
      return BigInt.from(input);
    } else if (input is BigInt) {
      return input;
    } else if (input is String) {
      final BigInt? parsed = BigInt.tryParse(input);
      if (parsed != null) {
        return parsed;
      }
    }
    throw FormatException('Invalid input for FhirInteger64: $input');
  }

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

  // fromJson only accepts dynamic input and validates it
  factory FhirInteger64.fromJson(dynamic json) => FhirInteger64(json);

  // YAML conversion
  factory FhirInteger64.fromYaml(String yaml) =>
      FhirInteger64.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))) as String);

  @override
  @Id()
  int dbId = 0;

  @override
  String get fhirType => 'integer64';

  // Serialization and comparison methods
  @override
  String toString() => value.toString();
  @override
  String toJson() => value.toString();
  @override
  String toYaml() => value.toString();
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirInteger64 && other.value == value) ||
      (other is BigInt && other == value);

  // Arithmetic and bitwise operators
  FhirInteger64 operator +(dynamic other) {
    final BigInt result =
        value + (other is FhirInteger64 ? other.value : other as BigInt);
    return FhirInteger64(result);
  }

  FhirInteger64 operator -(dynamic other) {
    final BigInt result =
        value - (other is FhirInteger64 ? other.value : other as BigInt);
    return FhirInteger64(result);
  }

  FhirInteger64 operator *(dynamic other) {
    final BigInt result =
        value * (other is FhirInteger64 ? other.value : other as BigInt);
    return FhirInteger64(result);
  }

  FhirInteger64 operator %(dynamic other) {
    final BigInt result =
        value % (other is FhirInteger64 ? other.value : other as BigInt);
    return FhirInteger64(result);
  }

  FhirInteger64 operator ~/(dynamic other) {
    final BigInt result =
        value ~/ (other is FhirInteger64 ? other.value : other as BigInt);
    return FhirInteger64(result);
  }

  FhirInteger64 operator -() => FhirInteger64(-value);

  FhirInteger64 operator &(dynamic other) {
    final BigInt result =
        value & (other is FhirInteger64 ? other.value : other as BigInt);
    return FhirInteger64(result);
  }

  FhirInteger64 operator |(dynamic other) {
    final BigInt result =
        value | (other is FhirInteger64 ? other.value : other as BigInt);
    return FhirInteger64(result);
  }

  FhirInteger64 operator ^(dynamic other) {
    final BigInt result =
        value ^ (other is FhirInteger64 ? other.value : other as BigInt);
    return FhirInteger64(result);
  }

  FhirInteger64 operator <<(int shiftAmount) =>
      FhirInteger64(value << shiftAmount);

  FhirInteger64 operator >>(int shiftAmount) =>
      FhirInteger64(value >> shiftAmount);

  BigInt remainder(BigInt other) => value.remainder(other);

  // Comparison operators
  bool operator <(dynamic other) {
    return other is FhirInteger64
        ? value < other.value
        : other is BigInt
            ? value < other
            : BigInt.tryParse(other.toString()) != null
                ? value < BigInt.parse(other.toString())
                : throw ArgumentError(
                    'Invalid input for FhirInteger64: $other');
  }

  bool operator <=(dynamic other) => this == other || this < other;

  bool operator >(dynamic other) {
    return other is FhirInteger64
        ? value > other.value
        : other is BigInt
            ? value > other
            : BigInt.tryParse(other.toString()) != null
                ? value > BigInt.parse(other.toString())
                : throw ArgumentError(
                    'Invalid input for FhirInteger64: $other');
  }

  bool operator >=(dynamic other) => this == other || this > other;

  @override
  int compareTo(FhirInteger64 other) => value.compareTo(other.value);

  // Utility methods
  @override
  FhirInteger64 clone() => FhirInteger64.fromJson(toJson());

  BigInt abs() => value.abs();

  BigInt pow(int exponent) => value.pow(exponent);

  BigInt modPow(BigInt exponent, BigInt modulus) =>
      value.modPow(exponent, modulus);

  BigInt modInverse(BigInt modulus) => value.modInverse(modulus);

  BigInt gcd(BigInt other) => value.gcd(other);

  BigInt toUnsigned(int width) => value.toUnsigned(width);

  BigInt toSigned(int width) => value.toSigned(width);

  bool get isEven => value.isEven;

  bool get isOdd => value.isOdd;

  bool get isNegative => value.isNegative;

  bool get isValidInt => value.isValidInt;

  int toInt() => value.toInt();

  double toDouble() => value.toDouble();

  String toRadixString(int radix) => value.toRadixString(radix);

  int get bitLength => value.bitLength;

  @override
  FhirInteger64 setElement(String name, dynamic elementValue) {
    return FhirInteger64(value, element?.setProperty(name, elementValue));
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
