part of 'primitive_types.dart';

/// Extension to convert a [String] to [FhirBase64Binary]
extension FhirBase64BinaryExtension on String {
  /// Converts a [String] to [FhirBase64Binary]
  FhirBase64Binary get toFhirBase64Binary => FhirBase64Binary(this);
}

/// FHIR primitive type `Base64Binary`
class FhirBase64Binary extends PrimitiveType<String?>
    implements
        ValueXAuditEventDetail,
        ValueXMedicationKnowledgeDrugCharacteristic,
        ValueXNutritionProductProductCharacteristic,
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Private underscore constructor:
  ///   - Only sets fields, no validation.
  ///   - Calls `super._(value: validatedValue)` to store the final
  ///     base64 string.
  FhirBase64Binary._({
    required String? validatedValue,
    this.input,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Base64Binary',
  }) : super._(value: validatedValue);

  /// Single public factory for creating a [FhirBase64Binary].
  /// Performs parsing/validation, then calls the private constructor.
  // ignore: sort_unnamed_constructors_first
  factory FhirBase64Binary(
    dynamic rawInput, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Base64Binary',
  }) {
    // 1) Parse / validate
    //    - If rawInput is null, we allow element-only usage
    //    - Otherwise, if it's a string, we run _validateBase64
    //    - If there's no valid string and no element, throw
    String? finalValue;
    if (rawInput == null && element == null) {
      throw ArgumentError(
        'A value or element is required for FhirBase64Binary.',
      );
    }
    if (rawInput is String) {
      finalValue = _validateBase64(rawInput);
    } else if (rawInput != null) {
      throw ArgumentError(
        'FhirBase64Binary only supports a null or a String input, '
        'got $rawInput',
      );
    }

    // 2) Return the private constructor
    //    We store the original input in `input` for serialization,
    //    plus the validatedValue in `super._(value: ...)`.
    return FhirBase64Binary._(
      validatedValue: finalValue,
      input: rawInput is String ? rawInput : null,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirBase64Binary] object
  factory FhirBase64Binary.empty() =>
      FhirBase64Binary(null, element: Element.empty());

  /// Named constructor to create from JSON
  factory FhirBase64Binary.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson == null ? null : Element.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Base64Binary';

    // Delegate to the main factory
    return FhirBase64Binary(
      value,
      element: element,
      objectPath: objectPath,
    );
  }

  /// Named constructor to create from YAML
  static FhirBase64Binary fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirBase64Binary.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirBase64Binary.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirBase64Binary cannot be constructed from the provided input. '
        'It is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse a dynamic input as a [FhirBase64Binary].
  /// Returns `null` if parsing fails.
  static FhirBase64Binary? tryParse(dynamic rawInput) {
    try {
      return FhirBase64Binary(rawInput);
    } catch (_) {
      return null;
    }
  }

  /// Original input value (for serialization).
  final String? input;

  /// Validate the string as Base64
  static String _validateBase64(String raw) {
    if (raw.length % 4 == 0 && _isBase64(raw)) {
      return raw;
    } else {
      // If the raw has whitespace, try removing it, then re-check.
      final formatted = raw.replaceAll(RegExp(r'\s'), '');
      if (formatted.length % 4 == 0 && _isBase64(formatted)) {
        return formatted;
      }
      throw const FormatException('Invalid Base64 String');
    }
  }

  /// Checks if a string can be decoded as valid Base64
  static bool _isBase64(String input) {
    try {
      base64.decode(input);
      return true;
    } catch (_) {
      return false;
    }
  }

  /// Returns decoded bytes if `value` is not null
  Uint8List? get object => value != null ? base64.decode(value!) : null;

  /// Detected file type from the decoded bytes
  Base64BinaryFileType? get fileType =>
      object != null ? _detectFileType(object!) : null;

  /// Detect basic file type from the first few bytes
  static Base64BinaryFileType _detectFileType(Uint8List data) {
    if (data.length >= 4) {
      if (data[0] == 0xFF && data[1] == 0xD8 && data[2] == 0xFF) {
        return Base64BinaryFileType.jpeg;
      } else if (data[0] == 0x89 &&
          data[1] == 0x50 &&
          data[2] == 0x4E &&
          data[3] == 0x47) {
        return Base64BinaryFileType.png;
      } else if (utf8.decode(data.take(4).toList()).startsWith('%PDF')) {
        return Base64BinaryFileType.pdf;
      } else if (data[0] == 0x50 && data[1] == 0x4B) {
        return Base64BinaryFileType.zip;
      } else if (data[0] == 0x47 && data[1] == 0x49 && data[2] == 0x46) {
        return Base64BinaryFileType.gif;
      } else if (data[0] == 0x42 && data[1] == 0x4D) {
        return Base64BinaryFileType.bmp;
      }
    }
    return Base64BinaryFileType.unknown;
  }

  // ──────────────────────────────────────────────────────────────────────────
  // JSON / Serialization
  // ──────────────────────────────────────────────────────────────────────────

  /// Converts this instance to JSON
  @override
  Map<String, dynamic> toJson() {
    return {
      if (input != null) 'value': input,
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Converts a list of JSON values to FhirBase64Binary instances
  static List<FhirBase64Binary> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length',
      );
    }
    return List.generate(values.length, (i) {
      final val = values[i] as String?;
      final elem = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirBase64Binary(val, element: elem);
    });
  }

  /// Converts a list of FhirBase64Binary to JSON-compatible map
  static Map<String, dynamic> toJsonList(List<FhirBase64Binary> binaries) => {
        'value': binaries.map((b) => b.input).toList(),
        '_value': binaries.map((b) => b.element?.toJson()).toList(),
      };

  // ──────────────────────────────────────────────────────────────────────────
  // Overrides
  // ──────────────────────────────────────────────────────────────────────────

  @override
  String get fhirType => 'base64Binary';

  @override
  String toString() => value.toString();

  @override
  String? get primitiveValue => value?.toString();

  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirBase64Binary &&
      other.value == value &&
      other.element == element;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirBase64Binary &&
          other.input == input &&
          other.element == element);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(input, element);

  // ──────────────────────────────────────────────────────────────────────────
  // Clone / Copy methods
  // ──────────────────────────────────────────────────────────────────────────

  /// Clones the instance
  @override
  FhirBase64Binary clone() => FhirBase64Binary(
        input,
        element: element?.clone() as Element?,
      );

  /// Creates a modified copy of the instance
  @override
  FhirBase64Binary copyWith({
    String? newValue,
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
    return FhirBase64Binary(
      newValue ?? input,
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

  /// Returns a new [FhirBase64Binary] with extensions disallowed.
  FhirBase64Binary noExtensions() => copyWith(disallowExtensions: true);

  @override
  FhirBase64Binary createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirBase64Binary] object
  @override
  FhirBase64Binary clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirBase64Binary(
      input ? null : this.input,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}

/// Enum for the detected file type
enum Base64BinaryFileType {
  /// JPEG image
  jpeg,

  /// PNG image
  png,

  /// PDF document
  pdf,

  /// ZIP archive
  zip,

  /// GIF image
  gif,

  /// BMP image
  bmp,

  /// Unknown file type
  unknown,
}
