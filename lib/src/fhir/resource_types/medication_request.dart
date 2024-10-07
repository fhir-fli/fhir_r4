import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class MedicationRequest extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept? statusReason;
  final FhirCode intent;
  final Element? intentElement;
  final List<CodeableConcept>? category;
  final FhirCode? priority;
  final Element? priorityElement;
  final FhirBoolean? doNotPerform;
  final Element? doNotPerformElement;
  final FhirBoolean? reportedBoolean;
  final Element? reportedBooleanElement;
  final Reference? reportedReference;
  final CodeableConcept medicationCodeableConcept;
  final Reference medicationReference;
  final Reference subject;
  final Reference? encounter;
  final List<Reference>? supportingInformation;
  final FhirDateTime? authoredOn;
  final Element? authoredOnElement;
  final Reference? requester;
  final Reference? performer;
  final CodeableConcept? performerType;
  final Reference? recorder;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;
  final List<Reference>? basedOn;
  final Identifier? groupIdentifier;
  final CodeableConcept? courseOfTherapyType;
  final List<Reference>? insurance;
  final List<Annotation>? note;
  final List<Dosage>? dosageInstruction;
  final MedicationRequestDispenseRequest? dispenseRequest;
  final MedicationRequestSubstitution? substitution;
  final Reference? priorPrescription;
  final List<Reference>? detectedIssue;
  final List<Reference>? eventHistory;

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

@override
MedicationRequest clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationRequestDispenseRequest extends BackboneElement {
  final MedicationRequestInitialFill? initialFill;
  final FhirDuration? dispenseInterval;
  final Period? validityPeriod;
  final FhirUnsignedInt? numberOfRepeatsAllowed;
  final Element? numberOfRepeatsAllowedElement;
  final Quantity? quantity;
  final FhirDuration? expectedSupplyDuration;
  final Reference? performer;

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

@override
MedicationRequestDispenseRequest clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationRequestInitialFill extends BackboneElement {
  final Quantity? quantity;
  final FhirDuration? duration;

  MedicationRequestInitialFill({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    this.duration,
  });

@override
MedicationRequestInitialFill clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationRequestSubstitution extends BackboneElement {
  final FhirBoolean allowedBoolean;
  final Element? allowedBooleanElement;
  final CodeableConcept allowedCodeableConcept;
  final CodeableConcept? reason;

  MedicationRequestSubstitution({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.allowedBoolean,
this.allowedBooleanElement,
    required this.allowedCodeableConcept,
    this.reason,
  });

@override
MedicationRequestSubstitution clone() => throw UnimplementedError();
}

