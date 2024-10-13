// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxImagingStudy {
  ObjectBoxImagingStudy({
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
    List<ObjectBoxCoding>? modality,
    ObjectBoxReference? subject,
    ObjectBoxReference? encounter,
    this.started,
    ObjectBoxElement? startedElement,
    List<ObjectBoxReference>? basedOn,
    ObjectBoxReference? referrer,
    List<ObjectBoxReference>? interpreter,
    List<ObjectBoxReference>? endpoint,
    this.numberOfSeries,
    ObjectBoxElement? numberOfSeriesElement,
    this.numberOfInstances,
    ObjectBoxElement? numberOfInstancesElement,
    ObjectBoxReference? procedureReference,
    List<ObjectBoxCodeableConcept>? procedureCode,
    ObjectBoxReference? location,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    List<ObjectBoxAnnotation>? note,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxImagingStudySeries>? series,
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
    this.modality.addAll(modality ?? []);
    this.subject.target = subject;
    this.encounter.target = encounter;
    this.startedElement.target = startedElement;
    this.basedOn.addAll(basedOn ?? []);
    this.referrer.target = referrer;
    this.interpreter.addAll(interpreter ?? []);
    this.endpoint.addAll(endpoint ?? []);
    this.numberOfSeriesElement.target = numberOfSeriesElement;
    this.numberOfInstancesElement.target = numberOfInstancesElement;
    this.procedureReference.target = procedureReference;
    this.procedureCode.addAll(procedureCode ?? []);
    this.location.target = location;
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.note.addAll(note ?? []);
    this.descriptionElement.target = descriptionElement;
    this.series.addAll(series ?? []);
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
  ToMany<ObjectBoxCoding> modality = ToMany<ObjectBoxCoding>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? started;
  ToOne<ObjectBoxElement> startedElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> basedOn = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference> referrer = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> interpreter = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> endpoint = ToMany<ObjectBoxReference>();
  int? numberOfSeries;
  ToOne<ObjectBoxElement> numberOfSeriesElement = ToOne<ObjectBoxElement>();
  int? numberOfInstances;
  ToOne<ObjectBoxElement> numberOfInstancesElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> procedureReference = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> procedureCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> location = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxImagingStudySeries> series =
      ToMany<ObjectBoxImagingStudySeries>();
}

@Entity()
class ObjectBoxImagingStudySeries {
  ObjectBoxImagingStudySeries({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.uid,
    ObjectBoxElement? uidElement,
    this.number,
    ObjectBoxElement? numberElement,
    ObjectBoxCoding? modality,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.numberOfInstances,
    ObjectBoxElement? numberOfInstancesElement,
    List<ObjectBoxReference>? endpoint,
    ObjectBoxCoding? bodySite,
    ObjectBoxCoding? laterality,
    List<ObjectBoxReference>? specimen,
    this.started,
    ObjectBoxElement? startedElement,
    List<ObjectBoxImagingStudyPerformer>? performer,
    List<ObjectBoxImagingStudyInstance>? instance,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.uidElement.target = uidElement;
    this.numberElement.target = numberElement;
    this.modality.target = modality;
    this.descriptionElement.target = descriptionElement;
    this.numberOfInstancesElement.target = numberOfInstancesElement;
    this.endpoint.addAll(endpoint ?? []);
    this.bodySite.target = bodySite;
    this.laterality.target = laterality;
    this.specimen.addAll(specimen ?? []);
    this.startedElement.target = startedElement;
    this.performer.addAll(performer ?? []);
    this.instance.addAll(instance ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String uid;
  ToOne<ObjectBoxElement> uidElement = ToOne<ObjectBoxElement>();
  int? number;
  ToOne<ObjectBoxElement> numberElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> modality = ToOne<ObjectBoxCoding>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  int? numberOfInstances;
  ToOne<ObjectBoxElement> numberOfInstancesElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> endpoint = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCoding> bodySite = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxCoding> laterality = ToOne<ObjectBoxCoding>();
  ToMany<ObjectBoxReference> specimen = ToMany<ObjectBoxReference>();
  String? started;
  ToOne<ObjectBoxElement> startedElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxImagingStudyPerformer> performer =
      ToMany<ObjectBoxImagingStudyPerformer>();
  ToMany<ObjectBoxImagingStudyInstance> instance =
      ToMany<ObjectBoxImagingStudyInstance>();
}

@Entity()
class ObjectBoxImagingStudyPerformer {
  ObjectBoxImagingStudyPerformer({
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
class ObjectBoxImagingStudyInstance {
  ObjectBoxImagingStudyInstance({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.uid,
    ObjectBoxElement? uidElement,
    ObjectBoxCoding? sopClass,
    this.number,
    ObjectBoxElement? numberElement,
    this.title,
    ObjectBoxElement? titleElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.uidElement.target = uidElement;
    this.sopClass.target = sopClass;
    this.numberElement.target = numberElement;
    this.titleElement.target = titleElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String uid;
  ToOne<ObjectBoxElement> uidElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> sopClass = ToOne<ObjectBoxCoding>();
  int? number;
  ToOne<ObjectBoxElement> numberElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
}
