import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Evidence {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement versionElement;
  final String title;
  final PrimitiveElement titleElement;
  final Reference citeAsReference;
  final String citeAsMarkdown;
  final PrimitiveElement citeAsMarkdownElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final List<UsageContext> useContext;
  final FhirDate approvalDate;
  final PrimitiveElement approvalDateElement;
  final FhirDate lastReviewDate;
  final PrimitiveElement lastReviewDateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final List<ContactDetail> author;
  final List<ContactDetail> editor;
  final List<ContactDetail> reviewer;
  final List<ContactDetail> endorser;
  final List<RelatedArtifact> relatedArtifact;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final FhirMarkdown assertion;
  final PrimitiveElement assertionElement;
  final List<Annotation> note;
  final List<EvidenceVariableDefinition> variableDefinition;
  final CodeableConcept synthesisType;
  final CodeableConcept studyType;
  final List<EvidenceStatistic> statistic;
  final List<EvidenceCertainty> certainty;
  const Evidence({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.url,
    required this.urlElement,
    required this.identifier,
    required this.version,
    required this.versionElement,
    required this.title,
    required this.titleElement,
    required this.citeAsReference,
    required this.citeAsMarkdown,
    required this.citeAsMarkdownElement,
    required this.status,
    required this.statusElement,
    required this.date,
    required this.dateElement,
    required this.useContext,
    required this.approvalDate,
    required this.approvalDateElement,
    required this.lastReviewDate,
    required this.lastReviewDateElement,
    required this.publisher,
    required this.publisherElement,
    required this.contact,
    required this.author,
    required this.editor,
    required this.reviewer,
    required this.endorser,
    required this.relatedArtifact,
    required this.description,
    required this.descriptionElement,
    required this.assertion,
    required this.assertionElement,
    required this.note,
    required this.variableDefinition,
    required this.synthesisType,
    required this.studyType,
    required this.statistic,
    required this.certainty,
  });
}

@Data()
@JsonCodable()
class EvidenceVariableDefinition {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<Annotation> note;
  final CodeableConcept variableRole;
  final Reference observed;
  final Reference intended;
  final CodeableConcept directnessMatch;
  const EvidenceVariableDefinition({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.description,
    required this.descriptionElement,
    required this.note,
    required this.variableRole,
    required this.observed,
    required this.intended,
    required this.directnessMatch,
  });
}

@Data()
@JsonCodable()
class EvidenceStatistic {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<Annotation> note;
  final CodeableConcept statisticType;
  final CodeableConcept category;
  final Quantity quantity;
  final FhirUnsignedInt numberOfEvents;
  final PrimitiveElement numberOfEventsElement;
  final FhirUnsignedInt numberAffected;
  final PrimitiveElement numberAffectedElement;
  final EvidenceSampleSize sampleSize;
  final List<EvidenceAttributeEstimate> attributeEstimate;
  final List<EvidenceModelCharacteristic> modelCharacteristic;
  const EvidenceStatistic({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.description,
    required this.descriptionElement,
    required this.note,
    required this.statisticType,
    required this.category,
    required this.quantity,
    required this.numberOfEvents,
    required this.numberOfEventsElement,
    required this.numberAffected,
    required this.numberAffectedElement,
    required this.sampleSize,
    required this.attributeEstimate,
    required this.modelCharacteristic,
  });
}

@Data()
@JsonCodable()
class EvidenceSampleSize {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<Annotation> note;
  final FhirUnsignedInt numberOfStudies;
  final PrimitiveElement numberOfStudiesElement;
  final FhirUnsignedInt numberOfParticipants;
  final PrimitiveElement numberOfParticipantsElement;
  final FhirUnsignedInt knownDataCount;
  final PrimitiveElement knownDataCountElement;
  const EvidenceSampleSize({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.description,
    required this.descriptionElement,
    required this.note,
    required this.numberOfStudies,
    required this.numberOfStudiesElement,
    required this.numberOfParticipants,
    required this.numberOfParticipantsElement,
    required this.knownDataCount,
    required this.knownDataCountElement,
  });
}

@Data()
@JsonCodable()
class EvidenceAttributeEstimate {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<Annotation> note;
  final CodeableConcept type;
  final Quantity quantity;
  final FhirDecimal level;
  final PrimitiveElement levelElement;
  final Range range;
  final List<EvidenceAttributeEstimate> attributeEstimate;
  const EvidenceAttributeEstimate({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.description,
    required this.descriptionElement,
    required this.note,
    required this.type,
    required this.quantity,
    required this.level,
    required this.levelElement,
    required this.range,
    required this.attributeEstimate,
  });
}

