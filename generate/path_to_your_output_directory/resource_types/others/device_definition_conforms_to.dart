import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DeviceDefinition_ConformsTo] The characteristics, operational status
/// and capabilities of a medical-related component of a medical device.

@freezed
class DeviceDefinition_ConformsTo with _$DeviceDefinition_ConformsTo {
  const DeviceDefinition_ConformsTo._();

  const factory DeviceDefinition_ConformsTo({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [category] Describes the type of the standard, specification, or formal
/// guidance.

    @JsonKey(name: 'category') CodeableConcept? category,
/// [specification] Code that identifies the specific standard,
/// specification, protocol, formal guidance, regulation, legislation, or
/// certification scheme to which the device adheres.

    @JsonKey(name: 'specification') CodeableConcept? specification,
/// [version] Identifies the specific form or variant of the standard,
/// specification, or formal guidance. This may be a 'version number', release,
/// document edition, publication year, or other label.

    @JsonKey(name: 'version') List<List<String>>? version,
/// [_version] Extensions for version

    @JsonKey(name: '_version') List<PrimitiveElement>? versionElement,
/// [source] Standard, regulation, certification, or guidance website,
/// document, or other publication, or similar, supporting the conformance.

    @JsonKey(name: 'source') List<List<RelatedArtifact>>? source,
  }) = _$DeviceDefinition_ConformsTo;

  @override
  String get fhirType => 'DeviceDefinition_ConformsTo';

  factory DeviceDefinition_ConformsTo.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinition_ConformsToFromJson(json);

  factory DeviceDefinition_ConformsTo.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinition_ConformsTo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceDefinition_ConformsTo.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceDefinition_ConformsTo cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceDefinition_ConformsTo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceDefinition_ConformsToFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
