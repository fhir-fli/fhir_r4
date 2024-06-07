import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class CoverageDbObject {
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
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> policyHolder = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> subscriber = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> subscriberId = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> subscriberIdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> beneficiary = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> dependent = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> dependentElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> relationship =
      ToOne<CodeableConceptDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToMany<ReferenceDbObject> payor = ToMany<ReferenceDbObject>();
  final ToMany<CoverageClassDbObject> class_ = ToMany<CoverageClassDbObject>();
  final ToOne<FhirPositiveIntDbObject> order = ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> orderElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> network = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> networkElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CoverageCostToBeneficiaryDbObject> costToBeneficiary =
      ToMany<CoverageCostToBeneficiaryDbObject>();
  final ToOne<FhirBooleanDbObject> subrogation = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> subrogationElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> contract = ToMany<ReferenceDbObject>();
  CoverageDbObject({required this.id});
}

@Entity()
class CoverageClassDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> value = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  CoverageClassDbObject({required this.id});
}

@Entity()
class CoverageCostToBeneficiaryDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> valueQuantity = ToOne<QuantityDbObject>();
  final ToOne<MoneyDbObject> valueMoney = ToOne<MoneyDbObject>();
  final ToMany<CoverageExceptionDbObject> exception =
      ToMany<CoverageExceptionDbObject>();
  CoverageCostToBeneficiaryDbObject({required this.id});
}

@Entity()
class CoverageExceptionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  CoverageExceptionDbObject({required this.id});
}
