import 'package:realm/realm.dart';
@RealmModel()
class _PackagedProductDefinitionRealm {
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
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _CodeableConceptRealm type;
  late List<_ReferenceRealm> packageFor;
  late _CodeableConceptRealm status;
  late String statusDate;
  late _PrimitiveElementRealm statusDateElement;
  late List<_QuantityRealm> containedItemQuantity;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_PackagedProductDefinitionLegalStatusOfSupplyRealm> legalStatusOfSupply;
  late List<_MarketingStatusRealm> marketingStatus;
  late List<_CodeableConceptRealm> characteristic;
  late _FhirBooleanRealm copackagedIndicator;
  late _PrimitiveElementRealm copackagedIndicatorElement;
  late List<_ReferenceRealm> manufacturer;
  late _PackagedProductDefinitionPackageRealm package;
}
@RealmModel()
class _PackagedProductDefinitionLegalStatusOfSupplyRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late _CodeableConceptRealm jurisdiction;
}
@RealmModel()
class _PackagedProductDefinitionPackageRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_IdentifierRealm> identifier;
  late _CodeableConceptRealm type;
  late _FhirIntegerRealm quantity;
  late _PrimitiveElementRealm quantityElement;
  late List<_CodeableConceptRealm> material;
  late List<_CodeableConceptRealm> alternateMaterial;
  late List<_PackagedProductDefinitionShelfLifeStorageRealm> shelfLifeStorage;
  late List<_ReferenceRealm> manufacturer;
  late List<_PackagedProductDefinitionPropertyRealm> property;
  late List<_PackagedProductDefinitionContainedItemRealm> containedItem;
  late List<_PackagedProductDefinitionPackageRealm> package;
}
@RealmModel()
class _PackagedProductDefinitionShelfLifeStorageRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _IdentifierRealm identifier;
  late _CodeableConceptRealm type;
  late _FhirDurationRealm periodDuration;
  late String periodString;
  late _PrimitiveElementRealm periodStringElement;
  late List<_CodeableConceptRealm> specialPrecautionsForStorage;
}
@RealmModel()
class _PackagedProductDefinitionPropertyRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm valueCodeableConcept;
  late _QuantityRealm valueQuantity;
  late _FhirDateRealm valueDate;
  late _PrimitiveElementRealm valueDateElement;
  late _FhirBooleanRealm valueBoolean;
  late _PrimitiveElementRealm valueBooleanElement;
  late _AttachmentRealm valueAttachment;
}
@RealmModel()
class _PackagedProductDefinitionContainedItemRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableReferenceRealm item;
  late _QuantityRealm amount;
}
