import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class ActivityDefinition extends Resource {
  ActivityDefinition({
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
    this.subtitle,
    required this.status,
    this.experimental,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subjectCanonical,
    this.date,
    this.publisher,
    this.contact,
    this.description,
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
    this.kind,
    this.profile,
    this.code,
    this.intent,
    this.priority,
    this.doNotPerform,
    this.timingTiming,
    this.timingDateTime,
    this.timingAge,
    this.timingPeriod,
    this.timingRange,
    this.timingDuration,
    this.location,
    this.participant,
    this.productReference,
    this.productCodeableConcept,
    this.quantity,
    this.dosage,
    this.bodySite,
    this.specimenRequirement,
    this.observationRequirement,
    this.observationResultRequirement,
    this.transform,
    this.dynamicValue,
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
  String? subtitle;
  String status;
  bool? experimental;
  ToOne<CodeableConcept>? subjectCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? subjectReference = ToOne<Reference>();
  String? subjectCanonical;
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
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
  String? kind;
  String? profile;
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  String? intent;
  String? priority;
  bool? doNotPerform;
  ToOne<Timing>? timingTiming = ToOne<Timing>();
  String? timingDateTime;
  ToOne<Age>? timingAge = ToOne<Age>();
  ToOne<Period>? timingPeriod = ToOne<Period>();
  ToOne<Range>? timingRange = ToOne<Range>();
  ToOne<FhirDuration>? timingDuration = ToOne<FhirDuration>();
  ToOne<Reference>? location = ToOne<Reference>();
  ToMany<ActivityDefinitionParticipant>? participant =
      ToMany<ActivityDefinitionParticipant>();
  ToOne<Reference>? productReference = ToOne<Reference>();
  ToOne<CodeableConcept>? productCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToMany<Dosage>? dosage = ToMany<Dosage>();
  ToMany<CodeableConcept>? bodySite = ToMany<CodeableConcept>();
  ToMany<Reference>? specimenRequirement = ToMany<Reference>();
  ToMany<Reference>? observationRequirement = ToMany<Reference>();
  ToMany<Reference>? observationResultRequirement = ToMany<Reference>();
  String? transform;
  ToMany<ActivityDefinitionDynamicValue>? dynamicValue =
      ToMany<ActivityDefinitionDynamicValue>();
}

@Entity()
class ActivityDefinitionParticipant {
  ActivityDefinitionParticipant({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.role,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  ToOne<CodeableConcept>? role = ToOne<CodeableConcept>();
}

@Entity()
class ActivityDefinitionDynamicValue {
  ActivityDefinitionDynamicValue({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.path,
    required this.expression,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String path;
  ToOne<FhirExpression> expression = ToOne<FhirExpression>();
}
