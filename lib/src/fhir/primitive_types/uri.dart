import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirUriExtension on String {
  FhirUri get toFhirUri => FhirUri(this);
}

extension FhirUriUriExtension on Uri {
  FhirUri get toFhirUri => FhirUri.fromUri(this);
}

@Entity()
class FhirUri extends PrimitiveType<Uri> {
  @override
  final Uri value; // Store the validated Uri value

  // Constructor only accepts valid Uri or String input
  FhirUri(String input, [Element? element])
      : value = _validateUri(input),
        super(element: element);

  FhirUri.fromUri(Uri input, [Element? element])
      : value = input,
        super(element: element);

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

  // Validate the input and return a Uri object
  static Uri _validateUri(String input) {
    final Uri? tempUri = Uri.tryParse(input);
    if (tempUri != null) {
      return tempUri;
    }
    throw FormatException(
        'FhirUri cannot be constructed from invalid String: $input');
  }

  // fromJson only accepts a String and validates it
  factory FhirUri.fromJson(dynamic json) {
    if (json is String) {
      return FhirUri(json);
    } else {
      throw const FormatException('Invalid input for FhirBase64Binary');
    }
  }

  factory FhirUri.fromYaml(String yaml) =>
      FhirUri.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))) as String);

  @override
  @Id()
  int dbId = 0;

  @override
  String get fhirType => 'uri';

  // Convert the stored Uri back to a string for output formats
  @override
  String toJson() => value.toString();
  @override
  String toYaml() => value.toString();
  @override
  String toString() => value.toString();
  @override
  String toJsonString() => jsonEncode(toJson());

  // Equality check, can compare against another FhirUri, Uri, or String
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirUri && other.value == value) ||
      (other is Uri && other == value) ||
      (other is String && Uri.tryParse(other) == value);

  // Clone the object
  @override
  FhirUri clone() => FhirUri.fromUri(value, element?.clone() as Element?);

  /// Mirroring common Uri methods

  // Path-related methods
  List<String> get pathSegments => value.pathSegments;

  String toFilePath({bool? windows}) {
    return value.toFilePath(windows: windows);
  }

  // Authority-related methods
  String get host => value.host;
  String get userInfo => value.userInfo;
  int? get port => value.port;

  String get authority => value.authority;

  // Query-related methods
  String get query => value.query;

  // Splitting query string into key-value pairs
  Map<String, List<String>> splitQueryStringAll(String query,
      {Encoding encoding = utf8}) {
    return Uri.splitQueryString(query, encoding: encoding).map(
        (String key, String value) => MapEntry<String, List<String>>(
            key, value.isEmpty ? <String>[] : <String>[value]));
  }

  // Encoding and decoding methods
  static String encodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.encodeQueryComponent(text, encoding: encoding);
  }

  static String decodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.decodeQueryComponent(text, encoding: encoding);
  }

  @override
  FhirUri setElement(String name, dynamic elementValue) {
    return FhirUri.fromUri(value, element?.setProperty(name, elementValue));
  }

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
