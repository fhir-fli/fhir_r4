import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Measure {
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
  final String subtitle;
  final PrimitiveElement Subtitle;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final CodeableConcept subjectCodeableConcept;
  final Reference subjectReference;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final String usage;
  final PrimitiveElement Usage;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirDate approvalDate;
  final PrimitiveElement ApprovalDate;
  final FhirDate lastReviewDate;
  final PrimitiveElement LastReviewDate;
  final Period effectivePeriod;
  final List<CodeableConcept> topic;
  final List<ContactDetail> author;
  final List<ContactDetail> editor;
  final List<ContactDetail> reviewer;
  final List<ContactDetail> endorser;
  final List<RelatedArtifact> relatedArtifact;
  final List<FhirCanonical> library;
  final FhirMarkdown disclaimer;
  final PrimitiveElement Disclaimer;
  final CodeableConcept scoring;
  final CodeableConcept compositeScoring;
  final List<CodeableConcept> type;
  final String riskAdjustment;
  final PrimitiveElement RiskAdjustment;
  final String rateAggregation;
  final PrimitiveElement RateAggregation;
  final FhirMarkdown rationale;
  final PrimitiveElement Rationale;
  final FhirMarkdown clinicalRecommendationStatement;
  final PrimitiveElement ClinicalRecommendationStatement;
  final CodeableConcept improvementNotation;
  final List<FhirMarkdown> definition;
  final List<PrimitiveElement> Definition;
  final FhirMarkdown guidance;
  final PrimitiveElement Guidance;
  final List<MeasureGroup> group;
  final List<MeasureSupplementalData> supplementalData;
}

@Data()
@JsonCodable()
class MeasureGroup {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final String description;
  final PrimitiveElement Description;
  final List<MeasurePopulation> population;
  final List<MeasureStratifier> stratifier;
}

@Data()
@JsonCodable()
class MeasurePopulation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final String description;
  final PrimitiveElement Description;
  final FhirExpression criteria;
}

@Data()
@JsonCodable()
class MeasureStratifier {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final String description;
  final PrimitiveElement Description;
  final FhirExpression criteria;
  final List<MeasureComponent> component;
}

@Data()
@JsonCodable()
class MeasureComponent {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final String description;
  final PrimitiveElement Description;
  final FhirExpression criteria;
}

@Data()
@JsonCodable()
class MeasureSupplementalData {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final List<CodeableConcept> usage;
  final String description;
  final PrimitiveElement Description;
  final FhirExpression criteria;
}

@Data()
@JsonCodable()
class MeasureReport {
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
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirCanonical measure;
  final Reference subject;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final Reference reporter;
  final Period period;
  final CodeableConcept improvementNotation;
  final List<MeasureReportGroup> group;
  final List<Reference> evaluatedResource;
}

@Data()
@JsonCodable()
class MeasureReportGroup {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final List<MeasureReportPopulation> population;
  final Quantity measureScore;
  final List<MeasureReportStratifier> stratifier;
}

@Data()
@JsonCodable()
class MeasureReportPopulation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final FhirInteger count;
  final PrimitiveElement Count;
  final Reference subjectResults;
}

@Data()
@JsonCodable()
class MeasureReportStratifier {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> code;
  final List<MeasureReportStratum> stratum;
}

@Data()
@JsonCodable()
class MeasureReportStratum {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept value;
  final List<MeasureReportComponent> component;
  final List<MeasureReportPopulation1> population;
  final Quantity measureScore;
}

@Data()
@JsonCodable()
class MeasureReportComponent {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept value;
}

@Data()
@JsonCodable()
class MeasureReportPopulation1 {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final FhirInteger count;
  final PrimitiveElement Count;
  final Reference subjectResults;
}


