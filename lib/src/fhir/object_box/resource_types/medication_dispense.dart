// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMedicationDispense {
  ObjectBoxMedicationDispense({
    this.id,
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
    List<ObjectBoxReference>? partOf,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? statusReasonCodeableConcept,
    ObjectBoxReference? statusReasonReference,
    ObjectBoxCodeableConcept? category,
    ObjectBoxCodeableConcept? medicationCodeableConcept,
    ObjectBoxReference? medicationReference,
    ObjectBoxReference? subject,
    ObjectBoxReference? context,
    List<ObjectBoxReference>? supportingInformation,
    List<ObjectBoxMedicationDispensePerformer>? performer,
    ObjectBoxReference? location,
    List<ObjectBoxReference>? authorizingPrescription,
    ObjectBoxCodeableConcept? type,
    ObjectBoxQuantity? quantity,
    ObjectBoxQuantity? daysSupply,
    this.whenPrepared,
    ObjectBoxElement? whenPreparedElement,
    this.whenHandedOver,
    ObjectBoxElement? whenHandedOverElement,
    ObjectBoxReference? destination,
    List<ObjectBoxReference>? receiver,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxDosage>? dosageInstruction,
    ObjectBoxMedicationDispenseSubstitution? substitution,
    List<ObjectBoxReference>? detectedIssue,
    List<ObjectBoxReference>? eventHistory,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.partOf.addAll(partOf ?? []);
    this.statusElement.target = statusElement;
    this.statusReasonCodeableConcept.target = statusReasonCodeableConcept;
    this.statusReasonReference.target = statusReasonReference;
    this.category.target = category;
    this.medicationCodeableConcept.target = medicationCodeableConcept;
    this.medicationReference.target = medicationReference;
    this.subject.target = subject;
    this.context.target = context;
    this.supportingInformation.addAll(supportingInformation ?? []);
    this.performer.addAll(performer ?? []);
    this.location.target = location;
    this.authorizingPrescription.addAll(authorizingPrescription ?? []);
    this.type.target = type;
    this.quantity.target = quantity;
    this.daysSupply.target = daysSupply;
    this.whenPreparedElement.target = whenPreparedElement;
    this.whenHandedOverElement.target = whenHandedOverElement;
    this.destination.target = destination;
    this.receiver.addAll(receiver ?? []);
    this.note.addAll(note ?? []);
    this.dosageInstruction.addAll(dosageInstruction ?? []);
    this.substitution.target = substitution;
    this.detectedIssue.addAll(detectedIssue ?? []);
    this.eventHistory.addAll(eventHistory ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  ToMany<ObjectBoxReference> partOf = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> statusReasonCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> statusReasonReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> medicationCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> medicationReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> context = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> supportingInformation =
      ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxMedicationDispensePerformer> performer =
      ToMany<ObjectBoxMedicationDispensePerformer>();
  ToOne<ObjectBoxReference> location = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> authorizingPrescription =
      ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> daysSupply = ToOne<ObjectBoxQuantity>();
  String? whenPrepared;
  ToOne<ObjectBoxElement> whenPreparedElement = ToOne<ObjectBoxElement>();
  String? whenHandedOver;
  ToOne<ObjectBoxElement> whenHandedOverElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> destination = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> receiver = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxDosage> dosageInstruction = ToMany<ObjectBoxDosage>();
  ToOne<ObjectBoxMedicationDispenseSubstitution> substitution =
      ToOne<ObjectBoxMedicationDispenseSubstitution>();
  ToMany<ObjectBoxReference> detectedIssue = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> eventHistory = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMedicationDispensePerformer {
  ObjectBoxMedicationDispensePerformer({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? function_,
    ObjectBoxReference? actor,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.function_.target = function_;
    this.actor.target = actor;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> function_ = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> actor = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMedicationDispenseSubstitution {
  ObjectBoxMedicationDispenseSubstitution({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.wasSubstituted,
    ObjectBoxElement? wasSubstitutedElement,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxCodeableConcept>? reason,
    List<ObjectBoxReference>? responsibleParty,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.wasSubstitutedElement.target = wasSubstitutedElement;
    this.type.target = type;
    this.reason.addAll(reason ?? []);
    this.responsibleParty.addAll(responsibleParty ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool wasSubstituted;
  ToOne<ObjectBoxElement> wasSubstitutedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> reason = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> responsibleParty = ToMany<ObjectBoxReference>();
}
