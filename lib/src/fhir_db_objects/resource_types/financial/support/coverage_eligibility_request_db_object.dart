import 'package:objectbox/objectbox.dart';
@Entity()
class CoverageEligibilityRequestDbObject {
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
  final ToOne<CodeableConceptDbObject> priority = ToOne<CodeableConceptDbObject>();
  final ToMany<FhirCodeDbObject> purpose = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> purposeElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> patient = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateDbObject> servicedDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> servicedDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> servicedPeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirDateTimeDbObject> created = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> createdElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> enterer = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> provider = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> insurer = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> facility = ToOne<ReferenceDbObject>();
  final ToMany<CoverageEligibilityRequestSupportingInfoDbObject> supportingInfo = ToMany<CoverageEligibilityRequestSupportingInfoDbObject>();
  final ToMany<CoverageEligibilityRequestInsuranceDbObject> insurance = ToMany<CoverageEligibilityRequestInsuranceDbObject>();
  final ToMany<CoverageEligibilityRequestItemDbObject> item = ToMany<CoverageEligibilityRequestItemDbObject>();
  CoverageEligibilityRequestDbObject({required this.id});
}
@Entity()
class CoverageEligibilityRequestSupportingInfoDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirPositiveIntDbObject> sequence = ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> sequenceElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> information = ToOne<ReferenceDbObject>();
  final ToOne<FhirBooleanDbObject> appliesToAll = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> appliesToAllElement = ToOne<PrimitiveElementDbObject>();
  CoverageEligibilityRequestSupportingInfoDbObject({required this.id});
}
@Entity()
class CoverageEligibilityRequestInsuranceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirBooleanDbObject> focal = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> focalElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> coverage = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> businessArrangement = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> businessArrangementElement = ToOne<PrimitiveElementDbObject>();
  CoverageEligibilityRequestInsuranceDbObject({required this.id});
}
@Entity()
class CoverageEligibilityRequestItemDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirPositiveIntDbObject> supportingInfoSequence = ToMany<FhirPositiveIntDbObject>();
  final ToMany<ElementDbObject> supportingInfoSequenceElement = ToMany<ElementDbObject>();
  final ToOne<CodeableConceptDbObject> category = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> productOrService = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> modifier = ToMany<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> provider = ToOne<ReferenceDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<MoneyDbObject> unitPrice = ToOne<MoneyDbObject>();
  final ToOne<ReferenceDbObject> facility = ToOne<ReferenceDbObject>();
  final ToMany<CoverageEligibilityRequestDiagnosisDbObject> diagnosis = ToMany<CoverageEligibilityRequestDiagnosisDbObject>();
  final ToMany<ReferenceDbObject> detail = ToMany<ReferenceDbObject>();
  CoverageEligibilityRequestItemDbObject({required this.id});
}
@Entity()
class CoverageEligibilityRequestDiagnosisDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> diagnosisCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> diagnosisReference = ToOne<ReferenceDbObject>();
  CoverageEligibilityRequestDiagnosisDbObject({required this.id});
}
