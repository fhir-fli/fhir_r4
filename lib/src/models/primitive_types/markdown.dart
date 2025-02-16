import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [String] to [FhirMarkdown].
extension FhirMarkdownExtension on String {
  /// Converts a [String] to a [FhirMarkdown].
  FhirMarkdown get toFhirMarkdown => FhirMarkdown(this);
}

/// This class represents the FHIR primitive type `markdown`.
class FhirMarkdown extends PrimitiveType<String>
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
  /// Constructor enforcing input validation.
  FhirMarkdown(
    String? input, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Markdown',
  }) : super(_validateMarkdown(input)) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required for FhirMarkdown');
    }
  }

  /// Creates empty [FhirMarkdown] object
  factory FhirMarkdown.empty() => FhirMarkdown(null, element: Element.empty());

  /// Factory constructor to create a [FhirMarkdown] from JSON input.
  factory FhirMarkdown.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String?;
    return FhirMarkdown(value, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create a [FhirMarkdown] from YAML input.
  factory FhirMarkdown.fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirMarkdown.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirMarkdown.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw const FormatException(
                'Invalid YAML format for FhirMarkdown.',
              );
  }

  /// Tries to parse the input into a [FhirMarkdown], returning `null` if it
  /// fails.
  static FhirMarkdown? tryParse(dynamic input) {
    try {
      return input is String ? FhirMarkdown(input) : null;
    } catch (_) {
      return null;
    }
  }

  /// Validates the input and ensures it conforms to markdown rules.
  static String? _validateMarkdown(String? input) {
    if (input == null) {
      return input;
    }
    if (RegExp(r'[ \r\n\t\S]+').hasMatch(input)) {
      return input;
    }
    throw FormatException('Invalid FhirMarkdown: $input');
  }

  /// Returns the FHIR type as 'markdown'.
  @override
  String get fhirType => 'markdown';

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
  bool equalsDeep(FhirBase? o) =>
      o is FhirMarkdown && o.value == value && o.element == element;

  /// Compares this instance for equality with another object.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirMarkdown && other.value == value) ||
      (other is String && other == value);

  /// Overrides the `hashCode` for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Clones the current [FhirMarkdown] instance.
  @override
  FhirMarkdown clone() =>
      FhirMarkdown(value, element: element?.clone() as Element?);

  /// Creates a modified copy with updated properties.
  @override
  FhirMarkdown copyWith({
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
    return FhirMarkdown(
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

  /// Returns a new [FhirMarkdown] with extensions disallowed.
  FhirMarkdown noExtensions() => copyWith(disallowExtensions: true);

  /// Converts a list of JSON values to a list of [FhirMarkdown] instances.
  static List<FhirMarkdown> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length.',
      );
    }

    return List.generate(values.length, (i) {
      final value = values[i] as String;
      final element = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirMarkdown(value, element: element);
    });
  }

  /// Converts a list of [FhirMarkdown] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirMarkdown> markdowns) {
    return {
      'value': markdowns.map((markdown) => markdown.value).toList(),
      '_value':
          markdowns.map((markdown) => markdown.element?.toJson()).toList(),
    };
  }
}
