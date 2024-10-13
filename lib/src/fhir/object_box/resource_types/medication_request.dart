// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMedicationRequest {
  ObjectBoxMedicationRequest({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? statusReason,
    required this.intent,
    ObjectBoxElement? intentElement,
    List<ObjectBoxCodeableConcept>? category,
    this.priority,
    ObjectBoxElement? priorityElement,
    this.doNotPerform,
    ObjectBoxElement? doNotPerformElement,
    this.reportedBoolean,
    ObjectBoxElement? reportedBooleanElement,
    ObjectBoxReference? reportedReference,
    ObjectBoxCodeableConcept? medicationCodeableConcept,
    ObjectBoxReference? medicationReference,
    ObjectBoxReference? subject,
    ObjectBoxReference? encounter,
    List<ObjectBoxReference>? supportingInformation,
    this.authoredOn,
    ObjectBoxElement? authoredOnElement,
    ObjectBoxReference? requester,
    ObjectBoxReference? performer,
    ObjectBoxCodeableConcept? performerType,
    ObjectBoxReference? recorder,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    this.instantiatesCanonical,
    List<ObjectBoxElement>? instantiatesCanonicalElement,
    this.instantiatesUri,
    List<ObjectBoxElement>? instantiatesUriElement,
    List<ObjectBoxReference>? basedOn,
    ObjectBoxIdentifier? groupIdentifier,
    ObjectBoxCodeableConcept? courseOfTherapyType,
    List<ObjectBoxReference>? insurance,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxDosage>? dosageInstruction,
    ObjectBoxMedicationRequestDispenseRequest? dispenseRequest,
    ObjectBoxMedicationRequestSubstitution? substitution,
    ObjectBoxReference? priorPrescription,
    List<ObjectBoxReference>? detectedIssue,
    List<ObjectBoxReference>? eventHistory,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.statusElement.target = statusElement;
    this.statusReason.target = statusReason;
    this.intentElement.target = intentElement;
    this.category.addAll(category ?? []);
    this.priorityElement.target = priorityElement;
    this.doNotPerformElement.target = doNotPerformElement;
    this.reportedBooleanElement.target = reportedBooleanElement;
    this.reportedReference.target = reportedReference;
    this.medicationCodeableConcept.target = medicationCodeableConcept;
    this.medicationReference.target = medicationReference;
    this.subject.target = subject;
    this.encounter.target = encounter;
    this.supportingInformation.addAll(supportingInformation ?? []);
    this.authoredOnElement.target = authoredOnElement;
    this.requester.target = requester;
    this.performer.target = performer;
    this.performerType.target = performerType;
    this.recorder.target = recorder;
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this
        .instantiatesCanonicalElement
        .addAll(instantiatesCanonicalElement ?? []);
    this.instantiatesUriElement.addAll(instantiatesUriElement ?? []);
    this.basedOn.addAll(basedOn ?? []);
    this.groupIdentifier.target = groupIdentifier;
    this.courseOfTherapyType.target = courseOfTherapyType;
    this.insurance.addAll(insurance ?? []);
    this.note.addAll(note ?? []);
    this.dosageInstruction.addAll(dosageInstruction ?? []);
    this.dispenseRequest.target = dispenseRequest;
    this.substitution.target = substitution;
    this.priorPrescription.target = priorPrescription;
    this.detectedIssue.addAll(detectedIssue ?? []);
    this.eventHistory.addAll(eventHistory ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> statusReason =
      ToOne<ObjectBoxCodeableConcept>();
  String intent;
  ToOne<ObjectBoxElement> intentElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  String? priority;
  ToOne<ObjectBoxElement> priorityElement = ToOne<ObjectBoxElement>();
  bool? doNotPerform;
  ToOne<ObjectBoxElement> doNotPerformElement = ToOne<ObjectBoxElement>();
  bool? reportedBoolean;
  ToOne<ObjectBoxElement> reportedBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> reportedReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> medicationCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> medicationReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> supportingInformation =
      ToMany<ObjectBoxReference>();
  String? authoredOn;
  ToOne<ObjectBoxElement> authoredOnElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> requester = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> performer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> performerType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> recorder = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  List<String>? instantiatesCanonical;
  ToMany<ObjectBoxElement> instantiatesCanonicalElement =
      ToMany<ObjectBoxElement>();
  List<String>? instantiatesUri;
  ToMany<ObjectBoxElement> instantiatesUriElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxReference> basedOn = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxIdentifier> groupIdentifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept> courseOfTherapyType =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> insurance = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxDosage> dosageInstruction = ToMany<ObjectBoxDosage>();
  ToOne<ObjectBoxMedicationRequestDispenseRequest> dispenseRequest =
      ToOne<ObjectBoxMedicationRequestDispenseRequest>();
  ToOne<ObjectBoxMedicationRequestSubstitution> substitution =
      ToOne<ObjectBoxMedicationRequestSubstitution>();
  ToOne<ObjectBoxReference> priorPrescription = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> detectedIssue = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> eventHistory = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMedicationRequestDispenseRequest {
  ObjectBoxMedicationRequestDispenseRequest({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxMedicationRequestInitialFill? initialFill,
    ObjectBoxFhirDuration? dispenseInterval,
    ObjectBoxPeriod? validityPeriod,
    this.numberOfRepeatsAllowed,
    ObjectBoxElement? numberOfRepeatsAllowedElement,
    ObjectBoxQuantity? quantity,
    ObjectBoxFhirDuration? expectedSupplyDuration,
    ObjectBoxReference? performer,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.initialFill.target = initialFill;
    this.dispenseInterval.target = dispenseInterval;
    this.validityPeriod.target = validityPeriod;
    this.numberOfRepeatsAllowedElement.target = numberOfRepeatsAllowedElement;
    this.quantity.target = quantity;
    this.expectedSupplyDuration.target = expectedSupplyDuration;
    this.performer.target = performer;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxMedicationRequestInitialFill> initialFill =
      ToOne<ObjectBoxMedicationRequestInitialFill>();
  ToOne<ObjectBoxFhirDuration> dispenseInterval =
      ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxPeriod> validityPeriod = ToOne<ObjectBoxPeriod>();
  int? numberOfRepeatsAllowed;
  ToOne<ObjectBoxElement> numberOfRepeatsAllowedElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxFhirDuration> expectedSupplyDuration =
      ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxReference> performer = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMedicationRequestInitialFill {
  ObjectBoxMedicationRequestInitialFill({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxQuantity? quantity,
    ObjectBoxFhirDuration? duration,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.quantity.target = quantity;
    this.duration.target = duration;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxFhirDuration> duration = ToOne<ObjectBoxFhirDuration>();
}

@Entity()
class ObjectBoxMedicationRequestSubstitution {
  ObjectBoxMedicationRequestSubstitution({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.allowedBoolean,
    ObjectBoxElement? allowedBooleanElement,
    ObjectBoxCodeableConcept? allowedCodeableConcept,
    ObjectBoxCodeableConcept? reason,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.allowedBooleanElement.target = allowedBooleanElement;
    this.allowedCodeableConcept.target = allowedCodeableConcept;
    this.reason.target = reason;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? allowedBoolean;
  ToOne<ObjectBoxElement> allowedBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> allowedCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> reason = ToOne<ObjectBoxCodeableConcept>();
}
