// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMedicationAdministration {
  ObjectBoxMedicationAdministration({
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
    this.instantiates,
    List<ObjectBoxElement>? instantiatesElement,
    List<ObjectBoxReference>? partOf,
    required this.status,
    ObjectBoxElement? statusElement,
    List<ObjectBoxCodeableConcept>? statusReason,
    ObjectBoxCodeableConcept? category,
    ObjectBoxCodeableConcept? medicationCodeableConcept,
    ObjectBoxReference? medicationReference,
    ObjectBoxReference? subject,
    ObjectBoxReference? context,
    List<ObjectBoxReference>? supportingInformation,
    this.effectiveDateTime,
    ObjectBoxElement? effectiveDateTimeElement,
    ObjectBoxPeriod? effectivePeriod,
    List<ObjectBoxMedicationAdministrationPerformer>? performer,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    ObjectBoxReference? request,
    List<ObjectBoxReference>? device,
    List<ObjectBoxAnnotation>? note,
    ObjectBoxMedicationAdministrationDosage? dosage,
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
    this.instantiatesElement.addAll(instantiatesElement ?? []);
    this.partOf.addAll(partOf ?? []);
    this.statusElement.target = statusElement;
    this.statusReason.addAll(statusReason ?? []);
    this.category.target = category;
    this.medicationCodeableConcept.target = medicationCodeableConcept;
    this.medicationReference.target = medicationReference;
    this.subject.target = subject;
    this.context.target = context;
    this.supportingInformation.addAll(supportingInformation ?? []);
    this.effectiveDateTimeElement.target = effectiveDateTimeElement;
    this.effectivePeriod.target = effectivePeriod;
    this.performer.addAll(performer ?? []);
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.request.target = request;
    this.device.addAll(device ?? []);
    this.note.addAll(note ?? []);
    this.dosage.target = dosage;
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
  List<String>? instantiates;
  ToMany<ObjectBoxElement> instantiatesElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxReference> partOf = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> statusReason =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> medicationCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> medicationReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> context = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> supportingInformation =
      ToMany<ObjectBoxReference>();
  String? effectiveDateTime;
  ToOne<ObjectBoxElement> effectiveDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> effectivePeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxMedicationAdministrationPerformer> performer =
      ToMany<ObjectBoxMedicationAdministrationPerformer>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference> request = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> device = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToOne<ObjectBoxMedicationAdministrationDosage> dosage =
      ToOne<ObjectBoxMedicationAdministrationDosage>();
  ToMany<ObjectBoxReference> eventHistory = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMedicationAdministrationPerformer {
  ObjectBoxMedicationAdministrationPerformer({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? function_,
    ObjectBoxReference? actor,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.function_.target = function_;
    this.actor.target = actor;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> function_ = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> actor = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMedicationAdministrationDosage {
  ObjectBoxMedicationAdministrationDosage({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.text,
    ObjectBoxElement? textElement,
    ObjectBoxCodeableConcept? site,
    ObjectBoxCodeableConcept? route,
    ObjectBoxCodeableConcept? method,
    ObjectBoxQuantity? dose,
    ObjectBoxRatio? rateRatio,
    ObjectBoxQuantity? rateQuantity,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.textElement.target = textElement;
    this.site.target = site;
    this.route.target = route;
    this.method.target = method;
    this.dose.target = dose;
    this.rateRatio.target = rateRatio;
    this.rateQuantity.target = rateQuantity;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> site = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> route = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> method = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> dose = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRatio> rateRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxQuantity> rateQuantity = ToOne<ObjectBoxQuantity>();
}
