import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class AllergyIntolerance extends Resource {
  AllergyIntolerance({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.clinicalStatus,
    this.verificationStatus,
    this.type,
    this.category,
    this.criticality,
    this.code,
    required this.patient,
    this.encounter,
    this.onsetDateTime,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.recordedDate,
    this.recorder,
    this.asserter,
    this.lastOccurrence,
    this.note,
    this.reaction,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToOne<CodeableConcept>? clinicalStatus = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? verificationStatus = ToOne<CodeableConcept>();
  String? type;
  List<String>? category;
  String? criticality;
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  ToOne<Reference> patient = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String? onsetDateTime;
  ToOne<Age>? onsetAge = ToOne<Age>();
  ToOne<Period>? onsetPeriod = ToOne<Period>();
  ToOne<Range>? onsetRange = ToOne<Range>();
  String? onsetString;
  String? recordedDate;
  ToOne<Reference>? recorder = ToOne<Reference>();
  ToOne<Reference>? asserter = ToOne<Reference>();
  String? lastOccurrence;
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<AllergyIntoleranceReaction>? reaction =
      ToMany<AllergyIntoleranceReaction>();
}

@Entity()
class AllergyIntoleranceReaction {
  AllergyIntoleranceReaction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.substance,
    required this.manifestation,
    this.description,
    this.onset,
    this.severity,
    this.exposureRoute,
    this.note,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? substance = ToOne<CodeableConcept>();
  ToMany<CodeableConcept> manifestation = ToMany<CodeableConcept>();
  String? description;
  String? onset;
  String? severity;
  ToOne<CodeableConcept>? exposureRoute = ToOne<CodeableConcept>();
  ToMany<Annotation>? note = ToMany<Annotation>();
}
