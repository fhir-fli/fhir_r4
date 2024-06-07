import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class CoverageEligibilityResponseDbObject {
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
  final ToMany<FhirCodeDbObject> purpose = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> purposeElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> patient = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateDbObject> servicedDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> servicedDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> servicedPeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirDateTimeDbObject> created = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> createdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> requestor = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> request = ToOne<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> outcome = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> outcomeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> disposition = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> dispositionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> insurer = ToOne<ReferenceDbObject>();
  final ToMany<CoverageEligibilityResponseInsuranceDbObject> insurance =
      ToMany<CoverageEligibilityResponseInsuranceDbObject>();
  final ToOne<StringDbObject> preAuthRef = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> preAuthRefElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> form = ToOne<CodeableConceptDbObject>();
  final ToMany<CoverageEligibilityResponseErrorDbObject> error =
      ToMany<CoverageEligibilityResponseErrorDbObject>();
  CoverageEligibilityResponseDbObject({required this.id});
}

@Entity()
class CoverageEligibilityResponseInsuranceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> coverage = ToOne<ReferenceDbObject>();
  final ToOne<FhirBooleanDbObject> inforce = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> inforceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> benefitPeriod = ToOne<PeriodDbObject>();
  final ToMany<CoverageEligibilityResponseItemDbObject> item =
      ToMany<CoverageEligibilityResponseItemDbObject>();
  CoverageEligibilityResponseInsuranceDbObject({required this.id});
}

@Entity()
class CoverageEligibilityResponseItemDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> category =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> productOrService =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> modifier =
      ToMany<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> provider = ToOne<ReferenceDbObject>();
  final ToOne<FhirBooleanDbObject> excluded = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> excludedElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> network =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> unit = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> term = ToOne<CodeableConceptDbObject>();
  final ToMany<CoverageEligibilityResponseBenefitDbObject> benefit =
      ToMany<CoverageEligibilityResponseBenefitDbObject>();
  final ToOne<FhirBooleanDbObject> authorizationRequired =
      ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> authorizationRequiredElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> authorizationSupporting =
      ToMany<CodeableConceptDbObject>();
  final ToOne<FhirUriDbObject> authorizationUrl = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> authorizationUrlElement =
      ToOne<PrimitiveElementDbObject>();
  CoverageEligibilityResponseItemDbObject({required this.id});
}

@Entity()
class CoverageEligibilityResponseBenefitDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirUnsignedIntDbObject> allowedUnsignedInt =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> allowedUnsignedIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> allowedString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> allowedStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<MoneyDbObject> allowedMoney = ToOne<MoneyDbObject>();
  final ToOne<FhirUnsignedIntDbObject> usedUnsignedInt =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> usedUnsignedIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> usedString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> usedStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<MoneyDbObject> usedMoney = ToOne<MoneyDbObject>();
  CoverageEligibilityResponseBenefitDbObject({required this.id});
}

@Entity()
class CoverageEligibilityResponseErrorDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  CoverageEligibilityResponseErrorDbObject({required this.id});
}
