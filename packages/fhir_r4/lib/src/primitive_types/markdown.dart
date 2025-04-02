part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirMarkdown].
extension FhirMarkdownExtension on String {
  /// Returns a new [FhirMarkdown] from this [String].
  FhirMarkdown get toFhirMarkdown => FhirMarkdown(this);
}

/// A FHIR primitive type `markdown` (a string that might contain Markdown).
class FhirMarkdown extends FhirString
    implements
        CiteAsXEvidence,
        CiteAsXEvidenceReport,
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

  /// Private underscore constructor verifying `(valueString == null && element == null)`
  /// doesn't happen in [FhirString]'s constructor.
  FhirMarkdown._({
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

  /// Creates a [FhirMarkdown], validating [rawValue] is either `null` or a [String].
  factory FhirMarkdown(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Markdown',
  }) {
    if (rawValue != null && rawValue is! String) {
      throw ArgumentError(
        'Invalid type for FhirMarkdown. Expected String, got ${rawValue.runtimeType}.',
      );
    }
    final validated = _validateMarkdown(rawValue as String?);
    return FhirMarkdown._(
      valueString: validated,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirMarkdown] with [Element.empty].
  factory FhirMarkdown.empty() => FhirMarkdown(null, element: Element.empty());

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirMarkdown] from a JSON [Map].
  factory FhirMarkdown.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : Element.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Markdown';
    return FhirMarkdown(rawValue,
        element: parsedElement, objectPath: objectPath);
  }

  /// Constructs a [FhirMarkdown] from a YAML input.
  static FhirMarkdown fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirMarkdown.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirMarkdown.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw const FormatException('Invalid YAML format for FhirMarkdown.');
    }
  }

  /// Attempts to parse [input] into a [FhirMarkdown], returning `null` if it fails.
  static FhirMarkdown? tryParse(dynamic input) {
    try {
      return input is String ? FhirMarkdown(input) : null;
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // Validation
  // --------------------------------------------------------------------------

  /// Minimal validation for Markdown: checks if there's at least some content,
  /// or allows an empty string. Adjust logic as needed for your constraints.
  static String? _validateMarkdown(String? input) {
    if (input == null) return null;
    // If you want to allow empty or any text, you can skip or relax checks here.
    // For now, let's say we require at least one non-whitespace character.
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

  /// Returns this Markdown or `''`.
  @override
  String toString() => valueString ?? '';

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  @override
  FhirMarkdown clone() => FhirMarkdown(
        valueString,
        element: element?.clone() as Element?,
      );

  @override
  FhirMarkdown copyWith({
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
    return FhirMarkdown(
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
  FhirMarkdown createProperty(String propertyName) => this;

  @override
  FhirMarkdown clear({
    bool value = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirMarkdown(
      value ? null : valueString,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
