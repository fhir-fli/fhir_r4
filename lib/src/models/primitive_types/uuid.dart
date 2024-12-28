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
class FhirUuid extends PrimitiveType<UuidValue?>
    implements
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Constructs a [FhirUuid] from a String input, allowing null values.
  FhirUuid(
    String? input, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Uuid',
  }) : super(input != null ? _validateUuid(input) : null) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
  }

  /// Constructs a [FhirUuid] from a [UuidValue], allowing null values.
  FhirUuid.fromUuid(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Uuid',
  });

  /// Factory constructor to create [FhirUuid] from JSON.
  factory FhirUuid.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String?;
    return FhirUuid(value, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create [FhirUuid] from YAML input.
  factory FhirUuid.fromYaml(String yaml) => FhirUuid.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );

  /// Factory constructor to generate a UUID using version 1.
  factory FhirUuid.v1([Element? element]) {
    const uuid = Uuid();
    return FhirUuid(uuid.v1(), element: element);
  }

  /// Factory constructor to generate a UUID using version 4.
  factory FhirUuid.v4([Element? element]) {
    const uuid = Uuid();
    return FhirUuid(uuid.v4(), element: element);
  }

  /// Factory constructor to generate a UUID using version 5.
  factory FhirUuid.v5({
    required String namespace,
    required String name,
    Element? element,
  }) {
    const uuid = Uuid();
    return FhirUuid(uuid.v5(namespace, name), element: element);
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

  /// Bitwise AND operator
  FhirUuid operator &(dynamic other) {
    if (other == null) {
      throw ArgumentError('Cannot perform bitwise operations with null');
    }
    if (other is! FhirUuid && other is! Uuid && other is! String) {
      throw ArgumentError(
          'Bitwise operations are only supported with FhirUuid, Uuid, or '
          'UUID strings');
    }

    // Parse the first UUID into bytes
    final bytes1 = Uuid.parse(value!.uuid);

    // Parse the second UUID into bytes based on the type of `other`
    final bytes2 = _parseToBytes(other);

    // Perform the bitwise AND operation on each byte
    final resultBytes = List<int>.generate(
      bytes1.length,
      (index) => bytes1[index] & bytes2[index],
    );

    // Return a new FhirUuid created from the resulting bytes
    return FhirUuid(Uuid.unparse(resultBytes));
  }

  /// Bitwise OR operator
  FhirUuid operator |(dynamic other) {
    if (other == null) {
      throw ArgumentError('Cannot perform bitwise operations with null');
    }
    if (other is! FhirUuid && other is! Uuid && other is! String) {
      throw ArgumentError(
          'Bitwise operations are only supported with FhirUuid, Uuid, or '
          'UUID strings');
    }

    // Parse the first UUID into bytes
    final bytes1 = Uuid.parse(value!.uuid);

    // Parse the second UUID into bytes based on the type of `other`
    final bytes2 = _parseToBytes(other);

    // Perform the bitwise OR operation on each byte
    final resultBytes = List<int>.generate(
      bytes1.length,
      (index) => bytes1[index] | bytes2[index],
    );

    // Return a new FhirUuid created from the resulting bytes
    return FhirUuid(Uuid.unparse(resultBytes));
  }

  /// Bitwise XOR operator
  FhirUuid operator ^(dynamic other) {
    if (other == null) {
      throw ArgumentError('Cannot perform bitwise operations with null');
    }
    if (other is! FhirUuid && other is! Uuid && other is! String) {
      throw ArgumentError(
          'Bitwise operations are only supported with FhirUuid, Uuid, or '
          'UUID strings');
    }

    // Parse the first UUID into bytes
    final bytes1 = Uuid.parse(value!.uuid);

    // Parse the second UUID into bytes based on the type of `other`
    final bytes2 = _parseToBytes(other);

    // Perform the bitwise XOR operation on each byte
    final resultBytes = List<int>.generate(
      bytes1.length,
      (index) => bytes1[index] ^ bytes2[index],
    );

    // Return a new FhirUuid created from the resulting bytes
    return FhirUuid(Uuid.unparse(resultBytes));
  }

  /// Helper method to parse `other` into UUID bytes.
  List<int> _parseToBytes(dynamic other) {
    if (other is String) {
      if (!Uuid.isValidUUID(fromString: other)) {
        throw ArgumentError('Invalid UUID string: $other');
      }
      return Uuid.parse(other);
    } else if (other is Uuid) {
      return Uuid.parse(other.v4()); // Assuming `other` is a valid Uuid object
    } else if (other is FhirUuid) {
      if (other.value == null) {
        throw ArgumentError('Cannot perform bitwise operations on null UUIDs');
      }
      return Uuid.parse(other.value!.uuid);
    } else {
      throw ArgumentError(
          'Bitwise operations are only supported with FhirUuid, Uuid, or '
          'UUID strings');
    }
  }

  /// Returns the FHIR type as 'uuid'.
  @override
  String get fhirType => 'uuid';

  /// Serializes the instance to JSON with standardized keys.
  @override
  Map<String, dynamic> toJson() => {
        if (value != null) 'value': value!.uuid,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts the UUID to a JSON-encoded String.
  @override
  String toJsonString() => jsonEncode(toJson());

  /// String representation of the instance.
  @override
  String toString() => (value?.uuid).toString();

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value?.toString();

  /// Hash code for the UUID.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  @override
  bool equalsDeep(FhirBase? o) =>
      o is FhirUuid && o.value == value && o.element == element;

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
  FhirUuid clone() =>
      FhirUuid.fromUuid(value, element: element?.clone() as Element?);

  /// Creates a copy with modified properties.
  @override
  FhirUuid copyWith({
    UuidValue? newValue,
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
    return FhirUuid.fromUuid(
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
      objectPath: objectPath ?? this.objectPath,
    );
  }

  /// Returns a new [FhirUuid] with extensions disallowed.
  FhirUuid noExtensions() => copyWith(disallowExtensions: true);
}
