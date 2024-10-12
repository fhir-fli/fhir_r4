import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:uuid/uuid.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a String to a [FhirUuid].
extension FhirUuidExtension on String {
  /// Converts a String to a [FhirUuid].
  FhirUuid get toFhirUuid => FhirUuid(this);
}

/// Extension to convert a UuidValue to a [FhirUuid].
extension FhirUuidValueExtension on UuidValue {
  /// Converts a [UuidValue] to a [FhirUuid].
  FhirUuid get toFhirUuid => FhirUuid.fromUuid(this);
}

/// [FhirUuid] represents a validated UUID value in the FHIR standard.
class FhirUuid extends PrimitiveType<UuidValue> {
  /// Constructs a [FhirUuid] from a String input.
  ///
  /// Validates the input to ensure it is a valid UUID.
  FhirUuid(String input, [Element? element])
      : value = _validateUuid(input),
        super(element: element);

  /// Constructs a [FhirUuid] from a [UuidValue].
  FhirUuid.fromUuid(UuidValue input, [Element? element])
      : value = input,
        super(element: element);

  /// Factory constructor to create [FhirUuid] from JSON.
  ///
  /// Only accepts a String and validates it as a UUID.
  factory FhirUuid.fromJson(dynamic json) {
    if (json is String) {
      return FhirUuid(json);
    } else {
      throw const FormatException('Invalid input for FhirUuid');
    }
  }

  /// Factory constructor to create [FhirUuid] from YAML input.
  factory FhirUuid.fromYaml(String yaml) =>
      FhirUuid.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))) as String);

  /// Factory constructor to generate a UUID using version 1.
  factory FhirUuid.v1([Element? element]) {
    const uuid = Uuid();
    return FhirUuid(uuid.v1(), element);
  }

  /// Factory constructor to generate a UUID using version 4.
  factory FhirUuid.v4([Element? element]) {
    const uuid = Uuid();
    return FhirUuid(uuid.v4(), element);
  }

  /// Factory constructor to generate a UUID using version 5.
  factory FhirUuid.v5(String namespace, String name, [Element? element]) {
    const uuid = Uuid();
    return FhirUuid(uuid.v5(namespace, name), element);
  }

  /// Stores the validated UUID value.
  @override
  final UuidValue value;

  /// Tries to parse a String input into a [FhirUuid].
  static FhirUuid? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirUuid(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  /// Validates a UUID String and returns a [UuidValue].
  static UuidValue _validateUuid(String input) {
    if (Uuid.isValidUUID(fromString: input)) {
      return UuidValue.fromString(input);
    } else {
      throw FormatException(
        'FhirUuid cannot be constructed from invalid String: $input',
      );
    }
  }

  /// Returns the FHIR type as 'uuid'.
  @override
  String get fhirType => 'uuid';

  /// Converts the UUID to a JSON String format.
  @override
  String toJson() => value.uuid;

  /// Converts the UUID to a YAML String format.
  @override
  String toYaml() => value.uuid;

  /// Converts the UUID to a String.
  @override
  String toString() => value.uuid;

  /// Converts the UUID to a JSON-encoded String.
  @override
  String toJsonString() => jsonEncode(toJson());

  /// Returns the hashCode for the UUID.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  /// Checks equality between two objects.
  ///
  /// Supports comparisons with [FhirUuid], [UuidValue], or a valid UUID String.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Checks equality between [FhirUuid], [UuidValue], or a valid UUID String.
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirUuid && other.value == value) ||
      (other is UuidValue && other == value) ||
      (other is String &&
          Uuid.isValidUUID(fromString: other) &&
          UuidValue.fromString(other) == value);

  /// Clones the [FhirUuid] object, including its [Element] value.
  @override
  FhirUuid clone() => FhirUuid.fromUuid(value, element?.clone() as Element?);

  /// Validates if the provided UUID string is valid.
  static bool isValidUuid(String uuid) {
    return Uuid.isValidUUID(fromString: uuid);
  }

  /// Parses a UUID string and returns a list of bytes ([List<int>]).
  static List<int> parseUuid(String uuid) {
    return Uuid.parse(uuid);
  }

  /// Unparses a list of bytes into a UUID string.
  static String unparseUuid(List<int> buffer) {
    return Uuid.unparse(buffer);
  }

  /// Bitwise AND operation is not supported on UUID.
  FhirUuid operator &(dynamic other) {
    throw UnsupportedError('Bitwise operations are not supported on Uuid');
  }

  /// Bitwise OR operation is not supported on UUID.
  FhirUuid operator |(dynamic other) {
    throw UnsupportedError('Bitwise operations are not supported on Uuid');
  }

  /// Bitwise XOR operation is not supported on UUID.
  FhirUuid operator ^(dynamic other) {
    throw UnsupportedError('Bitwise operations are not supported on Uuid');
  }

  /// Sets the [Element] property for this [FhirUuid].
  @override
  FhirUuid setElement(String name, dynamic elementValue) {
    return FhirUuid.fromUuid(value, element?.setProperty(name, elementValue));
  }

  /// Creates a copy of this [FhirUuid], allowing modifications to properties.
  @override
  FhirUuid copyWith({
    UuidValue? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirUuid.fromUuid(
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
