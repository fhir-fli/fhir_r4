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

  /// Private underscore constructor verifying
  /// `(valueString == null && element == null)`
  /// doesn't happen in [FhirString]'s constructor.
  const FhirMarkdown._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.objectPath = 'Markdown',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirMarkdown], validating [rawValue] is either `null` or a
  /// [String].
  // ignore: sort_unnamed_constructors_first
  factory FhirMarkdown(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String objectPath = 'Markdown',
  }) {
    if (rawValue != null && rawValue is! String) {
      throw ArgumentError(
        'Invalid type for FhirMarkdown. '
        'Expected String, got ${rawValue.runtimeType}.',
      );
    }
    final validated = _validateMarkdown(rawValue as String?);
    return FhirMarkdown._(
      valueString: validated,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      userData: userData,
      formatCommentsPre: formatCommentsPre,
      formatCommentsPost: formatCommentsPost,
      annotations: annotations,
      objectPath: objectPath,
    );
  }

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
    return FhirMarkdown(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
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

  /// Attempts to parse [input] into a [FhirMarkdown], returning `null` if
  /// it fails.
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
    // If you want to allow empty or any text, you can skip or relax checks
    // here. For now, let's say we require at least one non-whitespace
    // character.
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

  /// Returns `true` if the Type is considered string-based, otherwise `false`
  @override
  bool get stringBased => true;

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  @override
  FhirMarkdown clone() => copyWith();

  FhirMarkdown _copyWith<T>({
    required T Function(T) then,
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
    Object? userData = fhirSentinel,
    Object? formatCommentsPre = fhirSentinel,
    Object? formatCommentsPost = fhirSentinel,
    Object? annotations = fhirSentinel,
    Object? objectPath = fhirSentinel,
  }) {
    return then(
      FhirMarkdown(
        identical(newValue, fhirSentinel) ? valueString : newValue,
        element: identical(element, fhirSentinel)
            ? this.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? this.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? this.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? this.disallowExtensions
            : disallowExtensions as bool?,
        userData: identical(userData, fhirSentinel)
            ? this.userData
            : userData as Map<String, dynamic>?,
        formatCommentsPre: identical(formatCommentsPre, fhirSentinel)
            ? this.formatCommentsPre
            : formatCommentsPre as List<String>?,
        formatCommentsPost: identical(formatCommentsPost, fhirSentinel)
            ? this.formatCommentsPost
            : formatCommentsPost as List<String>?,
        annotations: identical(annotations, fhirSentinel)
            ? this.annotations
            : annotations as List<dynamic>?,
        objectPath: identical(objectPath, fhirSentinel)
            ? this.objectPath ?? 'Markdown'
            : objectPath as String? ?? 'Markdown',
      ) as T,
    ) as FhirMarkdown;
  }

  /// Creates a new instance with the specified fields replaced.
  @override
  FhirMarkdown copyWith({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return _copyWith<FhirMarkdown>(
      then: (value) => value,
      newValue: newValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      userData: userData,
      formatCommentsPre: formatCommentsPre,
      formatCommentsPost: formatCommentsPost,
      annotations: annotations,
      objectPath: objectPath,
    );
  }
}
