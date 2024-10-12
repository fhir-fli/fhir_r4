// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxImagingStudy {
  ObjectBoxImagingStudy({
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
    this.modality,
    required this.subject,
    this.encounter,
    this.started,
    this.startedElement,
    this.basedOn,
    this.referrer,
    this.interpreter,
    this.endpoint,
    this.numberOfSeries,
    this.numberOfSeriesElement,
    this.numberOfInstances,
    this.numberOfInstancesElement,
    this.procedureReference,
    this.procedureCode,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.description,
    this.descriptionElement,
    this.series,
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
  ToMany<ObjectBoxCoding>? modality = ToMany<ObjectBoxCoding>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  String? started;
  ToOne<ObjectBoxElement>? startedElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? basedOn = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? referrer = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? interpreter = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? endpoint = ToMany<ObjectBoxReference>();
  int? numberOfSeries;
  ToOne<ObjectBoxElement>? numberOfSeriesElement = ToOne<ObjectBoxElement>();
  int? numberOfInstances;
  ToOne<ObjectBoxElement>? numberOfInstancesElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? procedureReference = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? procedureCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? location = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxImagingStudySeries>? series =
      ToMany<ObjectBoxImagingStudySeries>();
}

@Entity()
class ObjectBoxImagingStudySeries {
  ObjectBoxImagingStudySeries({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.uid,
    this.uidElement,
    this.number,
    this.numberElement,
    required this.modality,
    this.description,
    this.descriptionElement,
    this.numberOfInstances,
    this.numberOfInstancesElement,
    this.endpoint,
    this.bodySite,
    this.laterality,
    this.specimen,
    this.started,
    this.startedElement,
    this.performer,
    this.instance,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String uid;
  ToOne<ObjectBoxElement>? uidElement = ToOne<ObjectBoxElement>();
  int? number;
  ToOne<ObjectBoxElement>? numberElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> modality = ToOne<ObjectBoxCoding>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  int? numberOfInstances;
  ToOne<ObjectBoxElement>? numberOfInstancesElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? endpoint = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCoding>? bodySite = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxCoding>? laterality = ToOne<ObjectBoxCoding>();
  ToMany<ObjectBoxReference>? specimen = ToMany<ObjectBoxReference>();
  String? started;
  ToOne<ObjectBoxElement>? startedElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxImagingStudyPerformer>? performer =
      ToMany<ObjectBoxImagingStudyPerformer>();
  ToMany<ObjectBoxImagingStudyInstance>? instance =
      ToMany<ObjectBoxImagingStudyInstance>();
}

@Entity()
class ObjectBoxImagingStudyPerformer {
  ObjectBoxImagingStudyPerformer({
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
class ObjectBoxImagingStudyInstance {
  ObjectBoxImagingStudyInstance({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.uid,
    this.uidElement,
    required this.sopClass,
    this.number,
    this.numberElement,
    this.title,
    this.titleElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String uid;
  ToOne<ObjectBoxElement>? uidElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> sopClass = ToOne<ObjectBoxCoding>();
  int? number;
  ToOne<ObjectBoxElement>? numberElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
}
