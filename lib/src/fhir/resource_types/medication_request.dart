import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'medication_request.g.dart';

/// [MedicationRequest] /// An order or request for both supply of the medication and the instructions
/// for administration of the medication to a patient. The resource is called
/// "MedicationRequest" rather than "MedicationPrescription" or
/// "MedicationOrder" to generalize the use across inpatient and outpatient
/// settings, including care plans, etc., and to harmonize with workflow
/// patterns.
@JsonSerializable()
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
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.MedicationRequest);
  @override
  String get fhirType => 'MedicationRequest';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifiers associated with this medication request that are defined by
  /// business processes and/or used to refer to it when a direct URL reference
  /// to the resource itself is not appropriate. They are business identifiers
  /// assigned to this resource by the performer or other systems and remain
  /// constant as the resource is updated and propagates from server to server.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// A code specifying the current state of the order. Generally, this will be
  /// active or completed state.
  @JsonKey(name: 'status')
  final MedicationrequestStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [statusReason] /// Captures the reason for the current state of the MedicationRequest.
  @JsonKey(name: 'statusReason')
  final CodeableConcept? statusReason;

  /// [intent] /// Whether the request is a proposal, plan, or an original order.
  @JsonKey(name: 'intent')
  final MedicationRequestIntent intent;
  @JsonKey(name: '_intent')
  final Element? intentElement;

  /// [category] /// Indicates the type of medication request (for example, where the medication
  /// is expected to be consumed or administered (i.e. inpatient or outpatient)).
  @JsonKey(name: 'category')
  final List<CodeableConcept>? category;

  /// [priority] /// Indicates how quickly the Medication Request should be addressed with
  /// respect to other requests.
  @JsonKey(name: 'priority')
  final RequestPriority? priority;
  @JsonKey(name: '_priority')
  final Element? priorityElement;

  /// [doNotPerform] /// If true indicates that the provider is asking for the medication request
  /// not to occur.
  @JsonKey(name: 'doNotPerform')
  final FhirBoolean? doNotPerform;
  @JsonKey(name: '_doNotPerform')
  final Element? doNotPerformElement;

  /// [reportedBoolean] /// Indicates if this record was captured as a secondary 'reported' record
  /// rather than as an original primary source-of-truth record. It may also
  /// indicate the source of the report.
  @JsonKey(name: 'reportedBoolean')
  final FhirBoolean? reportedBoolean;
  @JsonKey(name: '_reportedBoolean')
  final Element? reportedBooleanElement;

  /// [reportedReference] /// Indicates if this record was captured as a secondary 'reported' record
  /// rather than as an original primary source-of-truth record. It may also
  /// indicate the source of the report.
  @JsonKey(name: 'reportedReference')
  final Reference? reportedReference;

  /// [medicationCodeableConcept] /// Identifies the medication being requested. This is a link to a resource
  /// that represents the medication which may be the details of the medication
  /// or simply an attribute carrying a code that identifies the medication from
  /// a known list of medications.
  @JsonKey(name: 'medicationCodeableConcept')
  final CodeableConcept? medicationCodeableConcept;

  /// [medicationReference] /// Identifies the medication being requested. This is a link to a resource
  /// that represents the medication which may be the details of the medication
  /// or simply an attribute carrying a code that identifies the medication from
  /// a known list of medications.
  @JsonKey(name: 'medicationReference')
  final Reference? medicationReference;

  /// [subject] /// A link to a resource representing the person or set of individuals to whom
  /// the medication will be given.
  @JsonKey(name: 'subject')
  final Reference subject;

  /// [encounter] /// The Encounter during which this [x] was created or to which the creation of
  /// this record is tightly associated.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [supportingInformation] /// Include additional information (for example, patient height and weight)
  /// that supports the ordering of the medication.
  @JsonKey(name: 'supportingInformation')
  final List<Reference>? supportingInformation;

  /// [authoredOn] /// The date (and perhaps time) when the prescription was initially written or
  /// authored on.
  @JsonKey(name: 'authoredOn')
  final FhirDateTime? authoredOn;
  @JsonKey(name: '_authoredOn')
  final Element? authoredOnElement;

  /// [requester] /// The individual, organization, or device that initiated the request and has
  /// responsibility for its activation.
  @JsonKey(name: 'requester')
  final Reference? requester;

  /// [performer] /// The specified desired performer of the medication treatment (e.g. the
  /// performer of the medication administration).
  @JsonKey(name: 'performer')
  final Reference? performer;

  /// [performerType] /// Indicates the type of performer of the administration of the medication.
  @JsonKey(name: 'performerType')
  final CodeableConcept? performerType;

  /// [recorder] /// The person who entered the order on behalf of another individual for
  /// example in the case of a verbal or a telephone order.
  @JsonKey(name: 'recorder')
  final Reference? recorder;

  /// [reasonCode] /// The reason or the indication for ordering or not ordering the medication.
  @JsonKey(name: 'reasonCode')
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Condition or observation that supports why the medication was ordered.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [instantiatesCanonical] /// The URL pointing to a protocol, guideline, orderset, or other definition
  /// that is adhered to in whole or in part by this MedicationRequest.
  @JsonKey(name: 'instantiatesCanonical')
  final List<FhirCanonical>? instantiatesCanonical;
  @JsonKey(name: '_instantiatesCanonical')
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri] /// The URL pointing to an externally maintained protocol, guideline, orderset
  /// or other definition that is adhered to in whole or in part by this
  /// MedicationRequest.
  @JsonKey(name: 'instantiatesUri')
  final List<FhirUri>? instantiatesUri;
  @JsonKey(name: '_instantiatesUri')
  final List<Element>? instantiatesUriElement;

  /// [basedOn] /// A plan or request that is fulfilled in whole or in part by this medication
  /// request.
  @JsonKey(name: 'basedOn')
  final List<Reference>? basedOn;

  /// [groupIdentifier] /// A shared identifier common to all requests that were authorized more or
  /// less simultaneously by a single author, representing the identifier of the
  /// requisition or prescription.
  @JsonKey(name: 'groupIdentifier')
  final Identifier? groupIdentifier;

  /// [courseOfTherapyType] /// The description of the overall patte3rn of the administration of the
  /// medication to the patient.
  @JsonKey(name: 'courseOfTherapyType')
  final CodeableConcept? courseOfTherapyType;

  /// [insurance] /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be required for delivering the requested
  /// service.
  @JsonKey(name: 'insurance')
  final List<Reference>? insurance;

  /// [note] /// Extra information about the prescription that could not be conveyed by the
  /// other attributes.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [dosageInstruction] /// Indicates how the medication is to be used by the patient.
  @JsonKey(name: 'dosageInstruction')
  final List<Dosage>? dosageInstruction;

  /// [dispenseRequest] /// Indicates the specific details for the dispense or medication supply part
  /// of a medication request (also known as a Medication Prescription or
  /// Medication Order). Note that this information is not always sent with the
  /// order. There may be in some settings (e.g. hospitals) institutional or
  /// system support for completing the dispense details in the pharmacy
  /// department.
  @JsonKey(name: 'dispenseRequest')
  final MedicationRequestDispenseRequest? dispenseRequest;

  /// [substitution] /// Indicates whether or not substitution can or should be part of the
  /// dispense. In some cases, substitution must happen, in other cases
  /// substitution must not happen. This block explains the prescriber's intent.
  /// If nothing is specified substitution may be done.
  @JsonKey(name: 'substitution')
  final MedicationRequestSubstitution? substitution;

  /// [priorPrescription] /// A link to a resource representing an earlier order related order or
  /// prescription.
  @JsonKey(name: 'priorPrescription')
  final Reference? priorPrescription;

  /// [detectedIssue] /// Indicates an actual or potential clinical issue with or between one or more
  /// active or proposed clinical actions for a patient; e.g. Drug-drug
  /// interaction, duplicate therapy, dosage alert etc.
  @JsonKey(name: 'detectedIssue')
  final List<Reference>? detectedIssue;

  /// [eventHistory] /// Links to Provenance records for past versions of this resource or
  /// fulfilling request or event resources that identify key state transitions
  /// or updates that are likely to be relevant to a user looking at the current
  /// version of the resource.
  @JsonKey(name: 'eventHistory')
  final List<Reference>? eventHistory;
  factory MedicationRequest.fromJson(Map<String, dynamic> json) =>
      _$MedicationRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationRequestToJson(this);

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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [initialFill] /// Indicates the quantity or duration for the first dispense of the
  /// medication.
  @JsonKey(name: 'initialFill')
  final MedicationRequestInitialFill? initialFill;

  /// [dispenseInterval] /// The minimum period of time that must occur between dispenses of the
  /// medication.
  @JsonKey(name: 'dispenseInterval')
  final FhirDuration? dispenseInterval;

  /// [validityPeriod] /// This indicates the validity period of a prescription (stale dating the
  /// Prescription).
  @JsonKey(name: 'validityPeriod')
  final Period? validityPeriod;

  /// [numberOfRepeatsAllowed] /// An integer indicating the number of times, in addition to the original
  /// dispense, (aka refills or repeats) that the patient can receive the
  /// prescribed medication. Usage Notes: This integer does not include the
  /// original order dispense. This means that if an order indicates dispense 30
  /// tablets plus "3 repeats", then the order can be dispensed a total of 4
  /// times and the patient can receive a total of 120 tablets. A prescriber may
  /// explicitly say that zero refills are permitted after the initial dispense.
  @JsonKey(name: 'numberOfRepeatsAllowed')
  final FhirUnsignedInt? numberOfRepeatsAllowed;
  @JsonKey(name: '_numberOfRepeatsAllowed')
  final Element? numberOfRepeatsAllowedElement;

  /// [quantity] /// The amount that is to be dispensed for one fill.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [expectedSupplyDuration] /// Identifies the period time over which the supplied product is expected to
  /// be used, or the length of time the dispense is expected to last.
  @JsonKey(name: 'expectedSupplyDuration')
  final FhirDuration? expectedSupplyDuration;

  /// [performer] /// Indicates the intended dispensing Organization specified by the prescriber.
  @JsonKey(name: 'performer')
  final Reference? performer;
  factory MedicationRequestDispenseRequest.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationRequestDispenseRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MedicationRequestDispenseRequestToJson(this);

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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [quantity] /// The amount or quantity to provide as part of the first dispense.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [duration] /// The length of time that the first dispense is expected to last.
  @JsonKey(name: 'duration')
  final FhirDuration? duration;
  factory MedicationRequestInitialFill.fromJson(Map<String, dynamic> json) =>
      _$MedicationRequestInitialFillFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationRequestInitialFillToJson(this);

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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [allowedBoolean] /// True if the prescriber allows a different drug to be dispensed from what
  /// was prescribed.
  @JsonKey(name: 'allowedBoolean')
  final FhirBoolean? allowedBoolean;
  @JsonKey(name: '_allowedBoolean')
  final Element? allowedBooleanElement;

  /// [allowedCodeableConcept] /// True if the prescriber allows a different drug to be dispensed from what
  /// was prescribed.
  @JsonKey(name: 'allowedCodeableConcept')
  final CodeableConcept? allowedCodeableConcept;

  /// [reason] /// Indicates the reason for the substitution, or why substitution must or must
  /// not be performed.
  @JsonKey(name: 'reason')
  final CodeableConcept? reason;
  factory MedicationRequestSubstitution.fromJson(Map<String, dynamic> json) =>
      _$MedicationRequestSubstitutionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationRequestSubstitutionToJson(this);

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
