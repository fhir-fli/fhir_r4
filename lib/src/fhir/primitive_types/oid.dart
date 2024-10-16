import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [String] to [FhirOid].
extension FhirOidExtension on String {
  /// Converts a [String] to a [FhirOid].
  FhirOid get toFhirOid => FhirOid(this);
}

/// [FhirOid] represents a validated OID value in the FHIR standard.
class FhirOid extends PrimitiveType<String> {
  /// Constructs a [FhirOid] from a String input with validation.
  FhirOid(String? input, [Element? element])
      : super(_validateOid(input), element);

  /// Factory constructor to create [FhirOid] from JSON.
  factory FhirOid.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;

    if (value == null) {
      throw const FormatException('Invalid input for FhirOid: value is null');
    }

    return FhirOid(value, element);
  }

  /// Factory constructor to create [FhirOid] from YAML.
  factory FhirOid.fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirOid.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirOid.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw const FormatException('Invalid YAML format for FhirOid');
  }

  /// Attempts to parse the input as a [FhirOid], returns `null` if it fails.
  static FhirOid? tryParse(dynamic input) {
    try {
      return input is String ? FhirOid(input) : null;
    } catch (_) {
      return null;
    }
  }

  /// Validates if the input matches the OID pattern.
  static String? _validateOid(String? input) {
    if (input == null) {
      return null;
    }
    final pattern = RegExp(r'^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$');
    if (pattern.hasMatch(input)) {
      return input;
    }
    throw FormatException('Invalid FhirOid: $input');
  }

  /// Returns the FHIR type as 'oid'.
  @override
  String get fhirType => 'oid';

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': value,
        '_value': element?.toJson(),
      };

  /// Provides a string representation of the OID.
  @override
  String toString() => value ?? '';

  /// Overrides the equality operator.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirOid && other.value == value) ||
      (other is String && other == value);

  /// Overrides the `hashCode` for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Clones the current [FhirOid] instance.
  @override
  FhirOid clone() => FhirOid(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element] and returns a new instance.
  @override
  FhirOid setElement(String name, dynamic elementValue) {
    return FhirOid(value, element?.setProperty(name, elementValue));
  }

  /// Creates a modified copy with updated properties.
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

  /// Converts a list of JSON values to a list of [FhirOid] instances.
  static List<FhirOid> fromJsonList(
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
      return FhirOid(value, element);
    });
  }

  /// Converts a list of [FhirOid] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirOid> oids) {
    return {
      'value': oids.map((oid) => oid.value).toList(),
      '_value': oids.map((oid) => oid.element?.toJson()).toList(),
    };
  }
}
