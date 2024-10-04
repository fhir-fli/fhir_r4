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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement Url;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement Version;
  final String title;
  final PrimitiveElement Title;
  final Reference citeAsReference;
  final String citeAsMarkdown;
  final PrimitiveElement CiteAsMarkdown;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final List<UsageContext> useContext;
  final FhirDate approvalDate;
  final PrimitiveElement ApprovalDate;
  final FhirDate lastReviewDate;
  final PrimitiveElement LastReviewDate;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final List<ContactDetail> author;
  final List<ContactDetail> editor;
  final List<ContactDetail> reviewer;
  final List<ContactDetail> endorser;
  final List<RelatedArtifact> relatedArtifact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final FhirMarkdown assertion;
  final PrimitiveElement Assertion;
  final List<Annotation> note;
  final List<EvidenceVariableDefinition> variableDefinition;
  final CodeableConcept synthesisType;
  final CodeableConcept studyType;
  final List<EvidenceStatistic> statistic;
  final List<EvidenceCertainty> certainty;
}

@Data()
@JsonCodable()
class EvidenceVariableDefinition {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<Annotation> note;
  final CodeableConcept variableRole;
  final Reference observed;
  final Reference intended;
  final CodeableConcept directnessMatch;
}

@Data()
@JsonCodable()
class EvidenceStatistic {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final List<Annotation> note;
  final CodeableConcept statisticType;
  final CodeableConcept category;
  final Quantity quantity;
  final FhirUnsignedInt numberOfEvents;
  final PrimitiveElement NumberOfEvents;
  final FhirUnsignedInt numberAffected;
  final PrimitiveElement NumberAffected;
  final EvidenceSampleSize sampleSize;
  final List<EvidenceAttributeEstimate> attributeEstimate;
  final List<EvidenceModelCharacteristic> modelCharacteristic;
}

@Data()
@JsonCodable()
class EvidenceSampleSize {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final List<Annotation> note;
  final FhirUnsignedInt numberOfStudies;
  final PrimitiveElement NumberOfStudies;
  final FhirUnsignedInt numberOfParticipants;
  final PrimitiveElement NumberOfParticipants;
  final FhirUnsignedInt knownDataCount;
  final PrimitiveElement KnownDataCount;
}

@Data()
@JsonCodable()
class EvidenceAttributeEstimate {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final List<Annotation> note;
  final CodeableConcept type;
  final Quantity quantity;
  final FhirDecimal level;
  final PrimitiveElement Level;
  final Range range;
  final List<EvidenceAttributeEstimate> attributeEstimate;
}

@Data()
@JsonCodable()
class EvidenceModelCharacteristic {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final Quantity value;
  final List<EvidenceVariable> variable;
  final List<EvidenceAttributeEstimate> attributeEstimate;
}

@Data()
@JsonCodable()
class EvidenceVariable {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference variableDefinition;
  final FhirCode handling;
  final PrimitiveElement Handling;
  final List<CodeableConcept> valueCategory;
  final List<Quantity> valueQuantity;
  final List<Range> valueRange;
}

@Data()
@JsonCodable()
class EvidenceCertainty {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final List<Annotation> note;
  final CodeableConcept type;
  final CodeableConcept rating;
  final String rater;
  final PrimitiveElement Rater;
  final List<EvidenceCertainty> subcomponent;
}

@Data()
@JsonCodable()
class EvidenceReport {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement Url;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<UsageContext> useContext;
  final List<Identifier> identifier;
  final List<Identifier> relatedIdentifier;
  final Reference citeAsReference;
  final String citeAsMarkdown;
  final PrimitiveElement CiteAsMarkdown;
  final CodeableConcept type;
  final List<Annotation> note;
  final List<RelatedArtifact> relatedArtifact;
  final EvidenceReportSubject subject;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final List<ContactDetail> author;
  final List<ContactDetail> editor;
  final List<ContactDetail> reviewer;
  final List<ContactDetail> endorser;
  final List<EvidenceReportRelatesTo> relatesTo;
  final List<EvidenceReportSection> section;
}

@Data()
@JsonCodable()
class EvidenceReportSubject {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<EvidenceReportCharacteristic> characteristic;
  final List<Annotation> note;
}

@Data()
@JsonCodable()
class EvidenceReportCharacteristic {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final Reference valueReference;
  final CodeableConcept valueCodeableConcept;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final Quantity valueQuantity;
  final Range valueRange;
  final FhirBoolean exclude;
  final PrimitiveElement Exclude;
  final Period period;
}

@Data()
@JsonCodable()
class EvidenceReportRelatesTo {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final Identifier targetIdentifier;
  final Reference targetReference;
}

@Data()
@JsonCodable()
class EvidenceReportSection {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String title;
  final PrimitiveElement Title;
  final CodeableConcept focus;
  final Reference focusReference;
  final List<Reference> author;
  final Narrative text;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final CodeableConcept orderedBy;
  final List<CodeableConcept> entryClassifier;
  final List<Reference> entryReference;
  final List<Quantity> entryQuantity;
  final CodeableConcept emptyReason;
  final List<EvidenceReportSection> section;
}

@Data()
@JsonCodable()
class EvidenceVariable {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement Url;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final String shortTitle;
  final PrimitiveElement ShortTitle;
  final String subtitle;
  final PrimitiveElement Subtitle;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<Annotation> note;
  final List<UsageContext> useContext;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final List<ContactDetail> author;
  final List<ContactDetail> editor;
  final List<ContactDetail> reviewer;
  final List<ContactDetail> endorser;
  final List<RelatedArtifact> relatedArtifact;
  final FhirBoolean actual;
  final PrimitiveElement Actual;
  final FhirCode characteristicCombination;
  final PrimitiveElement CharacteristicCombination;
  final List<EvidenceVariableCharacteristic> characteristic;
  final FhirCode handling;
  final PrimitiveElement Handling;
  final List<EvidenceVariableCategory> category;
}

@Data()
@JsonCodable()
class EvidenceVariableCharacteristic {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final Reference definitionReference;
  final String definitionCanonical;
  final PrimitiveElement DefinitionCanonical;
  final CodeableConcept definitionCodeableConcept;
  final FhirExpression definitionExpression;
  final CodeableConcept method;
  final Reference device;
  final FhirBoolean exclude;
  final PrimitiveElement Exclude;
  final EvidenceVariableTimeFromStart timeFromStart;
  final FhirCode groupMeasure;
  final PrimitiveElement GroupMeasure;
}

@Data()
@JsonCodable()
class EvidenceVariableTimeFromStart {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final Quantity quantity;
  final Range range;
  final List<Annotation> note;
}

@Data()
@JsonCodable()
class EvidenceVariableCategory {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final CodeableConcept valueCodeableConcept;
  final Quantity valueQuantity;
  final Range valueRange;
}


