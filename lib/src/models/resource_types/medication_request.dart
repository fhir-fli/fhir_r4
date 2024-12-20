import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'medication_request.g.dart';

/// [MedicationRequest]
/// An order or request for both supply of the medication and the
/// instructions for administration of the medication to a patient. The
/// resource is called "MedicationRequest" rather than
/// "MedicationPrescription" or "MedicationOrder" to generalize the use
/// across inpatient and outpatient settings, including care plans, etc.,
/// and to harmonize with workflow patterns.
class MedicationRequest extends DomainResource {
  /// Primary constructor for
  /// [MedicationRequest]

  const MedicationRequest({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusReason,
    required this.intent,
    this.category,
    this.priority,
    this.doNotPerform,
    this.reportedXMedicationRequestMedicationRequest,
    required this.medicationXMedicationRequestMedicationRequest,
    required this.subject,
    this.encounter,
    this.supportingInformation,
    this.authoredOn,
    this.requester,
    this.performer,
    this.performerType,
    this.recorder,
    this.reasonCode,
    this.reasonReference,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.basedOn,
    this.groupIdentifier,
    this.courseOfTherapyType,
    this.insurance,
    this.note,
    this.dosageInstruction,
    this.dispenseRequest,
    this.substitution,
    this.priorPrescription,
    this.detectedIssue,
    this.eventHistory,
  }) : super(
          resourceType: R4ResourceType.MedicationRequest,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationRequest(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: MedicationrequestStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              json['statusReason'] as Map<String, dynamic>,
            )
          : null,
      intent: MedicationRequestIntent.fromJson({
        'value': json['intent'],
        '_value': json['_intent'],
      }),
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      priority: (json['priority'] != null || json['_priority'] != null)
          ? RequestPriority.fromJson({
              'value': json['priority'],
              '_value': json['_priority'],
            })
          : null,
      doNotPerform:
          (json['doNotPerform'] != null || json['_doNotPerform'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['doNotPerform'],
                  '_value': json['_doNotPerform'],
                })
              : null,
      reportedXMedicationRequestMedicationRequest: json['reportedBoolean'] !=
                  null ||
              json['_reportedBoolean'] != null
          ? BooleanReportedMedicationRequestMedicationRequest.fromJson({
              'value': json['reportedBoolean'],
              '_value': json['_reportedBoolean'],
            })
          : json['reportedReference'] != null ||
                  json['_reportedReference'] != null
              ? ReferenceReportedMedicationRequestMedicationRequest.fromJson({
                  'value': json['reportedReference'],
                  '_value': json['_reportedReference'],
                })
              : null,
      medicationXMedicationRequestMedicationRequest:
          json['medicationCodeableConcept'] != null ||
                  json['_medicationCodeableConcept'] != null
              ? CodeableConceptMedicationMedicationRequestMedicationRequest
                  .fromJson({
                  'value': json['medicationCodeableConcept'],
                  '_value': json['_medicationCodeableConcept'],
                })
              : ReferenceMedicationMedicationRequestMedicationRequest.fromJson({
                  'value': json['medicationReference'],
                  '_value': json['_medicationReference'],
                }),
      subject: Reference.fromJson(
        json['subject'] as Map<String, dynamic>,
      ),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      supportingInformation: json['supportingInformation'] != null
          ? (json['supportingInformation'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      authoredOn: (json['authoredOn'] != null || json['_authoredOn'] != null)
          ? FhirDateTime.fromJson({
              'value': json['authoredOn'],
              '_value': json['_authoredOn'],
            })
          : null,
      requester: json['requester'] != null
          ? Reference.fromJson(
              json['requester'] as Map<String, dynamic>,
            )
          : null,
      performer: json['performer'] != null
          ? Reference.fromJson(
              json['performer'] as Map<String, dynamic>,
            )
          : null,
      performerType: json['performerType'] != null
          ? CodeableConcept.fromJson(
              json['performerType'] as Map<String, dynamic>,
            )
          : null,
      recorder: json['recorder'] != null
          ? Reference.fromJson(
              json['recorder'] as Map<String, dynamic>,
            )
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      instantiatesCanonical: parsePrimitiveList<FhirCanonical>(
        json['instantiatesCanonical'] as List<dynamic>?,
        json['_instantiatesCanonical'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
      instantiatesUri: parsePrimitiveList<FhirUri>(
        json['instantiatesUri'] as List<dynamic>?,
        json['_instantiatesUri'] as List<dynamic>?,
        fromJson: FhirUri.fromJson,
      ),
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      groupIdentifier: json['groupIdentifier'] != null
          ? Identifier.fromJson(
              json['groupIdentifier'] as Map<String, dynamic>,
            )
          : null,
      courseOfTherapyType: json['courseOfTherapyType'] != null
          ? CodeableConcept.fromJson(
              json['courseOfTherapyType'] as Map<String, dynamic>,
            )
          : null,
      insurance: json['insurance'] != null
          ? (json['insurance'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      dosageInstruction: json['dosageInstruction'] != null
          ? (json['dosageInstruction'] as List<dynamic>)
              .map<Dosage>(
                (v) => Dosage.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      dispenseRequest: json['dispenseRequest'] != null
          ? MedicationRequestDispenseRequest.fromJson(
              json['dispenseRequest'] as Map<String, dynamic>,
            )
          : null,
      substitution: json['substitution'] != null
          ? MedicationRequestSubstitution.fromJson(
              json['substitution'] as Map<String, dynamic>,
            )
          : null,
      priorPrescription: json['priorPrescription'] != null
          ? Reference.fromJson(
              json['priorPrescription'] as Map<String, dynamic>,
            )
          : null,
      detectedIssue: json['detectedIssue'] != null
          ? (json['detectedIssue'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      eventHistory: json['eventHistory'] != null
          ? (json['eventHistory'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [MedicationRequest]
  /// from a [String] or [YamlMap] object
  factory MedicationRequest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicationRequest';

  /// [identifier]
  /// Identifiers associated with this medication request that are defined by
  /// business processes and/or used to refer to it when a direct URL
  /// reference to the resource itself is not appropriate. They are business
  /// identifiers assigned to this resource by the performer or other systems
  /// and remain constant as the resource is updated and propagates from
  /// server to server.
  final List<Identifier>? identifier;

  /// [status]
  /// A code specifying the current state of the order. Generally, this will
  /// be active or completed state.
  final MedicationrequestStatus status;

  /// [statusReason]
  /// Captures the reason for the current state of the MedicationRequest.
  final CodeableConcept? statusReason;

  /// [intent]
  /// Whether the request is a proposal, plan, or an original order.
  final MedicationRequestIntent intent;

  /// [category]
  /// Indicates the type of medication request (for example, where the
  /// medication is expected to be consumed or administered (i.e. inpatient
  /// or outpatient)).
  final List<CodeableConcept>? category;

  /// [priority]
  /// Indicates how quickly the Medication Request should be addressed with
  /// respect to other requests.
  final RequestPriority? priority;

  /// [doNotPerform]
  /// If true indicates that the provider is asking for the medication
  /// request not to occur.
  final FhirBoolean? doNotPerform;

  /// [reportedXMedicationRequestMedicationRequest]
  /// Indicates if this record was captured as a secondary 'reported' record
  /// rather than as an original primary source-of-truth record. It may also
  /// indicate the source of the report.
  final ReportedXMedicationRequestMedicationRequest?
      reportedXMedicationRequestMedicationRequest;

  /// [medicationXMedicationRequestMedicationRequest]
  /// Identifies the medication being requested. This is a link to a resource
  /// that represents the medication which may be the details of the
  /// medication or simply an attribute carrying a code that identifies the
  /// medication from a known list of medications.
  final MedicationXMedicationRequestMedicationRequest
      medicationXMedicationRequestMedicationRequest;

  /// [subject]
  /// A link to a resource representing the person or set of individuals to
  /// whom the medication will be given.
  final Reference subject;

  /// [encounter]
  /// The Encounter during which this [x] was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [supportingInformation]
  /// Include additional information (for example, patient height and weight)
  /// that supports the ordering of the medication.
  final List<Reference>? supportingInformation;

  /// [authoredOn]
  /// The date (and perhaps time) when the prescription was initially written
  /// or authored on.
  final FhirDateTime? authoredOn;

  /// [requester]
  /// The individual, organization, or device that initiated the request and
  /// has responsibility for its activation.
  final Reference? requester;

  /// [performer]
  /// The specified desired performer of the medication treatment (e.g. the
  /// performer of the medication administration).
  final Reference? performer;

  /// [performerType]
  /// Indicates the type of performer of the administration of the
  /// medication.
  final CodeableConcept? performerType;

  /// [recorder]
  /// The person who entered the order on behalf of another individual for
  /// example in the case of a verbal or a telephone order.
  final Reference? recorder;

  /// [reasonCode]
  /// The reason or the indication for ordering or not ordering the
  /// medication.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Condition or observation that supports why the medication was ordered.
  final List<Reference>? reasonReference;

  /// [instantiatesCanonical]
  /// The URL pointing to a protocol, guideline, orderset, or other
  /// definition that is adhered to in whole or in part by this
  /// MedicationRequest.
  final List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this MedicationRequest.
  final List<FhirUri>? instantiatesUri;

  /// [basedOn]
  /// A plan or request that is fulfilled in whole or in part by this
  /// medication request.
  final List<Reference>? basedOn;

  /// [groupIdentifier]
  /// A shared identifier common to all requests that were authorized more or
  /// less simultaneously by a single author, representing the identifier of
  /// the requisition or prescription.
  final Identifier? groupIdentifier;

  /// [courseOfTherapyType]
  /// The description of the overall patte3rn of the administration of the
  /// medication to the patient.
  final CodeableConcept? courseOfTherapyType;

  /// [insurance]
  /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be required for delivering the requested
  /// service.
  final List<Reference>? insurance;

  /// [note]
  /// Extra information about the prescription that could not be conveyed by
  /// the other attributes.
  final List<Annotation>? note;

  /// [dosageInstruction]
  /// Indicates how the medication is to be used by the patient.
  final List<Dosage>? dosageInstruction;

  /// [dispenseRequest]
  /// Indicates the specific details for the dispense or medication supply
  /// part of a medication request (also known as a Medication Prescription
  /// or Medication Order). Note that this information is not always sent
  /// with the order. There may be in some settings (e.g. hospitals)
  /// institutional or system support for completing the dispense details in
  /// the pharmacy department.
  final MedicationRequestDispenseRequest? dispenseRequest;

  /// [substitution]
  /// Indicates whether or not substitution can or should be part of the
  /// dispense. In some cases, substitution must happen, in other cases
  /// substitution must not happen. This block explains the prescriber's
  /// intent. If nothing is specified substitution may be done.
  final MedicationRequestSubstitution? substitution;

  /// [priorPrescription]
  /// A link to a resource representing an earlier order related order or
  /// prescription.
  final Reference? priorPrescription;

  /// [detectedIssue]
  /// Indicates an actual or potential clinical issue with or between one or
  /// more active or proposed clinical actions for a patient; e.g. Drug-drug
  /// interaction, duplicate therapy, dosage alert etc.
  final List<Reference>? detectedIssue;

  /// [eventHistory]
  /// Links to Provenance records for past versions of this resource or
  /// fulfilling request or event resources that identify key state
  /// transitions or updates that are likely to be relevant to a user looking
  /// at the current version of the resource.
  final List<Reference>? eventHistory;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('status', status);
    if (statusReason != null) {
      json['statusReason'] = statusReason!.toJson();
    }

    addField('intent', intent);
    if (category != null && category!.isNotEmpty) {
      json['category'] = category!.map((e) => e.toJson()).toList();
    }

    addField('priority', priority);
    addField('doNotPerform', doNotPerform);
    addField('reportedXMedicationRequestMedicationRequest',
        reportedXMedicationRequestMedicationRequest);
    json['medicationXMedicationRequestMedicationRequest'] =
        medicationXMedicationRequestMedicationRequest.toJson();

    json['subject'] = subject.toJson();

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    if (supportingInformation != null && supportingInformation!.isNotEmpty) {
      json['supportingInformation'] =
          supportingInformation!.map((e) => e.toJson()).toList();
    }

    addField('authoredOn', authoredOn);
    if (requester != null) {
      json['requester'] = requester!.toJson();
    }

    if (performer != null) {
      json['performer'] = performer!.toJson();
    }

    if (performerType != null) {
      json['performerType'] = performerType!.toJson();
    }

    if (recorder != null) {
      json['recorder'] = recorder!.toJson();
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] = reasonCode!.map((e) => e.toJson()).toList();
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((e) => e.toJson()).toList();
    }

    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      final fieldJson0 = instantiatesCanonical!.map((e) => e.toJson()).toList();
      json['instantiatesCanonical'] =
          fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_instantiatesCanonical'] =
            fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      final fieldJson1 = instantiatesUri!.map((e) => e.toJson()).toList();
      json['instantiatesUri'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_instantiatesUri'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] = basedOn!.map((e) => e.toJson()).toList();
    }

    if (groupIdentifier != null) {
      json['groupIdentifier'] = groupIdentifier!.toJson();
    }

    if (courseOfTherapyType != null) {
      json['courseOfTherapyType'] = courseOfTherapyType!.toJson();
    }

    if (insurance != null && insurance!.isNotEmpty) {
      json['insurance'] = insurance!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (dosageInstruction != null && dosageInstruction!.isNotEmpty) {
      json['dosageInstruction'] =
          dosageInstruction!.map((e) => e.toJson()).toList();
    }

    if (dispenseRequest != null) {
      json['dispenseRequest'] = dispenseRequest!.toJson();
    }

    if (substitution != null) {
      json['substitution'] = substitution!.toJson();
    }

    if (priorPrescription != null) {
      json['priorPrescription'] = priorPrescription!.toJson();
    }

    if (detectedIssue != null && detectedIssue!.isNotEmpty) {
      json['detectedIssue'] = detectedIssue!.map((e) => e.toJson()).toList();
    }

    if (eventHistory != null && eventHistory!.isNotEmpty) {
      json['eventHistory'] = eventHistory!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  MedicationRequest clone() => throw UnimplementedError();
  @override
  MedicationRequest copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    MedicationrequestStatus? status,
    CodeableConcept? statusReason,
    MedicationRequestIntent? intent,
    List<CodeableConcept>? category,
    RequestPriority? priority,
    FhirBoolean? doNotPerform,
    ReportedXMedicationRequestMedicationRequest?
        reportedXMedicationRequestMedicationRequest,
    MedicationXMedicationRequestMedicationRequest?
        medicationXMedicationRequestMedicationRequest,
    Reference? subject,
    Reference? encounter,
    List<Reference>? supportingInformation,
    FhirDateTime? authoredOn,
    Reference? requester,
    Reference? performer,
    CodeableConcept? performerType,
    Reference? recorder,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<Reference>? basedOn,
    Identifier? groupIdentifier,
    CodeableConcept? courseOfTherapyType,
    List<Reference>? insurance,
    List<Annotation>? note,
    List<Dosage>? dosageInstruction,
    MedicationRequestDispenseRequest? dispenseRequest,
    MedicationRequestSubstitution? substitution,
    Reference? priorPrescription,
    List<Reference>? detectedIssue,
    List<Reference>? eventHistory,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MedicationRequest(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      intent: intent ?? this.intent,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      reportedXMedicationRequestMedicationRequest:
          reportedXMedicationRequestMedicationRequest ??
              this.reportedXMedicationRequestMedicationRequest,
      medicationXMedicationRequestMedicationRequest:
          medicationXMedicationRequestMedicationRequest ??
              this.medicationXMedicationRequestMedicationRequest,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      authoredOn: authoredOn ?? this.authoredOn,
      requester: requester ?? this.requester,
      performer: performer ?? this.performer,
      performerType: performerType ?? this.performerType,
      recorder: recorder ?? this.recorder,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      basedOn: basedOn ?? this.basedOn,
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      courseOfTherapyType: courseOfTherapyType ?? this.courseOfTherapyType,
      insurance: insurance ?? this.insurance,
      note: note ?? this.note,
      dosageInstruction: dosageInstruction ?? this.dosageInstruction,
      dispenseRequest: dispenseRequest ?? this.dispenseRequest,
      substitution: substitution ?? this.substitution,
      priorPrescription: priorPrescription ?? this.priorPrescription,
      detectedIssue: detectedIssue ?? this.detectedIssue,
      eventHistory: eventHistory ?? this.eventHistory,
    );
  }
}

/// [MedicationRequestDispenseRequest]
/// Indicates the specific details for the dispense or medication supply
/// part of a medication request (also known as a Medication Prescription
/// or Medication Order). Note that this information is not always sent
/// with the order. There may be in some settings (e.g. hospitals)
/// institutional or system support for completing the dispense details in
/// the pharmacy department.
class MedicationRequestDispenseRequest extends BackboneElement {
  /// Primary constructor for
  /// [MedicationRequestDispenseRequest]

  const MedicationRequestDispenseRequest({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.initialFill,
    this.dispenseInterval,
    this.validityPeriod,
    this.numberOfRepeatsAllowed,
    this.quantity,
    this.expectedSupplyDuration,
    this.performer,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestDispenseRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationRequestDispenseRequest(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      initialFill: json['initialFill'] != null
          ? MedicationRequestInitialFill.fromJson(
              json['initialFill'] as Map<String, dynamic>,
            )
          : null,
      dispenseInterval: json['dispenseInterval'] != null
          ? FhirDuration.fromJson(
              json['dispenseInterval'] as Map<String, dynamic>,
            )
          : null,
      validityPeriod: json['validityPeriod'] != null
          ? Period.fromJson(
              json['validityPeriod'] as Map<String, dynamic>,
            )
          : null,
      numberOfRepeatsAllowed: (json['numberOfRepeatsAllowed'] != null ||
              json['_numberOfRepeatsAllowed'] != null)
          ? FhirUnsignedInt.fromJson({
              'value': json['numberOfRepeatsAllowed'],
              '_value': json['_numberOfRepeatsAllowed'],
            })
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      expectedSupplyDuration: json['expectedSupplyDuration'] != null
          ? FhirDuration.fromJson(
              json['expectedSupplyDuration'] as Map<String, dynamic>,
            )
          : null,
      performer: json['performer'] != null
          ? Reference.fromJson(
              json['performer'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [MedicationRequestDispenseRequest]
  /// from a [String] or [YamlMap] object
  factory MedicationRequestDispenseRequest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequestDispenseRequest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequestDispenseRequest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequestDispenseRequest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequestDispenseRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestDispenseRequest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationRequestDispenseRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicationRequestDispenseRequest';

  /// [initialFill]
  /// Indicates the quantity or duration for the first dispense of the
  /// medication.
  final MedicationRequestInitialFill? initialFill;

  /// [dispenseInterval]
  /// The minimum period of time that must occur between dispenses of the
  /// medication.
  final FhirDuration? dispenseInterval;

  /// [validityPeriod]
  /// This indicates the validity period of a prescription (stale dating the
  /// Prescription).
  final Period? validityPeriod;

  /// [numberOfRepeatsAllowed]
  /// An integer indicating the number of times, in addition to the original
  /// dispense, (aka refills or repeats) that the patient can receive the
  /// prescribed medication. Usage Notes: This integer does not include the
  /// original order dispense. This means that if an order indicates dispense
  /// 30 tablets plus "3 repeats", then the order can be dispensed a total of
  /// 4 times and the patient can receive a total of 120 tablets. A
  /// prescriber may explicitly say that zero refills are permitted after the
  /// initial dispense.
  final FhirUnsignedInt? numberOfRepeatsAllowed;

  /// [quantity]
  /// The amount that is to be dispensed for one fill.
  final Quantity? quantity;

  /// [expectedSupplyDuration]
  /// Identifies the period time over which the supplied product is expected
  /// to be used, or the length of time the dispense is expected to last.
  final FhirDuration? expectedSupplyDuration;

  /// [performer]
  /// Indicates the intended dispensing Organization specified by the
  /// prescriber.
  final Reference? performer;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (initialFill != null) {
      json['initialFill'] = initialFill!.toJson();
    }

    if (dispenseInterval != null) {
      json['dispenseInterval'] = dispenseInterval!.toJson();
    }

    if (validityPeriod != null) {
      json['validityPeriod'] = validityPeriod!.toJson();
    }

    addField('numberOfRepeatsAllowed', numberOfRepeatsAllowed);
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }

    if (expectedSupplyDuration != null) {
      json['expectedSupplyDuration'] = expectedSupplyDuration!.toJson();
    }

    if (performer != null) {
      json['performer'] = performer!.toJson();
    }

    return json;
  }

  @override
  MedicationRequestDispenseRequest clone() => throw UnimplementedError();
  @override
  MedicationRequestDispenseRequest copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    MedicationRequestInitialFill? initialFill,
    FhirDuration? dispenseInterval,
    Period? validityPeriod,
    FhirUnsignedInt? numberOfRepeatsAllowed,
    Quantity? quantity,
    FhirDuration? expectedSupplyDuration,
    Reference? performer,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MedicationRequestDispenseRequest(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      initialFill: initialFill ?? this.initialFill,
      dispenseInterval: dispenseInterval ?? this.dispenseInterval,
      validityPeriod: validityPeriod ?? this.validityPeriod,
      numberOfRepeatsAllowed:
          numberOfRepeatsAllowed ?? this.numberOfRepeatsAllowed,
      quantity: quantity ?? this.quantity,
      expectedSupplyDuration:
          expectedSupplyDuration ?? this.expectedSupplyDuration,
      performer: performer ?? this.performer,
    );
  }
}

/// [MedicationRequestInitialFill]
/// Indicates the quantity or duration for the first dispense of the
/// medication.
class MedicationRequestInitialFill extends BackboneElement {
  /// Primary constructor for
  /// [MedicationRequestInitialFill]

  const MedicationRequestInitialFill({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    this.duration,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestInitialFill.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationRequestInitialFill(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      duration: json['duration'] != null
          ? FhirDuration.fromJson(
              json['duration'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [MedicationRequestInitialFill]
  /// from a [String] or [YamlMap] object
  factory MedicationRequestInitialFill.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequestInitialFill.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequestInitialFill.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequestInitialFill '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequestInitialFill]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestInitialFill.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationRequestInitialFill.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicationRequestInitialFill';

  /// [quantity]
  /// The amount or quantity to provide as part of the first dispense.
  final Quantity? quantity;

  /// [duration]
  /// The length of time that the first dispense is expected to last.
  final FhirDuration? duration;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }

    if (duration != null) {
      json['duration'] = duration!.toJson();
    }

    return json;
  }

  @override
  MedicationRequestInitialFill clone() => throw UnimplementedError();
  @override
  MedicationRequestInitialFill copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? quantity,
    FhirDuration? duration,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MedicationRequestInitialFill(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
      duration: duration ?? this.duration,
    );
  }
}

/// [MedicationRequestSubstitution]
/// Indicates whether or not substitution can or should be part of the
/// dispense. In some cases, substitution must happen, in other cases
/// substitution must not happen. This block explains the prescriber's
/// intent. If nothing is specified substitution may be done.
class MedicationRequestSubstitution extends BackboneElement {
  /// Primary constructor for
  /// [MedicationRequestSubstitution]

  const MedicationRequestSubstitution({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.allowedXMedicationRequestSubstitution,
    this.reason,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestSubstitution.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationRequestSubstitution(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      allowedXMedicationRequestSubstitution:
          json['allowedBoolean'] != null || json['_allowedBoolean'] != null
              ? BooleanAllowedMedicationRequestSubstitution.fromJson({
                  'value': json['allowedBoolean'],
                  '_value': json['_allowedBoolean'],
                })
              : CodeableConceptAllowedMedicationRequestSubstitution.fromJson({
                  'value': json['allowedCodeableConcept'],
                  '_value': json['_allowedCodeableConcept'],
                }),
      reason: json['reason'] != null
          ? CodeableConcept.fromJson(
              json['reason'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [MedicationRequestSubstitution]
  /// from a [String] or [YamlMap] object
  factory MedicationRequestSubstitution.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequestSubstitution.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequestSubstitution.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequestSubstitution '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequestSubstitution]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestSubstitution.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationRequestSubstitution.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicationRequestSubstitution';

  /// [allowedXMedicationRequestSubstitution]
  /// True if the prescriber allows a different drug to be dispensed from
  /// what was prescribed.
  final AllowedXMedicationRequestSubstitution
      allowedXMedicationRequestSubstitution;

  /// [reason]
  /// Indicates the reason for the substitution, or why substitution must or
  /// must not be performed.
  final CodeableConcept? reason;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('allowedXMedicationRequestSubstitution',
        allowedXMedicationRequestSubstitution);
    if (reason != null) {
      json['reason'] = reason!.toJson();
    }

    return json;
  }

  @override
  MedicationRequestSubstitution clone() => throw UnimplementedError();
  @override
  MedicationRequestSubstitution copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    AllowedXMedicationRequestSubstitution?
        allowedXMedicationRequestSubstitution,
    CodeableConcept? reason,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MedicationRequestSubstitution(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      allowedXMedicationRequestSubstitution:
          allowedXMedicationRequestSubstitution ??
              this.allowedXMedicationRequestSubstitution,
      reason: reason ?? this.reason,
    );
  }
}
