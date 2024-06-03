import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MedicationDispense] Indicates that a medication product is to be or
/// has been dispensed for a named person/patient.  This includes a description
/// of the medication product (supply) provided and the instructions for
/// administering the medication.  The medication dispense is the result of a
/// pharmacy system responding to a medication order.

@freezed
class MedicationDispense with _$MedicationDispense {
  const MedicationDispense._();

  const factory MedicationDispense({
/// [resourceType] This is a MedicationDispense resource

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
/// [identifier] Identifiers associated with this Medication Dispense that
/// are defined by business processes and/or used to refer to it when a direct
/// URL reference to the resource itself is not appropriate. They are business
/// identifiers assigned to this resource by the performer or other systems and
/// remain constant as the resource is updated and propagates from server to
/// server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [basedOn] A plan that is fulfilled in whole or in part by this
/// MedicationDispense.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [partOf] The procedure or medication administration that triggered the
/// dispense.

    @JsonKey(name: 'partOf') List<List<Reference>>? partOf,
/// [status] A code specifying the state of the set of dispense events.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [notPerformedReason] Indicates the reason why a dispense was not
/// performed.

    @JsonKey(name: 'notPerformedReason') CodeableReference? notPerformedReason,
/// [statusChanged] The date (and maybe time) when the status of the
/// dispense record changed.

    @JsonKey(name: 'statusChanged') FhirDateTime? statusChanged,
/// [_statusChanged] Extensions for statusChanged

    @JsonKey(name: '_statusChanged') PrimitiveElement? statusChangedElement,
/// [category] Indicates the type of medication dispense (for example, drug
/// classification like ATC, where meds would be administered, legal category
/// of the medication.).

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [medication] Identifies the medication supplied. This is either a link
/// to a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known list
/// of medications.

    @JsonKey(name: 'medication') CodeableReference? medication,
/// [subject] A link to a resource representing the person or the group to
/// whom the medication will be given.

    @JsonKey(name: 'subject') Reference? subject,
/// [encounter] The encounter that establishes the context for this event.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [supportingInformation] Additional information that supports the
/// medication being dispensed.  For example, there may be requirements that a
/// specific lab test has been completed prior to dispensing or the patient's
/// weight at the time of dispensing is documented.

    @JsonKey(name: 'supportingInformation') List<List<Reference>>? supportingInformation,
/// [performer] Indicates who or what performed the event.

    @JsonKey(name: 'performer') List<List<MedicationDispense_Performer>>? performer,
/// [location] The principal physical location where the dispense was
/// performed.

    @JsonKey(name: 'location') Reference? location,
/// [authorizingPrescription] Indicates the medication order that is being
/// dispensed against.

    @JsonKey(name: 'authorizingPrescription') List<List<Reference>>? authorizingPrescription,
/// [type] Indicates the type of dispensing event that is performed. For
/// example, Trial Fill, Completion of Trial, Partial Fill, Emergency Fill,
/// Samples, etc.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [quantity] The amount of medication that has been dispensed. Includes
/// unit of measure.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// [daysSupply] The amount of medication expressed as a timing amount.

    @JsonKey(name: 'daysSupply') Quantity? daysSupply,
/// [recorded] The date (and maybe time) when the dispense activity started
/// if whenPrepared or whenHandedOver is not populated.

    @JsonKey(name: 'recorded') FhirDateTime? recorded,
/// [_recorded] Extensions for recorded

    @JsonKey(name: '_recorded') PrimitiveElement? recordedElement,
/// [whenPrepared] The time when the dispensed product was packaged and
/// reviewed.

    @JsonKey(name: 'whenPrepared') FhirDateTime? whenPrepared,
/// [_whenPrepared] Extensions for whenPrepared

    @JsonKey(name: '_whenPrepared') PrimitiveElement? whenPreparedElement,
/// [whenHandedOver] The time the dispensed product was provided to the
/// patient or their representative.

    @JsonKey(name: 'whenHandedOver') FhirDateTime? whenHandedOver,
/// [_whenHandedOver] Extensions for whenHandedOver

    @JsonKey(name: '_whenHandedOver') PrimitiveElement? whenHandedOverElement,
/// [destination] Identification of the facility/location where the
/// medication was/will be shipped to, as part of the dispense event.

    @JsonKey(name: 'destination') Reference? destination,
/// [receiver] Identifies the person who picked up the medication or the
/// location of where the medication was delivered.  This will usually be a
/// patient or their caregiver, but some cases exist where it can be a
/// healthcare professional or a location.

    @JsonKey(name: 'receiver') List<List<Reference>>? receiver,
/// [note] Extra information about the dispense that could not be conveyed
/// in the other attributes.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [renderedDosageInstruction] The full representation of the dose of the
/// medication included in all dosage instructions.  To be used when multiple
/// dosage instructions are included to represent complex dosing such as
/// increasing or tapering doses.

    @JsonKey(name: 'renderedDosageInstruction') FhirMarkdown? renderedDosageInstruction,
/// [_renderedDosageInstruction] Extensions for renderedDosageInstruction

    @JsonKey(name: '_renderedDosageInstruction') PrimitiveElement? renderedDosageInstructionElement,
/// [dosageInstruction] Indicates how the medication is to be used by the
/// patient.

    @JsonKey(name: 'dosageInstruction') List<List<Dosage>>? dosageInstruction,
/// [substitution] Indicates whether or not substitution was made as part
/// of the dispense.  In some cases, substitution will be expected but does not
/// happen, in other cases substitution is not expected but does happen.  This
/// block explains what substitution did or did not happen and why.  If nothing
/// is specified, substitution was not done.

    @JsonKey(name: 'substitution') MedicationDispense_Substitution? substitution,
/// [eventHistory] A summary of the events of interest that have occurred,
/// such as when the dispense was verified.

    @JsonKey(name: 'eventHistory') List<List<Reference>>? eventHistory,
  }) = _$MedicationDispense;

  @override
  String get fhirType => 'MedicationDispense';

  factory MedicationDispense.fromJson(Map<String, dynamic> json) =>
      _$MedicationDispenseFromJson(json);

  factory MedicationDispense.fromYaml(dynamic yaml) => yaml is String
      ? MedicationDispense.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationDispense.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationDispense cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicationDispense.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationDispenseFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
