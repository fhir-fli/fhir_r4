// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAllergyIntolerance {
  ObjectBoxAllergyIntolerance({
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
    ObjectBoxCodeableConcept? clinicalStatus,
    ObjectBoxCodeableConcept? verificationStatus,
    this.type,
    ObjectBoxElement? typeElement,
    this.category,
    List<ObjectBoxElement>? categoryElement,
    this.criticality,
    ObjectBoxElement? criticalityElement,
    ObjectBoxCodeableConcept? code,
    ObjectBoxReference? patient,
    ObjectBoxReference? encounter,
    this.onsetDateTime,
    ObjectBoxElement? onsetDateTimeElement,
    ObjectBoxAge? onsetAge,
    ObjectBoxPeriod? onsetPeriod,
    ObjectBoxRange? onsetRange,
    this.onsetString,
    ObjectBoxElement? onsetStringElement,
    this.recordedDate,
    ObjectBoxElement? recordedDateElement,
    ObjectBoxReference? recorder,
    ObjectBoxReference? asserter,
    this.lastOccurrence,
    ObjectBoxElement? lastOccurrenceElement,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxAllergyIntoleranceReaction>? reaction,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.clinicalStatus.target = clinicalStatus;
    this.verificationStatus.target = verificationStatus;
    this.typeElement.target = typeElement;
    this.categoryElement.addAll(categoryElement ?? []);
    this.criticalityElement.target = criticalityElement;
    this.code.target = code;
    this.patient.target = patient;
    this.encounter.target = encounter;
    this.onsetDateTimeElement.target = onsetDateTimeElement;
    this.onsetAge.target = onsetAge;
    this.onsetPeriod.target = onsetPeriod;
    this.onsetRange.target = onsetRange;
    this.onsetStringElement.target = onsetStringElement;
    this.recordedDateElement.target = recordedDateElement;
    this.recorder.target = recorder;
    this.asserter.target = asserter;
    this.lastOccurrenceElement.target = lastOccurrenceElement;
    this.note.addAll(note ?? []);
    this.reaction.addAll(reaction ?? []);
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
  ToOne<ObjectBoxCodeableConcept> clinicalStatus =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> verificationStatus =
      ToOne<ObjectBoxCodeableConcept>();
  String? type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  List<String>? category;
  ToMany<ObjectBoxElement> categoryElement = ToMany<ObjectBoxElement>();
  String? criticality;
  ToOne<ObjectBoxElement> criticalityElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? onsetDateTime;
  ToOne<ObjectBoxElement> onsetDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge> onsetAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxPeriod> onsetPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxRange> onsetRange = ToOne<ObjectBoxRange>();
  String? onsetString;
  ToOne<ObjectBoxElement> onsetStringElement = ToOne<ObjectBoxElement>();
  String? recordedDate;
  ToOne<ObjectBoxElement> recordedDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> recorder = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> asserter = ToOne<ObjectBoxReference>();
  String? lastOccurrence;
  ToOne<ObjectBoxElement> lastOccurrenceElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxAllergyIntoleranceReaction> reaction =
      ToMany<ObjectBoxAllergyIntoleranceReaction>();
}

@Entity()
class ObjectBoxAllergyIntoleranceReaction {
  ObjectBoxAllergyIntoleranceReaction({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? substance,
    List<ObjectBoxCodeableConcept>? manifestation,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.onset,
    ObjectBoxElement? onsetElement,
    this.severity,
    ObjectBoxElement? severityElement,
    ObjectBoxCodeableConcept? exposureRoute,
    List<ObjectBoxAnnotation>? note,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.substance.target = substance;
    this.manifestation.addAll(manifestation ?? []);
    this.descriptionElement.target = descriptionElement;
    this.onsetElement.target = onsetElement;
    this.severityElement.target = severityElement;
    this.exposureRoute.target = exposureRoute;
    this.note.addAll(note ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> substance = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> manifestation =
      ToMany<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String? onset;
  ToOne<ObjectBoxElement> onsetElement = ToOne<ObjectBoxElement>();
  String? severity;
  ToOne<ObjectBoxElement> severityElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> exposureRoute =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}
