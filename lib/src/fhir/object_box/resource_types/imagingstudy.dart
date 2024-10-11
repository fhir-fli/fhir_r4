import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ImagingStudy extends Resource {
  ImagingStudy({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    this.modality,
    required this.subject,
    this.encounter,
    this.started,
    this.basedOn,
    this.referrer,
    this.interpreter,
    this.endpoint,
    this.numberOfSeries,
    this.numberOfInstances,
    this.procedureReference,
    this.procedureCode,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.description,
    this.series,
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
  String status;
  ToMany<Coding>? modality = ToMany<Coding>();
  ToOne<Reference> subject = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String? started;
  ToMany<Reference>? basedOn = ToMany<Reference>();
  ToOne<Reference>? referrer = ToOne<Reference>();
  ToMany<Reference>? interpreter = ToMany<Reference>();
  ToMany<Reference>? endpoint = ToMany<Reference>();
  int? numberOfSeries;
  int? numberOfInstances;
  ToOne<Reference>? procedureReference = ToOne<Reference>();
  ToMany<CodeableConcept>? procedureCode = ToMany<CodeableConcept>();
  ToOne<Reference>? location = ToOne<Reference>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  String? description;
  ToMany<ImagingStudySeries>? series = ToMany<ImagingStudySeries>();
}

@Entity()
class ImagingStudySeries {
  ImagingStudySeries({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.uid,
    this.number,
    required this.modality,
    this.description,
    this.numberOfInstances,
    this.endpoint,
    this.bodySite,
    this.laterality,
    this.specimen,
    this.started,
    this.performer,
    this.instance,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String uid;
  int? number;
  ToOne<Coding> modality = ToOne<Coding>();
  String? description;
  int? numberOfInstances;
  ToMany<Reference>? endpoint = ToMany<Reference>();
  ToOne<Coding>? bodySite = ToOne<Coding>();
  ToOne<Coding>? laterality = ToOne<Coding>();
  ToMany<Reference>? specimen = ToMany<Reference>();
  String? started;
  ToMany<ImagingStudyPerformer>? performer = ToMany<ImagingStudyPerformer>();
  ToMany<ImagingStudyInstance>? instance = ToMany<ImagingStudyInstance>();
}

@Entity()
class ImagingStudyPerformer {
  ImagingStudyPerformer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.function_,
    required this.actor,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? function_ = ToOne<CodeableConcept>();
  ToOne<Reference> actor = ToOne<Reference>();
}

@Entity()
class ImagingStudyInstance {
  ImagingStudyInstance({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.uid,
    required this.sopClass,
    this.number,
    this.title,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String uid;
  ToOne<Coding> sopClass = ToOne<Coding>();
  int? number;
  String? title;
}
