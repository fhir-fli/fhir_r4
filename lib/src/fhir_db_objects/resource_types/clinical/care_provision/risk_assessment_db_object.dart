import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class RiskAssessmentDbObject {
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
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<ReferenceDbObject> basedOn = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> parent = ToOne<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> method =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> occurrenceDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> occurrenceDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> occurrencePeriod = ToOne<PeriodDbObject>();
  final ToOne<ReferenceDbObject> condition = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> performer = ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> basis = ToMany<ReferenceDbObject>();
  final ToMany<RiskAssessmentPredictionDbObject> prediction =
      ToMany<RiskAssessmentPredictionDbObject>();
  final ToOne<StringDbObject> mitigation = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> mitigationElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  RiskAssessmentDbObject({required this.id});
}

@Entity()
class RiskAssessmentPredictionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> outcome =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDecimalDbObject> probabilityDecimal =
      ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> probabilityDecimalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<RangeDbObject> probabilityRange = ToOne<RangeDbObject>();
  final ToOne<CodeableConceptDbObject> qualitativeRisk =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDecimalDbObject> relativeRisk = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> relativeRiskElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> whenPeriod = ToOne<PeriodDbObject>();
  final ToOne<RangeDbObject> whenRange = ToOne<RangeDbObject>();
  final ToOne<StringDbObject> rationale = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> rationaleElement =
      ToOne<PrimitiveElementDbObject>();
  RiskAssessmentPredictionDbObject({required this.id});
}
