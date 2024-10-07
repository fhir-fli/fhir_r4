import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

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
    required this.medicationCodeableConcept,
    required this.medicationReference,
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
  }) : super(resourceType: R4ResourceType.MedicationRequest);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifiers associated with this medication request that are defined by
  /// business processes and/or used to refer to it when a direct URL reference
  /// to the resource itself is not appropriate. They are business identifiers
  /// assigned to this resource by the performer or other systems and remain
  /// constant as the resource is updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [status] /// A code specifying the current state of the order. Generally, this will be
  /// active or completed state.
  final FhirCode status;
  final Element? statusElement;

  /// [statusReason] /// Captures the reason for the current state of the MedicationRequest.
  final CodeableConcept? statusReason;

  /// [intent] /// Whether the request is a proposal, plan, or an original order.
  final FhirCode intent;
  final Element? intentElement;

  /// [category] /// Indicates the type of medication request (for example, where the medication
  /// is expected to be consumed or administered (i.e. inpatient or outpatient)).
  final List<CodeableConcept>? category;

  /// [priority] /// Indicates how quickly the Medication Request should be addressed with
  /// respect to other requests.
  final FhirCode? priority;
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
  final CodeableConcept medicationCodeableConcept;

  /// [medicationReference] /// Identifies the medication being requested. This is a link to a resource
  /// that represents the medication which may be the details of the medication
  /// or simply an attribute carrying a code that identifies the medication from
  /// a known list of medications.
  final Reference medicationReference;

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
  MedicationRequest clone() => throw UnimplementedError();
  MedicationRequest copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? statusReason,
    FhirCode? intent,
    Element? intentElement,
    List<CodeableConcept>? category,
    FhirCode? priority,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  MedicationRequestDispenseRequest clone() => throw UnimplementedError();
  MedicationRequestDispenseRequest copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicationRequestInitialFill] /// Indicates the quantity or duration for the first dispense of the
/// medication.
class MedicationRequestInitialFill extends BackboneElement {
  MedicationRequestInitialFill({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    this.duration,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [quantity] /// The amount or quantity to provide as part of the first dispense.
  final Quantity? quantity;

  /// [duration] /// The length of time that the first dispense is expected to last.
  final FhirDuration? duration;
  @override
  MedicationRequestInitialFill clone() => throw UnimplementedError();
  MedicationRequestInitialFill copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? quantity,
    FhirDuration? duration,
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

@JsonCodable()
@Data()
@Entity()

/// [MedicationRequestSubstitution] /// Indicates whether or not substitution can or should be part of the
/// dispense. In some cases, substitution must happen, in other cases
/// substitution must not happen. This block explains the prescriber's intent.
/// If nothing is specified substitution may be done.
class MedicationRequestSubstitution extends BackboneElement {
  MedicationRequestSubstitution({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.allowedBoolean,
    this.allowedBooleanElement,
    required this.allowedCodeableConcept,
    this.reason,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [allowedBoolean] /// True if the prescriber allows a different drug to be dispensed from what
  /// was prescribed.
  final FhirBoolean allowedBoolean;
  final Element? allowedBooleanElement;

  /// [allowedCodeableConcept] /// True if the prescriber allows a different drug to be dispensed from what
  /// was prescribed.
  final CodeableConcept allowedCodeableConcept;

  /// [reason] /// Indicates the reason for the substitution, or why substitution must or must
  /// not be performed.
  final CodeableConcept? reason;
  @override
  MedicationRequestSubstitution clone() => throw UnimplementedError();
  MedicationRequestSubstitution copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? allowedBoolean,
    Element? allowedBooleanElement,
    CodeableConcept? allowedCodeableConcept,
    CodeableConcept? reason,
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
    );
  }
}
