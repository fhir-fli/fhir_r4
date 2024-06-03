import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Procedure] An action that is or was performed on or for a patient,
/// practitioner, device, organization, or location. For example, this can be a
/// physical intervention on a patient like an operation, or less invasive like
/// long term services, counseling, or hypnotherapy.  This can be a quality or
/// safety inspection for a location, organization, or device.  This can be an
/// accreditation procedure on a practitioner for licensing.

@freezed
class Procedure with _$Procedure {
  const Procedure._();

  const factory Procedure({
/// [resourceType] This is a Procedure resource

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
/// [identifier] Business identifiers assigned to this procedure by the
/// performer or other systems which remain constant as the resource is updated
/// and is propagated from server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
/// guideline, order set or other definition that is adhered to in whole or in
/// part by this Procedure.

    @JsonKey(name: 'instantiatesCanonical') List<List<FhirCanonical>>? instantiatesCanonical,
/// [instantiatesUri] The URL pointing to an externally maintained
/// protocol, guideline, order set or other definition that is adhered to in
/// whole or in part by this Procedure.

    @JsonKey(name: 'instantiatesUri') List<List<FhirUri>>? instantiatesUri,
/// [_instantiatesUri] Extensions for instantiatesUri

    @JsonKey(name: '_instantiatesUri') List<PrimitiveElement>? instantiatesUriElement,
/// [basedOn] A reference to a resource that contains details of the
/// request for this procedure.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [partOf] A larger event of which this particular procedure is a
/// component or step.

    @JsonKey(name: 'partOf') List<List<Reference>>? partOf,
/// [status] A code specifying the state of the procedure. Generally, this
/// will be the in-progress or completed state.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [statusReason] Captures the reason for the current state of the
/// procedure.

    @JsonKey(name: 'statusReason') CodeableConcept? statusReason,
/// [category] A code that classifies the procedure for searching, sorting
/// and display purposes (e.g. "Surgical Procedure").

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [code] The specific procedure that is performed. Use text if the exact
/// nature of the procedure cannot be coded (e.g. "Laparoscopic Appendectomy").

    @JsonKey(name: 'code') CodeableConcept? code,
/// [subject] On whom or on what the procedure was performed. This is
/// usually an individual human, but can also be performed on animals, groups
/// of humans or animals, organizations or practitioners (for licensing),
/// locations or devices (for safety inspections or regulatory authorizations).
///  If the actual focus of the procedure is different from the subject, the
/// focus element specifies the actual focus of the procedure.

    @JsonKey(name: 'subject') Reference? subject,
/// [focus] Who is the target of the procedure when it is not the subject
/// of record only.  If focus is not present, then subject is the focus.  If
/// focus is present and the subject is one of the targets of the procedure,
/// include subject as a focus as well. If focus is present and the subject is
/// not included in focus, it implies that the procedure was only targeted on
/// the focus. For example, when a caregiver is given education for a patient,
/// the caregiver would be the focus and the procedure record is associated
/// with the subject (e.g. patient).  For example, use focus when recording the
/// target of the education, training, or counseling is the parent or relative
/// of a patient.

    @JsonKey(name: 'focus') Reference? focus,
/// [encounter] The Encounter during which this Procedure was created or
/// performed or to which the creation of this record is tightly associated.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [occurrenceDateTime] Estimated or actual date, date-time, period, or
/// age when the procedure did occur or is occurring.  Allows a period to
/// support complex procedures that span more than one date, and also allows
/// for the length of the procedure to be captured.

    @JsonKey(name: 'occurrenceDateTime') FhirDateTime? occurrenceDateTime,
/// [_occurrenceDateTime] Extensions for occurrenceDateTime

    @JsonKey(name: '_occurrenceDateTime') PrimitiveElement? occurrenceDateTimeElement,
/// [occurrencePeriod] Estimated or actual date, date-time, period, or age
/// when the procedure did occur or is occurring.  Allows a period to support
/// complex procedures that span more than one date, and also allows for the
/// length of the procedure to be captured.

    @JsonKey(name: 'occurrencePeriod') Period? occurrencePeriod,
/// [occurrenceString] Estimated or actual date, date-time, period, or age
/// when the procedure did occur or is occurring.  Allows a period to support
/// complex procedures that span more than one date, and also allows for the
/// length of the procedure to be captured.

    @JsonKey(name: 'occurrenceString') String? occurrenceString,
/// [_occurrenceString] Extensions for occurrenceString

    @JsonKey(name: '_occurrenceString') PrimitiveElement? occurrenceStringElement,
/// [occurrenceAge] Estimated or actual date, date-time, period, or age
/// when the procedure did occur or is occurring.  Allows a period to support
/// complex procedures that span more than one date, and also allows for the
/// length of the procedure to be captured.

    @JsonKey(name: 'occurrenceAge') Age? occurrenceAge,
/// [occurrenceRange] Estimated or actual date, date-time, period, or age
/// when the procedure did occur or is occurring.  Allows a period to support
/// complex procedures that span more than one date, and also allows for the
/// length of the procedure to be captured.

    @JsonKey(name: 'occurrenceRange') Range? occurrenceRange,
/// [occurrenceTiming] Estimated or actual date, date-time, period, or age
/// when the procedure did occur or is occurring.  Allows a period to support
/// complex procedures that span more than one date, and also allows for the
/// length of the procedure to be captured.

    @JsonKey(name: 'occurrenceTiming') Timing? occurrenceTiming,
/// [recorded] The date the occurrence of the procedure was first captured
/// in the record regardless of Procedure.status (potentially after the
/// occurrence of the event).

    @JsonKey(name: 'recorded') FhirDateTime? recorded,
/// [_recorded] Extensions for recorded

    @JsonKey(name: '_recorded') PrimitiveElement? recordedElement,
/// [recorder] Individual who recorded the record and takes responsibility
/// for its content.

    @JsonKey(name: 'recorder') Reference? recorder,
/// [reportedBoolean] Indicates if this record was captured as a secondary
/// 'reported' record rather than as an original primary source-of-truth
/// record.  It may also indicate the source of the report.

    @JsonKey(name: 'reportedBoolean') FhirBoolean? reportedBoolean,
/// [_reportedBoolean] Extensions for reportedBoolean

    @JsonKey(name: '_reportedBoolean') PrimitiveElement? reportedBooleanElement,
/// [reportedReference] Indicates if this record was captured as a
/// secondary 'reported' record rather than as an original primary
/// source-of-truth record.  It may also indicate the source of the report.

    @JsonKey(name: 'reportedReference') Reference? reportedReference,
/// [performer] Indicates who or what performed the procedure and how they
/// were involved.

    @JsonKey(name: 'performer') List<List<Procedure_Performer>>? performer,
/// [location] The location where the procedure actually happened.  E.g. a
/// newborn at home, a tracheostomy at a restaurant.

    @JsonKey(name: 'location') Reference? location,
/// [reason] The coded reason or reference why the procedure was performed.
/// This may be a coded entity of some type, be present as text, or be a
/// reference to one of several resources that justify the procedure.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [bodySite] Detailed and structured anatomical location information.
/// Multiple locations are allowed - e.g. multiple punch biopsies of a lesion.

    @JsonKey(name: 'bodySite') List<List<CodeableConcept>>? bodySite,
/// [bodyStructure] Indicates the body structure on the subject's body
/// where the procedure was performed.

    @JsonKey(name: 'bodyStructure') List<List<Reference>>? bodyStructure,
/// [outcome] The short term outcome of the procedure assessed during the
/// procedure, at the conclusion of the procedure, during the immediate
/// post-performance period, or at discharge. The outcome is usually expected
/// to be within the encounter during which the procedure was performed.

    @JsonKey(name: 'outcome') List<List<CodeableReference>>? outcome,
/// [report] This could be a histology result, pathology report, surgical
/// report, etc.

    @JsonKey(name: 'report') List<List<Reference>>? report,
/// [complication] Any complications that occurred during the procedure, or
/// in the immediate post-performance period. These are generally tracked
/// separately from the notes, which will typically describe the procedure
/// itself rather than any 'post procedure' issues.

    @JsonKey(name: 'complication') List<List<CodeableReference>>? complication,
/// [followUp] If the procedure required specific follow up - e.g. removal
/// of sutures. The follow up may be represented as a simple note or could
/// potentially be more complex, in which case the CarePlan resource can be
/// used. CarePlan can reference the Procedure via CarePlan.addresses.

    @JsonKey(name: 'followUp') List<List<CodeableReference>>? followUp,
/// [note] Any other notes and comments about the procedure.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [focalDevice] A device that is implanted, removed or otherwise
/// manipulated (calibration, battery replacement, fitting a prosthesis,
/// attaching a wound-vac, etc.) as a focal portion of the Procedure.

    @JsonKey(name: 'focalDevice') List<List<Procedure_FocalDevice>>? focalDevice,
/// [used] Identifies medications, devices and any other substance used as
/// part of the procedure.

    @JsonKey(name: 'used') List<List<CodeableReference>>? used,
/// [supportingInfo] Other resources from the patient record that may be
/// relevant to the procedure.  The information from these resources was either
/// used to create the instance or is provided to help with its interpretation.
/// This extension should not be used if more specific inline elements or
/// extensions are available.

    @JsonKey(name: 'supportingInfo') List<List<Reference>>? supportingInfo,
  }) = _$Procedure;

  @override
  String get fhirType => 'Procedure';

  factory Procedure.fromJson(Map<String, dynamic> json) =>
      _$ProcedureFromJson(json);

  factory Procedure.fromYaml(dynamic yaml) => yaml is String
      ? Procedure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Procedure.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Procedure cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Procedure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ProcedureFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
