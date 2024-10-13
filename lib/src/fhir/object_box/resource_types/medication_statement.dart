// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMedicationStatement {
  ObjectBoxMedicationStatement({
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
    List<ObjectBoxReference>? basedOn,
    List<ObjectBoxReference>? partOf,
    required this.status,
    ObjectBoxElement? statusElement,
    List<ObjectBoxCodeableConcept>? statusReason,
    ObjectBoxCodeableConcept? category,
    ObjectBoxCodeableConcept? medicationCodeableConcept,
    ObjectBoxReference? medicationReference,
    ObjectBoxReference? subject,
    ObjectBoxReference? context,
    this.effectiveDateTime,
    ObjectBoxElement? effectiveDateTimeElement,
    ObjectBoxPeriod? effectivePeriod,
    this.dateAsserted,
    ObjectBoxElement? dateAssertedElement,
    ObjectBoxReference? informationSource,
    List<ObjectBoxReference>? derivedFrom,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxDosage>? dosage,
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
    this.basedOn.addAll(basedOn ?? []);
    this.partOf.addAll(partOf ?? []);
    this.statusElement.target = statusElement;
    this.statusReason.addAll(statusReason ?? []);
    this.category.target = category;
    this.medicationCodeableConcept.target = medicationCodeableConcept;
    this.medicationReference.target = medicationReference;
    this.subject.target = subject;
    this.context.target = context;
    this.effectiveDateTimeElement.target = effectiveDateTimeElement;
    this.effectivePeriod.target = effectivePeriod;
    this.dateAssertedElement.target = dateAssertedElement;
    this.informationSource.target = informationSource;
    this.derivedFrom.addAll(derivedFrom ?? []);
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.note.addAll(note ?? []);
    this.dosage.addAll(dosage ?? []);
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
  ToMany<ObjectBoxReference> basedOn = ToMany<ObjectBoxReference>();
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
  String? effectiveDateTime;
  ToOne<ObjectBoxElement> effectiveDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> effectivePeriod = ToOne<ObjectBoxPeriod>();
  String? dateAsserted;
  ToOne<ObjectBoxElement> dateAssertedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> informationSource = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> derivedFrom = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxDosage> dosage = ToMany<ObjectBoxDosage>();
}
