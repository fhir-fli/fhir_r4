import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MedicationAdministration] Describes the event of a patient consuming
/// or otherwise being administered a medication.  This may be as simple as
/// swallowing a tablet or it may be a long running infusion.  Related
/// resources tie this event to the authorizing prescription, and the specific
/// encounter between patient and health care practitioner.

@freezed
class MedicationAdministration with _$MedicationAdministration {
  const MedicationAdministration._();

  const factory MedicationAdministration({
/// [resourceType] This is a MedicationAdministration resource

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

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] Identifiers associated with this Medication Administration
/// that are defined by business processes and/or used to refer to it when a
/// direct URL reference to the resource itself is not appropriate. They are
/// business identifiers assigned to this resource by the performer or other
/// systems and remain constant as the resource is updated and propagates from
/// server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [basedOn] A plan that is fulfilled in whole or in part by this
/// MedicationAdministration.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [partOf] A larger event of which this particular event is a component
/// or step.

    @JsonKey(name: 'partOf') List<List<Reference>>? partOf,
/// [status] Will generally be set to show that the administration has been
/// completed.  For some long running administrations such as infusions, it is
/// possible for an administration to be started but not completed or it may be
/// paused while some other process is under way.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [statusReason] A code indicating why the administration was not
/// performed.

    @JsonKey(name: 'statusReason') List<List<CodeableConcept>>? statusReason,
/// [category] The type of medication administration (for example, drug
/// classification like ATC, where meds would be administered, legal category
/// of the medication).

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [medication] Identifies the medication that was administered. This is
/// either a link to a resource representing the details of the medication or a
/// simple attribute carrying a code that identifies the medication from a
/// known list of medications.

    @JsonKey(name: 'medication') CodeableReference? medication,
/// [subject] The person or animal or group receiving the medication.

    @JsonKey(name: 'subject') Reference? subject,
/// [encounter] The visit, admission, or other contact between patient and
/// health care provider during which the medication administration was
/// performed.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [supportingInformation] Additional information (for example, patient
/// height and weight) that supports the administration of the medication.
/// This attribute can be used to provide documentation of specific
/// characteristics of the patient present at the time of administration.  For
/// example, if the dose says "give "x" if the heartrate exceeds "y"", then the
/// heart rate can be included using this attribute.

    @JsonKey(name: 'supportingInformation') List<List<Reference>>? supportingInformation,
/// [occurenceDateTime] A specific date/time or interval of time during
/// which the administration took place (or did not take place). For many
/// administrations, such as swallowing a tablet the use of dateTime is more
/// appropriate.

    @JsonKey(name: 'occurenceDateTime') FhirDateTime? occurenceDateTime,
/// [_occurenceDateTime] Extensions for occurenceDateTime

    @JsonKey(name: '_occurenceDateTime') PrimitiveElement? occurenceDateTimeElement,
/// [occurencePeriod] A specific date/time or interval of time during which
/// the administration took place (or did not take place). For many
/// administrations, such as swallowing a tablet the use of dateTime is more
/// appropriate.

    @JsonKey(name: 'occurencePeriod') Period? occurencePeriod,
/// [occurenceTiming] A specific date/time or interval of time during which
/// the administration took place (or did not take place). For many
/// administrations, such as swallowing a tablet the use of dateTime is more
/// appropriate.

    @JsonKey(name: 'occurenceTiming') Timing? occurenceTiming,
/// [recorded] The date the occurrence of the  MedicationAdministration was
/// first captured in the record - potentially significantly after the
/// occurrence of the event.

    @JsonKey(name: 'recorded') FhirDateTime? recorded,
/// [_recorded] Extensions for recorded

    @JsonKey(name: '_recorded') PrimitiveElement? recordedElement,
/// [isSubPotent] An indication that the full dose was not administered.

    @JsonKey(name: 'isSubPotent') FhirBoolean? isSubPotent,
/// [_isSubPotent] Extensions for isSubPotent

    @JsonKey(name: '_isSubPotent') PrimitiveElement? isSubPotentElement,
/// [subPotentReason] The reason or reasons why the full dose was not
/// administered.

    @JsonKey(name: 'subPotentReason') List<List<CodeableConcept>>? subPotentReason,
/// [performer] The performer of the medication treatment.  For devices
/// this is the device that performed the administration of the medication.  An
/// IV Pump would be an example of a device that is performing the
/// administration. Both the IV Pump and the practitioner that set the rate or
/// bolus on the pump can be listed as performers.

    @JsonKey(name: 'performer') List<List<MedicationAdministration_Performer>>? performer,
/// [reason] A code, Condition or observation that supports why the
/// medication was administered.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [request] The original request, instruction or authority to perform the
/// administration.

    @JsonKey(name: 'request') Reference? request,
/// [device] The device that is to be used for the administration of the
/// medication (for example, PCA Pump).

    @JsonKey(name: 'device') List<List<CodeableReference>>? device,
/// [note] Extra information about the medication administration that is
/// not conveyed by the other attributes.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [dosage] Describes the medication dosage information details e.g. dose,
/// rate, site, route, etc.

    @JsonKey(name: 'dosage') MedicationAdministration_Dosage? dosage,
/// [eventHistory] A summary of the events of interest that have occurred,
/// such as when the administration was verified.

    @JsonKey(name: 'eventHistory') List<List<Reference>>? eventHistory,
  }) = _$MedicationAdministration;

  @override
  String get fhirType => 'MedicationAdministration';

  factory MedicationAdministration.fromJson(Map<String, dynamic> json) =>
      _$MedicationAdministrationFromJson(json);

  factory MedicationAdministration.fromYaml(dynamic yaml) => yaml is String
      ? MedicationAdministration.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationAdministration.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationAdministration cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicationAdministration.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationAdministrationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
