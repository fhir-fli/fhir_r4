import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [String] to a [FhirCanonical]
extension FhirCanonicalExtension on String {
  /// Converts a [String] to a [FhirCanonical]
  FhirCanonical get toFhirCanonical => FhirCanonical(this);
}

/// Extension to convert a [Uri] to a [FhirCanonical]
extension FhirCanonicalUriExtension on Uri {
  /// Converts a [Uri] to a [FhirCanonical]
  FhirCanonical get toFhirCanonical => FhirCanonical.fromUri(this);
}

/// Represents a canonical URL in FHIR as a [PrimitiveType] of [Uri]
class FhirCanonical extends PrimitiveType<Uri>
    implements
        SourceXConceptMap,
        TargetXConceptMap,
        DefinitionXEvidenceVariableCharacteristic,
        ModuleXGuidanceResponse,
        ExampleXImplementationGuideResource,
        ExampleXImplementationGuideResource1,
        ValueXParametersParameter,
        DefinitionXPlanDefinitionAction,
        DefinitionXResearchElementDefinitionCharacteristic,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension,
        SubjectXActivityDefinition,
        SubjectXPlanDefinitionAction,
        SubjectXPlanDefinition {
  /// Constructor with validation and original input storage
  FhirCanonical(
    this.input, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Canonical',
  }) : super(input != null ? _validateCanonical(input) : null) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required for FhirCanonical');
    }
  }

    /// Creates empty [FhirCanonical] object
  factory FhirCanonical.empty() =>
      FhirCanonical(null, element: Element.empty());

  /// Constructs a [FhirCanonical] from a [Uri] object
  FhirCanonical.fromUri(
    Uri input, [
    Element? element,
  ]) : this(
          input.toString(),
          element: element,
        );

  /// Factory constructor to create [FhirCanonical] from JSON
  factory FhirCanonical.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String?;
    return FhirCanonical(value, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create [FhirCanonical] from YAML
  static FhirCanonical fromYaml(dynamic yaml) => yaml is String
      ? FhirCanonical.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirCanonical.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirCanonical cannot be constructed from the provided input,'
              ' it is neither a YAML string nor a YAML map.');

  /// Attempts to parse the input as a [FhirCanonical], returns `null` if
  /// parsing fails
  static FhirCanonical? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirCanonical(input);
      } catch (_) {
        return null;
      }
    } else if (input is Uri) {
      return FhirCanonical.fromUri(input);
    }
    return null;
  }

  /// Validates the input string as a valid [Uri]
  static Uri _validateCanonical(String input) {
    final uri = Uri.tryParse(input);
    if (uri != null) return uri;
    throw FormatException('Invalid Canonical String: $input');
  }

  /// The original input value (for serialization purposes)
  final String? input;

  /// Boolean getter to determine if only a value is present
  bool get valueOnly => value != null && element == null;

  /// Boolean getter to determine if only an element is present
  bool get hasElementOnly => value == null && element != null;

  /// Boolean getter to determine if both value and element are present
  bool get valueAndElement => value != null && element != null;

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (input != null) 'value': input,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FhirCanonical] instances
  static List<FhirCanonical> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length',
      );
    }
    return List.generate(values.length, (i) {
      final value = values[i] as String?;
      final element = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirCanonical(value, element: element);
    });
  }

  /// Converts a list of [FhirCanonical] instances to a JSON-compatible map
  static Map<String, dynamic> toJsonList(List<FhirCanonical> canonicals) => {
        'value': canonicals.map((c) => c.input).toList(),
        '_value': canonicals.map((c) => c.element?.toJson()).toList(),
      };

  /// Returns the FHIR type as a [String]
  @override
  String get fhirType => 'canonical';

  /// Returns the canonical URL as a [String]
  @override
  String toString() => value.toString();

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value?.toString();

  @override
  bool equalsDeep(FhirBase? o) =>
      o is FhirCanonical && o.value == value && o.element == element;

  /// Overrides equality operator
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirCanonical && other.input == input) ||
      (other is Uri && other == value) ||
      (other is String && Uri.tryParse(other) == value);

  /// Overrides `hashCode` for use in hash-based collections
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(input, element);

  /// Clones this [FhirCanonical] instance
  @override
  FhirCanonical clone() =>
      FhirCanonical(input, element: element?.clone() as Element?);

  /// Creates a modified copy with updated properties
  @override
  FhirCanonical copyWith({
    Uri? newValue,
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
    return FhirCanonical(
      newValue?.toString() ?? input,
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

  /// Returns a new [FhirCanonical] with extensions disallowed.
  FhirCanonical noExtensions() => copyWith(disallowExtensions: true);

  /// Compares this object for equality with another object
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirCanonical && other.value == value) ||
      (other is Uri && other == value) ||
      (other is String && Uri.tryParse(other) == value);

  // Path-related methods

  /// Returns the list of path segments in the canonical URL
  List<String>? get pathSegments => value?.pathSegments;

  /// Converts the canonical URL to a file path string
  String? toFilePath({bool? windows}) => value?.toFilePath(windows: windows);

  // Authority-related methods

  /// Returns the host portion of the canonical URL
  String? get host => value?.host;

  /// Returns the user info of the canonical URL
  String? get userInfo => value?.userInfo;

  /// Returns the port of the canonical URL, if specified
  int? get port => value?.port;

  /// Returns the authority of the canonical URL
  String? get authority => value?.authority;

  // Query-related methods

  /// Returns the query string of the canonical URL
  String? get query => value?.query;

  /// Splits a query string into a map of keys and a list of values
  static Map<String, List<String>> splitQueryStringAll(
    String query, {
    Encoding encoding = utf8,
  }) {
    return Uri.splitQueryString(query, encoding: encoding).map(
      (String key, String value) => MapEntry<String, List<String>>(
        key,
        value.isEmpty ? <String>[] : <String>[value],
      ),
    );
  }

  // Encoding/decoding methods

  /// Encodes the query component of a URL
  static String encodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.encodeQueryComponent(text, encoding: encoding);
  }

  /// Decodes the query component of a URL
  static String decodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.decodeQueryComponent(text, encoding: encoding);
  }
}
