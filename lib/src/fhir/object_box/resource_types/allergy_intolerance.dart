// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAllergyIntolerance {
  ObjectBoxAllergyIntolerance({
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
    this.clinicalStatus,
    this.verificationStatus,
    this.type,
    this.typeElement,
    this.category,
    this.categoryElement,
    this.criticality,
    this.criticalityElement,
    this.code,
    required this.patient,
    this.encounter,
    this.onsetDateTime,
    this.onsetDateTimeElement,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.onsetStringElement,
    this.recordedDate,
    this.recordedDateElement,
    this.recorder,
    this.asserter,
    this.lastOccurrence,
    this.lastOccurrenceElement,
    this.note,
    this.reaction,
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
  ToOne<ObjectBoxCodeableConcept>? clinicalStatus =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? verificationStatus =
      ToOne<ObjectBoxCodeableConcept>();
  String? type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  List<String>? category;
  ToMany<ObjectBoxElement>? categoryElement = ToMany<ObjectBoxElement>();
  String? criticality;
  ToOne<ObjectBoxElement>? criticalityElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  String? onsetDateTime;
  ToOne<ObjectBoxElement>? onsetDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge>? onsetAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxPeriod>? onsetPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxRange>? onsetRange = ToOne<ObjectBoxRange>();
  String? onsetString;
  ToOne<ObjectBoxElement>? onsetStringElement = ToOne<ObjectBoxElement>();
  String? recordedDate;
  ToOne<ObjectBoxElement>? recordedDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? recorder = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? asserter = ToOne<ObjectBoxReference>();
  String? lastOccurrence;
  ToOne<ObjectBoxElement>? lastOccurrenceElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxAllergyIntoleranceReaction>? reaction =
      ToMany<ObjectBoxAllergyIntoleranceReaction>();
}

@Entity()
class ObjectBoxAllergyIntoleranceReaction {
  ObjectBoxAllergyIntoleranceReaction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.substance,
    required this.manifestation,
    this.description,
    this.descriptionElement,
    this.onset,
    this.onsetElement,
    this.severity,
    this.severityElement,
    this.exposureRoute,
    this.note,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? substance =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> manifestation =
      ToMany<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String? onset;
  ToOne<ObjectBoxElement>? onsetElement = ToOne<ObjectBoxElement>();
  String? severity;
  ToOne<ObjectBoxElement>? severityElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? exposureRoute =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
}
