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

/// Represents a canonical URL in FHIR as a [PrimitiveType] of [Uri].
class FhirCanonical extends PrimitiveType<Uri> {
  /// Constructs a [FhirCanonical] from a [String], enforcing valid input.
  FhirCanonical(String input, [Element? element])
      : value = _validateCanonical(input),
        super(element: element);

  /// Constructs a [FhirCanonical] from a [Uri] object.
  FhirCanonical.fromUri(Uri input, [Element? element])
      : value = input,
        super(element: element);

  /// Factory constructor for creating [FhirCanonical] from JSON.
  ///
  /// Expects a valid [String] as input and throws a [FormatException]
  /// otherwise.
  factory FhirCanonical.fromJson(dynamic json) {
    if (json is String) {
      return FhirCanonical(json);
    } else {
      throw const FormatException('Invalid input for FhirCanonical');
    }
  }

  /// Factory constructor for creating [FhirCanonical] from YAML.
  ///
  /// Converts the YAML string into JSON before parsing.
  factory FhirCanonical.fromYaml(String yaml) =>
      FhirCanonical.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))) as String);

  /// The canonical URL value stored as a [Uri].
  @override
  final Uri value;

  /// Attempts to parse the input as a [FhirCanonical], returns `null` if
  /// parsing fails.
  static FhirCanonical? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirCanonical(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  /// Validates the input string as a valid [Uri].
  ///
  /// Throws a [FormatException] if the input is invalid.
  static Uri _validateCanonical(String input) {
    final uri = Uri.tryParse(input);
    if (uri != null) {
      return uri;
    }
    throw FormatException('Invalid Canonical String: $input');
  }

  /// Returns the FHIR type as a [String].
  @override
  String get fhirType => 'canonical';

  /// Serializes the [FhirCanonical] to a JSON string.
  @override
  String toJson() => value.toString();

  /// Serializes the [FhirCanonical] to a YAML string.
  @override
  String toYaml() => value.toString();

  /// Returns the canonical URL as a [String].
  @override
  String toString() => value.toString();

  /// Returns a JSON-encoded string representation of the [FhirCanonical].
  @override
  String toJsonString() => jsonEncode(toJson());

  /// Returns the hash code for this object.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  /// Checks for equality between this object and another [FhirCanonical],
  /// [Uri], or [String].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Compares this object for equality with another object.
  ///
  /// Returns `true` if the other object is a [FhirCanonical], [Uri], or a
  /// [String] that can be parsed as a valid URI.
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirCanonical && other.value == value) ||
      (other is Uri && other == value) ||
      (other is String && Uri.tryParse(other) == value);

  /// Clones this [FhirCanonical], optionally copying its associated [Element].
  @override
  FhirCanonical clone() =>
      FhirCanonical.fromUri(value, element?.clone() as Element?);

  // Path-related methods

  /// Returns the list of path segments in the canonical URL.
  List<String> get pathSegments => value.pathSegments;

  /// Converts the canonical URL to a file path string.
  ///
  /// The [windows] flag indicates whether the path should be formatted for
  /// Windows.
  String toFilePath({bool? windows}) => value.toFilePath(windows: windows);

  // Authority-related methods

  /// Returns the host portion of the canonical URL.
  String get host => value.host;

  /// Returns the user info of the canonical URL.
  String get userInfo => value.userInfo;

  /// Returns the port of the canonical URL, if specified.
  int? get port => value.port;

  /// Returns the authority of the canonical URL.
  String get authority => value.authority;

  // Query-related methods

  /// Returns the query string of the canonical URL.
  String get query => value.query;

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

  /// Sets a property on the associated [Element], returning a new
  /// [FhirCanonical].
  @override
  FhirCanonical setElement(String name, dynamic elementValue) {
    return FhirCanonical.fromUri(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Copies the current [FhirCanonical], allowing for changes to its
  /// properties.
  ///
  /// Supports changing the [value] and associated [element], as well as other
  /// optional metadata.
  @override
  FhirCanonical copyWith({
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
    return FhirCanonical.fromUri(
      newValue ?? value,
      element?.copyWith(
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
        children: children,
        namedChildren: namedChildren,
      ),
    );
  }
}
