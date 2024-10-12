import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a String to a [FhirOid].
extension FhirOidExtension on String {
  /// Converts a String to a [FhirOid].
  FhirOid get toFhirOid => FhirOid(this);
}

/// [FhirOid] represents a validated OID value in the FHIR standard.
class FhirOid extends PrimitiveType<String> {
  /// Constructs a [FhirOid] from a String input.
  FhirOid(String input, [Element? element])
      : value = _validateOid(input),
        super(element: element);

  /// Factory constructor to create [FhirOid] from JSON.
  factory FhirOid.fromJson(dynamic json) {
    if (json is String) {
      return FhirOid(json);
    }
    throw FormatException('Invalid input for FhirOid: $json');
  }

  /// Factory constructor to create [FhirOid] from YAML.
  factory FhirOid.fromYaml(dynamic yaml) => yaml is String
      ? FhirOid.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))))
      : throw const FormatException('Invalid YAML format for FhirOid');
  @override
  final String value;

  /// Attempts to parse the input as a [FhirOid], returns `null` if
  static FhirOid? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirOid(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  static String _validateOid(String input) {
    if (RegExp(r'^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$').hasMatch(input)) {
      return input;
    }
    throw FormatException('Invalid FhirOid: $input');
  }

  @override
  String get fhirType => 'oid';

  @override
  String toJson() => value;
  @override
  String toYaml() => value;
  @override
  String toString() => value;
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
      (other is FhirOid && other.value == value) ||
      (other is String && other == value);

  @override
  FhirOid clone() => FhirOid(value, element?.clone() as Element?);

  @override
  FhirOid setElement(String name, dynamic elementValue) {
    return FhirOid(value, element?.setProperty(name, elementValue));
  }

  @override
  FhirOid copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirOid(
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
