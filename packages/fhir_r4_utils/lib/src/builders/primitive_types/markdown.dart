part of 'primitive_types.dart';

/// Extension to convert a [String] to [FhirMarkdownBuilder].
extension FhirMarkdownBuilderExtension on String {
  /// Converts a [String] to a [FhirMarkdownBuilder].
  FhirMarkdownBuilder get toFhirMarkdownBuilder => FhirMarkdownBuilder(this);
}

/// This class represents the FHIR primitive type `markdown`.
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
  /// Private underscore constructor that enforces if both [validatedValue] and
  /// [element] are null => throw.
  FhirMarkdownBuilder._({
    required super.validatedValue,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Markdown',
  }) : super._() {
    if (value == null && element == null) {
      throw ArgumentError(
        'A value or element is required for FhirMarkdownBuilder',
      );
    }
  }

  /// Single public constructor enforcing input validation.
  // ignore: sort_unnamed_constructors_first
  factory FhirMarkdownBuilder(
    String? input, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String? objectPath = 'Markdown',
  }) {
    final validated = _validateMarkdown(input);
    return FhirMarkdownBuilder._(
      validatedValue: validated,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirMarkdownBuilder] object
  factory FhirMarkdownBuilder.empty() =>
      FhirMarkdownBuilder(null, element: ElementBuilder.empty());

  /// Factory constructor to create a [FhirMarkdownBuilder] from JSON input.
  factory FhirMarkdownBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String? ?? 'Markdown';
    return FhirMarkdownBuilder(value, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create a [FhirMarkdownBuilder] from YAML input.
  factory FhirMarkdownBuilder.fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirMarkdownBuilder.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirMarkdownBuilder.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw const FormatException(
                'Invalid YAML format for FhirMarkdownBuilder.',
              );
  }

  /// Tries to parse the input into a [FhirMarkdownBuilder],
  /// returning `null` if it fails.
  static FhirMarkdownBuilder? tryParse(dynamic input) {
    try {
      return input is String ? FhirMarkdownBuilder(input) : null;
    } catch (_) {
      return null;
    }
  }

  /// Validates the input and ensures it conforms to markdown rules.
  static String? _validateMarkdown(String? input) {
    if (input == null) {
      return null;
    }
    // This is a basic check that there's at least some non-whitespace
    // character. You can refine it if you have stricter markdown requirements.
    if (RegExp(r'[ \r\n\t\S]+').hasMatch(input)) {
      return input;
    }
    throw FormatException('Invalid FhirMarkdown: $input');
  }

  /// Returns the FHIR type as 'markdown'.
  @override
  String get fhirType => 'markdown';

  /// Converts this instance to a [FhirMarkdown] object
  @override
  FhirMarkdown build() => FhirMarkdown.fromJson(toJson());

  /// Serializes the instance to JSON with standardized keys.
  @override
  Map<String, dynamic> toJson() => {
        if (value != null) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts the instance to a JSON string.
  @override
  String toJsonString() => jsonEncode(toJson());

  /// Provides a string representation of the markdown value.
  @override
  String toString() => value.toString();

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value?.toString();

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirMarkdownBuilder &&
      other.value == value &&
      other.element == element;

  /// Compares this instance for equality with another object.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirMarkdownBuilder && other.value == value) ||
      (other is String && other == value);

  /// Overrides the `hashCode` for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Clones the current [FhirMarkdownBuilder] instance.
  @override
  FhirMarkdownBuilder clone() => FhirMarkdownBuilder(
        value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Creates a modified copy with updated properties.
  @override
  FhirMarkdownBuilder copyWith({
    String? newValue,
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
      newValue ?? value,
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
      objectPath: objectPath ?? this.objectPath,
    );
  }

  /// Converts a list of JSON values to a list of [FhirMarkdownBuilder]
  /// instances.
  static List<FhirMarkdownBuilder> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length.',
      );
    }

    return List.generate(values.length, (i) {
      final val = values[i] as String;
      final elem = elements?[i] != null
          ? ElementBuilder.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirMarkdownBuilder(val, element: elem);
    });
  }

  /// Converts a list of [FhirMarkdownBuilder]
  /// instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirMarkdownBuilder> markdowns) {
    return {
      'value': markdowns.map((markdown) => markdown.value).toList(),
      '_value':
          markdowns.map((markdown) => markdown.element?.toJson()).toList(),
    };
  }

  /// Creates an empty property in the object
  @override
  FhirMarkdownBuilder createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirMarkdownBuilder] object
  @override
  FhirMarkdownBuilder clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirMarkdownBuilder(
      input ? null : value,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
