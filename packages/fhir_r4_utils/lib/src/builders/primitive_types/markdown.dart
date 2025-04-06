part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirMarkdownBuilder].
extension FhirMarkdownBuilderExtension on String {
  /// Returns a new [FhirMarkdownBuilder] from this [String].
  FhirMarkdownBuilder get toFhirMarkdownBuilder => FhirMarkdownBuilder(this);
}

/// A FHIR primitive type `markdown` (a string that might contain Markdown).
class FhirMarkdownBuilder extends FhirStringBuilder
    implements
        CiteAsXEvidenceBuilder,
        CiteAsXEvidenceReportBuilder,
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

  /// Private underscore constructor verifying constraints.
  FhirMarkdownBuilder._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Markdown',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirMarkdownBuilder], validating [rawValue] is either `null`
  /// or a [String].
  // ignore: sort_unnamed_constructors_first
  factory FhirMarkdownBuilder(
    dynamic rawValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Markdown',
  }) {
    if (rawValue != null && rawValue is! String) {
      throw ArgumentError(
        'Invalid type for FhirMarkdown. '
        'Expected String, got ${rawValue.runtimeType}.',
      );
    }
    final validated = _validateMarkdown(rawValue as String?);
    return FhirMarkdownBuilder._(
      valueString: validated,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirMarkdownBuilder] with [ElementBuilder.empty]
  /// metadata.
  factory FhirMarkdownBuilder.empty() =>
      FhirMarkdownBuilder(null, element: ElementBuilder.empty());

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirMarkdownBuilder] from a JSON [Map].
  factory FhirMarkdownBuilder.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : ElementBuilder.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Markdown';
    return FhirMarkdownBuilder(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirMarkdownBuilder] from a YAML input.
  static FhirMarkdownBuilder fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirMarkdownBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirMarkdownBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw const FormatException('Invalid YAML format for FhirMarkdown.');
    }
  }

  /// Attempts to parse [input] into a [FhirMarkdownBuilder], returning `null`
  /// if it fails.
  static FhirMarkdownBuilder? tryParse(dynamic input) {
    try {
      return input is String ? FhirMarkdownBuilder(input) : null;
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // Validation
  // --------------------------------------------------------------------------

  /// Minimal validation for Markdown: requires at least one non-whitespace
  /// character.
  static String? _validateMarkdown(String? input) {
    if (input == null) return null;
    if (input.trim().isNotEmpty) {
      return input;
    }
    throw FormatException('Invalid FhirMarkdown: $input');
  }

  // --------------------------------------------------------------------------
  // FHIR Overrides
  // --------------------------------------------------------------------------

  /// Returns `"markdown"`.
  @override
  String get fhirType => 'markdown';

  /// Returns this Markdown as a string (or `''` if null).
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
  FhirMarkdown build() => FhirMarkdown.fromJson(toJson());

  @override
  FhirMarkdownBuilder clone() => FhirMarkdownBuilder(
        valueString,
        element: element?.clone() as ElementBuilder?,
      );

  @override
  FhirMarkdownBuilder copyWith({
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
    return FhirMarkdownBuilder(
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
  FhirMarkdownBuilder createProperty(String propertyName) => this;

  @override
  FhirMarkdownBuilder clear({
    bool value = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirMarkdownBuilder(
      value ? null : valueString,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
