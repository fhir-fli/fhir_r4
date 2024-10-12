// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMedicationRequest {
  ObjectBoxMedicationRequest({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? statusReason =
      ToOne<ObjectBoxCodeableConcept>();
  String intent;
  ToOne<ObjectBoxElement>? intentElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? category =
      ToMany<ObjectBoxCodeableConcept>();
  String? priority;
  ToOne<ObjectBoxElement>? priorityElement = ToOne<ObjectBoxElement>();
  bool? doNotPerform;
  ToOne<ObjectBoxElement>? doNotPerformElement = ToOne<ObjectBoxElement>();
  bool? reportedBoolean;
  ToOne<ObjectBoxElement>? reportedBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? reportedReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? medicationCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? medicationReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? supportingInformation =
      ToMany<ObjectBoxReference>();
  String? authoredOn;
  ToOne<ObjectBoxElement>? authoredOnElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? requester = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? performer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? performerType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? recorder = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? reasonReference = ToMany<ObjectBoxReference>();
  List<String>? instantiatesCanonical;
  ToMany<ObjectBoxElement>? instantiatesCanonicalElement =
      ToMany<ObjectBoxElement>();
  List<String>? instantiatesUri;
  ToMany<ObjectBoxElement>? instantiatesUriElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? basedOn = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxIdentifier>? groupIdentifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept>? courseOfTherapyType =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? insurance = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxDosage>? dosageInstruction = ToMany<ObjectBoxDosage>();
  ToOne<ObjectBoxMedicationRequestDispenseRequest>? dispenseRequest =
      ToOne<ObjectBoxMedicationRequestDispenseRequest>();
  ToOne<ObjectBoxMedicationRequestSubstitution>? substitution =
      ToOne<ObjectBoxMedicationRequestSubstitution>();
  ToOne<ObjectBoxReference>? priorPrescription = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? detectedIssue = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? eventHistory = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMedicationRequestDispenseRequest {
  ObjectBoxMedicationRequestDispenseRequest({
    this.id,
    this.extension_,
    this.modifierExtension,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxMedicationRequestInitialFill>? initialFill =
      ToOne<ObjectBoxMedicationRequestInitialFill>();
  ToOne<ObjectBoxFhirDuration>? dispenseInterval =
      ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxPeriod>? validityPeriod = ToOne<ObjectBoxPeriod>();
  int? numberOfRepeatsAllowed;
  ToOne<ObjectBoxElement>? numberOfRepeatsAllowedElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxFhirDuration>? expectedSupplyDuration =
      ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxReference>? performer = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMedicationRequestInitialFill {
  ObjectBoxMedicationRequestInitialFill({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.quantity,
    this.duration,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxFhirDuration>? duration = ToOne<ObjectBoxFhirDuration>();
}

@Entity()
class ObjectBoxMedicationRequestSubstitution {
  ObjectBoxMedicationRequestSubstitution({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.allowedBoolean,
    this.allowedBooleanElement,
    this.allowedCodeableConcept,
    this.reason,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? allowedBoolean;
  ToOne<ObjectBoxElement>? allowedBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? allowedCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? reason = ToOne<ObjectBoxCodeableConcept>();
}
