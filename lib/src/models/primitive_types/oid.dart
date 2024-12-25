import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [String] to [FhirOid].
extension FhirOidExtension on String {
  /// Converts a [String] to a [FhirOid].
  FhirOid get toFhirOid => FhirOid(this);
}

/// [FhirOid] represents a validated OID value in the FHIR standard.
class FhirOid extends PrimitiveType<String>
    implements
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Constructs a [FhirOid] from a String input with validation.
  FhirOid(
    String? input, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Oid',
  }) : super(_validateOid(input)) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
  }

  /// Factory constructor to create [FhirOid] from JSON.
  factory FhirOid.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String?;
    return FhirOid(value, element: element, objectPath: objectPath);
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

  /// Serializes the instance to JSON with standardized keys.
  @override
  Map<String, dynamic> toJson() => {
        if (value != null) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts the instance to a JSON string.
  @override
  String toJsonString() => jsonEncode(toJson());

  /// Provides a string representation of the OID.
  @override
  String toString() => value.toString();

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value?.toString();

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
  FhirOid clone() => FhirOid(value, element: element?.clone() as Element?);

  /// Creates a modified copy with updated properties.
  @override
  FhirOid copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    return FhirOid(
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

  /// Returns a new [FhirOid] with extensions disallowed.
  FhirOid noExtensions() => copyWith(disallowExtensions: true);

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
      final value = values[i] as String?;
      final element = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirOid(value, element: element);
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
