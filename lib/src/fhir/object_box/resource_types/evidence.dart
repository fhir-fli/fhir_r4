import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Evidence extends Resource {
  Evidence({
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
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.title,
    this.titleElement,
    this.citeAsReference,
    this.citeAsMarkdown,
    this.citeAsMarkdownElement,
    required this.status,
    this.statusElement,
    this.date,
    this.dateElement,
    this.useContext,
    this.approvalDate,
    this.approvalDateElement,
    this.lastReviewDate,
    this.lastReviewDateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.description,
    this.descriptionElement,
    this.assertion,
    this.assertionElement,
    this.note,
    required this.variableDefinition,
    this.synthesisType,
    this.studyType,
    this.statistic,
    this.certainty,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  ToOne<Element>? implicitRulesElement = ToOne<Element>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? url;
  ToOne<Element>? urlElement = ToOne<Element>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  String? title;
  ToOne<Element>? titleElement = ToOne<Element>();
  ToOne<Reference>? citeAsReference = ToOne<Reference>();
  String? citeAsMarkdown;
  ToOne<Element>? citeAsMarkdownElement = ToOne<Element>();
  String status;
  ToOne<Element>? statusElement = ToOne<Element>();
  String? date;
  ToOne<Element>? dateElement = ToOne<Element>();
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  String? approvalDate;
  ToOne<Element>? approvalDateElement = ToOne<Element>();
  String? lastReviewDate;
  ToOne<Element>? lastReviewDateElement = ToOne<Element>();
  String? publisher;
  ToOne<Element>? publisherElement = ToOne<Element>();
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  ToMany<ContactDetail>? author = ToMany<ContactDetail>();
  ToMany<ContactDetail>? editor = ToMany<ContactDetail>();
  ToMany<ContactDetail>? reviewer = ToMany<ContactDetail>();
  ToMany<ContactDetail>? endorser = ToMany<ContactDetail>();
  ToMany<RelatedArtifact>? relatedArtifact = ToMany<RelatedArtifact>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  String? assertion;
  ToOne<Element>? assertionElement = ToOne<Element>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<EvidenceVariableDefinition> variableDefinition =
      ToMany<EvidenceVariableDefinition>();
  ToOne<CodeableConcept>? synthesisType = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? studyType = ToOne<CodeableConcept>();
  ToMany<EvidenceStatistic>? statistic = ToMany<EvidenceStatistic>();
  ToMany<EvidenceCertainty>? certainty = ToMany<EvidenceCertainty>();
}

@Entity()
class EvidenceVariableDefinition {
  EvidenceVariableDefinition({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    required this.variableRole,
    this.observed,
    this.intended,
    this.directnessMatch,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToOne<CodeableConcept> variableRole = ToOne<CodeableConcept>();
  ToOne<Reference>? observed = ToOne<Reference>();
  ToOne<Reference>? intended = ToOne<Reference>();
  ToOne<CodeableConcept>? directnessMatch = ToOne<CodeableConcept>();
}

@Entity()
class EvidenceStatistic {
  EvidenceStatistic({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    this.statisticType,
    this.category,
    this.quantity,
    this.numberOfEvents,
    this.numberOfEventsElement,
    this.numberAffected,
    this.numberAffectedElement,
    this.sampleSize,
    this.attributeEstimate,
    this.modelCharacteristic,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToOne<CodeableConcept>? statisticType = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? category = ToOne<CodeableConcept>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  int? numberOfEvents;
  ToOne<Element>? numberOfEventsElement = ToOne<Element>();
  int? numberAffected;
  ToOne<Element>? numberAffectedElement = ToOne<Element>();
  ToOne<EvidenceSampleSize>? sampleSize = ToOne<EvidenceSampleSize>();
  ToMany<EvidenceAttributeEstimate>? attributeEstimate =
      ToMany<EvidenceAttributeEstimate>();
  ToMany<EvidenceModelCharacteristic>? modelCharacteristic =
      ToMany<EvidenceModelCharacteristic>();
}

@Entity()
class EvidenceSampleSize {
  EvidenceSampleSize({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    this.numberOfStudies,
    this.numberOfStudiesElement,
    this.numberOfParticipants,
    this.numberOfParticipantsElement,
    this.knownDataCount,
    this.knownDataCountElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  int? numberOfStudies;
  ToOne<Element>? numberOfStudiesElement = ToOne<Element>();
  int? numberOfParticipants;
  ToOne<Element>? numberOfParticipantsElement = ToOne<Element>();
  int? knownDataCount;
  ToOne<Element>? knownDataCountElement = ToOne<Element>();
}

@Entity()
class EvidenceAttributeEstimate {
  EvidenceAttributeEstimate({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    this.type,
    this.quantity,
    this.level,
    this.levelElement,
    this.range,
    this.attributeEstimate,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  double? level;
  ToOne<Element>? levelElement = ToOne<Element>();
  ToOne<Range>? range = ToOne<Range>();
  ToMany<EvidenceAttributeEstimate>? attributeEstimate =
      ToMany<EvidenceAttributeEstimate>();
}

@Entity()
class EvidenceModelCharacteristic {
  EvidenceModelCharacteristic({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.value,
    this.variable,
    this.attributeEstimate,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  ToOne<Quantity>? value = ToOne<Quantity>();
  ToMany<Evidencevariable>? variable = ToMany<Evidencevariable>();
  ToMany<EvidenceAttributeEstimate>? attributeEstimate =
      ToMany<EvidenceAttributeEstimate>();
}

@Entity()
class Evidencevariable extends Resource {
  Evidencevariable({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.variableDefinition,
    this.handling,
    this.handlingElement,
    this.valueCategory,
    this.valueQuantity,
    this.valueRange,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference> variableDefinition = ToOne<Reference>();
  String? handling;
  ToOne<Element>? handlingElement = ToOne<Element>();
  ToMany<CodeableConcept>? valueCategory = ToMany<CodeableConcept>();
  ToMany<Quantity>? valueQuantity = ToMany<Quantity>();
  ToMany<Range>? valueRange = ToMany<Range>();
}

@Entity()
class EvidenceCertainty {
  EvidenceCertainty({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    this.type,
    this.rating,
    this.rater,
    this.raterElement,
    this.subcomponent,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? rating = ToOne<CodeableConcept>();
  String? rater;
  ToOne<Element>? raterElement = ToOne<Element>();
  ToMany<EvidenceCertainty>? subcomponent = ToMany<EvidenceCertainty>();
}
