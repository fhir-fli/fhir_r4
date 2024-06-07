import 'package:realm/realm.dart';
@RealmModel()
class _NutritionProductRealm {
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
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late List<_CodeableConceptRealm> category;
  late _CodeableConceptRealm code;
  late List<_ReferenceRealm> manufacturer;
  late List<_NutritionProductNutrientRealm> nutrient;
  late List<_NutritionProductIngredientRealm> ingredient;
  late List<_CodeableReferenceRealm> knownAllergen;
  late List<_NutritionProductCharacteristicRealm> productCharacteristic;
  late List<_NutritionProductInstanceRealm> instance;
  late List<_AnnotationRealm> note;
}
@RealmModel()
class _NutritionProductNutrientRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableReferenceRealm item;
  late List<_RatioRealm> amount;
}
@RealmModel()
class _NutritionProductIngredientRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableReferenceRealm item;
  late List<_RatioRealm> amount;
}
@RealmModel()
class _NutritionProductCharacteristicRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm valueCodeableConcept;
  late _FhirMarkdownRealm valueString;
  late _PrimitiveElementRealm valueStringElement;
  late _QuantityRealm valueQuantity;
  late _FhirBase64BinaryRealm valueBase64Binary;
  late _PrimitiveElementRealm valueBase64BinaryElement;
  late _AttachmentRealm valueAttachment;
  late _FhirBooleanRealm valueBoolean;
  late _PrimitiveElementRealm valueBooleanElement;
}
@RealmModel()
class _NutritionProductInstanceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _QuantityRealm quantity;
  late List<_IdentifierRealm> identifier;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String lotNumber;
  late _PrimitiveElementRealm lotNumberElement;
  late String expiry;
  late _PrimitiveElementRealm expiryElement;
  late String useBy;
  late _PrimitiveElementRealm useByElement;
  late _IdentifierRealm biologicalSource;
}
