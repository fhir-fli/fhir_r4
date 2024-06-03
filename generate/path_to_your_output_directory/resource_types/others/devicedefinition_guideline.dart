import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DeviceDefinition_Guideline] The characteristics, operational status
/// and capabilities of a medical-related component of a medical device.

@freezed
class DeviceDefinition_Guideline with _$DeviceDefinition_Guideline {
  const DeviceDefinition_Guideline._();

  const factory DeviceDefinition_Guideline({
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

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [useContext] The circumstances that form the setting for using the
/// device.

    @JsonKey(name: 'useContext') List<List<UsageContext>>? useContext,
/// [usageInstruction] Detailed written and visual directions for the user
/// on how to use the device.

    @JsonKey(name: 'usageInstruction') FhirMarkdown? usageInstruction,
/// [_usageInstruction] Extensions for usageInstruction

    @JsonKey(name: '_usageInstruction') PrimitiveElement? usageInstructionElement,
/// [relatedArtifact] A source of information or reference for this
/// guideline.

    @JsonKey(name: 'relatedArtifact') List<List<RelatedArtifact>>? relatedArtifact,
/// [indication] A clinical condition for which the device was designed to
/// be used.

    @JsonKey(name: 'indication') List<List<CodeableConcept>>? indication,
/// [contraindication] A specific situation when a device should not be
/// used because it may cause harm.

    @JsonKey(name: 'contraindication') List<List<CodeableConcept>>? contraindication,
/// [warning] Specific hazard alert information that a user needs to know
/// before using the device.

    @JsonKey(name: 'warning') List<List<CodeableConcept>>? warning,
/// [intendedUse] A description of the general purpose or medical use of
/// the device or its function.

    @JsonKey(name: 'intendedUse') String? intendedUse,
/// [_intendedUse] Extensions for intendedUse

    @JsonKey(name: '_intendedUse') PrimitiveElement? intendedUseElement,
  }) = _$DeviceDefinition_Guideline;

  @override
  String get fhirType => 'DeviceDefinition_Guideline';

  factory DeviceDefinition_Guideline.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinition_GuidelineFromJson(json);

  factory DeviceDefinition_Guideline.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinition_Guideline.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceDefinition_Guideline.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceDefinition_Guideline cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceDefinition_Guideline.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceDefinition_GuidelineFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
