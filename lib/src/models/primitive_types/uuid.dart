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
  /// Converts a UuidValue to a [FhirUuid].
  FhirUuid get toFhirUuid => FhirUuid.fromUuid(this);
}

/// [FhirUuid] represents a validated UUID value in the FHIR standard.
class FhirUuid extends PrimitiveType<UuidValue?> {
  /// Constructs a [FhirUuid] from a String input, allowing null values.
  FhirUuid(String? input, [Element? element])
      : super(input != null ? _validateUuid(input) : null, element) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
  }

  /// Constructs a [FhirUuid] from a [UuidValue], allowing null values.
  FhirUuid.fromUuid(super.input, [super.element]);

  /// Factory constructor to create [FhirUuid] from JSON.
  factory FhirUuid.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    return FhirUuid(value, element);
  }

  /// Factory constructor to create [FhirUuid] from YAML input.
  factory FhirUuid.fromYaml(String yaml) => FhirUuid.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );

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

  /// Tries to parse a String input into a [FhirUuid].
  static FhirUuid? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirUuid(input);
      } catch (e) {
        return null;
      }
    }
    return null;
  }

  /// Validates a UUID String and returns a [UuidValue].
  static UuidValue _validateUuid(String input) {
    if (Uuid.isValidUUID(fromString: input)) {
      return UuidValue.fromString(input);
    } else {
      throw FormatException('Invalid UUID: $input');
    }
  }

  /// Returns the FHIR type as 'uuid'.
  @override
  String get fhirType => 'uuid';

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null) 'value': value!.toString(),
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation of the instance.
  @override
  String toString() => value?.uuid ?? 'null';

  /// Converts the UUID to a JSON-encoded String.
  @override
  String toJsonString() => jsonEncode(toJson());

  /// Hash code for the UUID.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Checks equality between two objects.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Checks equality with [FhirUuid], [UuidValue], or a valid UUID String.
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirUuid && other.value == value) ||
      (other is UuidValue && other == value) ||
      (other is String &&
          Uuid.isValidUUID(fromString: other) &&
          UuidValue.fromString(other) == value);

  /// Clones the [FhirUuid], including its [Element] value.
  @override
  FhirUuid clone() => FhirUuid.fromUuid(value, element?.clone() as Element?);

  /// Validates if a provided UUID string is valid.
  static bool isValidUuid(String uuid) {
    return Uuid.isValidUUID(fromString: uuid);
  }

  /// Parses a UUID string into a list of bytes.
  static List<int> parseUuid(String uuid) {
    return Uuid.parse(uuid);
  }

  /// Converts a list of bytes into a UUID string.
  static String unparseUuid(List<int> buffer) {
    return Uuid.unparse(buffer);
  }

  // Bitwise operations not supported on UUIDs.

  /// Throws an [UnsupportedError] for bitwise operations.
  FhirUuid operator &(dynamic other) => _unsupportedOperation('&');

  /// Throws an [UnsupportedError] for bitwise operations.
  FhirUuid operator |(dynamic other) => _unsupportedOperation('|');

  /// Throws an [UnsupportedError] for bitwise operations.
  FhirUuid operator ^(dynamic other) => _unsupportedOperation('^');

  /// Throws an [UnsupportedError] for bitwise operations.
  FhirUuid _unsupportedOperation(String operation) {
    throw UnsupportedError(
      'Bitwise operation "$operation" is not supported on UUIDs.',
    );
  }

  /// Sets the [Element] property.
  @override
  FhirUuid setElement(String name, dynamic elementValue) {
    return FhirUuid.fromUuid(value, element?.setProperty(name, elementValue));
  }

  /// Creates a copy with modified properties.
  @override
  FhirUuid copyWith({
    UuidValue? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    return FhirUuid.fromUuid(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
