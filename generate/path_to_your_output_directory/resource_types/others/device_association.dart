import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DeviceAssociation] A record of association or dissociation of a device
/// with a patient.

@freezed
class DeviceAssociation with _$DeviceAssociation {
  const DeviceAssociation._();

  const factory DeviceAssociation({
/// [resourceType] This is a DeviceAssociation resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] Instance identifier.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [device] Reference to the devices associated with the patient or group.

    @JsonKey(name: 'device') Reference? device,
/// [category] Describes the relationship between the device and subject.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [status] Indicates the state of the Device association.

    @JsonKey(name: 'status') CodeableConcept? status,
/// [statusReason] The reasons given for the current association status.

    @JsonKey(name: 'statusReason') List<List<CodeableConcept>>? statusReason,
/// [subject] The individual, group of individuals or device that the
/// device is on or associated with.

    @JsonKey(name: 'subject') Reference? subject,
/// [bodyStructure] Current anatomical location of the device in/on
/// subject.

    @JsonKey(name: 'bodyStructure') Reference? bodyStructure,
/// [period] Begin and end dates and times for the device association.

    @JsonKey(name: 'period') Period? period,
/// [operation] The details about the device when it is in use to describe
/// its operation.

    @JsonKey(name: 'operation') List<List<DeviceAssociation_Operation>>? operation,
  }) = _$DeviceAssociation;

  @override
  String get fhirType => 'DeviceAssociation';

  factory DeviceAssociation.fromJson(Map<String, dynamic> json) =>
      _$DeviceAssociationFromJson(json);

  factory DeviceAssociation.fromYaml(dynamic yaml) => yaml is String
      ? DeviceAssociation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceAssociation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceAssociation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceAssociation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceAssociationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
