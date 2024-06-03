import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DeviceUsage] A record of a device being used by a patient where the
/// record is the result of a report from the patient or a clinician.

@freezed
class DeviceUsage with _$DeviceUsage {
  const DeviceUsage._();

  const factory DeviceUsage({
/// [resourceType] This is a DeviceUsage resource

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
/// [identifier] An external identifier for this statement such as an IRI.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [basedOn] A plan, proposal or order that is fulfilled in whole or in
/// part by this DeviceUsage.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [status] A code representing the patient or other source's judgment
/// about the state of the device used that this statement is about.  Generally
/// this will be active or completed.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [category] This attribute indicates a category for the statement - The
/// device statement may be made in an inpatient or outpatient settting
/// (inpatient | outpatient | community | patientspecified).

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [patient] The patient who used the device.

    @JsonKey(name: 'patient') Reference? patient,
/// [derivedFrom] Allows linking the DeviceUsage to the underlying Request,
/// or to other information that supports or is used to derive the DeviceUsage.

    @JsonKey(name: 'derivedFrom') List<List<Reference>>? derivedFrom,
/// [context] The encounter or episode of care that establishes the context
/// for this device use statement.

    @JsonKey(name: 'context') Reference? context,
/// [timingTiming] How often the device was used.

    @JsonKey(name: 'timingTiming') Timing? timingTiming,
/// [timingPeriod] How often the device was used.

    @JsonKey(name: 'timingPeriod') Period? timingPeriod,
/// [timingDateTime] How often the device was used.

    @JsonKey(name: 'timingDateTime') FhirDateTime? timingDateTime,
/// [_timingDateTime] Extensions for timingDateTime

    @JsonKey(name: '_timingDateTime') PrimitiveElement? timingDateTimeElement,
/// [dateAsserted] The time at which the statement was recorded by
/// informationSource.

    @JsonKey(name: 'dateAsserted') FhirDateTime? dateAsserted,
/// [_dateAsserted] Extensions for dateAsserted

    @JsonKey(name: '_dateAsserted') PrimitiveElement? dateAssertedElement,
/// [usageStatus] The status of the device usage, for example always,
/// sometimes, never. This is not the same as the status of the statement.

    @JsonKey(name: 'usageStatus') CodeableConcept? usageStatus,
/// [usageReason] The reason for asserting the usage status - for example
/// forgot, lost, stolen, broken.

    @JsonKey(name: 'usageReason') List<List<CodeableConcept>>? usageReason,
/// [adherence] This indicates how or if the device is being used.

    @JsonKey(name: 'adherence') DeviceUsage_Adherence? adherence,
/// [informationSource] Who reported the device was being used by the
/// patient.

    @JsonKey(name: 'informationSource') Reference? informationSource,
/// [device] Code or Reference to device used.

    @JsonKey(name: 'device') CodeableReference? device,
/// [reason] Reason or justification for the use of the device. A coded
/// concept, or another resource whose existence justifies this DeviceUsage.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [bodySite] Indicates the anotomic location on the subject's body where
/// the device was used ( i.e. the target).

    @JsonKey(name: 'bodySite') CodeableReference? bodySite,
/// [note] Details about the device statement that were not represented at
/// all or sufficiently in one of the attributes provided in a class. These may
/// include for example a comment, an instruction, or a note associated with
/// the statement.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$DeviceUsage;

  @override
  String get fhirType => 'DeviceUsage';

  factory DeviceUsage.fromJson(Map<String, dynamic> json) =>
      _$DeviceUsageFromJson(json);

  factory DeviceUsage.fromYaml(dynamic yaml) => yaml is String
      ? DeviceUsage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceUsage.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceUsage cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceUsage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceUsageFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
