part of 'primitive_types.dart';

/// Extension to convert a [String] to a [FhirUuidBuilder].
extension FhirUuidBuilderExtension on String {
  /// Converts a [String] to a [FhirUuidBuilder].
  FhirUuidBuilder get toFhirUuidBuilder => FhirUuidBuilder(this);
}

/// Extension to convert a UuidValue to a [FhirUuidBuilder].
extension FhirUuidBuilderValueExtension on UuidValue {
  /// Converts a UuidValue to a [FhirUuidBuilder].
  FhirUuidBuilder get toFhirUuidBuilder => FhirUuidBuilder.fromUuid(this);
}

/// [FhirUuidBuilder] represents a validated UUID value in the FHIR standard.
class FhirUuidBuilder extends PrimitiveTypeBuilder<UuidValue?>
    implements
        ValueXParametersParameterBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Private underscore constructor.
  /// We only assign the [validatedValue] to `super._(value: validatedValue)`,
  /// and do the final check that if [value] == null and [element] == null,
  /// we throw an [ArgumentError].
  FhirUuidBuilder._({
    required UuidValue? validatedValue,
    this.element,
    this.id,
    this.extension_,
    this.disallowExtensions,
    this.objectPath = 'Uuid',
  }) : super._(value: validatedValue) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required for FhirUuidBuilder');
    }
  }

  /// Single public factory constructor accepting a [String?] [input] or null.
  /// If not null, we validate the UUID. If null, and also no element, we throw.
  // ignore: sort_unnamed_constructors_first
  factory FhirUuidBuilder(
    String? input, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Uuid',
  }) {
    final validated = input != null ? _validateUuid(input) : null;
    return FhirUuidBuilder._(
      validatedValue: validated,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirUuidBuilder] from a [UuidValue], allowing null values.
  /// We rename this to a public factory that calls the private constructor.
  factory FhirUuidBuilder.fromUuid(
    UuidValue? uuidValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String? objectPath = 'Uuid',
  }) {
    return FhirUuidBuilder._(
      validatedValue: uuidValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirUuidBuilder] object
  factory FhirUuidBuilder.empty() =>
      FhirUuidBuilder(null, element: ElementBuilder.empty());

  /// Factory constructor to create [FhirUuidBuilder] from JSON.
  factory FhirUuidBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String? ?? 'Uuid';
    return FhirUuidBuilder(value, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create [FhirUuidBuilder] from YAML input.
  factory FhirUuidBuilder.fromYaml(String yaml) => FhirUuidBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );

  /// Factory constructor to generate a UUID using version 1.
  factory FhirUuidBuilder.v1([ElementBuilder? element]) {
    const uuid = Uuid();
    return FhirUuidBuilder(uuid.v1(), element: element);
  }

  /// Factory constructor to generate a UUID using version 4.
  factory FhirUuidBuilder.v4([ElementBuilder? element]) {
    const uuid = Uuid();
    return FhirUuidBuilder(uuid.v4(), element: element);
  }

  /// Factory constructor to generate a UUID using version 5.
  factory FhirUuidBuilder.v5({
    required String namespace,
    required String name,
    ElementBuilder? element,
  }) {
    const uuid = Uuid();
    return FhirUuidBuilder(uuid.v5(namespace, name), element: element);
  }

  /// Tries to parse a String input into a [FhirUuidBuilder].
  static FhirUuidBuilder? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirUuidBuilder(input);
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

  /// Element property
  ElementBuilder? element;

  /// ID property
  FhirStringBuilder? id;

  /// Extensions property
  List<FhirExtensionBuilder>? extension_;

  /// DisallowExtensions property
  bool? disallowExtensions;

  /// ObjectPath property
  String? objectPath;

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
  FhirUuidBuilder operator &(dynamic other) {
    if (other == null) {
      throw ArgumentError('Cannot perform bitwise operations with null');
    }
    if (other is! FhirUuidBuilder && other is! Uuid && other is! String) {
      throw ArgumentError(
          'Bitwise operations are only supported with FhirUuidBuilder, Uuid, or '
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

    // Return a new FhirUuidBuilder created from the resulting bytes
    return FhirUuidBuilder(Uuid.unparse(resultBytes));
  }

  /// Bitwise OR operator
  FhirUuidBuilder operator |(dynamic other) {
    if (other == null) {
      throw ArgumentError('Cannot perform bitwise operations with null');
    }
    if (other is! FhirUuidBuilder && other is! Uuid && other is! String) {
      throw ArgumentError(
          'Bitwise operations are only supported with FhirUuidBuilder, Uuid, or '
          'UUID strings');
    }

    // Parse the first UUID into bytes
    final bytes1 = Uuid.parse(value!.uuid);

    // Parse the second UUID into bytes
    final bytes2 = _parseToBytes(other);

    // Perform the bitwise OR operation on each byte
    final resultBytes = List<int>.generate(
      bytes1.length,
      (index) => bytes1[index] | bytes2[index],
    );

    // Return a new FhirUuidBuilder created from the resulting bytes
    return FhirUuidBuilder(Uuid.unparse(resultBytes));
  }

  /// Bitwise XOR operator
  FhirUuidBuilder operator ^(dynamic other) {
    if (other == null) {
      throw ArgumentError('Cannot perform bitwise operations with null');
    }
    if (other is! FhirUuidBuilder && other is! Uuid && other is! String) {
      throw ArgumentError(
          'Bitwise operations are only supported with FhirUuidBuilder, Uuid, or '
          'UUID strings');
    }

    // Parse the first UUID into bytes
    final bytes1 = Uuid.parse(value!.uuid);

    // Parse the second UUID into bytes
    final bytes2 = _parseToBytes(other);

    // Perform the bitwise XOR operation on each byte
    final resultBytes = List<int>.generate(
      bytes1.length,
      (index) => bytes1[index] ^ bytes2[index],
    );

    // Return a new FhirUuidBuilder created from the resulting bytes
    return FhirUuidBuilder(Uuid.unparse(resultBytes));
  }

  /// Helper method to parse `other` into UUID bytes.
  List<int> _parseToBytes(dynamic other) {
    if (other is String) {
      if (!Uuid.isValidUUID(fromString: other)) {
        throw ArgumentError('Invalid UUID string: $other');
      }
      return Uuid.parse(other);
    } else if (other is Uuid) {
      return Uuid.parse(other.v4()); // Example usage if `other` is Uuid object
    } else if (other is FhirUuidBuilder) {
      if (other.value == null) {
        throw ArgumentError('Cannot perform bitwise operations on null UUIDs');
      }
      return Uuid.parse(other.value!.uuid);
    } else {
      throw ArgumentError(
          'Bitwise operations are only supported with FhirUuidBuilder, Uuid, or '
          'UUID strings');
    }
  }

  /// Returns the FHIR type as 'uuid'.
  @override
  String get fhirType => 'uuid';

  /// Converts this instance to a [FhirUuid] object
  @override
  FhirUuid build() => FhirUuid.fromJson(toJson());

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
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirUuidBuilder &&
      other.value == value &&
      other.element == element;

  /// Checks equality between two objects.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Checks equality with [FhirUuidBuilder], [UuidValue], or a valid UUID String.
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirUuidBuilder && other.value == value) ||
      (other is UuidValue && other == value) ||
      (other is String &&
          Uuid.isValidUUID(fromString: other) &&
          UuidValue.fromString(other) == value);

  /// Clones the [FhirUuidBuilder], including its [ElementBuilder] value.
  @override
  FhirUuidBuilder clone() => FhirUuidBuilder.fromUuid(
        value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Creates a copy with modified properties.
  @override
  FhirUuidBuilder copyWith({
    UuidValue? newValue,
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
    return FhirUuidBuilder.fromUuid(
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

  /// Returns a new [FhirUuidBuilder] with extensions disallowed.
  FhirUuidBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object
  @override
  FhirUuidBuilder createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirUuidBuilder] object
  @override
  FhirUuidBuilder clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirUuidBuilder(
      input ? null : value?.toString(),
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
