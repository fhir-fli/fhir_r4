part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirCode].
extension FhirCodeExtension on String {
  /// Returns a new [FhirCode] constructed from this [String].
  FhirCode get toFhirCode => FhirCode(this);
}

/// A FHIR primitive type `code` (a restricted string).
///
/// Typically must match certain minimal constraints (non-whitespace).
class FhirCode extends FhirString
    implements
        ValueXCodeSystemProperty,
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        ValueXValueSetParameter,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor passing validated code to [super._].
  FhirCode._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirCode], validating [rawValue] as a `String` that meets
  /// minimal code rules.
  // ignore: sort_unnamed_constructors_first
  factory FhirCode(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated =
        rawValue != null ? _validateCode(rawValue.toString()) : null;
    return FhirCode._(
      valueString: validated,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirCode] object.
  factory FhirCode.empty() => FhirCode(null, element: Element.empty());

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirCode] from JSON.
  factory FhirCode.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : Element.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Code';
    return FhirCode(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirCode] from YAML ([String] or [YamlMap]).
  static FhirCode fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirCode.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirCode.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirCode cannot be constructed from provided input, '
        'it is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirCode]. Returns `null` if it fails.
  static FhirCode? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirCode(input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  // --------------------------------------------------------------------------
  // Validation
  // --------------------------------------------------------------------------

  /// Minimal validation for a "FHIR code": cannot contain whitespace only.
  static String? _validateCode(String? raw) {
    if (raw == null) return null;
    // Basic check that there's at least one non-whitespace character
    // and it doesn't contain forbidden whitespace patterns, etc.
    if (RegExp(r'^[^\s]+(\s[^\s]+)*$').hasMatch(raw)) {
      return raw;
    }
    throw FormatException('Invalid FHIR code: $raw');
  }

  // --------------------------------------------------------------------------
  // FHIR Overrides
  // --------------------------------------------------------------------------

  /// Returns `"code"`.
  @override
  String get fhirType => 'code';

  /// Returns the code as a string or `''`.
  @override
  String toString() => valueString ?? '';

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  @override
  FhirCode clone() => FhirCode(
        valueString,
        element: element?.clone() as Element?,
      );

  @override
  FhirCode copyWith({
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
    return FhirCode(
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

  // --------------------------------------------------------------------------
  // Subclass Contract
  // --------------------------------------------------------------------------

  @override
  FhirCode createProperty(String propertyName) => this;

  @override
  FhirCode clear({
    bool value = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirCode(
      value ? null : valueString,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
