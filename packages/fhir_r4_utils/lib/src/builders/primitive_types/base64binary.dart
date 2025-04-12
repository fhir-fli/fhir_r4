part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to
/// [FhirBase64BinaryBuilder].
extension FhirBase64BinaryBuilderExtension on String {
  /// Returns a new [FhirBase64BinaryBuilder] constructed from this string.
  FhirBase64BinaryBuilder get toFhirBase64BinaryBuilder =>
      FhirBase64BinaryBuilder(this);
}

/// A FHIR primitive type that holds Base64-encoded binary data.
///
/// Corresponds to the FHIR type `base64Binary`.
class FhirBase64BinaryBuilder extends PrimitiveTypeBuilder
    implements
        ValueXAuditEventDetailBuilder,
        ValueXMedicationKnowledgeDrugCharacteristicBuilder,
        ValueXNutritionProductProductCharacteristicBuilder,
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

  /// Private underscore constructor that directly sets [valueString] and
  /// calls [super._].
  FhirBase64BinaryBuilder._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Base64Binary',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirBase64BinaryBuilder] by parsing [rawValue].
  ///
  /// - If [rawValue] is `null`, [element] must be non-null
  /// (element-only usage).
  /// - If [rawValue] is a [String], it must be valid Base64
  /// (whitespace is ignored).
  /// - Otherwise, throws an [ArgumentError].
  // ignore: sort_unnamed_constructors_first
  factory FhirBase64BinaryBuilder(
    dynamic rawValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Base64Binary',
  }) {
    String? validatedValue;
    if (rawValue == null && element == null) {
      throw ArgumentError(
        'A value or element is required for FhirBase64Binary.',
      );
    }
    if (rawValue is String) {
      validatedValue = _validateBase64(rawValue);
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirBase64Binary only supports null or String. Got: $rawValue',
      );
    }

    return FhirBase64BinaryBuilder._(
      valueString: validatedValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirBase64BinaryBuilder] with an [Element.empty] for
  /// metadata.
  factory FhirBase64BinaryBuilder.empty() =>
      FhirBase64BinaryBuilder(null, element: ElementBuilder.empty());

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirBase64BinaryBuilder] from a JSON [Map].
  factory FhirBase64BinaryBuilder.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : ElementBuilder.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Base64Binary';

    return FhirBase64BinaryBuilder(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirBase64BinaryBuilder] from a YAML input.
  ///
  /// Accepts [String] or [YamlMap].
  static FhirBase64BinaryBuilder fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirBase64BinaryBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirBase64BinaryBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirBase64Binary cannot be constructed from the provided input.'
        ' It is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse [rawValue] as a [FhirBase64BinaryBuilder].
  ///
  /// Returns `null` if parsing fails.
  static FhirBase64BinaryBuilder? tryParse(dynamic rawValue) {
    try {
      return FhirBase64BinaryBuilder(rawValue);
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // Validation
  // --------------------------------------------------------------------------

  /// Validate the string as Base64
  static String _validateBase64(String raw) {
    if (raw.length % 4 == 0 && _isBase64(raw)) {
      return raw;
    } else {
      // If the raw has whitespace, try removing it, then re-check.
      final formatted = raw.replaceAll(RegExp(r'\s'), '');
      if (formatted.length % 4 == 0 && _isBase64(formatted)) {
        return raw;
      }
      throw const FormatException('Invalid Base64 String');
    }
  }

  /// Returns `true` if [input] can be Base64-decoded without error.
  static bool _isBase64(String input) {
    try {
      base64.decode(input);
      return true;
    } catch (_) {
      return false;
    }
  }

  // --------------------------------------------------------------------------
  // Getters / Properties
  // --------------------------------------------------------------------------

  /// Decodes the base64 [valueString] into bytes.
  ///
  /// Returns `null` if [valueString] is `null`.
  Uint8List? get object =>
      valueString != null ? base64.decode(valueString!) : null;

  /// Determines the file type (e.g., JPEG, PNG) from the first few bytes.
  Base64BinaryFileType? get fileType =>
      object != null ? _detectFileType(object!) : null;

  // --------------------------------------------------------------------------
  // Helpers
  // --------------------------------------------------------------------------

  /// Inspects the first few bytes to guess the file type.
  static Base64BinaryFileType _detectFileType(Uint8List data) {
    if (data.length < 4) {
      return Base64BinaryFileType.unknown;
    }

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
    return Base64BinaryFileType.unknown;
  }

  // --------------------------------------------------------------------------
  // JSON Serialization
  // --------------------------------------------------------------------------

  /// Converts this instance to a JSON map.
  @override
  Map<String, dynamic> toJson() {
    return {
      if (valueString != null) 'value': valueString,
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Method to convert the builder object to the original Element object
  @override
  FhirBase64Binary build() => FhirBase64Binary.fromJson(toJson());

  /// Converts a pair of [values] (raw JSON list) and [elements] (parallel list)
  /// to a list of [FhirBase64BinaryBuilder].
  static List<FhirBase64BinaryBuilder> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length.',
      );
    }
    return List.generate(values.length, (i) {
      final val = values[i] as String?;
      final elem = elements?[i] != null
          ? ElementBuilder.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirBase64BinaryBuilder(val, element: elem);
    });
  }

  /// Converts a list of [FhirBase64BinaryBuilder] to a JSON map with `'value'`
  /// and `'_value'` arrays.
  static Map<String, dynamic> toJsonList(List<FhirBase64BinaryBuilder> items) =>
      {
        'value': items.map((val) => val.valueString).toList(),
        '_value': items.map((val) => val.element?.toJson()).toList(),
      };

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns the FHIR type, here `"base64Binary"`.
  @override
  String get fhirType => 'base64Binary';

  /// Returns a string representation (e.g., `"null"` if no data).
  @override
  String toString() => valueString ?? 'null';

  /// The primitive value as a string.
  @override
  String? get primitiveValue => valueString;

  /// Deep equality check for [FhirBase64BinaryBuilder].
  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      identical(this, other) ||
      (other is FhirBase64BinaryBuilder &&
          other.valueString == valueString &&
          other.element == element);

  /// Operator `==` override.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirBase64BinaryBuilder &&
          other.valueString == valueString &&
          other.element == element);

  /// Hash code override.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  /// Creates a full clone of this object.
  @override
  FhirBase64BinaryBuilder clone() => FhirBase64BinaryBuilder(
        valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Creates a new instance with the specified fields replaced.
  @override
  FhirBase64BinaryBuilder copyWith({
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
    return FhirBase64BinaryBuilder(
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

  /// Returns a copy that disallows further extensions.
  FhirBase64BinaryBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a new property in this object. No-op here; returns `this`.
  @override
  FhirBase64BinaryBuilder createProperty(String propertyName) => this;
}

/// Enum to indicate a detected file type from the decoded bytes.
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

  /// Unknown or unrecognized
  unknown,
}
