part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirUuid].
extension FhirUuidExtension on String {
  /// Returns a new [FhirUuid] from this [String].
  FhirUuid get toFhirUuid => FhirUuid(this);
}

/// Extension methods on [UuidValue] to easily convert to [FhirUuid].
extension FhirUuidValueExtension on UuidValue {
  /// Returns a new [FhirUuid] from this [UuidValue].
  FhirUuid get toFhirUuid => FhirUuid.fromUuid(this);
}

/// A FHIR primitive type representing a UUID (`uuid`).
///
/// Internally extends [FhirUri], but adds specialized UUID logic:
/// - Validation of UUID format
/// - Helper methods for bitwise ops (`&`, `|`, `^`)
/// - Generation methods (`v1()`, `v4()`, `v5()`)
/// - Parsing/Unparsing ([parseUuid], [unparseUuid])
class FhirUuid extends FhirUri
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
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Internal constructor that simply calls [FhirUri]'s private constructor
  /// with [valueString].
  const FhirUuid._({
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

  /// Creates a [FhirUuid] from [rawValue], which can be:
  /// - `null` (element-only usage if [element] is non-null),
  /// - A [String] (validated UUID),
  /// - A [Uuid] (from the `uuid` package).
  ///
  /// If [rawValue] is a string, we validate it with [_validateUuid].
  // ignore: sort_unnamed_constructors_first
  factory FhirUuid(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Uuid',
  }) {
    // 1) Parse / validate
    String? parsedValue;
    if (rawValue == null && element == null) {
      throw ArgumentError('A value or element is required for FhirUuid.');
    }
    if (rawValue is UuidValue) {
      parsedValue = rawValue.toString();
    } else if (rawValue is String) {
      parsedValue = _validateUuid(rawValue);
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirUuid only supports a String or Uuid, got: $rawValue',
      );
    }

    // 2) Construct via the private underscore constructor
    return FhirUuid._(
      valueString: parsedValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates a [FhirUuid] from a [UuidValue], which is a type you might define
  /// or get from the `uuid` package (v1, v4, etc.).
  factory FhirUuid.fromUuid(
    UuidValue? uuidValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Uuid',
  }) {
    return FhirUuid._(
      valueString: uuidValue?.toString(),
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirUuid] (with an [Element.empty] for metadata).
  factory FhirUuid.empty() => FhirUuid(null, element: Element.empty());

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirUuid] from a JSON [Map].
  factory FhirUuid.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : Element.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Uuid';

    return FhirUuid(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirUuid] from a YAML [String] or [YamlMap].
  factory FhirUuid.fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirUuid.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirUuid.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirUuid cannot be constructed from the provided input. '
        'It is neither a YAML string nor a YAML map.',
      );
    }
  }

  // --------------------------------------------------------------------------
  // UUID Generation Factories
  // --------------------------------------------------------------------------

  /// Generates a version 1 (time-based) UUID and wraps it in [FhirUuid].
  factory FhirUuid.v1([Element? element]) {
    const uuid = Uuid();
    return FhirUuid(uuid.v1(), element: element);
  }

  /// Generates a version 4 (random) UUID and wraps it in [FhirUuid].
  factory FhirUuid.v4([Element? element]) {
    const uuid = Uuid();
    return FhirUuid(uuid.v4(), element: element);
  }

  /// Generates a version 5 (namespace + name) UUID and wraps it in [FhirUuid].
  factory FhirUuid.v5({
    required String namespace,
    required String name,
    Element? element,
  }) {
    const uuid = Uuid();
    return FhirUuid(uuid.v5(namespace, name), element: element);
  }

  // --------------------------------------------------------------------------
  // Parsing & Validation
  // --------------------------------------------------------------------------

  /// Attempts to parse [input] as a [FhirUuid].
  /// Returns `null` if parsing fails.
  static FhirUuid? tryParse(dynamic input) {
    try {
      return FhirUuid(input);
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
  FhirUuid operator &(dynamic other) {
    final bytes1 = _requireValidBytes(valueString);
    final bytes2 = _parseToBytes(other);
    final result =
        List<int>.generate(bytes1.length, (i) => bytes1[i] & bytes2[i]);
    return FhirUuid(Uuid.unparse(result));
  }

  /// Bitwise OR operation (`this | other`).
  FhirUuid operator |(dynamic other) {
    final bytes1 = _requireValidBytes(valueString);
    final bytes2 = _parseToBytes(other);
    final result =
        List<int>.generate(bytes1.length, (i) => bytes1[i] | bytes2[i]);
    return FhirUuid(Uuid.unparse(result));
  }

  /// Bitwise XOR operation (`this ^ other`).
  FhirUuid operator ^(dynamic other) {
    final bytes1 = _requireValidBytes(valueString);
    final bytes2 = _parseToBytes(other);
    final result =
        List<int>.generate(bytes1.length, (i) => bytes1[i] ^ bytes2[i]);
    return FhirUuid(Uuid.unparse(result));
  }

  /// Ensures [uuidString] is non-null and valid, returning its byte list.
  List<int> _requireValidBytes(String? uuidString) {
    if (uuidString == null) {
      throw ArgumentError('Cannot perform bitwise operations on null UUIDs.');
    }
    return Uuid.parse(uuidString);
  }

  /// Parses [other] into a byte list, supporting [FhirUuid], [Uuid], or
  /// valid [String].
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
      // Example usage: we just generate a new random v4 from the Uuid object.
      return Uuid.parse(other.v4());
    } else if (other is FhirUuid) {
      if (other.valueString == null) {
        throw ArgumentError('Cannot perform bitwise operations on null UUIDs.');
      }
      return Uuid.parse(other.valueString!);
    } else {
      throw ArgumentError(
        'Bitwise operations only support FhirUuid, Uuid, or UUID strings.',
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
  bool equalsDeep(FhirBase? other) =>
      (other is FhirUuid &&
          other.valueString == valueString &&
          other.element == element) ||
      (other is UuidValue && other.toString() == valueString);

  /// Shallow equality for convenience (also checks [UuidValue]
  /// or a valid string).
  @override
  bool equals(Object other) {
    if (identical(this, other)) return true;
    // Compare with FhirUuid
    if (other is FhirUuid) {
      return other.valueString == valueString;
    }
    // Compare with UuidValue
    if (other is UuidValue) {
      return other.toString() == valueString;
    }
    // Compare with raw string (but only if valid UUID)
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

  /// Creates a deep clone of this [FhirUuid].
  @override
  FhirUuid clone() => FhirUuid(
        valueString,
        element: element?.clone() as Element?,
        id: id,
        extension_: extension_?.map((e) => e.clone()).toList(),
        disallowExtensions: disallowExtensions,
        objectPath: objectPath!,
      );

  /// Creates a modified copy with updated properties.
  @override
  FhirUuid copyWith({
    dynamic newValue,
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
    return FhirUuid(
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
  FhirUuid noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in this object (no-op).
  @override
  FhirUuid createProperty(String propertyName) => this;

  /// Clears selected fields from this [FhirUuid].
  @override
  FhirUuid clear({
    bool value = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirUuid(
      value ? null : valueString,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
