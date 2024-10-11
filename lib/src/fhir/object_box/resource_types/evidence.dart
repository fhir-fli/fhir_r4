import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Evidence extends Resource {
  Evidence({
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
    this.title,
    this.citeAsReference,
    this.citeAsMarkdown,
    required this.status,
    this.date,
    this.useContext,
    this.approvalDate,
    this.lastReviewDate,
    this.publisher,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.description,
    this.assertion,
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
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? url;
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  String? title;
  ToOne<Reference>? citeAsReference = ToOne<Reference>();
  String? citeAsMarkdown;
  String status;
  String? date;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  String? approvalDate;
  String? lastReviewDate;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  ToMany<ContactDetail>? author = ToMany<ContactDetail>();
  ToMany<ContactDetail>? editor = ToMany<ContactDetail>();
  ToMany<ContactDetail>? reviewer = ToMany<ContactDetail>();
  ToMany<ContactDetail>? endorser = ToMany<ContactDetail>();
  ToMany<RelatedArtifact>? relatedArtifact = ToMany<RelatedArtifact>();
  String? description;
  String? assertion;
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
    this.note,
    this.statisticType,
    this.category,
    this.quantity,
    this.numberOfEvents,
    this.numberAffected,
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
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToOne<CodeableConcept>? statisticType = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? category = ToOne<CodeableConcept>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  int? numberOfEvents;
  int? numberAffected;
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
    this.note,
    this.numberOfStudies,
    this.numberOfParticipants,
    this.knownDataCount,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  ToMany<Annotation>? note = ToMany<Annotation>();
  int? numberOfStudies;
  int? numberOfParticipants;
  int? knownDataCount;
}

@Entity()
class EvidenceAttributeEstimate {
  EvidenceAttributeEstimate({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.note,
    this.type,
    this.quantity,
    this.level,
    this.range,
    this.attributeEstimate,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  double? level;
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
  ToMany<EvidenceVariable>? variable = ToMany<EvidenceVariable>();
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
    this.note,
    this.type,
    this.rating,
    this.rater,
    this.subcomponent,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? rating = ToOne<CodeableConcept>();
  String? rater;
  ToMany<EvidenceCertainty>? subcomponent = ToMany<EvidenceCertainty>();
}
