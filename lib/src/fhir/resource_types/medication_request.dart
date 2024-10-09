import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [MedicationRequest] /// An order or request for both supply of the medication and the instructions
/// for administration of the medication to a patient. The resource is called
/// "MedicationRequest" rather than "MedicationPrescription" or
/// "MedicationOrder" to generalize the use across inpatient and outpatient
/// settings, including care plans, etc., and to harmonize with workflow
/// patterns.
class MedicationRequest extends DomainResource {
  MedicationRequest({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusElement,
    this.statusReason,
    required this.intent,
    this.intentElement,
    this.category,
    this.priority,
    this.priorityElement,
    this.doNotPerform,
    this.doNotPerformElement,
    this.reportedBoolean,
    this.reportedBooleanElement,
    this.reportedReference,
    this.medicationCodeableConcept,
    this.medicationReference,
    required this.subject,
    this.encounter,
    this.supportingInformation,
    this.authoredOn,
    this.authoredOnElement,
    this.requester,
    this.performer,
    this.performerType,
    this.recorder,
    this.reasonCode,
    this.reasonReference,
    this.instantiatesCanonical,
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
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
  }) : super(resourceType: R4ResourceType.MedicationRequest);

  @override
  String get fhirType => 'MedicationRequest';

  @Id()
  int dbId = 0;

  /// [identifier] /// Identifiers associated with this medication request that are defined by
  /// business processes and/or used to refer to it when a direct URL reference
  /// to the resource itself is not appropriate. They are business identifiers
  /// assigned to this resource by the performer or other systems and remain
  /// constant as the resource is updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [status] /// A code specifying the current state of the order. Generally, this will be
  /// active or completed state.
  final MedicationrequestStatus status;
  final Element? statusElement;

  /// [statusReason] /// Captures the reason for the current state of the MedicationRequest.
  final CodeableConcept? statusReason;

  /// [intent] /// Whether the request is a proposal, plan, or an original order.
  final MedicationRequestIntent intent;
  final Element? intentElement;

  /// [category] /// Indicates the type of medication request (for example, where the medication
  /// is expected to be consumed or administered (i.e. inpatient or outpatient)).
  final List<CodeableConcept>? category;

  /// [priority] /// Indicates how quickly the Medication Request should be addressed with
  /// respect to other requests.
  final RequestPriority? priority;
  final Element? priorityElement;

  /// [doNotPerform] /// If true indicates that the provider is asking for the medication request
  /// not to occur.
  final FhirBoolean? doNotPerform;
  final Element? doNotPerformElement;

  /// [reportedBoolean] /// Indicates if this record was captured as a secondary 'reported' record
  /// rather than as an original primary source-of-truth record. It may also
  /// indicate the source of the report.
  final FhirBoolean? reportedBoolean;
  final Element? reportedBooleanElement;

  /// [reportedReference] /// Indicates if this record was captured as a secondary 'reported' record
  /// rather than as an original primary source-of-truth record. It may also
  /// indicate the source of the report.
  final Reference? reportedReference;

  /// [medicationCodeableConcept] /// Identifies the medication being requested. This is a link to a resource
  /// that represents the medication which may be the details of the medication
  /// or simply an attribute carrying a code that identifies the medication from
  /// a known list of medications.
  final CodeableConcept? medicationCodeableConcept;

  /// [medicationReference] /// Identifies the medication being requested. This is a link to a resource
  /// that represents the medication which may be the details of the medication
  /// or simply an attribute carrying a code that identifies the medication from
  /// a known list of medications.
  final Reference? medicationReference;

  /// [subject] /// A link to a resource representing the person or set of individuals to whom
  /// the medication will be given.
  final Reference subject;

  /// [encounter] /// The Encounter during which this [x] was created or to which the creation of
  /// this record is tightly associated.
  final Reference? encounter;

  /// [supportingInformation] /// Include additional information (for example, patient height and weight)
  /// that supports the ordering of the medication.
  final List<Reference>? supportingInformation;

  /// [authoredOn] /// The date (and perhaps time) when the prescription was initially written or
  /// authored on.
  final FhirDateTime? authoredOn;
  final Element? authoredOnElement;

  /// [requester] /// The individual, organization, or device that initiated the request and has
  /// responsibility for its activation.
  final Reference? requester;

