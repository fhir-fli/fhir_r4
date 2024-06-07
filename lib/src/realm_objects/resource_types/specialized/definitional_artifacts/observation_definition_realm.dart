import 'package:realm/realm.dart';
@RealmModel()
class _ObservationDefinitionRealm {
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
  late List<_CodeableConceptRealm> category;
  late _CodeableConceptRealm code;
  late List<_IdentifierRealm> identifier;
  late List<_FhirCodeRealm> permittedDataType;
  late List<_ElementRealm> permittedDataTypeElement;
  late _FhirBooleanRealm multipleResultsAllowed;
  late _PrimitiveElementRealm multipleResultsAllowedElement;
  late _CodeableConceptRealm method;
  late String preferredReportName;
  late _PrimitiveElementRealm preferredReportNameElement;
  late _ObservationDefinitionQuantitativeDetailsRealm quantitativeDetails;
  late List<_ObservationDefinitionQualifiedIntervalRealm> qualifiedInterval;
  late _ReferenceRealm validCodedValueSet;
  late _ReferenceRealm normalCodedValueSet;
  late _ReferenceRealm abnormalCodedValueSet;
  late _ReferenceRealm criticalCodedValueSet;
}
@RealmModel()
class _ObservationDefinitionQuantitativeDetailsRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm customaryUnit;
  late _CodeableConceptRealm unit;
  late _FhirDecimalRealm conversionFactor;
  late _PrimitiveElementRealm conversionFactorElement;
  late _FhirIntegerRealm decimalPrecision;
  late _PrimitiveElementRealm decimalPrecisionElement;
}
@RealmModel()
class _ObservationDefinitionQualifiedIntervalRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm category;
  late _PrimitiveElementRealm categoryElement;
  late _RangeRealm range;
  late _CodeableConceptRealm context;
  late List<_CodeableConceptRealm> appliesTo;
  late _FhirCodeRealm gender;
  late _PrimitiveElementRealm genderElement;
  late _RangeRealm age;
  late _RangeRealm gestationalAge;
  late String condition;
  late _PrimitiveElementRealm conditionElement;
}
