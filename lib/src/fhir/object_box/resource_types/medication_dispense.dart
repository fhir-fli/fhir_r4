// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMedicationDispense {
  ObjectBoxMedicationDispense({
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
    this.partOf,
    required this.status,
    this.statusElement,
    this.statusReasonCodeableConcept,
    this.statusReasonReference,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    this.subject,
    this.context,
    this.supportingInformation,
    this.performer,
    this.location,
    this.authorizingPrescription,
    this.type,
    this.quantity,
    this.daysSupply,
    this.whenPrepared,
    this.whenPreparedElement,
    this.whenHandedOver,
    this.whenHandedOverElement,
    this.destination,
    this.receiver,
    this.note,
    this.dosageInstruction,
    this.substitution,
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
  ToMany<ObjectBoxReference>? partOf = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? statusReasonCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? statusReasonReference =
      ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? medicationCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? medicationReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? context = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? supportingInformation =
      ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxMedicationDispensePerformer>? performer =
      ToMany<ObjectBoxMedicationDispensePerformer>();
  ToOne<ObjectBoxReference>? location = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? authorizingPrescription =
      ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity>? daysSupply = ToOne<ObjectBoxQuantity>();
  String? whenPrepared;
  ToOne<ObjectBoxElement>? whenPreparedElement = ToOne<ObjectBoxElement>();
  String? whenHandedOver;
  ToOne<ObjectBoxElement>? whenHandedOverElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? destination = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? receiver = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxDosage>? dosageInstruction = ToMany<ObjectBoxDosage>();
  ToOne<ObjectBoxMedicationDispenseSubstitution>? substitution =
      ToOne<ObjectBoxMedicationDispenseSubstitution>();
  ToMany<ObjectBoxReference>? detectedIssue = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? eventHistory = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMedicationDispensePerformer {
  ObjectBoxMedicationDispensePerformer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.function_,
    required this.actor,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? function_ =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> actor = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMedicationDispenseSubstitution {
  ObjectBoxMedicationDispenseSubstitution({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.wasSubstituted,
    this.wasSubstitutedElement,
    this.type,
    this.reason,
    this.responsibleParty,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool wasSubstituted;
  ToOne<ObjectBoxElement>? wasSubstitutedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? reason = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? responsibleParty = ToMany<ObjectBoxReference>();
}