  /// [performer] /// The specified desired performer of the medication treatment (e.g. the
  /// performer of the medication administration).
  final Reference? performer;

  /// [performerType] /// Indicates the type of performer of the administration of the medication.
  final CodeableConcept? performerType;

  /// [recorder] /// The person who entered the order on behalf of another individual for
  /// example in the case of a verbal or a telephone order.
  final Reference? recorder;

  /// [reasonCode] /// The reason or the indication for ordering or not ordering the medication.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Condition or observation that supports why the medication was ordered.
  final List<Reference>? reasonReference;

  /// [instantiatesCanonical] /// The URL pointing to a protocol, guideline, orderset, or other definition
  /// that is adhered to in whole or in part by this MedicationRequest.
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri] /// The URL pointing to an externally maintained protocol, guideline, orderset
  /// or other definition that is adhered to in whole or in part by this
  /// MedicationRequest.
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;

  /// [basedOn] /// A plan or request that is fulfilled in whole or in part by this medication
  /// request.
  final List<Reference>? basedOn;

  /// [groupIdentifier] /// A shared identifier common to all requests that were authorized more or
  /// less simultaneously by a single author, representing the identifier of the
  /// requisition or prescription.
  final Identifier? groupIdentifier;

  /// [courseOfTherapyType] /// The description of the overall patte3rn of the administration of the
  /// medication to the patient.
  final CodeableConcept? courseOfTherapyType;

  /// [insurance] /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be required for delivering the requested
  /// service.
  final List<Reference>? insurance;

  /// [note] /// Extra information about the prescription that could not be conveyed by the
  /// other attributes.
  final List<Annotation>? note;

  /// [dosageInstruction] /// Indicates how the medication is to be used by the patient.
  final List<Dosage>? dosageInstruction;

  /// [dispenseRequest] /// Indicates the specific details for the dispense or medication supply part
  /// of a medication request (also known as a Medication Prescription or
  /// Medication Order). Note that this information is not always sent with the
  /// order. There may be in some settings (e.g. hospitals) institutional or
  /// system support for completing the dispense details in the pharmacy
  /// department.
  final MedicationRequestDispenseRequest? dispenseRequest;

  /// [substitution] /// Indicates whether or not substitution can or should be part of the
  /// dispense. In some cases, substitution must happen, in other cases
  /// substitution must not happen. This block explains the prescriber's intent.
  /// If nothing is specified substitution may be done.
  final MedicationRequestSubstitution? substitution;

  /// [priorPrescription] /// A link to a resource representing an earlier order related order or
  /// prescription.
  final Reference? priorPrescription;

  /// [detectedIssue] /// Indicates an actual or potential clinical issue with or between one or more
  /// active or proposed clinical actions for a patient; e.g. Drug-drug
  /// interaction, duplicate therapy, dosage alert etc.
  final List<Reference>? detectedIssue;

  /// [eventHistory] /// Links to Provenance records for past versions of this resource or
  /// fulfilling request or event resources that identify key state transitions
  /// or updates that are likely to be relevant to a user looking at the current
  /// version of the resource.
  final List<Reference>? eventHistory;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (statusReason != null) {
      json['statusReason'] = statusReason!.toJson();
    }
    json['intent'] = intent.toJson();
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (priority != null) {
      json['priority'] = priority!.toJson();
    }
    if (doNotPerform?.value != null) {
      json['doNotPerform'] = doNotPerform!.value;
    }
    if (doNotPerformElement != null) {
      json['_doNotPerform'] = doNotPerformElement!.toJson();
    }
    if (reportedBoolean?.value != null) {
      json['reportedBoolean'] = reportedBoolean!.value;
    }
    if (reportedBooleanElement != null) {
      json['_reportedBoolean'] = reportedBooleanElement!.toJson();
    }
    if (reportedReference != null) {
      json['reportedReference'] = reportedReference!.toJson();
    }
    if (medicationCodeableConcept != null) {
      json['medicationCodeableConcept'] = medicationCodeableConcept!.toJson();
    }
    if (medicationReference != null) {
      json['medicationReference'] = medicationReference!.toJson();
    }
    json['subject'] = subject.toJson();
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (supportingInformation != null && supportingInformation!.isNotEmpty) {
      json['supportingInformation'] = supportingInformation!
          .map<dynamic>((Reference v) => v.toJson())
          .toList();
    }
    if (authoredOn?.value != null) {
      json['authoredOn'] = authoredOn!.value;
    }
    if (authoredOnElement != null) {
      json['_authoredOn'] = authoredOnElement!.toJson();
    }
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
      json['reasonCode'] =
          reasonCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      json['instantiatesCanonical'] =
          instantiatesCanonical!.map((FhirCanonical v) => v.value).toList();
    }
    if (instantiatesCanonicalElement != null &&
        instantiatesCanonicalElement!.isNotEmpty) {
      json['_instantiatesCanonical'] =
          instantiatesCanonicalElement!.map((Element v) => v.toJson()).toList();
    }
    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      json['instantiatesUri'] =
          instantiatesUri!.map((FhirUri v) => v.value).toList();
    }
    if (instantiatesUriElement != null && instantiatesUriElement!.isNotEmpty) {
      json['_instantiatesUri'] =
          instantiatesUriElement!.map((Element v) => v.toJson()).toList();
    }
    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] =
          basedOn!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (groupIdentifier != null) {
      json['groupIdentifier'] = groupIdentifier!.toJson();
    }
    if (courseOfTherapyType != null) {
      json['courseOfTherapyType'] = courseOfTherapyType!.toJson();
    }
    if (insurance != null && insurance!.isNotEmpty) {
      json['insurance'] =
          insurance!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (dosageInstruction != null && dosageInstruction!.isNotEmpty) {
      json['dosageInstruction'] =
          dosageInstruction!.map<dynamic>((Dosage v) => v.toJson()).toList();
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
      json['detectedIssue'] =
          detectedIssue!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (eventHistory != null && eventHistory!.isNotEmpty) {
      json['eventHistory'] =
          eventHistory!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  factory MedicationRequest.fromJson(Map<String, dynamic> json) {
    return MedicationRequest(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: MedicationrequestStatus.fromJson(
          json['status'] as Map<String, dynamic>),
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              json['statusReason'] as Map<String, dynamic>)
          : null,
      intent: MedicationRequestIntent.fromJson(
          json['intent'] as Map<String, dynamic>),
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      priority: json['priority'] != null
          ? RequestPriority.fromJson(json['priority'] as Map<String, dynamic>)
          : null,
      doNotPerform: json['doNotPerform'] != null
          ? FhirBoolean(json['doNotPerform'])
          : null,
      doNotPerformElement: json['_doNotPerform'] != null
          ? Element.fromJson(json['_doNotPerform'] as Map<String, dynamic>)
          : null,
      reportedBoolean: json['reportedBoolean'] != null
          ? FhirBoolean(json['reportedBoolean'])
          : null,
      reportedBooleanElement: json['_reportedBoolean'] != null
          ? Element.fromJson(json['_reportedBoolean'] as Map<String, dynamic>)
          : null,
      reportedReference: json['reportedReference'] != null
          ? Reference.fromJson(
              json['reportedReference'] as Map<String, dynamic>)
          : null,
      medicationCodeableConcept: json['medicationCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['medicationCodeableConcept'] as Map<String, dynamic>)
          : null,
      medicationReference: json['medicationReference'] != null
          ? Reference.fromJson(
              json['medicationReference'] as Map<String, dynamic>)
          : null,
      subject: Reference.fromJson(json['subject'] as Map<String, dynamic>),
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      supportingInformation: json['supportingInformation'] != null
          ? (json['supportingInformation'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      authoredOn:
          json['authoredOn'] != null ? FhirDateTime(json['authoredOn']) : null,
      authoredOnElement: json['_authoredOn'] != null
          ? Element.fromJson(json['_authoredOn'] as Map<String, dynamic>)
          : null,
      requester: json['requester'] != null
          ? Reference.fromJson(json['requester'] as Map<String, dynamic>)
          : null,
      performer: json['performer'] != null
          ? Reference.fromJson(json['performer'] as Map<String, dynamic>)
          : null,
      performerType: json['performerType'] != null
          ? CodeableConcept.fromJson(
              json['performerType'] as Map<String, dynamic>)
          : null,
      recorder: json['recorder'] != null
          ? Reference.fromJson(json['recorder'] as Map<String, dynamic>)
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      instantiatesCanonical: json['instantiatesCanonical'] != null
          ? (json['instantiatesCanonical'] as List<dynamic>)
              .map<FhirCanonical>(
                  (dynamic v) => FhirCanonical.fromJson(v as dynamic))
              .toList()
          : null,
      instantiatesCanonicalElement: json['_instantiatesCanonical'] != null
          ? (json['_instantiatesCanonical'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      instantiatesUri: json['instantiatesUri'] != null
          ? (json['instantiatesUri'] as List<dynamic>)
              .map<FhirUri>((dynamic v) => FhirUri.fromJson(v as dynamic))
              .toList()
          : null,
      instantiatesUriElement: json['_instantiatesUri'] != null
          ? (json['_instantiatesUri'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      groupIdentifier: json['groupIdentifier'] != null
          ? Identifier.fromJson(json['groupIdentifier'] as Map<String, dynamic>)
          : null,
      courseOfTherapyType: json['courseOfTherapyType'] != null
          ? CodeableConcept.fromJson(
              json['courseOfTherapyType'] as Map<String, dynamic>)
          : null,
      insurance: json['insurance'] != null
          ? (json['insurance'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      dosageInstruction: json['dosageInstruction'] != null
          ? (json['dosageInstruction'] as List<dynamic>)
              .map<Dosage>(
                  (dynamic v) => Dosage.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      dispenseRequest: json['dispenseRequest'] != null
          ? MedicationRequestDispenseRequest.fromJson(
              json['dispenseRequest'] as Map<String, dynamic>)
          : null,
      substitution: json['substitution'] != null
          ? MedicationRequestSubstitution.fromJson(
              json['substitution'] as Map<String, dynamic>)
          : null,
      priorPrescription: json['priorPrescription'] != null
          ? Reference.fromJson(
              json['priorPrescription'] as Map<String, dynamic>)
          : null,
      detectedIssue: json['detectedIssue'] != null
          ? (json['detectedIssue'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      eventHistory: json['eventHistory'] != null
          ? (json['eventHistory'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  MedicationRequest clone() => throw UnimplementedError();
  @override
  MedicationRequest copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    MedicationrequestStatus? status,
    Element? statusElement,
    CodeableConcept? statusReason,
    MedicationRequestIntent? intent,
    Element? intentElement,
    List<CodeableConcept>? category,
    RequestPriority? priority,
    Element? priorityElement,
    FhirBoolean? doNotPerform,
    Element? doNotPerformElement,
    FhirBoolean? reportedBoolean,
    Element? reportedBooleanElement,
    Reference? reportedReference,
    CodeableConcept? medicationCodeableConcept,
    Reference? medicationReference,
    Reference? subject,
    Reference? encounter,
    List<Reference>? supportingInformation,
    FhirDateTime? authoredOn,
    Element? authoredOnElement,
    Reference? requester,
    Reference? performer,
    CodeableConcept? performerType,
    Reference? recorder,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<FhirCanonical>? instantiatesCanonical,
    List<Element>? instantiatesCanonicalElement,
    List<FhirUri>? instantiatesUri,
    List<Element>? instantiatesUriElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      statusReason: statusReason ?? this.statusReason,
      intent: intent ?? this.intent,
      intentElement: intentElement ?? this.intentElement,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      priorityElement: priorityElement ?? this.priorityElement,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      doNotPerformElement: doNotPerformElement ?? this.doNotPerformElement,
      reportedBoolean: reportedBoolean ?? this.reportedBoolean,
      reportedBooleanElement:
          reportedBooleanElement ?? this.reportedBooleanElement,
      reportedReference: reportedReference ?? this.reportedReference,
      medicationCodeableConcept:
          medicationCodeableConcept ?? this.medicationCodeableConcept,
      medicationReference: medicationReference ?? this.medicationReference,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      authoredOn: authoredOn ?? this.authoredOn,
      authoredOnElement: authoredOnElement ?? this.authoredOnElement,
      requester: requester ?? this.requester,
      performer: performer ?? this.performer,
      performerType: performerType ?? this.performerType,
      recorder: recorder ?? this.recorder,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesCanonicalElement:
          instantiatesCanonicalElement ?? this.instantiatesCanonicalElement,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      instantiatesUriElement:
          instantiatesUriElement ?? this.instantiatesUriElement,
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

  factory MedicationRequest.fromYaml(dynamic yaml) => yaml is String
      ? MedicationRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationRequest cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationRequestDispenseRequest] /// Indicates the specific details for the dispense or medication supply part
/// of a medication request (also known as a Medication Prescription or
/// Medication Order). Note that this information is not always sent with the
/// order. There may be in some settings (e.g. hospitals) institutional or
/// system support for completing the dispense details in the pharmacy
/// department.
class MedicationRequestDispenseRequest extends BackboneElement {
  MedicationRequestDispenseRequest({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.initialFill,
    this.dispenseInterval,
    this.validityPeriod,
    this.numberOfRepeatsAllowed,
    this.numberOfRepeatsAllowedElement,
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

  @override
  String get fhirType => 'MedicationRequestDispenseRequest';

  @Id()
  int dbId = 0;

  /// [initialFill] /// Indicates the quantity or duration for the first dispense of the
  /// medication.
  final MedicationRequestInitialFill? initialFill;

  /// [dispenseInterval] /// The minimum period of time that must occur between dispenses of the
  /// medication.
  final FhirDuration? dispenseInterval;

  /// [validityPeriod] /// This indicates the validity period of a prescription (stale dating the
  /// Prescription).
  final Period? validityPeriod;

  /// [numberOfRepeatsAllowed] /// An integer indicating the number of times, in addition to the original
  /// dispense, (aka refills or repeats) that the patient can receive the
  /// prescribed medication. Usage Notes: This integer does not include the
  /// original order dispense. This means that if an order indicates dispense 30
  /// tablets plus "3 repeats", then the order can be dispensed a total of 4
  /// times and the patient can receive a total of 120 tablets. A prescriber may
  /// explicitly say that zero refills are permitted after the initial dispense.
  final FhirUnsignedInt? numberOfRepeatsAllowed;
  final Element? numberOfRepeatsAllowedElement;

  /// [quantity] /// The amount that is to be dispensed for one fill.
  final Quantity? quantity;

  /// [expectedSupplyDuration] /// Identifies the period time over which the supplied product is expected to
  /// be used, or the length of time the dispense is expected to last.
  final FhirDuration? expectedSupplyDuration;

  /// [performer] /// Indicates the intended dispensing Organization specified by the prescriber.
  final Reference? performer;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
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
    if (numberOfRepeatsAllowed?.value != null) {
      json['numberOfRepeatsAllowed'] = numberOfRepeatsAllowed!.value;
    }
    if (numberOfRepeatsAllowedElement != null) {
      json['_numberOfRepeatsAllowed'] = numberOfRepeatsAllowedElement!.toJson();
    }
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

  factory MedicationRequestDispenseRequest.fromJson(Map<String, dynamic> json) {
    return MedicationRequestDispenseRequest(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      initialFill: json['initialFill'] != null
          ? MedicationRequestInitialFill.fromJson(
              json['initialFill'] as Map<String, dynamic>)
          : null,
      dispenseInterval: json['dispenseInterval'] != null
          ? FhirDuration.fromJson(
              json['dispenseInterval'] as Map<String, dynamic>)
          : null,
      validityPeriod: json['validityPeriod'] != null
          ? Period.fromJson(json['validityPeriod'] as Map<String, dynamic>)
          : null,
      numberOfRepeatsAllowed: json['numberOfRepeatsAllowed'] != null
          ? FhirUnsignedInt(json['numberOfRepeatsAllowed'])
          : null,
      numberOfRepeatsAllowedElement: json['_numberOfRepeatsAllowed'] != null
          ? Element.fromJson(
              json['_numberOfRepeatsAllowed'] as Map<String, dynamic>)
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      expectedSupplyDuration: json['expectedSupplyDuration'] != null
          ? FhirDuration.fromJson(
              json['expectedSupplyDuration'] as Map<String, dynamic>)
          : null,
      performer: json['performer'] != null
          ? Reference.fromJson(json['performer'] as Map<String, dynamic>)
          : null,
    );
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
    Element? numberOfRepeatsAllowedElement,
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
      numberOfRepeatsAllowedElement:
          numberOfRepeatsAllowedElement ?? this.numberOfRepeatsAllowedElement,
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

  factory MedicationRequestDispenseRequest.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationRequestDispenseRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationRequestDispenseRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationRequestDispenseRequest cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationRequestDispenseRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationRequestDispenseRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationRequestInitialFill] /// Indicates the quantity or duration for the first dispense of the
/// medication.
class MedicationRequestInitialFill extends BackboneElement {
  MedicationRequestInitialFill({
    super.id,
    super.extension_,
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

  @override
  String get fhirType => 'MedicationRequestInitialFill';

  @Id()
  int dbId = 0;

  /// [quantity] /// The amount or quantity to provide as part of the first dispense.
  final Quantity? quantity;

  /// [duration] /// The length of time that the first dispense is expected to last.
  final FhirDuration? duration;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (duration != null) {
      json['duration'] = duration!.toJson();
    }
    return json;
  }

  factory MedicationRequestInitialFill.fromJson(Map<String, dynamic> json) {
    return MedicationRequestInitialFill(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      duration: json['duration'] != null
          ? FhirDuration.fromJson(json['duration'] as Map<String, dynamic>)
          : null,
    );
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

  factory MedicationRequestInitialFill.fromYaml(dynamic yaml) => yaml is String
      ? MedicationRequestInitialFill.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationRequestInitialFill.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationRequestInitialFill cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationRequestInitialFill.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationRequestInitialFill.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationRequestSubstitution] /// Indicates whether or not substitution can or should be part of the
/// dispense. In some cases, substitution must happen, in other cases
/// substitution must not happen. This block explains the prescriber's intent.
/// If nothing is specified substitution may be done.
class MedicationRequestSubstitution extends BackboneElement {
  MedicationRequestSubstitution({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.allowedBoolean,
    this.allowedBooleanElement,
    this.allowedCodeableConcept,
    this.reason,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MedicationRequestSubstitution';

  @Id()
  int dbId = 0;

  /// [allowedBoolean] /// True if the prescriber allows a different drug to be dispensed from what
  /// was prescribed.
  final FhirBoolean? allowedBoolean;
  final Element? allowedBooleanElement;

  /// [allowedCodeableConcept] /// True if the prescriber allows a different drug to be dispensed from what
  /// was prescribed.
  final CodeableConcept? allowedCodeableConcept;

  /// [reason] /// Indicates the reason for the substitution, or why substitution must or must
  /// not be performed.
  final CodeableConcept? reason;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (allowedBoolean?.value != null) {
      json['allowedBoolean'] = allowedBoolean!.value;
    }
    if (allowedBooleanElement != null) {
      json['_allowedBoolean'] = allowedBooleanElement!.toJson();
    }
    if (allowedCodeableConcept != null) {
      json['allowedCodeableConcept'] = allowedCodeableConcept!.toJson();
    }
    if (reason != null) {
      json['reason'] = reason!.toJson();
    }
    return json;
  }

  factory MedicationRequestSubstitution.fromJson(Map<String, dynamic> json) {
    return MedicationRequestSubstitution(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      allowedBoolean: json['allowedBoolean'] != null
          ? FhirBoolean(json['allowedBoolean'])
          : null,
      allowedBooleanElement: json['_allowedBoolean'] != null
          ? Element.fromJson(json['_allowedBoolean'] as Map<String, dynamic>)
          : null,
      allowedCodeableConcept: json['allowedCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['allowedCodeableConcept'] as Map<String, dynamic>)
          : null,
      reason: json['reason'] != null
          ? CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  MedicationRequestSubstitution clone() => throw UnimplementedError();
  @override
  MedicationRequestSubstitution copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? allowedBoolean,
    Element? allowedBooleanElement,
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
      allowedBooleanElement:
          allowedBooleanElement ?? this.allowedBooleanElement,
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

  factory MedicationRequestSubstitution.fromYaml(dynamic yaml) => yaml is String
      ? MedicationRequestSubstitution.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationRequestSubstitution.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationRequestSubstitution cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationRequestSubstitution.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationRequestSubstitution.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
