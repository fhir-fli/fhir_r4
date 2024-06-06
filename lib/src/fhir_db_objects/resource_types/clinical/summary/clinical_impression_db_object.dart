import 'package:objectbox/objectbox.dart';
@Entity()
class ClinicalImpressionDbObject {
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
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> statusReason = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> effectiveDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> effectiveDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> effectivePeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> assessor = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> previous = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> problem = ToMany<ReferenceDbObject>();
  final ToMany<ClinicalImpressionInvestigationDbObject> investigation = ToMany<ClinicalImpressionInvestigationDbObject>();
  final ToMany<FhirUriDbObject> protocol = ToMany<FhirUriDbObject>();
  final ToMany<PrimitiveElementDbObject> protocolElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> summary = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> summaryElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ClinicalImpressionFindingDbObject> finding = ToMany<ClinicalImpressionFindingDbObject>();
  final ToMany<CodeableConceptDbObject> prognosisCodeableConcept = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> prognosisReference = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> supportingInfo = ToMany<ReferenceDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  ClinicalImpressionDbObject({required this.id});
}
@Entity()
class ClinicalImpressionInvestigationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> item = ToMany<ReferenceDbObject>();
  ClinicalImpressionInvestigationDbObject({required this.id});
}
@Entity()
class ClinicalImpressionFindingDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> itemCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> itemReference = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> basis = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> basisElement = ToOne<PrimitiveElementDbObject>();
  ClinicalImpressionFindingDbObject({required this.id});
}
