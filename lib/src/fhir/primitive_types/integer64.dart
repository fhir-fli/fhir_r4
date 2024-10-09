import 'dart:convert';
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

class FhirInteger64 extends PrimitiveType<BigInt>
    implements Comparable<FhirInteger64> {
  FhirInteger64._(this.valueString, this.valueNumber, this.isValid,
      {super.element});

  // Factory constructors
  factory FhirInteger64(dynamic inValue, [Element? element]) {
    if (inValue is FhirInteger64) {
      return inValue;
    } else if (inValue is int) {
      return FhirInteger64._(
        inValue.toString(),
        BigInt.from(inValue),
        true,
        element: element,
      );
    } else if (inValue is BigInt) {
      return FhirInteger64._(
        inValue.toString(),
        inValue,
        true,
        element: element,
      );
    } else if (inValue is String) {
      final BigInt? tempInteger64 = BigInt.tryParse(inValue);
      return tempInteger64 == null
          ? FhirInteger64._(inValue, null, false)
          : FhirInteger64._(inValue, tempInteger64, true);
    }
    throw CannotBeConstructed<FhirInteger64>(
        'Integer64 cannot be constructed from $inValue '
        '(${inValue.runtimeType}).');
  }

  factory FhirInteger64.fromJson(dynamic json) => FhirInteger64(json);

  factory FhirInteger64.fromYaml(dynamic yaml) => yaml is String
      ? FhirInteger64.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : yaml is YamlMap
          ? FhirInteger64.fromJson(jsonDecode(jsonEncode(yaml)))
          : throw YamlFormatException<FhirInteger64>(
              'Invalid Yaml format for FhirInteger64: "$yaml".');

  @override
  String get fhirType => 'integer64';

  // Overriding necessary fields and methods
  @override
  BigInt? get value => valueNumber;
  final String valueString;
  final BigInt? valueNumber;
  @override
  final bool isValid;

  @override
  String toString() => valueString;
  @override
  String toJson() => valueString;
  @override
  String toYaml() => valueString;
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirInteger64 && other.valueNumber == valueNumber) ||
      (other is BigInt && other == valueNumber);

  // Mirrored arithmetic and bitwise operators for BigInt and FhirInteger64
  FhirInteger64 operator +(dynamic other) {
    if (other is BigInt || other is FhirInteger64) {
      final BigInt result = valueNumber! +
          (other is FhirInteger64 ? other.valueNumber! : other as BigInt);
      return FhirInteger64(result);
    }
    throw InvalidTypes<FhirInteger64>('Invalid operand for addition: $other');
  }

  FhirInteger64 operator -(dynamic other) {
    if (other is BigInt || other is FhirInteger64) {
      final BigInt result = valueNumber! -
          (other is FhirInteger64 ? other.valueNumber! : other as BigInt);
      return FhirInteger64(result);
    }
    throw InvalidTypes<FhirInteger64>(
        'Invalid operand for subtraction: $other');
  }

  FhirInteger64 operator *(dynamic other) {
    if (other is BigInt || other is FhirInteger64) {
      final BigInt result = valueNumber! *
          (other is FhirInteger64 ? other.valueNumber! : other as BigInt);
      return FhirInteger64(result);
    }
    throw InvalidTypes<FhirInteger64>(
        'Invalid operand for multiplication: $other');
  }

  FhirInteger64 operator %(dynamic other) {
    if (other is BigInt || other is FhirInteger64) {
      final BigInt result = valueNumber! %
          (other is FhirInteger64 ? other.valueNumber! : other as BigInt);
      return FhirInteger64(result);
    }
    throw InvalidTypes<FhirInteger64>('Invalid operand for modulo: $other');
  }

  FhirInteger64 operator ~/(dynamic other) {
    if (other is BigInt || other is FhirInteger64) {
      final BigInt result = valueNumber! ~/
          (other is FhirInteger64 ? other.valueNumber! : other as BigInt);
      return FhirInteger64(result);
    }
    throw InvalidTypes<FhirInteger64>(
        'Invalid operand for truncating division: $other');
  }

  FhirInteger64 operator -() {
    return FhirInteger64(-valueNumber!);
  }

  FhirInteger64 operator &(dynamic other) {
    if (other is BigInt || other is FhirInteger64) {
      final BigInt result = valueNumber! &
          (other is FhirInteger64 ? other.valueNumber! : other as BigInt);
      return FhirInteger64(result);
    }
    throw InvalidTypes<FhirInteger64>(
        'Invalid operand for bitwise AND: $other');
  }

  FhirInteger64 operator |(dynamic other) {
    if (other is BigInt || other is FhirInteger64) {
      final BigInt result = valueNumber! |
          (other is FhirInteger64 ? other.valueNumber! : other as BigInt);
      return FhirInteger64(result);
    }
    throw InvalidTypes<FhirInteger64>('Invalid operand for bitwise OR: $other');
  }

  FhirInteger64 operator ^(dynamic other) {
    if (other is BigInt || other is FhirInteger64) {
      final BigInt result = valueNumber! ^
          (other is FhirInteger64 ? other.valueNumber! : other as BigInt);
      return FhirInteger64(result);
    }
    throw InvalidTypes<FhirInteger64>(
        'Invalid operand for bitwise XOR: $other');
  }

  FhirInteger64 operator <<(int shiftAmount) {
    return FhirInteger64(valueNumber! << shiftAmount);
  }

  FhirInteger64 operator >>(int shiftAmount) {
    return FhirInteger64(valueNumber! >> shiftAmount);
  }

  BigInt remainder(BigInt other) {
    return valueNumber!.remainder(other);
  }

  // Comparison operators
  bool operator <(dynamic other) {
    return other is FhirInteger64
        ? valueNumber! < other.valueNumber!
        : valueNumber! < (other as BigInt);
  }

  bool operator <=(dynamic other) {
    return this == other || this < other;
  }

  bool operator >(dynamic other) {
    return other is FhirInteger64
        ? valueNumber! > other.valueNumber!
        : valueNumber! > (other as BigInt);
  }

  bool operator >=(dynamic other) {
    return this == other || this > other;
  }

  @override
  int compareTo(FhirInteger64 other) {
    if (other.isValid && isValid) {
      return valueNumber!.compareTo(other.valueNumber!);
    } else {
      throw InvalidTypes<FhirInteger64>(
          'One of the values is not valid or null.');
    }
  }

  // Utility methods
  @override
  FhirInteger64 clone() => FhirInteger64.fromJson(toJson());

  BigInt abs() => valueNumber!.abs();

  BigInt pow(int exponent) => valueNumber!.pow(exponent);

  BigInt modPow(BigInt exponent, BigInt modulus) =>
      valueNumber!.modPow(exponent, modulus);

  BigInt modInverse(BigInt modulus) => valueNumber!.modInverse(modulus);

  BigInt gcd(BigInt other) => valueNumber!.gcd(other);

  BigInt toUnsigned(int width) => valueNumber!.toUnsigned(width);

  BigInt toSigned(int width) => valueNumber!.toSigned(width);

  bool get isEven => valueNumber!.isEven;

  bool get isOdd => valueNumber!.isOdd;

  bool get isNegative => valueNumber!.isNegative;

  bool get isValidInt => valueNumber!.isValidInt;

  int toInt() => valueNumber!.toInt();

  double toDouble() => valueNumber!.toDouble();

  String toRadixString(int radix) => valueNumber!.toRadixString(radix);

  int get bitLength => valueNumber!.bitLength;

  @override
  FhirInteger64 setElement(String name, dynamic elementValue) {
    return FhirInteger64(value, element?.setProperty(name, elementValue));
  }

  @override
  FhirInteger64 copyWith({
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirInteger64._(
      valueString,
      valueNumber,
      isValid,
      element: element?.copyWith(
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
