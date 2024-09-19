// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'reference.freezed.dart';
part 'reference.g.dart';

/// [Reference] A reference from one resource to another.
@freezed
class Reference extends DataType with _$Reference {
  /// [Reference] A reference from one resource to another.
  Reference._();

  /// [Reference] A reference from one resource to another.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [reference] A reference to a location at which the other resource is
  /// found. The reference may be a relative reference, in which case it is
  /// relative to the service base URL, or an absolute URL that resolves to the
  /// location where the resource is found. The reference may be version
  /// specific or not. If the reference is not to a FHIR RESTful server, then it
  /// should be assumed to be version specific. Internal fragment references
  ///  (start with '#') refer to contained resources.
  ///
  /// [referenceElement] Extensions for reference
  ///
  /// [type] The expected type of the target of the reference. If both
  /// Reference.type and Reference.reference are populated and
  ///  Reference.reference is a FHIR URL, both SHALL be consistent.
  /// The type is the Canonical URL of Resource Definition that is the type this
  /// reference refers to. References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition/ e.g. "Patient" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/Patient. Absolute URLs are only
  /// allowed for logical models (and can only be used in references in logical
  ///  models, not resources).
  ///
  /// [typeElement] Extensions for type
  ///
  /// [identifier] An identifier for the target resource. This is used when
  /// there is no way to reference the other resource directly, either because
  /// the entity it represents is not available through a FHIR server, or
  /// because there is no way for the author of the resource to convert a known
  /// identifier to an actual location. There is no requirement that a
  /// Reference.identifier point to something that is actually exposed as a FHIR
  /// instance, but it SHALL point to a business concept that would be expected
  /// to be exposed as a FHIR instance, and that instance would need to be of a
  ///  FHIR resource type allowed by the reference.
  ///
  /// [display] Plain text narrative that identifies the resource in addition
  ///  to the resource reference.
  ///
  /// [displayElement] Extensions for display
  factory Reference({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [reference] A reference to a location at which the other resource is
    /// found. The reference may be a relative reference, in which case it is
    /// relative to the service base URL, or an absolute URL that resolves to the
    /// location where the resource is found. The reference may be version
    /// specific or not. If the reference is not to a FHIR RESTful server, then it
    /// should be assumed to be version specific. Internal fragment references
    ///  (start with '#') refer to contained resources.
    String? reference,

    /// [referenceElement] Extensions for reference
    @JsonKey(name: '_reference') PrimitiveElement? referenceElement,

    /// [type] The expected type of the target of the reference. If both
    /// Reference.type and Reference.reference are populated and
    ///  Reference.reference is a FHIR URL, both SHALL be consistent.
    /// The type is the Canonical URL of Resource Definition that is the type this
    /// reference refers to. References are URLs that are relative to
    /// http://hl7.org/fhir/StructureDefinition/ e.g. "Patient" is a reference to
    /// http://hl7.org/fhir/StructureDefinition/Patient. Absolute URLs are only
    /// allowed for logical models (and can only be used in references in logical
    ///  models, not resources).
    FhirUri? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [identifier] An identifier for the target resource. This is used when
    /// there is no way to reference the other resource directly, either because
    /// the entity it represents is not available through a FHIR server, or
    /// because there is no way for the author of the resource to convert a known
    /// identifier to an actual location. There is no requirement that a
    /// Reference.identifier point to something that is actually exposed as a FHIR
    /// instance, but it SHALL point to a business concept that would be expected
    /// to be exposed as a FHIR instance, and that instance would need to be of a
    ///  FHIR resource type allowed by the reference.
    Identifier? identifier,

    /// [display] Plain text narrative that identifies the resource in addition
    ///  to the resource reference.
    String? display,

    /// [displayElement] Extensions for display
    @JsonKey(name: '_display') PrimitiveElement? displayElement,
  }) = _Reference;

  @override
  String get fhirType => 'Reference';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Reference.fromYaml(dynamic yaml) => yaml is String
      ? Reference.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Reference.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Reference cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Reference.fromJson(Map<String, dynamic> json) =>
      _$ReferenceFromJson(json);

  /// Acts like a constructor, returns a [Reference], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Reference.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ReferenceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
