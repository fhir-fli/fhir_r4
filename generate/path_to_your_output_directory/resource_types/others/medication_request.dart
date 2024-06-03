import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MedicationRequest] An order or request for both supply of the
/// medication and the instructions for administration of the medication to a
/// patient. The resource is called "MedicationRequest" rather than
/// "MedicationPrescription" or "MedicationOrder" to generalize the use across
/// inpatient and outpatient settings, including care plans, etc., and to
/// harmonize with workflow patterns.

@freezed
class MedicationRequest with _$MedicationRequest {
  const MedicationRequest._();

  const factory MedicationRequest({
/// [resourceType] This is a MedicationRequest resource

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
/// [identifier] Identifiers associated with this medication request that
/// are defined by business processes and/or used to refer to it when a direct
/// URL reference to the resource itself is not appropriate. They are business
/// identifiers assigned to this resource by the performer or other systems and
/// remain constant as the resource is updated and propagates from server to
/// server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [basedOn] A plan or request that is fulfilled in whole or in part by
/// this medication request.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [priorPrescription] Reference to an order/prescription that is being
/// replaced by this MedicationRequest.

    @JsonKey(name: 'priorPrescription') Reference? priorPrescription,
/// [groupIdentifier] A shared identifier common to multiple independent
/// Request instances that were activated/authorized more or less
/// simultaneously by a single author.  The presence of the same identifier on
/// each request ties those requests together and may have business
/// ramifications in terms of reporting of results, billing, etc.  E.g. a
/// requisition number shared by a set of lab tests ordered together, or a
/// prescription number shared by all meds ordered at one time.

    @JsonKey(name: 'groupIdentifier') Identifier? groupIdentifier,
/// [status] A code specifying the current state of the order.  Generally,
/// this will be active or completed state.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [statusReason] Captures the reason for the current state of the
/// MedicationRequest.

    @JsonKey(name: 'statusReason') CodeableConcept? statusReason,
/// [statusChanged] The date (and perhaps time) when the status was
/// changed.

    @JsonKey(name: 'statusChanged') FhirDateTime? statusChanged,
/// [_statusChanged] Extensions for statusChanged

    @JsonKey(name: '_statusChanged') PrimitiveElement? statusChangedElement,
/// [intent] Whether the request is a proposal, plan, or an original order.

    @JsonKey(name: 'intent') FhirCode? intent,
/// [_intent] Extensions for intent

    @JsonKey(name: '_intent') PrimitiveElement? intentElement,
/// [category] An arbitrary categorization or grouping of the medication
/// request.  It could be used for indicating where meds are intended to be
/// administered, eg. in an inpatient setting or in a patient's home, or a
/// legal category of the medication.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [priority] Indicates how quickly the Medication Request should be
/// addressed with respect to other requests.

    @JsonKey(name: 'priority') FhirCode? priority,
/// [_priority] Extensions for priority

    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,
/// [doNotPerform] If true, indicates that the provider is asking for the
/// patient to either stop taking or to not start taking the specified
/// medication. For example, the patient is taking an existing medication and
/// the provider is changing their medication. They want to create two seperate
/// requests: one to stop using the current medication and another to start the
/// new medication.

    @JsonKey(name: 'doNotPerform') FhirBoolean? doNotPerform,
/// [_doNotPerform] Extensions for doNotPerform

    @JsonKey(name: '_doNotPerform') PrimitiveElement? doNotPerformElement,
/// [medication] Identifies the medication being requested. This is a link
/// to a resource that represents the medication which may be the details of
/// the medication or simply an attribute carrying a code that identifies the
/// medication from a known list of medications.

    @JsonKey(name: 'medication') CodeableReference? medication,
/// [subject] The individual or group for whom the medication has been
/// requested.

    @JsonKey(name: 'subject') Reference? subject,
/// [informationSource] The person or organization who provided the
/// information about this request, if the source is someone other than the
/// requestor.  This is often used when the MedicationRequest is reported by
/// another person.

    @JsonKey(name: 'informationSource') List<List<Reference>>? informationSource,
/// [encounter] The Encounter during which this [x] was created or to which
/// the creation of this record is tightly associated.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [supportingInformation] Information to support fulfilling (i.e.
/// dispensing or administering) of the medication, for example, patient height
/// and weight, a MedicationStatement for the patient).

    @JsonKey(name: 'supportingInformation') List<List<Reference>>? supportingInformation,
/// [authoredOn] The date (and perhaps time) when the prescription was
/// initially written or authored on.

    @JsonKey(name: 'authoredOn') FhirDateTime? authoredOn,
/// [_authoredOn] Extensions for authoredOn

    @JsonKey(name: '_authoredOn') PrimitiveElement? authoredOnElement,
/// [requester] The individual, organization, or device that initiated the
/// request and has responsibility for its activation.

    @JsonKey(name: 'requester') Reference? requester,
/// [reported] Indicates if this record was captured as a secondary
/// 'reported' record rather than as an original primary source-of-truth
/// record.  It may also indicate the source of the report.

    @JsonKey(name: 'reported') FhirBoolean? reported,
/// [_reported] Extensions for reported

    @JsonKey(name: '_reported') PrimitiveElement? reportedElement,
/// [performerType] Indicates the type of performer of the administration
/// of the medication.

    @JsonKey(name: 'performerType') CodeableConcept? performerType,
/// [performer] The specified desired performer of the medication treatment
/// (e.g. the performer of the medication administration).  For devices, this
/// is the device that is intended to perform the administration of the
/// medication.  An IV Pump would be an example of a device that is performing
/// the administration.  Both the IV Pump and the practitioner that set the
/// rate or bolus on the pump can be listed as performers.

    @JsonKey(name: 'performer') List<List<Reference>>? performer,
/// [device] The intended type of device that is to be used for the
/// administration of the medication (for example, PCA Pump).

    @JsonKey(name: 'device') List<List<CodeableReference>>? device,
/// [recorder] The person who entered the order on behalf of another
/// individual for example in the case of a verbal or a telephone order.

    @JsonKey(name: 'recorder') Reference? recorder,
/// [reason] The reason or the indication for ordering or not ordering the
/// medication.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [courseOfTherapyType] The description of the overall pattern of the
/// administration of the medication to the patient.

    @JsonKey(name: 'courseOfTherapyType') CodeableConcept? courseOfTherapyType,
/// [insurance] Insurance plans, coverage extensions, pre-authorizations
/// and/or pre-determinations that may be required for delivering the requested
/// service.

    @JsonKey(name: 'insurance') List<List<Reference>>? insurance,
/// [note] Extra information about the prescription that could not be
/// conveyed by the other attributes.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [renderedDosageInstruction] The full representation of the dose of the
/// medication included in all dosage instructions.  To be used when multiple
/// dosage instructions are included to represent complex dosing such as
/// increasing or tapering doses.

    @JsonKey(name: 'renderedDosageInstruction') FhirMarkdown? renderedDosageInstruction,
/// [_renderedDosageInstruction] Extensions for renderedDosageInstruction

    @JsonKey(name: '_renderedDosageInstruction') PrimitiveElement? renderedDosageInstructionElement,
/// [effectiveDosePeriod] The period over which the medication is to be
/// taken.  Where there are multiple dosageInstruction lines (for example,
/// tapering doses), this is the earliest date and the latest end date of the
/// dosageInstructions.

    @JsonKey(name: 'effectiveDosePeriod') Period? effectiveDosePeriod,
/// [dosageInstruction] Specific instructions for how the medication is to
/// be used by the patient.

    @JsonKey(name: 'dosageInstruction') List<List<Dosage>>? dosageInstruction,
/// [dispenseRequest] Indicates the specific details for the dispense or
/// medication supply part of a medication request (also known as a Medication
/// Prescription or Medication Order).  Note that this information is not
/// always sent with the order.  There may be in some settings (e.g. hospitals)
/// institutional or system support for completing the dispense details in the
/// pharmacy department.

    @JsonKey(name: 'dispenseRequest') MedicationRequest_DispenseRequest? dispenseRequest,
/// [substitution] Indicates whether or not substitution can or should be
/// part of the dispense. In some cases, substitution must happen, in other
/// cases substitution must not happen. This block explains the prescriber's
/// intent. If nothing is specified substitution may be done.

    @JsonKey(name: 'substitution') MedicationRequest_Substitution? substitution,
/// [eventHistory] Links to Provenance records for past versions of this
/// resource or fulfilling request or event resources that identify key state
/// transitions or updates that are likely to be relevant to a user looking at
/// the current version of the resource.

    @JsonKey(name: 'eventHistory') List<List<Reference>>? eventHistory,
  }) = _$MedicationRequest;

  @override
  String get fhirType => 'MedicationRequest';

  factory MedicationRequest.fromJson(Map<String, dynamic> json) =>
      _$MedicationRequestFromJson(json);

  factory MedicationRequest.fromYaml(dynamic yaml) => yaml is String
      ? MedicationRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationRequest.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationRequest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicationRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationRequestFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
