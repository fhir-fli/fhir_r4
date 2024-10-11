import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ResearchElementDefinition extends Resource {
  ResearchElementDefinition({
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
    this.experimental,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.comment,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.usage,
    this.copyright,
    this.approvalDate,
    this.lastReviewDate,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.library_,
    required this.type,
    this.variableType,
    required this.characteristic,
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
  bool? experimental;
  ToOne<CodeableConcept>? subjectCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? subjectReference = ToOne<Reference>();
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  List<String>? comment;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  String? usage;
  String? copyright;
  String? approvalDate;
  String? lastReviewDate;
  ToOne<Period>? effectivePeriod = ToOne<Period>();
  ToMany<CodeableConcept>? topic = ToMany<CodeableConcept>();
  ToMany<ContactDetail>? author = ToMany<ContactDetail>();
  ToMany<ContactDetail>? editor = ToMany<ContactDetail>();
  ToMany<ContactDetail>? reviewer = ToMany<ContactDetail>();
  ToMany<ContactDetail>? endorser = ToMany<ContactDetail>();
  ToMany<RelatedArtifact>? relatedArtifact = ToMany<RelatedArtifact>();
  List<String>? library_;
  String type;
  String? variableType;
  ToMany<ResearchElementDefinitionCharacteristic> characteristic =
      ToMany<ResearchElementDefinitionCharacteristic>();
}

@Entity()
class ResearchElementDefinitionCharacteristic {
  ResearchElementDefinitionCharacteristic({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.definitionCodeableConcept,
    this.definitionCanonical,
    this.definitionExpression,
    this.definitionDataRequirement,
    this.usageContext,
    this.exclude,
    this.unitOfMeasure,
    this.studyEffectiveDescription,
    this.studyEffectiveDateTime,
    this.studyEffectivePeriod,
    this.studyEffectiveDuration,
    this.studyEffectiveTiming,
    this.studyEffectiveTimeFromStart,
    this.studyEffectiveGroupMeasure,
    this.participantEffectiveDescription,
    this.participantEffectiveDateTime,
    this.participantEffectivePeriod,
    this.participantEffectiveDuration,
    this.participantEffectiveTiming,
    this.participantEffectiveTimeFromStart,
    this.participantEffectiveGroupMeasure,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? definitionCodeableConcept = ToOne<CodeableConcept>();
  String? definitionCanonical;
  ToOne<FhirExpression>? definitionExpression = ToOne<FhirExpression>();
  ToOne<DataRequirement>? definitionDataRequirement = ToOne<DataRequirement>();
  ToMany<UsageContext>? usageContext = ToMany<UsageContext>();
  bool? exclude;
  ToOne<CodeableConcept>? unitOfMeasure = ToOne<CodeableConcept>();
  String? studyEffectiveDescription;
  String? studyEffectiveDateTime;
  ToOne<Period>? studyEffectivePeriod = ToOne<Period>();
  ToOne<FhirDuration>? studyEffectiveDuration = ToOne<FhirDuration>();
  ToOne<Timing>? studyEffectiveTiming = ToOne<Timing>();
  ToOne<FhirDuration>? studyEffectiveTimeFromStart = ToOne<FhirDuration>();
  String? studyEffectiveGroupMeasure;
  String? participantEffectiveDescription;
  String? participantEffectiveDateTime;
  ToOne<Period>? participantEffectivePeriod = ToOne<Period>();
  ToOne<FhirDuration>? participantEffectiveDuration = ToOne<FhirDuration>();
  ToOne<Timing>? participantEffectiveTiming = ToOne<Timing>();
  ToOne<FhirDuration>? participantEffectiveTimeFromStart =
      ToOne<FhirDuration>();
  String? participantEffectiveGroupMeasure;
}
