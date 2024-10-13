// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxEvidence {
  ObjectBoxEvidence({
    this.id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.url,
    ObjectBoxElement? urlElement,
    List<ObjectBoxIdentifier>? identifier,
    this.version,
    ObjectBoxElement? versionElement,
    this.title,
    ObjectBoxElement? titleElement,
    ObjectBoxReference? citeAsReference,
    this.citeAsMarkdown,
    ObjectBoxElement? citeAsMarkdownElement,
    required this.status,
    ObjectBoxElement? statusElement,
    this.date,
    ObjectBoxElement? dateElement,
    List<ObjectBoxUsageContext>? useContext,
    this.approvalDate,
    ObjectBoxElement? approvalDateElement,
    this.lastReviewDate,
    ObjectBoxElement? lastReviewDateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    List<ObjectBoxContactDetail>? author,
    List<ObjectBoxContactDetail>? editor,
    List<ObjectBoxContactDetail>? reviewer,
    List<ObjectBoxContactDetail>? endorser,
    List<ObjectBoxRelatedArtifact>? relatedArtifact,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.assertion,
    ObjectBoxElement? assertionElement,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxEvidenceVariableDefinition>? variableDefinition,
    ObjectBoxCodeableConcept? synthesisType,
    ObjectBoxCodeableConcept? studyType,
    List<ObjectBoxEvidenceStatistic>? statistic,
    List<ObjectBoxEvidenceCertainty>? certainty,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.identifier.addAll(identifier ?? []);
    this.versionElement.target = versionElement;
    this.titleElement.target = titleElement;
    this.citeAsReference.target = citeAsReference;
    this.citeAsMarkdownElement.target = citeAsMarkdownElement;
    this.statusElement.target = statusElement;
    this.dateElement.target = dateElement;
    this.useContext.addAll(useContext ?? []);
    this.approvalDateElement.target = approvalDateElement;
    this.lastReviewDateElement.target = lastReviewDateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.author.addAll(author ?? []);
    this.editor.addAll(editor ?? []);
    this.reviewer.addAll(reviewer ?? []);
    this.endorser.addAll(endorser ?? []);
    this.relatedArtifact.addAll(relatedArtifact ?? []);
    this.descriptionElement.target = descriptionElement;
    this.assertionElement.target = assertionElement;
    this.note.addAll(note ?? []);
    this.variableDefinition.addAll(variableDefinition ?? []);
    this.synthesisType.target = synthesisType;
    this.studyType.target = studyType;
    this.statistic.addAll(statistic ?? []);
    this.certainty.addAll(certainty ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> citeAsReference = ToOne<ObjectBoxReference>();
  String? citeAsMarkdown;
  ToOne<ObjectBoxElement> citeAsMarkdownElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  String? approvalDate;
  ToOne<ObjectBoxElement> approvalDateElement = ToOne<ObjectBoxElement>();
  String? lastReviewDate;
  ToOne<ObjectBoxElement> lastReviewDateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> author = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> editor = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> reviewer = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> endorser = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxRelatedArtifact> relatedArtifact =
      ToMany<ObjectBoxRelatedArtifact>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String? assertion;
  ToOne<ObjectBoxElement> assertionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxEvidenceVariableDefinition> variableDefinition =
      ToMany<ObjectBoxEvidenceVariableDefinition>();
  ToOne<ObjectBoxCodeableConcept> synthesisType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> studyType = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxEvidenceStatistic> statistic =
      ToMany<ObjectBoxEvidenceStatistic>();
  ToMany<ObjectBoxEvidenceCertainty> certainty =
      ToMany<ObjectBoxEvidenceCertainty>();
}

@Entity()
class ObjectBoxEvidenceVariableDefinition {
  ObjectBoxEvidenceVariableDefinition({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxAnnotation>? note,
    ObjectBoxCodeableConcept? variableRole,
    ObjectBoxReference? observed,
    ObjectBoxReference? intended,
    ObjectBoxCodeableConcept? directnessMatch,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.note.addAll(note ?? []);
    this.variableRole.target = variableRole;
    this.observed.target = observed;
    this.intended.target = intended;
    this.directnessMatch.target = directnessMatch;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToOne<ObjectBoxCodeableConcept> variableRole =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> observed = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> intended = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> directnessMatch =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxEvidenceStatistic {
  ObjectBoxEvidenceStatistic({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxAnnotation>? note,
    ObjectBoxCodeableConcept? statisticType,
    ObjectBoxCodeableConcept? category,
    ObjectBoxQuantity? quantity,
    this.numberOfEvents,
    ObjectBoxElement? numberOfEventsElement,
    this.numberAffected,
    ObjectBoxElement? numberAffectedElement,
    ObjectBoxEvidenceSampleSize? sampleSize,
    List<ObjectBoxEvidenceAttributeEstimate>? attributeEstimate,
    List<ObjectBoxEvidenceModelCharacteristic>? modelCharacteristic,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.note.addAll(note ?? []);
    this.statisticType.target = statisticType;
    this.category.target = category;
    this.quantity.target = quantity;
    this.numberOfEventsElement.target = numberOfEventsElement;
    this.numberAffectedElement.target = numberAffectedElement;
    this.sampleSize.target = sampleSize;
    this.attributeEstimate.addAll(attributeEstimate ?? []);
    this.modelCharacteristic.addAll(modelCharacteristic ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToOne<ObjectBoxCodeableConcept> statisticType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  int? numberOfEvents;
  ToOne<ObjectBoxElement> numberOfEventsElement = ToOne<ObjectBoxElement>();
  int? numberAffected;
  ToOne<ObjectBoxElement> numberAffectedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxEvidenceSampleSize> sampleSize =
      ToOne<ObjectBoxEvidenceSampleSize>();
  ToMany<ObjectBoxEvidenceAttributeEstimate> attributeEstimate =
      ToMany<ObjectBoxEvidenceAttributeEstimate>();
  ToMany<ObjectBoxEvidenceModelCharacteristic> modelCharacteristic =
      ToMany<ObjectBoxEvidenceModelCharacteristic>();
}

@Entity()
class ObjectBoxEvidenceSampleSize {
  ObjectBoxEvidenceSampleSize({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxAnnotation>? note,
    this.numberOfStudies,
    ObjectBoxElement? numberOfStudiesElement,
    this.numberOfParticipants,
    ObjectBoxElement? numberOfParticipantsElement,
    this.knownDataCount,
    ObjectBoxElement? knownDataCountElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.note.addAll(note ?? []);
    this.numberOfStudiesElement.target = numberOfStudiesElement;
    this.numberOfParticipantsElement.target = numberOfParticipantsElement;
    this.knownDataCountElement.target = knownDataCountElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  int? numberOfStudies;
  ToOne<ObjectBoxElement> numberOfStudiesElement = ToOne<ObjectBoxElement>();
  int? numberOfParticipants;
  ToOne<ObjectBoxElement> numberOfParticipantsElement =
      ToOne<ObjectBoxElement>();
  int? knownDataCount;
  ToOne<ObjectBoxElement> knownDataCountElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxEvidenceAttributeEstimate {
  ObjectBoxEvidenceAttributeEstimate({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxAnnotation>? note,
    ObjectBoxCodeableConcept? type,
    ObjectBoxQuantity? quantity,
    this.level,
    ObjectBoxElement? levelElement,
    ObjectBoxRange? range,
    List<ObjectBoxEvidenceAttributeEstimate>? attributeEstimate,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.note.addAll(note ?? []);
    this.type.target = type;
    this.quantity.target = quantity;
    this.levelElement.target = levelElement;
    this.range.target = range;
    this.attributeEstimate.addAll(attributeEstimate ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  double? level;
  ToOne<ObjectBoxElement> levelElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRange> range = ToOne<ObjectBoxRange>();
  ToMany<ObjectBoxEvidenceAttributeEstimate> attributeEstimate =
      ToMany<ObjectBoxEvidenceAttributeEstimate>();
}

@Entity()
class ObjectBoxEvidenceModelCharacteristic {
  ObjectBoxEvidenceModelCharacteristic({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    ObjectBoxQuantity? value,
    List<ObjectBoxEvidenceModelCharacteristicVariable>? variable,
    List<ObjectBoxEvidenceAttributeEstimate>? attributeEstimate,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.value.target = value;
    this.variable.addAll(variable ?? []);
    this.attributeEstimate.addAll(attributeEstimate ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> value = ToOne<ObjectBoxQuantity>();
  ToMany<ObjectBoxEvidenceModelCharacteristicVariable> variable =
      ToMany<ObjectBoxEvidenceModelCharacteristicVariable>();
  ToMany<ObjectBoxEvidenceAttributeEstimate> attributeEstimate =
      ToMany<ObjectBoxEvidenceAttributeEstimate>();
}

@Entity()
class ObjectBoxEvidenceModelCharacteristicVariable {
  ObjectBoxEvidenceModelCharacteristicVariable({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? variableDefinition,
    this.handling,
    ObjectBoxElement? handlingElement,
    List<ObjectBoxCodeableConcept>? valueCategory,
    List<ObjectBoxQuantity>? valueQuantity,
    List<ObjectBoxRange>? valueRange,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.variableDefinition.target = variableDefinition;
    this.handlingElement.target = handlingElement;
    this.valueCategory.addAll(valueCategory ?? []);
    this.valueQuantity.addAll(valueQuantity ?? []);
    this.valueRange.addAll(valueRange ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> variableDefinition = ToOne<ObjectBoxReference>();
  String? handling;
  ToOne<ObjectBoxElement> handlingElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> valueCategory =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxQuantity> valueQuantity = ToMany<ObjectBoxQuantity>();
  ToMany<ObjectBoxRange> valueRange = ToMany<ObjectBoxRange>();
}

@Entity()
class ObjectBoxEvidenceCertainty {
  ObjectBoxEvidenceCertainty({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxAnnotation>? note,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? rating,
    this.rater,
    ObjectBoxElement? raterElement,
    List<ObjectBoxEvidenceCertainty>? subcomponent,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.note.addAll(note ?? []);
    this.type.target = type;
    this.rating.target = rating;
    this.raterElement.target = raterElement;
    this.subcomponent.addAll(subcomponent ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> rating = ToOne<ObjectBoxCodeableConcept>();
  String? rater;
  ToOne<ObjectBoxElement> raterElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxEvidenceCertainty> subcomponent =
      ToMany<ObjectBoxEvidenceCertainty>();
}
