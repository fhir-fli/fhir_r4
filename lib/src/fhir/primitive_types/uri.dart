import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a String to a [ /// ].
extension FhirUriExtension on String {
  /// Converts a String to a [FhirUri].
  FhirUri get toFhirUri => FhirUri(this);
}

/// Extension to convert a [Uri] to a [FhirUri].
extension FhirUriUriExtension on Uri {
  /// Converts a [Uri] to a [FhirUri].
  FhirUri get toFhirUri => FhirUri.fromUri(this);
}

/// [FhirUri] represents a validated URL value in the FHIR standard.
class FhirUri extends PrimitiveType<Uri> {
  /// Constructs a [FhirUri] from a String input.
  ///
  /// Validates the input to ensure it is a valid URL.
  FhirUri(String input, [Element? element])
      : value = _validateUrl(input),
        super(element: element);

  /// Constructs a [FhirUri] from a [Uri].
  FhirUri.fromUri(Uri input, [Element? element])
      : value = input,
        super(element: element);

  /// Factory constructor to create [FhirUri] from JSON.
  ///
  /// Only accepts a String and validates it as a URL.
  factory FhirUri.fromJson(dynamic json) {
    if (json is String) {
      return FhirUri(json);
    } else {
      throw const FormatException('Invalid input for FhirUri');
    }
  }

  /// Factory constructor to create [FhirUri] from YAML input.
  factory FhirUri.fromYaml(String yaml) =>
      FhirUri.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))) as String);

  /// Stores the validated [Uri] value.
  @override
  final Uri value;

  /// Tries to parse a String input into a [FhirUri].
  static FhirUri? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirUri(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  /// Validates a URL String and returns a [Uri] object.
  static Uri _validateUrl(String input) {
    final tempUri = Uri.tryParse(input);
    if (tempUri != null) {
      return tempUri;
    }
    throw FormatException(
      'FhirUri cannot be constructed from invalid String: $input',
    );
  }

  /// Returns the FHIR type as 'url'.
  @override
  String get fhirType => 'url';

  /// Converts the stored [Uri] to a JSON String.
  @override
  String toJson() => value.toString();

  /// Converts the stored [Uri] to a YAML String.
  @override
  String toYaml() => value.toString();

  /// Converts the stored [Uri] to a String.
  @override
  String toString() => value.toString();

  /// Converts the [Uri] to a JSON-encoded String.
  @override
  String toJsonString() => jsonEncode(toJson());

  /// Returns the hash code for the [Uri].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  /// Checks equality between two objects.
  ///
  /// Supports comparisons with [FhirUri], [Uri], or a valid URL String.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Checks equality between [FhirUri], [Uri], or a valid URL String.
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirUri && other.value == value) ||
      (other is Uri && other == value) ||
      (other is String && Uri.tryParse(other) == value);

  /// Clones the [FhirUri] object, including its [Element] value.
  @override
  FhirUri clone() => FhirUri.fromUri(value, element?.clone() as Element?);

  /// Retrieves the list of path segments from the URL.
  List<String> get pathSegments => value.pathSegments;

  /// Converts the URL to a file path, supporting both Unix and Windows.
  String toFilePath({bool? windows}) => value.toFilePath(windows: windows);

  /// Retrieves the host (authority) part of the URL.
  String get host => value.host;

  /// Retrieves the user information (if present) from the URL.
  String get userInfo => value.userInfo;

  /// Retrieves the port number (if specified) from the URL.
  int? get port => value.port;

  /// Retrieves the full authority part of the URL (host, port, and userInfo).
  String get authority => value.authority;

  /// Retrieves the query string of the URL (if present).
  String get query => value.query;

  /// Splits the query string into key-value pairs.
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

  /// Encodes a query component (e.g., a query parameter) for use in a URL.
  static String encodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.encodeQueryComponent(text, encoding: encoding);
  }

  /// Decodes a query component from a URL-encoded string.
  static String decodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.decodeQueryComponent(text, encoding: encoding);
  }

  /// Sets the [Element] property for this [FhirUri].
  @override
  FhirUri setElement(String name, dynamic elementValue) {
    return FhirUri.fromUri(value, element?.setProperty(name, elementValue));
  }

  /// Creates a copy of this [FhirUri], allowing modifications to properties.
  @override
  FhirUri copyWith({
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
    return FhirUri.fromUri(
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
