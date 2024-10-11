import 'dart:convert';

import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirCanonicalExtension on String {
  FhirCanonical get toFhirCanonical => FhirCanonical(this);
}

extension FhirCanonicalUriExtension on Uri {
  FhirCanonical get toFhirCanonical => FhirCanonical.fromUri(this);
}

class FhirCanonical extends PrimitiveType<Uri> {
  @override
  final Uri value;

  // Constructor enforces valid input
  FhirCanonical(String input, [Element? element])
      : value = _validateCanonical(input),
        super(element: element);

  FhirCanonical.fromUri(Uri input, [Element? element])
      : value = input,
        super(element: element);

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

  // Validate the input and return a Uri object
  static Uri _validateCanonical(String input) {
    final Uri? uri = Uri.tryParse(input);
    if (uri != null) {
      return uri;
    }
    throw FormatException('Invalid Canonical String: $input');
  }

  // fromJson only accepts a String and validates it
  factory FhirCanonical.fromJson(dynamic json) {
    if (json is String) {
      return FhirCanonical(json);
    } else {
      throw const FormatException('Invalid input for FhirBase64Binary');
    }
  }

  factory FhirCanonical.fromYaml(String yaml) =>
      FhirCanonical.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))) as String);

  @override
  String get fhirType => 'canonical';

  @override
  String toJson() => value.toString();
  @override
  String toYaml() => value.toString();
  @override
  String toString() => value.toString();
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirCanonical && other.value == value) ||
      (other is Uri && other == value) ||
      (other is String && Uri.tryParse(other) == value);

  @override
  FhirCanonical clone() =>
      FhirCanonical.fromUri(value, element?.clone() as Element?);

  /// Path-related methods
  List<String> get pathSegments => value.pathSegments;

  String toFilePath({bool? windows}) => value.toFilePath(windows: windows);

  /// Authority-related methods
  String get host => value.host;
  String get userInfo => value.userInfo;
  int? get port => value.port;
  String get authority => value.authority;

  /// Query-related methods
  String get query => value.query;

  static Map<String, List<String>> splitQueryStringAll(String query,
      {Encoding encoding = utf8}) {
    return Uri.splitQueryString(query, encoding: encoding).map(
        (String key, String value) => MapEntry<String, List<String>>(
            key, value.isEmpty ? <String>[] : <String>[value]));
  }

  /// Encoding/decoding
  static String encodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.encodeQueryComponent(text, encoding: encoding);
  }

  static String decodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.decodeQueryComponent(text, encoding: encoding);
  }

  @override
  FhirCanonical setElement(String name, dynamic elementValue) {
    return FhirCanonical.fromUri(
        value, element?.setProperty(name, elementValue));
  }

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
