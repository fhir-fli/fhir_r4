import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class InsurancePlanDbObject {
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
  final ToMany<CodeableConceptDbObject> type =
      ToMany<CodeableConceptDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> alias = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> aliasElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToOne<ReferenceDbObject> ownedBy = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> administeredBy = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> coverageArea = ToMany<ReferenceDbObject>();
  final ToMany<InsurancePlanContactDbObject> contact =
      ToMany<InsurancePlanContactDbObject>();
  final ToMany<ReferenceDbObject> endpoint = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> network = ToMany<ReferenceDbObject>();
  final ToMany<InsurancePlanCoverageDbObject> coverage =
      ToMany<InsurancePlanCoverageDbObject>();
  final ToMany<InsurancePlanPlanDbObject> plan =
      ToMany<InsurancePlanPlanDbObject>();
  InsurancePlanDbObject({required this.id});
}

@Entity()
class InsurancePlanContactDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> purpose =
      ToOne<CodeableConceptDbObject>();
  final ToOne<HumanNameDbObject> name = ToOne<HumanNameDbObject>();
  final ToMany<ContactPointDbObject> telecom = ToMany<ContactPointDbObject>();
  final ToOne<AddressDbObject> address = ToOne<AddressDbObject>();
  InsurancePlanContactDbObject({required this.id});
}

@Entity()
class InsurancePlanCoverageDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> network = ToMany<ReferenceDbObject>();
  final ToMany<InsurancePlanBenefitDbObject> benefit =
      ToMany<InsurancePlanBenefitDbObject>();
  InsurancePlanCoverageDbObject({required this.id});
}

@Entity()
class InsurancePlanBenefitDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> requirement = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> requirementElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<InsurancePlanLimitDbObject> limit =
      ToMany<InsurancePlanLimitDbObject>();
  InsurancePlanBenefitDbObject({required this.id});
}

@Entity()
class InsurancePlanLimitDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<QuantityDbObject> value = ToOne<QuantityDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  InsurancePlanLimitDbObject({required this.id});
}

@Entity()
class InsurancePlanPlanDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> coverageArea = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> network = ToMany<ReferenceDbObject>();
  final ToMany<InsurancePlanGeneralCostDbObject> generalCost =
      ToMany<InsurancePlanGeneralCostDbObject>();
  final ToMany<InsurancePlanSpecificCostDbObject> specificCost =
      ToMany<InsurancePlanSpecificCostDbObject>();
  InsurancePlanPlanDbObject({required this.id});
}

@Entity()
class InsurancePlanGeneralCostDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirPositiveIntDbObject> groupSize =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> groupSizeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<MoneyDbObject> cost = ToOne<MoneyDbObject>();
  final ToOne<StringDbObject> comment = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> commentElement =
      ToOne<PrimitiveElementDbObject>();
  InsurancePlanGeneralCostDbObject({required this.id});
}

@Entity()
class InsurancePlanSpecificCostDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> category =
      ToOne<CodeableConceptDbObject>();
  final ToMany<InsurancePlanBenefit1DbObject> benefit =
      ToMany<InsurancePlanBenefit1DbObject>();
  InsurancePlanSpecificCostDbObject({required this.id});
}

@Entity()
class InsurancePlanBenefit1DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<InsurancePlanCostDbObject> cost =
      ToMany<InsurancePlanCostDbObject>();
  InsurancePlanBenefit1DbObject({required this.id});
}

@Entity()
class InsurancePlanCostDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> applicability =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> qualifiers =
      ToMany<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> value = ToOne<QuantityDbObject>();
  InsurancePlanCostDbObject({required this.id});
}
