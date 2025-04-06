part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirCodeBuilder].
extension FhirCodeBuilderExtension on String {
  /// Returns a new [FhirCodeBuilder] constructed from this [String].
  FhirCodeBuilder get toFhirCodeBuilder => FhirCodeBuilder(this);
}

/// A FHIR primitive type `code` (a restricted string).
///
/// Typically must match certain minimal constraints (non-whitespace).
class FhirCodeBuilder extends FhirStringBuilder
    implements
        ValueXCodeSystemPropertyBuilder,
        ValueXParametersParameterBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        ValueXValueSetParameterBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor passing validated code to [super._].
  FhirCodeBuilder._({
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

  /// Creates a [FhirCodeBuilder], validating [rawValue] as a `String` that
  /// meets minimal code rules.
  // ignore: sort_unnamed_constructors_first
  factory FhirCodeBuilder(
    dynamic rawValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated =
        rawValue != null ? _validateCode(rawValue.toString()) : null;
    return FhirCodeBuilder._(
      valueString: validated,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirCodeBuilder] object.
  factory FhirCodeBuilder.empty() =>
      FhirCodeBuilder(null, element: ElementBuilder.empty());

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirCodeBuilder] from JSON.
  factory FhirCodeBuilder.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : ElementBuilder.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Code';
    return FhirCodeBuilder(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirCodeBuilder] from YAML ([String] or [YamlMap]).
  static FhirCodeBuilder fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirCodeBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirCodeBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirCode cannot be constructed from provided input, '
        'it is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirCodeBuilder]. Returns `null` if
  /// it fails.
  static FhirCodeBuilder? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirCodeBuilder(input);
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

  /// Returns `true` if the Type is considered string-based, otherwise `false`
  @override
  bool get stringBased => true;

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  /// Method to convert the builder object to the original Element object
  @override
  FhirCode build() => FhirCode.fromJson(toJson());

  @override
  FhirCodeBuilder clone() => FhirCodeBuilder(
        valueString,
        element: element?.clone() as ElementBuilder?,
      );

  @override
  FhirCodeBuilder copyWith({
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
    return FhirCodeBuilder(
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
  FhirCodeBuilder createProperty(String propertyName) => this;

  @override
  FhirCodeBuilder clear({
    bool value = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirCodeBuilder(
      value ? null : valueString,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
