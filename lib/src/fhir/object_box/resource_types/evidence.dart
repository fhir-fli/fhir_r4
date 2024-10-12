// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxEvidence {
  ObjectBoxEvidence({
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
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? citeAsReference = ToOne<ObjectBoxReference>();
  String? citeAsMarkdown;
  ToOne<ObjectBoxElement>? citeAsMarkdownElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext>? useContext = ToMany<ObjectBoxUsageContext>();
  String? approvalDate;
  ToOne<ObjectBoxElement>? approvalDateElement = ToOne<ObjectBoxElement>();
  String? lastReviewDate;
  ToOne<ObjectBoxElement>? lastReviewDateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail>? author = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail>? editor = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail>? reviewer = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail>? endorser = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxRelatedArtifact>? relatedArtifact =
      ToMany<ObjectBoxRelatedArtifact>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String? assertion;
  ToOne<ObjectBoxElement>? assertionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxEvidenceVariableDefinition> variableDefinition =
      ToMany<ObjectBoxEvidenceVariableDefinition>();
  ToOne<ObjectBoxCodeableConcept>? synthesisType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? studyType =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxEvidenceStatistic>? statistic =
      ToMany<ObjectBoxEvidenceStatistic>();
  ToMany<ObjectBoxEvidenceCertainty>? certainty =
      ToMany<ObjectBoxEvidenceCertainty>();
}

@Entity()
class ObjectBoxEvidenceVariableDefinition {
  ObjectBoxEvidenceVariableDefinition({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToOne<ObjectBoxCodeableConcept> variableRole =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? observed = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? intended = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? directnessMatch =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxEvidenceStatistic {
  ObjectBoxEvidenceStatistic({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToOne<ObjectBoxCodeableConcept>? statisticType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  int? numberOfEvents;
  ToOne<ObjectBoxElement>? numberOfEventsElement = ToOne<ObjectBoxElement>();
  int? numberAffected;
  ToOne<ObjectBoxElement>? numberAffectedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxEvidenceSampleSize>? sampleSize =
      ToOne<ObjectBoxEvidenceSampleSize>();
  ToMany<ObjectBoxEvidenceAttributeEstimate>? attributeEstimate =
      ToMany<ObjectBoxEvidenceAttributeEstimate>();
  ToMany<ObjectBoxEvidenceModelCharacteristic>? modelCharacteristic =
      ToMany<ObjectBoxEvidenceModelCharacteristic>();
}

@Entity()
class ObjectBoxEvidenceSampleSize {
  ObjectBoxEvidenceSampleSize({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  int? numberOfStudies;
  ToOne<ObjectBoxElement>? numberOfStudiesElement = ToOne<ObjectBoxElement>();
  int? numberOfParticipants;
  ToOne<ObjectBoxElement>? numberOfParticipantsElement =
      ToOne<ObjectBoxElement>();
  int? knownDataCount;
  ToOne<ObjectBoxElement>? knownDataCountElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxEvidenceAttributeEstimate {
  ObjectBoxEvidenceAttributeEstimate({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  double? level;
  ToOne<ObjectBoxElement>? levelElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRange>? range = ToOne<ObjectBoxRange>();
  ToMany<ObjectBoxEvidenceAttributeEstimate>? attributeEstimate =
      ToMany<ObjectBoxEvidenceAttributeEstimate>();
}

@Entity()
class ObjectBoxEvidenceModelCharacteristic {
  ObjectBoxEvidenceModelCharacteristic({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? value = ToOne<ObjectBoxQuantity>();
  ToMany<ObjectBoxEvidencevariable>? variable =
      ToMany<ObjectBoxEvidencevariable>();
  ToMany<ObjectBoxEvidenceAttributeEstimate>? attributeEstimate =
      ToMany<ObjectBoxEvidenceAttributeEstimate>();
}

@Entity()
class ObjectBoxEvidencevariable {
  ObjectBoxEvidencevariable({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> variableDefinition = ToOne<ObjectBoxReference>();
  String? handling;
  ToOne<ObjectBoxElement>? handlingElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? valueCategory =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxQuantity>? valueQuantity = ToMany<ObjectBoxQuantity>();
  ToMany<ObjectBoxRange>? valueRange = ToMany<ObjectBoxRange>();
}

@Entity()
class ObjectBoxEvidenceCertainty {
  ObjectBoxEvidenceCertainty({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? rating = ToOne<ObjectBoxCodeableConcept>();
  String? rater;
  ToOne<ObjectBoxElement>? raterElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxEvidenceCertainty>? subcomponent =
      ToMany<ObjectBoxEvidenceCertainty>();
}
