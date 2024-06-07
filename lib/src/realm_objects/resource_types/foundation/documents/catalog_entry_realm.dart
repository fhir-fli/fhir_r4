import 'package:realm/realm.dart';
@RealmModel()
class _CatalogEntryRealm {
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
  late _CodeableConceptRealm type;
  late _FhirBooleanRealm orderable;
  late _PrimitiveElementRealm orderableElement;
  late _ReferenceRealm referencedItem;
  late List<_IdentifierRealm> additionalIdentifier;
@RealmModel()
class _classification,Realm {
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _PeriodRealm validityPeriod;
  late String validTo;
  late _PrimitiveElementRealm validToElement;
  late String lastUpdated;
  late _PrimitiveElementRealm lastUpdatedElement;
  late List<_CodeableConceptRealm> additionalCharacteristic;
  late List<_CodeableConceptRealm> additionalClassification;
  late List<_CatalogEntryRelatedEntryRealm> relatedEntry;
}
@RealmModel()
class _CatalogEntryRelatedEntryRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm relationtype;
  late _PrimitiveElementRealm relationtypeElement;
  late _ReferenceRealm item;
}