@Data()
@JsonCodable()
class EvidenceModelCharacteristic {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final Quantity value;
  final List<EvidenceVariable> variable;
  final List<EvidenceAttributeEstimate> attributeEstimate;
  const EvidenceModelCharacteristic({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.value,
    required this.variable,
    required this.attributeEstimate,
  });
}

@Data()
@JsonCodable()
class EvidenceVariable {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference variableDefinition;
  final FhirCode handling;
  final PrimitiveElement handlingElement;
  final List<CodeableConcept> valueCategory;
  final List<Quantity> valueQuantity;
  final List<Range> valueRange;
  const EvidenceVariable({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.variableDefinition,
    required this.handling,
    required this.handlingElement,
    required this.valueCategory,
    required this.valueQuantity,
    required this.valueRange,
  });
}

@Data()
@JsonCodable()
class EvidenceCertainty {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<Annotation> note;
  final CodeableConcept type;
  final CodeableConcept rating;
  final String rater;
  final PrimitiveElement raterElement;
  final List<EvidenceCertainty> subcomponent;
  const EvidenceCertainty({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.description,
    required this.descriptionElement,
    required this.note,
    required this.type,
    required this.rating,
    required this.rater,
    required this.raterElement,
    required this.subcomponent,
  });
}

@Data()
@JsonCodable()
class EvidenceReport {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<UsageContext> useContext;
  final List<Identifier> identifier;
  final List<Identifier> relatedIdentifier;
  final Reference citeAsReference;
  final String citeAsMarkdown;
  final PrimitiveElement citeAsMarkdownElement;
  final CodeableConcept type;
  final List<Annotation> note;
  final List<RelatedArtifact> relatedArtifact;
  final EvidenceReportSubject subject;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final List<ContactDetail> author;
  final List<ContactDetail> editor;
  final List<ContactDetail> reviewer;
  final List<ContactDetail> endorser;
  final List<EvidenceReportRelatesTo> relatesTo;
  final List<EvidenceReportSection> section;
  const EvidenceReport({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.url,
    required this.urlElement,
    required this.status,
    required this.statusElement,
    required this.useContext,
    required this.identifier,
    required this.relatedIdentifier,
    required this.citeAsReference,
    required this.citeAsMarkdown,
    required this.citeAsMarkdownElement,
    required this.type,
    required this.note,
    required this.relatedArtifact,
    required this.subject,
    required this.publisher,
    required this.publisherElement,
    required this.contact,
    required this.author,
    required this.editor,
    required this.reviewer,
    required this.endorser,
    required this.relatesTo,
    required this.section,
  });
}

@Data()
@JsonCodable()
class EvidenceReportSubject {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<EvidenceReportCharacteristic> characteristic;
  final List<Annotation> note;
  const EvidenceReportSubject({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.characteristic,
    required this.note,
  });
}

@Data()
@JsonCodable()
class EvidenceReportCharacteristic {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final Reference valueReference;
  final CodeableConcept valueCodeableConcept;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final Quantity valueQuantity;
  final Range valueRange;
  final FhirBoolean exclude;
  final PrimitiveElement excludeElement;
  final Period period;
  const EvidenceReportCharacteristic({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.valueReference,
    required this.valueCodeableConcept,
    required this.valueBoolean,
    required this.valueBooleanElement,
    required this.valueQuantity,
    required this.valueRange,
    required this.exclude,
    required this.excludeElement,
    required this.period,
  });
}

@Data()
@JsonCodable()
class EvidenceReportRelatesTo {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final Identifier targetIdentifier;
  final Reference targetReference;
  const EvidenceReportRelatesTo({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.targetIdentifier,
    required this.targetReference,
  });
}

@Data()
@JsonCodable()
class EvidenceReportSection {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String title;
  final PrimitiveElement titleElement;
  final CodeableConcept focus;
  final Reference focusReference;
  final List<Reference> author;
  final Narrative text;
  final FhirCode mode;
  final PrimitiveElement modeElement;
  final CodeableConcept orderedBy;
  final List<CodeableConcept> entryClassifier;
  final List<Reference> entryReference;
  final List<Quantity> entryQuantity;
  final CodeableConcept emptyReason;
  final List<EvidenceReportSection> section;
  const EvidenceReportSection({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.title,
    required this.titleElement,
    required this.focus,
    required this.focusReference,
    required this.author,
    required this.text,
    required this.mode,
    required this.modeElement,
    required this.orderedBy,
    required this.entryClassifier,
    required this.entryReference,
    required this.entryQuantity,
    required this.emptyReason,
    required this.section,
  });
}

