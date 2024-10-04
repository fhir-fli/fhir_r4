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
  final String name;
  final PrimitiveElement nameElement;
  final String title;
  final PrimitiveElement titleElement;
  final String subtitle;
  final PrimitiveElement subtitleElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirBoolean experimental;
  final PrimitiveElement experimentalElement;
  final CodeableConcept subjectCodeableConcept;
  final Reference subjectReference;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement purposeElement;
  final String usage;
  final PrimitiveElement usageElement;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  final FhirDate approvalDate;
  final PrimitiveElement approvalDateElement;
  final FhirDate lastReviewDate;
  final PrimitiveElement lastReviewDateElement;
  final Period effectivePeriod;
  final List<CodeableConcept> topic;
  final List<ContactDetail> author;
  final List<ContactDetail> editor;
  final List<ContactDetail> reviewer;
  final List<ContactDetail> endorser;
  final List<RelatedArtifact> relatedArtifact;
  final List<FhirCanonical> library_;
  final FhirMarkdown disclaimer;
  final PrimitiveElement disclaimerElement;
  final CodeableConcept scoring;
  final CodeableConcept compositeScoring;
  final List<CodeableConcept> type;
  final String riskAdjustment;
  final PrimitiveElement riskAdjustmentElement;
  final String rateAggregation;
  final PrimitiveElement rateAggregationElement;
  final FhirMarkdown rationale;
  final PrimitiveElement rationaleElement;
  final FhirMarkdown clinicalRecommendationStatement;
  final PrimitiveElement clinicalRecommendationStatementElement;
  final CodeableConcept improvementNotation;
  final List<FhirMarkdown> definition;
  final List<PrimitiveElement> definitionElement;
  final FhirMarkdown guidance;
  final PrimitiveElement guidanceElement;
  final List<MeasureGroup> group;
  final List<MeasureSupplementalData> supplementalData;
}

@Data()
@JsonCodable()
class MeasureGroup {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<MeasurePopulation> population;
  final List<MeasureStratifier> stratifier;
}

@Data()
@JsonCodable()
class MeasurePopulation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirExpression criteria;
}

@Data()
@JsonCodable()
class MeasureStratifier {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirExpression criteria;
  final List<MeasureComponent> component;
}

@Data()
@JsonCodable()
class MeasureComponent {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirExpression criteria;
}

@Data()
@JsonCodable()
class MeasureSupplementalData {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final List<CodeableConcept> usage;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirExpression criteria;
}

@Data()
@JsonCodable()
class MeasureReport {
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
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final FhirCanonical measure;
  final Reference subject;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
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
  final List<FhirExtension> extension_;
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
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final FhirInteger count;
  final PrimitiveElement countElement;
  final Reference subjectResults;
}

@Data()
@JsonCodable()
class MeasureReportStratifier {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> code;
  final List<MeasureReportStratum> stratum;
}

@Data()
@JsonCodable()
class MeasureReportStratum {
  final String id;
  final List<FhirExtension> extension_;
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
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept value;
}

@Data()
@JsonCodable()
class MeasureReportPopulation1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final FhirInteger count;
  final PrimitiveElement countElement;
  final Reference subjectResults;
}


