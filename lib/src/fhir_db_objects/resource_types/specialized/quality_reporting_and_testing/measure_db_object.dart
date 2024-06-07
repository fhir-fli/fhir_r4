import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class MeasureDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> subtitle = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> subtitleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> experimental = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> experimentalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> subjectCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subjectReference = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> publisher = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> publisherElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ContactDetailDbObject> contact = ToMany<ContactDetailDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<UsageContextDbObject> useContext =
      ToMany<UsageContextDbObject>();
  final ToMany<CodeableConceptDbObject> jurisdiction =
      ToMany<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> purpose = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> purposeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> usage = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> usageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> copyright = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> copyrightElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> approvalDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> approvalDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> lastReviewDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> lastReviewDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> effectivePeriod = ToOne<PeriodDbObject>();
  final ToMany<CodeableConceptDbObject> topic =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ContactDetailDbObject> author = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> editor = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> reviewer =
      ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> endorser =
      ToMany<ContactDetailDbObject>();
  final ToMany<RelatedArtifactDbObject> relatedArtifact =
      ToMany<RelatedArtifactDbObject>();
  final ToMany<FhirCanonicalDbObject> library_ =
      ToMany<FhirCanonicalDbObject>();
  final ToOne<FhirMarkdownDbObject> disclaimer = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> disclaimerElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> scoring =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> compositeScoring =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> type =
      ToMany<CodeableConceptDbObject>();
  final ToOne<StringDbObject> riskAdjustment = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> riskAdjustmentElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> rateAggregation = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> rateAggregationElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> rationale = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> rationaleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> clinicalRecommendationStatement =
      ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> clinicalRecommendationStatementElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> improvementNotation =
      ToOne<CodeableConceptDbObject>();
  final ToMany<FhirMarkdownDbObject> definition =
      ToMany<FhirMarkdownDbObject>();
  final ToMany<PrimitiveElementDbObject> definitionElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> guidance = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> guidanceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<MeasureGroupDbObject> group = ToMany<MeasureGroupDbObject>();
  final ToMany<MeasureSupplementalDataDbObject> supplementalData =
      ToMany<MeasureSupplementalDataDbObject>();
  MeasureDbObject({required this.id});
}

@Entity()
class MeasureGroupDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<MeasurePopulationDbObject> population =
      ToMany<MeasurePopulationDbObject>();
  final ToMany<MeasureStratifierDbObject> stratifier =
      ToMany<MeasureStratifierDbObject>();
  MeasureGroupDbObject({required this.id});
}

@Entity()
class MeasurePopulationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirExpressionDbObject> criteria =
      ToOne<FhirExpressionDbObject>();
  MeasurePopulationDbObject({required this.id});
}

@Entity()
class MeasureStratifierDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirExpressionDbObject> criteria =
      ToOne<FhirExpressionDbObject>();
  final ToMany<MeasureComponentDbObject> component =
      ToMany<MeasureComponentDbObject>();
  MeasureStratifierDbObject({required this.id});
}

@Entity()
class MeasureComponentDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirExpressionDbObject> criteria =
      ToOne<FhirExpressionDbObject>();
  MeasureComponentDbObject({required this.id});
}

@Entity()
class MeasureSupplementalDataDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> usage =
      ToMany<CodeableConceptDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirExpressionDbObject> criteria =
      ToOne<FhirExpressionDbObject>();
  MeasureSupplementalDataDbObject({required this.id});
}