// @Data()
// @JsonCodable()
// class EvidenceVariable {
//   final dynamic resourceType;
//   final String id;
//   final FhirMeta meta;
//   final FhirUri implicitRules;
//   final PrimitiveElement implicitRulesElement;
//   final FhirCode language;
//   final PrimitiveElement languageElement;
//   final Narrative text;
//   final List<Resource> contained;
//   final List<FhirExtension> extension_;
//   final List<FhirExtension> modifierExtension;
//   final FhirUri url;
//   final PrimitiveElement urlElement;
//   final List<Identifier> identifier;
//   final String version;
//   final PrimitiveElement versionElement;
//   final String name;
//   final PrimitiveElement nameElement;
//   final String title;
//   final PrimitiveElement titleElement;
//   final String shortTitle;
//   final PrimitiveElement shortTitleElement;
//   final String subtitle;
//   final PrimitiveElement subtitleElement;
//   final FhirCode status;
//   final PrimitiveElement statusElement;
//   final FhirDateTime date;
//   final PrimitiveElement dateElement;
//   final FhirMarkdown description;
//   final PrimitiveElement descriptionElement;
//   final List<Annotation> note;
//   final List<UsageContext> useContext;
//   final String publisher;
//   final PrimitiveElement publisherElement;
//   final List<ContactDetail> contact;
//   final List<ContactDetail> author;
//   final List<ContactDetail> editor;
//   final List<ContactDetail> reviewer;
//   final List<ContactDetail> endorser;
//   final List<RelatedArtifact> relatedArtifact;
//   final FhirBoolean actual;
//   final PrimitiveElement actualElement;
//   final FhirCode characteristicCombination;
//   final PrimitiveElement characteristicCombinationElement;
//   final List<EvidenceVariableCharacteristic> characteristic;
//   final FhirCode handling;
//   final PrimitiveElement handlingElement;
//   final List<EvidenceVariableCategory> category;
//   const EvidenceVariable({
//     required this.resourceType,
//     required this.id,
//     required this.meta,
//     required this.implicitRules,
//     required this.implicitRulesElement,
//     required this.language,
//     required this.languageElement,
//     required this.text,
//     required this.contained,
//     required this.extension_,
//     required this.modifierExtension,
//     required this.url,
//     required this.urlElement,
//     required this.identifier,
//     required this.version,
//     required this.versionElement,
//     required this.name,
//     required this.nameElement,
//     required this.title,
//     required this.titleElement,
//     required this.shortTitle,
//     required this.shortTitleElement,
//     required this.subtitle,
//     required this.subtitleElement,
//     required this.status,
//     required this.statusElement,
//     required this.date,
//     required this.dateElement,
//     required this.description,
//     required this.descriptionElement,
//     required this.note,
//     required this.useContext,
//     required this.publisher,
//     required this.publisherElement,
//     required this.contact,
//     required this.author,
//     required this.editor,
//     required this.reviewer,
//     required this.endorser,
//     required this.relatedArtifact,
//     required this.actual,
//     required this.actualElement,
//     required this.characteristicCombination,
//     required this.characteristicCombinationElement,
//     required this.characteristic,
//     required this.handling,
//     required this.handlingElement,
//     required this.category,
//   });
// }

@Data()
@JsonCodable()
class EvidenceVariableCharacteristic {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement descriptionElement;
  final Reference definitionReference;
  final String definitionCanonical;
  final PrimitiveElement definitionCanonicalElement;
  final CodeableConcept definitionCodeableConcept;
  final FhirExpression definitionExpression;
  final CodeableConcept method;
  final Reference device;
  final FhirBoolean exclude;
  final PrimitiveElement excludeElement;
  final EvidenceVariableTimeFromStart timeFromStart;
  final FhirCode groupMeasure;
  final PrimitiveElement groupMeasureElement;
  const EvidenceVariableCharacteristic({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.description,
    required this.descriptionElement,
    required this.definitionReference,
    required this.definitionCanonical,
    required this.definitionCanonicalElement,
    required this.definitionCodeableConcept,
    required this.definitionExpression,
    required this.method,
    required this.device,
    required this.exclude,
    required this.excludeElement,
    required this.timeFromStart,
    required this.groupMeasure,
    required this.groupMeasureElement,
  });
}

@Data()
@JsonCodable()
class EvidenceVariableTimeFromStart {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement descriptionElement;
  final Quantity quantity;
  final Range range;
  final List<Annotation> note;
  const EvidenceVariableTimeFromStart({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.description,
    required this.descriptionElement,
    required this.quantity,
    required this.range,
    required this.note,
  });
}

@Data()
@JsonCodable()
class EvidenceVariableCategory {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final CodeableConcept valueCodeableConcept;
  final Quantity valueQuantity;
  final Range valueRange;
  const EvidenceVariableCategory({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.valueCodeableConcept,
    required this.valueQuantity,
    required this.valueRange,
  });
}
