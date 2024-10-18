import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [String] to a [FhirUrl]
extension FhirUrlExtension on String {
  /// Converts a [String] to a [FhirUrl]
  FhirUrl get toFhirUrl => FhirUrl(this);
}

/// Extension to convert a [Uri] to a [FhirUrl]
extension FhirUrlUriExtension on Uri {
  /// Converts a [Uri] to a [FhirUrl]
  FhirUrl get toFhirUrl => FhirUrl.fromUri(this);
}

/// Represents a canonical URL in FHIR as a [PrimitiveType] of [Uri]
class FhirUrl extends PrimitiveType<Uri> {
  /// Constructs a [FhirUrl] from a [String]
  FhirUrl(String? input, [Element? element])
      : super(
          input == null ? null : _validateCanonical(input),
          element,
        ) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
  }

  /// Constructs a [FhirUrl] from a [Uri] object
  FhirUrl.fromUri(super.input, [super.element]);

  /// Factory constructor to create [FhirUrl] from JSON
  factory FhirUrl.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    return FhirUrl(value, element);
  }

  /// Factory constructor to create [FhirUrl] from YAML
  static FhirUrl fromYaml(dynamic yaml) => yaml is String
      ? FhirUrl.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirUrl.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirUrl cannot be constructed from the provided input,'
              ' it is neither a YAML string nor a YAML map.');

  /// Attempts to parse the input as a [FhirUrl], returns `null` if
  /// parsing fails.
  static FhirUrl? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirUrl(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  /// Validates the input string as a valid [Uri]
  static Uri _validateCanonical(String input) {
    final uri = Uri.tryParse(input);
    if (uri != null) return uri;
    throw FormatException('Invalid Canonical String: $input');
  }

  /// Boolean getter to determine if only a value is present
  bool get valueOnly => value != null && element == null;

  /// Boolean getter to determine if only an element is present
  bool get elementOnly => value == null && element != null;

  /// Boolean getter to determine if both value and element are present
  bool get valueAndElement => value != null && element != null;

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null) 'value': value!.toString(),
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FhirUrl] instances
  static List<FhirUrl> fromJsonList(
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

      return FhirUrl(value, element);
    });
  }

  /// Converts a list of [FhirUrl] instances to a JSON-compatible map
  static Map<String, dynamic> toJsonList(List<FhirUrl> canonicals) {
    return {
      'value': canonicals.map((c) => c.value.toString()).toList(),
      '_value': canonicals.map((c) => c.element?.toJson()).toList(),
    };
  }

  /// Returns the canonical URL as a [String]
  @override
  String toString() => value.toString();

  /// Overrides equality operator
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirUrl && other.value == value) ||
      (other is Uri && other == value) ||
      (other is String && Uri.tryParse(other) == value);

  /// Overrides `hashCode` for use in hash-based collections
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Clones this [FhirUrl] instance
  @override
  FhirUrl clone() => FhirUrl.fromUri(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance
  @override
  FhirUrl setElement(String name, dynamic elementValue) {
    return FhirUrl.fromUri(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Creates a modified copy with updated properties
  @override
  FhirUrl copyWith({
    Uri? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirUrl.fromUri(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }

  /// Compares this object for equality with another object.
  ///
  /// Returns `true` if the other object is a [FhirUrl], [Uri], or a
  /// [String] that can be parsed as a valid URI.
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirUrl && other.value == value) ||
      (other is Uri && other == value) ||
      (other is String && Uri.tryParse(other) == value);

  // Path-related methods

  /// Returns the list of path segments in the canonical URL.
  List<String>? get pathSegments => value?.pathSegments;

  /// Converts the canonical URL to a file path string.
  ///
  /// The [windows] flag indicates whether the path should be formatted for
  /// Windows.
  String? toFilePath({bool? windows}) => value?.toFilePath(windows: windows);

  // Authority-related methods

  /// Returns the host portion of the canonical URL.
  String? get host => value?.host;

  /// Returns the user info of the canonical URL.
  String? get userInfo => value?.userInfo;

  /// Returns the port of the canonical URL, if specified.
  int? get port => value?.port;

  /// Returns the authority of the canonical URL.
  String? get authority => value?.authority;

  // Query-related methods

  /// Returns the query string of the canonical URL.
  String? get query => value?.query;

  /// Splits a query string into a map of keys and a list of values.
  ///
  /// This method ensures that each query key maps to a list of values.
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

  /// Encodes the query component of a URL.
  ///
  /// Uses the specified [encoding], defaulting to UTF-8.
  static String encodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.encodeQueryComponent(text, encoding: encoding);
  }

  /// Decodes the query component of a URL.
  ///
  /// Uses the specified [encoding], defaulting to UTF-8.
  static String decodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.decodeQueryComponent(text, encoding: encoding);
  }
}
