import 'package:realm/realm.dart';
@RealmModel()
class _IngredientRealm {
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
  late _IdentifierRealm identifier;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late List<_ReferenceRealm> for_;
  late _CodeableConceptRealm role;
  late List<_CodeableConceptRealm> function;
  late _CodeableConceptRealm group;
  late _FhirBooleanRealm allergenicIndicator;
  late _PrimitiveElementRealm allergenicIndicatorElement;
  late List<_IngredientManufacturerRealm> manufacturer;
  late _IngredientSubstanceRealm substance;
}
@RealmModel()
class _IngredientManufacturerRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm role;
  late _PrimitiveElementRealm roleElement;
  late _ReferenceRealm manufacturer;
}
@RealmModel()
class _IngredientSubstanceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableReferenceRealm code;
  late List<_IngredientStrengthRealm> strength;
}
@RealmModel()
class _IngredientStrengthRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _RatioRealm presentationRatio;
  late _RatioRangeRealm presentationRatioRange;
  late String textPresentation;
  late _PrimitiveElementRealm textPresentationElement;
  late _RatioRealm concentrationRatio;
  late _RatioRangeRealm concentrationRatioRange;
  late String textConcentration;
  late _PrimitiveElementRealm textConcentrationElement;
  late String measurementPoint;
  late _PrimitiveElementRealm measurementPointElement;
  late List<_CodeableConceptRealm> country;
  late List<_IngredientReferenceStrengthRealm> referenceStrength;
}
@RealmModel()
class _IngredientReferenceStrengthRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableReferenceRealm substance;
  late _RatioRealm strengthRatio;
  late _RatioRangeRealm strengthRatioRange;
  late _QuantityRealm strengthQuantity;
  late String measurementPoint;
  late _PrimitiveElementRealm measurementPointElement;
  late List<_CodeableConceptRealm> country;
}
