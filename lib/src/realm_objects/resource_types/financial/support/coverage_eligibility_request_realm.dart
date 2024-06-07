import 'package:realm/realm.dart';
@RealmModel()
class _CoverageEligibilityRequestRealm {
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
  late List<_IdentifierRealm> identifier;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodeableConceptRealm priority;
  late List<_FhirCodeRealm> purpose;
  late List<_PrimitiveElementRealm> purposeElement;
  late _ReferenceRealm patient;
  late _FhirDateRealm servicedDate;
  late _PrimitiveElementRealm servicedDateElement;
  late _PeriodRealm servicedPeriod;
  late String created;
  late _PrimitiveElementRealm createdElement;
  late _ReferenceRealm enterer;
  late _ReferenceRealm provider;
  late _ReferenceRealm insurer;
  late _ReferenceRealm facility;
  late List<_CoverageEligibilityRequestSupportingInfoRealm> supportingInfo;
  late List<_CoverageEligibilityRequestInsuranceRealm> insurance;
  late List<_CoverageEligibilityRequestItemRealm> item;
}
@RealmModel()
class _CoverageEligibilityRequestSupportingInfoRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirPositiveIntRealm sequence;
  late _PrimitiveElementRealm sequenceElement;
  late _ReferenceRealm information;
  late _FhirBooleanRealm appliesToAll;
  late _PrimitiveElementRealm appliesToAllElement;
}
@RealmModel()
class _CoverageEligibilityRequestInsuranceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirBooleanRealm focal;
  late _PrimitiveElementRealm focalElement;
  late _ReferenceRealm coverage;
  late String businessArrangement;
  late _PrimitiveElementRealm businessArrangementElement;
}
@RealmModel()
class _CoverageEligibilityRequestItemRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_FhirPositiveIntRealm> supportingInfoSequence;
  late List<_ElementRealm> supportingInfoSequenceElement;
  late _CodeableConceptRealm category;
  late _CodeableConceptRealm productOrService;
  late List<_CodeableConceptRealm> modifier;
  late _ReferenceRealm provider;
  late _QuantityRealm quantity;
  late _MoneyRealm unitPrice;
  late _ReferenceRealm facility;
  late List<_CoverageEligibilityRequestDiagnosisRealm> diagnosis;
  late List<_ReferenceRealm> detail;
}
@RealmModel()
class _CoverageEligibilityRequestDiagnosisRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm diagnosisCodeableConcept;
  late _ReferenceRealm diagnosisReference;
}
