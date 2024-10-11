import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Specimen extends Resource {
  Specimen({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.accessionIdentifier,
    this.status,
    this.type,
    this.subject,
    this.receivedTime,
    this.parent,
    this.request,
    this.collection,
    this.processing,
    this.container,
    this.condition,
    this.note,
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
  ToOne<Identifier>? accessionIdentifier = ToOne<Identifier>();
  String? status;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Reference>? subject = ToOne<Reference>();
  String? receivedTime;
  ToMany<Reference>? parent = ToMany<Reference>();
  ToMany<Reference>? request = ToMany<Reference>();
  ToOne<SpecimenCollection>? collection = ToOne<SpecimenCollection>();
  ToMany<SpecimenProcessing>? processing = ToMany<SpecimenProcessing>();
  ToMany<SpecimenContainer>? container = ToMany<SpecimenContainer>();
  ToMany<CodeableConcept>? condition = ToMany<CodeableConcept>();
  ToMany<Annotation>? note = ToMany<Annotation>();
}

@Entity()
class SpecimenCollection {
  SpecimenCollection({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.collector,
    this.collectedDateTime,
    this.collectedPeriod,
    this.duration,
    this.quantity,
    this.method,
    this.bodySite,
    this.fastingStatusCodeableConcept,
    this.fastingStatusDuration,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference>? collector = ToOne<Reference>();
  String? collectedDateTime;
  ToOne<Period>? collectedPeriod = ToOne<Period>();
  ToOne<FhirDuration>? duration = ToOne<FhirDuration>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<CodeableConcept>? method = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? bodySite = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? fastingStatusCodeableConcept =
      ToOne<CodeableConcept>();
  ToOne<FhirDuration>? fastingStatusDuration = ToOne<FhirDuration>();
}

@Entity()
class SpecimenProcessing {
  SpecimenProcessing({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.procedure,
    this.additive,
    this.timeDateTime,
    this.timePeriod,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  ToOne<CodeableConcept>? procedure = ToOne<CodeableConcept>();
  ToMany<Reference>? additive = ToMany<Reference>();
  String? timeDateTime;
  ToOne<Period>? timePeriod = ToOne<Period>();
}

@Entity()
class SpecimenContainer {
  SpecimenContainer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.description,
    this.type,
    this.capacity,
    this.specimenQuantity,
    this.additiveCodeableConcept,
    this.additiveReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? description;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Quantity>? capacity = ToOne<Quantity>();
  ToOne<Quantity>? specimenQuantity = ToOne<Quantity>();
  ToOne<CodeableConcept>? additiveCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? additiveReference = ToOne<Reference>();
}
