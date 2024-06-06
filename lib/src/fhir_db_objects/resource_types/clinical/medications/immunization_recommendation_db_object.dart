import 'package:objectbox/objectbox.dart';
@Entity()
class ImmunizationRecommendationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<R4ResourceTypeDbObject> resourceType = ToOne<R4ResourceTypeDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<ReferenceDbObject> patient = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> authority = ToOne<ReferenceDbObject>();
  final ToMany<ImmunizationRecommendationRecommendationDbObject> recommendation = ToMany<ImmunizationRecommendationRecommendationDbObject>();
  ImmunizationRecommendationDbObject({required this.id});
}
@Entity()
class ImmunizationRecommendationRecommendationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<CodeableConceptDbObject> vaccineCode = ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> targetDisease = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> contraindicatedVaccineCode = ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> forecastStatus = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> forecastReason = ToMany<CodeableConceptDbObject>();
  final ToMany<ImmunizationRecommendationDateCriterionDbObject> dateCriterion = ToMany<ImmunizationRecommendationDateCriterionDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> series = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> seriesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> doseNumberPositiveInt = ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> doseNumberPositiveIntElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> doseNumberString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> doseNumberStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> seriesDosesPositiveInt = ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> seriesDosesPositiveIntElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> seriesDosesString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> seriesDosesStringElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> supportingImmunization = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> supportingPatientInformation = ToMany<ReferenceDbObject>();
  ImmunizationRecommendationRecommendationDbObject({required this.id});
}
@Entity()
class ImmunizationRecommendationDateCriterionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDateTimeDbObject> value = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement = ToOne<PrimitiveElementDbObject>();
  ImmunizationRecommendationDateCriterionDbObject({required this.id});
}
