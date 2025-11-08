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
  }) {
    return FhirUuid._(
      valueString: uuidValue?.toString(),
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirUuid] from a JSON [Map].
  factory FhirUuid.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'];
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : Element.fromJson(elementJson);

    return FhirUuid(
      rawValue,
      element: parsedElement,
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
          ((element == null && other.element == null) ||
              (element != null && element!.equalsDeep(other.element)))) ||
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
  FhirUuid clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  $FhirUuidCopyWithImpl<FhirUuid> get copyWith =>
      $FhirUuidCopyWithImpl<FhirUuid>(this, (value) => value as FhirUuid);

  /// Creates a copy with [disallowExtensions] set to `true`.
  @override
  FhirUuid noExtensions() => copyWith(disallowExtensions: true);
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class $FhirUuidCopyWithImpl<T> extends $FhirUriCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  $FhirUuidCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirUuid(
        identical(newValue, fhirSentinel) ? _value.valueString : newValue,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
