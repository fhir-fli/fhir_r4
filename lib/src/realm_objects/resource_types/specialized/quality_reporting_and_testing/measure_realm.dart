import 'package:realm/realm.dart';
@RealmModel()
class _MeasureRealm {
  late _R4ResourceTypeRealm resourceType;
  @PrimaryKey() late String id;
  late _FhirMetaRealm meta;
  late _FhirUriRealm implicitRules;
  late _PrimitiveElementRealm implicitRulesElement;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _NarrativeRealm text;
  late List<_ResourceRealm> contained;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirUriRealm url;
  late _PrimitiveElementRealm urlElement;
  late List<_IdentifierRealm> identifier;
  late String version;
  late _PrimitiveElementRealm versionElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late String subtitle;
  late _PrimitiveElementRealm subtitleElement;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirBooleanRealm experimental;
  late _PrimitiveElementRealm experimentalElement;
  late _CodeableConceptRealm subjectCodeableConcept;
  late _ReferenceRealm subjectReference;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late String publisher;
  late _PrimitiveElementRealm publisherElement;
  late List<_ContactDetailRealm> contact;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_UsageContextRealm> useContext;
  late List<_CodeableConceptRealm> jurisdiction;
  late _FhirMarkdownRealm purpose;
  late _PrimitiveElementRealm purposeElement;
  late String usage;
  late _PrimitiveElementRealm usageElement;
  late _FhirMarkdownRealm copyright;
  late _PrimitiveElementRealm copyrightElement;
  late _FhirDateRealm approvalDate;
  late _PrimitiveElementRealm approvalDateElement;
  late _FhirDateRealm lastReviewDate;
  late _PrimitiveElementRealm lastReviewDateElement;
  late _PeriodRealm effectivePeriod;
  late List<_CodeableConceptRealm> topic;
  late List<_ContactDetailRealm> author;
  late List<_ContactDetailRealm> editor;
  late List<_ContactDetailRealm> reviewer;
  late List<_ContactDetailRealm> endorser;
  late List<_RelatedArtifactRealm> relatedArtifact;
  late List<_FhirCanonicalRealm> library_;
  late _FhirMarkdownRealm disclaimer;
  late _PrimitiveElementRealm disclaimerElement;
  late _CodeableConceptRealm scoring;
  late _CodeableConceptRealm compositeScoring;
  late List<_CodeableConceptRealm> type;
  late String riskAdjustment;
  late _PrimitiveElementRealm riskAdjustmentElement;
  late String rateAggregation;
  late _PrimitiveElementRealm rateAggregationElement;
  late _FhirMarkdownRealm rationale;
  late _PrimitiveElementRealm rationaleElement;
  late _FhirMarkdownRealm clinicalRecommendationStatement;
  late _PrimitiveElementRealm clinicalRecommendationStatementElement;
  late _CodeableConceptRealm improvementNotation;
  late List<_FhirMarkdownRealm> definition;
  late List<_PrimitiveElementRealm> definitionElement;
  late _FhirMarkdownRealm guidance;
  late _PrimitiveElementRealm guidanceElement;
  late List<_MeasureGroupRealm> group;
  late List<_MeasureSupplementalDataRealm> supplementalData;
}
@RealmModel()
class _MeasureGroupRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_MeasurePopulationRealm> population;
  late List<_MeasureStratifierRealm> stratifier;
}
@RealmModel()
class _MeasurePopulationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirExpressionRealm criteria;
}
@RealmModel()
class _MeasureStratifierRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirExpressionRealm criteria;
  late List<_MeasureComponentRealm> component;
}
@RealmModel()
class _MeasureComponentRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirExpressionRealm criteria;
}
@RealmModel()
class _MeasureSupplementalDataRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late List<_CodeableConceptRealm> usage;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirExpressionRealm criteria;
}
