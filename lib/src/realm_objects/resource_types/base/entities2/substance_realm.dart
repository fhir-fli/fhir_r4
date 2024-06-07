import 'package:realm/realm.dart';
@RealmModel()
class _SubstanceRealm {
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
  late _SubstanceStatusRealm status;
  late _PrimitiveElementRealm statusElement;
  late List<_CodeableConceptRealm> category;
  late _CodeableConceptRealm code;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_SubstanceInstanceRealm> instance;
  late List<_SubstanceIngredientRealm> ingredient;
}
@RealmModel()
class _SubstanceInstanceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _IdentifierRealm identifier;
  late String expiry;
  late _PrimitiveElementRealm expiryElement;
  late _QuantityRealm quantity;
}
@RealmModel()
class _SubstanceIngredientRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _RatioRealm quantity;
  late _CodeableConceptRealm substanceCodeableConcept;
  late _ReferenceRealm substanceReference;
}
