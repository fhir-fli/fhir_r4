part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirUuidBuilder].
extension FhirUuidBuilderExtension on String {
  /// Returns a new [FhirUuidBuilder] from this [String].
  FhirUuidBuilder get toFhirUuidBuilder => FhirUuidBuilder(this);
}

/// Extension methods on [UuidValue] to easily convert to [FhirUuidBuilder].
extension FhirUuidValueBuilderExtension on UuidValue {
  /// Returns a new [FhirUuidBuilder] from this [UuidValue].
  FhirUuidBuilder get toFhirUuidBuilder => FhirUuidBuilder.fromUuid(this);
}

/// A FHIR primitive type representing a UUID (`uuid`).
///
/// Internally extends [FhirUriBuilder], but adds specialized UUID logic:
/// - Validation of UUID format
/// - Helper methods for bitwise ops (`&`, `|`, `^`)
/// - Generation methods (`v1()`, `v4()`, `v5()`)
/// - Parsing/Unparsing ([parseUuid], [unparseUuid])
class FhirUuidBuilder extends FhirUriBuilder
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
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Internal constructor that simply calls [FhirUriBuilder]'s private
  /// constructor
  /// with [valueString].
  FhirUuidBuilder._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Uuid',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirUuidBuilder] from [rawValue], which can be:
  /// - `null` (element-only usage if [element] is non-null),
  /// - A [String] (validated UUID),
  /// - A [UuidValue] (from the `uuid` package).
  ///
  /// If [rawValue] is a string, we validate it with [_validateUuid].
  // ignore: sort_unnamed_constructors_first
  factory FhirUuidBuilder(
    dynamic rawValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Uuid',
  }) {
    // 1) Parse / validate
    String? parsedValue;
    if (rawValue == null && element == null) {
      throw ArgumentError(
        'A value or element is required for FhirUuidBuilder.',
      );
    }
    if (rawValue is UuidValue) {
      parsedValue = rawValue.toString();
    } else if (rawValue is String) {
      parsedValue = _validateUuid(rawValue);
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirUuidBuilder only supports a String or UuidValue, got: $rawValue',
      );
    }

    // 2) Construct via the private underscore constructor
    return FhirUuidBuilder._(
      valueString: parsedValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates a [FhirUuidBuilder] from a [UuidValue].
  factory FhirUuidBuilder.fromUuid(
    UuidValue? uuidValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Uuid',
  }) {
    return FhirUuidBuilder._(
      valueString: uuidValue?.toString(),
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirUuidBuilder] (with an [ElementBuilder.empty] for
  /// metadata).
  factory FhirUuidBuilder.empty() =>
      FhirUuidBuilder(null, element: ElementBuilder.empty());

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirUuidBuilder] from a JSON [Map].
  factory FhirUuidBuilder.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : ElementBuilder.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Uuid';

    return FhirUuidBuilder(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirUuidBuilder] from a YAML [String] or [YamlMap].
  factory FhirUuidBuilder.fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirUuidBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirUuidBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirUuidBuilder cannot be constructed from the provided input. '
        'It is neither a YAML string nor a YAML map.',
      );
    }
  }

  // --------------------------------------------------------------------------
  // UUID Generation Factories
  // --------------------------------------------------------------------------

  /// Generates a version 1 (time-based) UUID and wraps it in [FhirUuidBuilder].
  factory FhirUuidBuilder.v1([ElementBuilder? element]) {
    const uuid = Uuid();
    return FhirUuidBuilder(uuid.v1(), element: element);
  }

  /// Generates a version 4 (random) UUID and wraps it in [FhirUuidBuilder].
  factory FhirUuidBuilder.v4([ElementBuilder? element]) {
    const uuid = Uuid();
    return FhirUuidBuilder(uuid.v4(), element: element);
  }

  /// Generates a version 5 (namespace + name) UUID and wraps it in
  /// [FhirUuidBuilder].
  factory FhirUuidBuilder.v5({
    required String namespace,
    required String name,
    ElementBuilder? element,
  }) {
    const uuid = Uuid();
    return FhirUuidBuilder(uuid.v5(namespace, name), element: element);
  }

  // --------------------------------------------------------------------------
  // Parsing & Validation
  // --------------------------------------------------------------------------

  /// Attempts to parse [input] as a [FhirUuidBuilder].
  /// Returns `null` if parsing fails.
  static FhirUuidBuilder? tryParse(dynamic input) {
    try {
      return FhirUuidBuilder(input);
    } catch (_) {
      return null;
    }
  }

  /// Validates a string-based [uuid]. Throws [FormatException] if invalid.
  static String _validateUuid(String uuid) {
    if (Uuid.isValidUUID(fromString: uuid)) {
      return uuid;
    }
    throw FormatException('Invalid UUID: $uuid');
  }

  /// Checks if [uuid] is a valid UUID (without throwing).
  static bool isValidUuid(String uuid) => Uuid.isValidUUID(fromString: uuid);

  /// Parses [uuid] into its 16-byte representation.
  static List<int> parseUuid(String uuid) => Uuid.parse(uuid);

  /// Converts a 16-byte list [buffer] into a UUID string.
  static String unparseUuid(List<int> buffer) => Uuid.unparse(buffer);

  // --------------------------------------------------------------------------
  // Additional Utilities (Bitwise Operators)
  // --------------------------------------------------------------------------

  /// Bitwise AND operation (`this & other`).
  FhirUuidBuilder operator &(dynamic other) {
    final bytes1 = _requireValidBytes(valueString);
    final bytes2 = _parseToBytes(other);
    final result =
        List<int>.generate(bytes1.length, (i) => bytes1[i] & bytes2[i]);
    return FhirUuidBuilder(Uuid.unparse(result));
  }

  /// Bitwise OR operation (`this | other`).
  FhirUuidBuilder operator |(dynamic other) {
    final bytes1 = _requireValidBytes(valueString);
    final bytes2 = _parseToBytes(other);
    final result =
        List<int>.generate(bytes1.length, (i) => bytes1[i] | bytes2[i]);
    return FhirUuidBuilder(Uuid.unparse(result));
  }

  /// Bitwise XOR operation (`this ^ other`).
  FhirUuidBuilder operator ^(dynamic other) {
    final bytes1 = _requireValidBytes(valueString);
    final bytes2 = _parseToBytes(other);
    final result =
        List<int>.generate(bytes1.length, (i) => bytes1[i] ^ bytes2[i]);
    return FhirUuidBuilder(Uuid.unparse(result));
  }

  /// Ensures [uuidString] is non-null and valid, returning its byte list.
  List<int> _requireValidBytes(String? uuidString) {
    if (uuidString == null) {
      throw ArgumentError('Cannot perform bitwise operations on null UUIDs.');
    }
    return Uuid.parse(uuidString);
  }

  /// Parses [other] into a byte list, supporting [FhirUuidBuilder], [Uuid], or
  /// a valid [String].
  List<int> _parseToBytes(dynamic other) {
    if (other == null) {
      throw ArgumentError('Cannot perform bitwise operations with null.');
    }
    if (other is String) {
      if (!Uuid.isValidUUID(fromString: other)) {
        throw ArgumentError('Invalid UUID string: $other');
      }
      return Uuid.parse(other);
    } else if (other is Uuid) {
      return Uuid.parse(other.v4());
    } else if (other is FhirUuidBuilder) {
      if (other.valueString == null) {
        throw ArgumentError('Cannot perform bitwise operations on null UUIDs.');
      }
      return Uuid.parse(other.valueString!);
    } else {
      throw ArgumentError(
        'Bitwise operations only support FhirUuidBuilder, '
        'Uuid, or UUID strings.',
      );
    }
  }

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns the FHIR type as `'uuid'`.
  @override
  String get fhirType => 'uuid';

  /// Returns the string form of this UUID or `''` if null.
  @override
  String toString() => valueString ?? '';

  /// Returns the 16-byte representation of this UUID, or null if no value.
  UuidValue? get valueUuid =>
      valueString == null ? null : UuidValue.fromString(valueString!);

  /// Deep equality check (compares string and element).
  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      (other is FhirUuidBuilder &&
          other.valueString == valueString &&
          other.element == element) ||
      (other is UuidValue && other.toString() == valueString);

  /// Shallow equality for convenience (also checks [UuidValue]
  /// or a valid string).
  @override
  bool equals(Object other) {
    if (identical(this, other)) return true;
    if (other is FhirUuidBuilder) {
      return other.valueString == valueString;
    }
    if (other is UuidValue) {
      return other.toString() == valueString;
    }
    if (other is String && Uuid.isValidUUID(fromString: other)) {
      return other == valueString;
    }
    return false;
  }

  /// Operator `==` overrides [equals].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Hash code uses [valueString] and [element].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  /// Returns `true` if the Type is considered string-based, otherwise `false`
  @override
  bool get stringBased => true;

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  /// Method to convert the builder object to the original Element object
  @override
  FhirUuid build() => FhirUuid.fromJson(toJson());

  /// Creates a deep clone of this [FhirUuidBuilder].
  @override
  FhirUuidBuilder clone() => FhirUuidBuilder(
        valueString,
        element: element?.clone() as ElementBuilder?,
        id: id,
        extension_: extension_?.map((e) => e.clone()).toList(),
        disallowExtensions: disallowExtensions,
        objectPath: objectPath!,
      );

  /// Creates a modified copy with updated properties.
  @override
  FhirUuidBuilder copyWith({
    dynamic newValue,
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
    return FhirUuidBuilder(
      newValue ?? valueString,
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
      objectPath: objectPath ?? this.objectPath!,
    );
  }

  /// Creates a copy with [disallowExtensions] set to `true`.
  @override
  FhirUuidBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in this object (no-op).
  @override
  FhirUuidBuilder createProperty(String propertyName) => this;

}
