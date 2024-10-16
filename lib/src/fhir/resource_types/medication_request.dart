import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MedicationRequest]
/// An order or request for both supply of the medication and the
/// instructions for administration of the medication to a patient. The
/// resource is called "MedicationRequest" rather than
/// "MedicationPrescription" or "MedicationOrder" to generalize the use
/// across inpatient and outpatient settings, including care plans, etc.,
/// and to harmonize with workflow patterns.
class MedicationRequest extends DomainResource {
  /// Primary constructor for [MedicationRequest]

  MedicationRequest({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusReason,
    required this.intent,
    this.category,
    this.priority,
    this.doNotPerform,
    this.reportedBoolean,
    this.reportedReference,
    this.medicationCodeableConcept,
    this.medicationReference,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.MedicationRequest,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequest.fromJson(Map<String, dynamic> json) {
    return MedicationRequest(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
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
      priority: json['priority'] != null
          ? RequestPriority.fromJson({
              'value': json['priority'],
              '_value': json['_priority'],
            })
          : null,
      doNotPerform: json['doNotPerform'] != null
          ? FhirBoolean.fromJson({
              'value': json['doNotPerform'],
              '_value': json['_doNotPerform'],
            })
          : null,
      reportedBoolean: json['reportedBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['reportedBoolean'],
              '_value': json['_reportedBoolean'],
            })
          : null,
      reportedReference: json['reportedReference'] != null
          ? Reference.fromJson(
              json['reportedReference'] as Map<String, dynamic>,
            )
          : null,
      medicationCodeableConcept: json['medicationCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['medicationCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      medicationReference: json['medicationReference'] != null
          ? Reference.fromJson(
              json['medicationReference'] as Map<String, dynamic>,
            )
          : null,
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
      authoredOn: json['authoredOn'] != null
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
          fromJson: FhirCanonical.fromJson),
      instantiatesUri: parsePrimitiveList<FhirUri>(
          json['instantiatesUri'] as List<dynamic>?,
          json['_instantiatesUri'] as List<dynamic>?,
          fromJson: FhirUri.fromJson),
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

  /// Deserialize [MedicationRequest] from a [String]
  /// or [YamlMap] object
  factory MedicationRequest.fromYaml(dynamic yaml) => yaml is String
      ? MedicationRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicationRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('MedicationRequest cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicationRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequest.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [reportedBoolean]
  /// Indicates if this record was captured as a secondary 'reported' record
  /// rather than as an original primary source-of-truth record. It may also
  /// indicate the source of the report.
  final FhirBoolean? reportedBoolean;

  /// [reportedReference]
  /// Indicates if this record was captured as a secondary 'reported' record
  /// rather than as an original primary source-of-truth record. It may also
  /// indicate the source of the report.
  final Reference? reportedReference;

  /// [medicationCodeableConcept]
  /// Identifies the medication being requested. This is a link to a resource
  /// that represents the medication which may be the details of the
  /// medication or simply an attribute carrying a code that identifies the
  /// medication from a known list of medications.
  final CodeableConcept? medicationCodeableConcept;

  /// [medicationReference]
  /// Identifies the medication being requested. This is a link to a resource
  /// that represents the medication which may be the details of the
  /// medication or simply an attribute carrying a code that identifies the
  /// medication from a known list of medications.
  final Reference? medicationReference;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    final fieldJson9 = status.toJson();
    json['status'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_status'] = fieldJson9['_value'];
    }

    if (statusReason != null) {
      final fieldJson10 = statusReason!.toJson();
      json['statusReason'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_statusReason'] = fieldJson10['_value'];
      }
    }

    final fieldJson11 = intent.toJson();
    json['intent'] = fieldJson11['value'];
    if (fieldJson11['_value'] != null) {
      json['_intent'] = fieldJson11['_value'];
    }

    if (category != null && category!.isNotEmpty) {
      final fieldJson12 = category!.map((e) => e.toJson()).toList();
      json['category'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_category'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (priority != null) {
      final fieldJson13 = priority!.toJson();
      json['priority'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_priority'] = fieldJson13['_value'];
      }
    }

    if (doNotPerform != null) {
      final fieldJson14 = doNotPerform!.toJson();
      json['doNotPerform'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_doNotPerform'] = fieldJson14['_value'];
      }
    }

    if (reportedBoolean != null) {
      final fieldJson15 = reportedBoolean!.toJson();
      json['reportedBoolean'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_reportedBoolean'] = fieldJson15['_value'];
      }
    }

    if (reportedReference != null) {
      final fieldJson16 = reportedReference!.toJson();
      json['reportedReference'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_reportedReference'] = fieldJson16['_value'];
      }
    }

    if (medicationCodeableConcept != null) {
      final fieldJson17 = medicationCodeableConcept!.toJson();
      json['medicationCodeableConcept'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_medicationCodeableConcept'] = fieldJson17['_value'];
      }
    }

    if (medicationReference != null) {
      final fieldJson18 = medicationReference!.toJson();
      json['medicationReference'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_medicationReference'] = fieldJson18['_value'];
      }
    }

    final fieldJson19 = subject.toJson();
    json['subject'] = fieldJson19['value'];
    if (fieldJson19['_value'] != null) {
      json['_subject'] = fieldJson19['_value'];
    }

    if (encounter != null) {
      final fieldJson20 = encounter!.toJson();
      json['encounter'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_encounter'] = fieldJson20['_value'];
      }
    }

    if (supportingInformation != null && supportingInformation!.isNotEmpty) {
      final fieldJson21 =
          supportingInformation!.map((e) => e.toJson()).toList();
      json['supportingInformation'] =
          fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_supportingInformation'] =
            fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (authoredOn != null) {
      final fieldJson22 = authoredOn!.toJson();
      json['authoredOn'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_authoredOn'] = fieldJson22['_value'];
      }
    }

    if (requester != null) {
      final fieldJson23 = requester!.toJson();
      json['requester'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_requester'] = fieldJson23['_value'];
      }
    }

    if (performer != null) {
      final fieldJson24 = performer!.toJson();
      json['performer'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_performer'] = fieldJson24['_value'];
      }
    }

    if (performerType != null) {
      final fieldJson25 = performerType!.toJson();
      json['performerType'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_performerType'] = fieldJson25['_value'];
      }
    }

    if (recorder != null) {
      final fieldJson26 = recorder!.toJson();
      json['recorder'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_recorder'] = fieldJson26['_value'];
      }
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      final fieldJson27 = reasonCode!.map((e) => e.toJson()).toList();
      json['reasonCode'] = fieldJson27.map((e) => e['value']).toList();
      if (fieldJson27.any((e) => e['_value'] != null)) {
        json['_reasonCode'] = fieldJson27.map((e) => e['_value']).toList();
      }
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      final fieldJson28 = reasonReference!.map((e) => e.toJson()).toList();
      json['reasonReference'] = fieldJson28.map((e) => e['value']).toList();
      if (fieldJson28.any((e) => e['_value'] != null)) {
        json['_reasonReference'] = fieldJson28.map((e) => e['_value']).toList();
      }
    }

    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      final fieldJson29 =
          instantiatesCanonical!.map((e) => e.toJson()).toList();
      json['instantiatesCanonical'] =
          fieldJson29.map((e) => e['value']).toList();
      if (fieldJson29.any((e) => e['_value'] != null)) {
        json['_instantiatesCanonical'] =
            fieldJson29.map((e) => e['_value']).toList();
      }
    }

    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      final fieldJson30 = instantiatesUri!.map((e) => e.toJson()).toList();
      json['instantiatesUri'] = fieldJson30.map((e) => e['value']).toList();
      if (fieldJson30.any((e) => e['_value'] != null)) {
        json['_instantiatesUri'] = fieldJson30.map((e) => e['_value']).toList();
      }
    }

    if (basedOn != null && basedOn!.isNotEmpty) {
      final fieldJson31 = basedOn!.map((e) => e.toJson()).toList();
      json['basedOn'] = fieldJson31.map((e) => e['value']).toList();
      if (fieldJson31.any((e) => e['_value'] != null)) {
        json['_basedOn'] = fieldJson31.map((e) => e['_value']).toList();
      }
    }

    if (groupIdentifier != null) {
      final fieldJson32 = groupIdentifier!.toJson();
      json['groupIdentifier'] = fieldJson32['value'];
      if (fieldJson32['_value'] != null) {
        json['_groupIdentifier'] = fieldJson32['_value'];
      }
    }

    if (courseOfTherapyType != null) {
      final fieldJson33 = courseOfTherapyType!.toJson();
      json['courseOfTherapyType'] = fieldJson33['value'];
      if (fieldJson33['_value'] != null) {
        json['_courseOfTherapyType'] = fieldJson33['_value'];
      }
    }

    if (insurance != null && insurance!.isNotEmpty) {
      final fieldJson34 = insurance!.map((e) => e.toJson()).toList();
      json['insurance'] = fieldJson34.map((e) => e['value']).toList();
      if (fieldJson34.any((e) => e['_value'] != null)) {
        json['_insurance'] = fieldJson34.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson35 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson35.map((e) => e['value']).toList();
      if (fieldJson35.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson35.map((e) => e['_value']).toList();
      }
    }

    if (dosageInstruction != null && dosageInstruction!.isNotEmpty) {
      final fieldJson36 = dosageInstruction!.map((e) => e.toJson()).toList();
      json['dosageInstruction'] = fieldJson36.map((e) => e['value']).toList();
      if (fieldJson36.any((e) => e['_value'] != null)) {
        json['_dosageInstruction'] =
            fieldJson36.map((e) => e['_value']).toList();
      }
    }

    if (dispenseRequest != null) {
      final fieldJson37 = dispenseRequest!.toJson();
      json['dispenseRequest'] = fieldJson37['value'];
      if (fieldJson37['_value'] != null) {
        json['_dispenseRequest'] = fieldJson37['_value'];
      }
    }

    if (substitution != null) {
      final fieldJson38 = substitution!.toJson();
      json['substitution'] = fieldJson38['value'];
      if (fieldJson38['_value'] != null) {
        json['_substitution'] = fieldJson38['_value'];
      }
    }

    if (priorPrescription != null) {
      final fieldJson39 = priorPrescription!.toJson();
      json['priorPrescription'] = fieldJson39['value'];
      if (fieldJson39['_value'] != null) {
        json['_priorPrescription'] = fieldJson39['_value'];
      }
    }

    if (detectedIssue != null && detectedIssue!.isNotEmpty) {
      final fieldJson40 = detectedIssue!.map((e) => e.toJson()).toList();
      json['detectedIssue'] = fieldJson40.map((e) => e['value']).toList();
      if (fieldJson40.any((e) => e['_value'] != null)) {
        json['_detectedIssue'] = fieldJson40.map((e) => e['_value']).toList();
      }
    }

    if (eventHistory != null && eventHistory!.isNotEmpty) {
      final fieldJson41 = eventHistory!.map((e) => e.toJson()).toList();
      json['eventHistory'] = fieldJson41.map((e) => e['value']).toList();
      if (fieldJson41.any((e) => e['_value'] != null)) {
        json['_eventHistory'] = fieldJson41.map((e) => e['_value']).toList();
      }
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
    FhirBoolean? reportedBoolean,
    Reference? reportedReference,
    CodeableConcept? medicationCodeableConcept,
    Reference? medicationReference,
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      reportedBoolean: reportedBoolean ?? this.reportedBoolean,
      reportedReference: reportedReference ?? this.reportedReference,
      medicationCodeableConcept:
          medicationCodeableConcept ?? this.medicationCodeableConcept,
      medicationReference: medicationReference ?? this.medicationReference,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
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
  /// Primary constructor for [MedicationRequestDispenseRequest]

  MedicationRequestDispenseRequest({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.initialFill,
    this.dispenseInterval,
    this.validityPeriod,
    this.numberOfRepeatsAllowed,
    this.quantity,
    this.expectedSupplyDuration,
    this.performer,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestDispenseRequest.fromJson(Map<String, dynamic> json) {
    return MedicationRequestDispenseRequest(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      numberOfRepeatsAllowed: json['numberOfRepeatsAllowed'] != null
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

  /// Deserialize [MedicationRequestDispenseRequest] from a [String]
  /// or [YamlMap] object
  factory MedicationRequestDispenseRequest.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationRequestDispenseRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicationRequestDispenseRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicationRequestDispenseRequest cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicationRequestDispenseRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestDispenseRequest.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (initialFill != null) {
      final fieldJson3 = initialFill!.toJson();
      json['initialFill'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_initialFill'] = fieldJson3['_value'];
      }
    }

    if (dispenseInterval != null) {
      final fieldJson4 = dispenseInterval!.toJson();
      json['dispenseInterval'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_dispenseInterval'] = fieldJson4['_value'];
      }
    }

    if (validityPeriod != null) {
      final fieldJson5 = validityPeriod!.toJson();
      json['validityPeriod'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_validityPeriod'] = fieldJson5['_value'];
      }
    }

    if (numberOfRepeatsAllowed != null) {
      final fieldJson6 = numberOfRepeatsAllowed!.toJson();
      json['numberOfRepeatsAllowed'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_numberOfRepeatsAllowed'] = fieldJson6['_value'];
      }
    }

    if (quantity != null) {
      final fieldJson7 = quantity!.toJson();
      json['quantity'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_quantity'] = fieldJson7['_value'];
      }
    }

    if (expectedSupplyDuration != null) {
      final fieldJson8 = expectedSupplyDuration!.toJson();
      json['expectedSupplyDuration'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_expectedSupplyDuration'] = fieldJson8['_value'];
      }
    }

    if (performer != null) {
      final fieldJson9 = performer!.toJson();
      json['performer'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_performer'] = fieldJson9['_value'];
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationRequestInitialFill]
/// Indicates the quantity or duration for the first dispense of the
/// medication.
class MedicationRequestInitialFill extends BackboneElement {
  /// Primary constructor for [MedicationRequestInitialFill]

  MedicationRequestInitialFill({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.quantity,
    this.duration,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestInitialFill.fromJson(Map<String, dynamic> json) {
    return MedicationRequestInitialFill(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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

  /// Deserialize [MedicationRequestInitialFill] from a [String]
  /// or [YamlMap] object
  factory MedicationRequestInitialFill.fromYaml(dynamic yaml) => yaml is String
      ? MedicationRequestInitialFill.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicationRequestInitialFill.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicationRequestInitialFill cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicationRequestInitialFill]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestInitialFill.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [quantity]
  /// The amount or quantity to provide as part of the first dispense.
  final Quantity? quantity;

  /// [duration]
  /// The length of time that the first dispense is expected to last.
  final FhirDuration? duration;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (quantity != null) {
      final fieldJson3 = quantity!.toJson();
      json['quantity'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_quantity'] = fieldJson3['_value'];
      }
    }

    if (duration != null) {
      final fieldJson4 = duration!.toJson();
      json['duration'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_duration'] = fieldJson4['_value'];
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationRequestInitialFill(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
      duration: duration ?? this.duration,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationRequestSubstitution]
/// Indicates whether or not substitution can or should be part of the
/// dispense. In some cases, substitution must happen, in other cases
/// substitution must not happen. This block explains the prescriber's
/// intent. If nothing is specified substitution may be done.
class MedicationRequestSubstitution extends BackboneElement {
  /// Primary constructor for [MedicationRequestSubstitution]

  MedicationRequestSubstitution({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.allowedBoolean,
    this.allowedCodeableConcept,
    this.reason,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestSubstitution.fromJson(Map<String, dynamic> json) {
    return MedicationRequestSubstitution(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      allowedBoolean: json['allowedBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['allowedBoolean'],
              '_value': json['_allowedBoolean'],
            })
          : null,
      allowedCodeableConcept: json['allowedCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['allowedCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      reason: json['reason'] != null
          ? CodeableConcept.fromJson(
              json['reason'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [MedicationRequestSubstitution] from a [String]
  /// or [YamlMap] object
  factory MedicationRequestSubstitution.fromYaml(dynamic yaml) => yaml is String
      ? MedicationRequestSubstitution.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicationRequestSubstitution.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicationRequestSubstitution cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicationRequestSubstitution]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestSubstitution.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [allowedBoolean]
  /// True if the prescriber allows a different drug to be dispensed from
  /// what was prescribed.
  final FhirBoolean? allowedBoolean;

  /// [allowedCodeableConcept]
  /// True if the prescriber allows a different drug to be dispensed from
  /// what was prescribed.
  final CodeableConcept? allowedCodeableConcept;

  /// [reason]
  /// Indicates the reason for the substitution, or why substitution must or
  /// must not be performed.
  final CodeableConcept? reason;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (allowedBoolean != null) {
      final fieldJson3 = allowedBoolean!.toJson();
      json['allowedBoolean'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_allowedBoolean'] = fieldJson3['_value'];
      }
    }

    if (allowedCodeableConcept != null) {
      final fieldJson4 = allowedCodeableConcept!.toJson();
      json['allowedCodeableConcept'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_allowedCodeableConcept'] = fieldJson4['_value'];
      }
    }

    if (reason != null) {
      final fieldJson5 = reason!.toJson();
      json['reason'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_reason'] = fieldJson5['_value'];
      }
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
    FhirBoolean? allowedBoolean,
    CodeableConcept? allowedCodeableConcept,
    CodeableConcept? reason,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationRequestSubstitution(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      allowedBoolean: allowedBoolean ?? this.allowedBoolean,
      allowedCodeableConcept:
          allowedCodeableConcept ?? this.allowedCodeableConcept,
      reason: reason ?? this.reason,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
