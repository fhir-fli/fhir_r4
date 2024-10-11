import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class EvidenceVariable extends Resource {
  EvidenceVariable({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    this.name,
    this.title,
    this.shortTitle,
    this.subtitle,
    required this.status,
    this.date,
    this.description,
    this.note,
    this.useContext,
    this.publisher,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.actual,
    this.characteristicCombination,
    this.characteristic,
    this.handling,
    this.category,
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
  String? url;
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  String? name;
  String? title;
  String? shortTitle;
  String? subtitle;
  String status;
  String? date;
  String? description;
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  ToMany<ContactDetail>? author = ToMany<ContactDetail>();
  ToMany<ContactDetail>? editor = ToMany<ContactDetail>();
  ToMany<ContactDetail>? reviewer = ToMany<ContactDetail>();
  ToMany<ContactDetail>? endorser = ToMany<ContactDetail>();
  ToMany<RelatedArtifact>? relatedArtifact = ToMany<RelatedArtifact>();
  bool? actual;
  String? characteristicCombination;
  ToMany<EvidenceVariableCharacteristic>? characteristic =
      ToMany<EvidenceVariableCharacteristic>();
  String? handling;
  ToMany<EvidenceVariableCategory>? category =
      ToMany<EvidenceVariableCategory>();
}

@Entity()
class EvidenceVariableCharacteristic {
  EvidenceVariableCharacteristic({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.definitionReference,
    this.definitionCanonical,
    this.definitionCodeableConcept,
    this.definitionExpression,
    this.method,
    this.device,
    this.exclude,
    this.timeFromStart,
    this.groupMeasure,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  ToOne<Reference>? definitionReference = ToOne<Reference>();
  String? definitionCanonical;
  ToOne<CodeableConcept>? definitionCodeableConcept = ToOne<CodeableConcept>();
  ToOne<FhirExpression>? definitionExpression = ToOne<FhirExpression>();
  ToOne<CodeableConcept>? method = ToOne<CodeableConcept>();
  ToOne<Reference>? device = ToOne<Reference>();
  bool? exclude;
  ToOne<EvidenceVariableTimeFromStart>? timeFromStart =
      ToOne<EvidenceVariableTimeFromStart>();
  String? groupMeasure;
}

@Entity()
class EvidenceVariableTimeFromStart {
  EvidenceVariableTimeFromStart({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.quantity,
    this.range,
    this.note,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<Range>? range = ToOne<Range>();
  ToMany<Annotation>? note = ToMany<Annotation>();
}

@Entity()
class EvidenceVariableCategory {
  EvidenceVariableCategory({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? name;
  ToOne<CodeableConcept>? valueCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Quantity>? valueQuantity = ToOne<Quantity>();
  ToOne<Range>? valueRange = ToOne<Range>();
}
