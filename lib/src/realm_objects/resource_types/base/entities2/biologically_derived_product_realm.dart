import 'package:realm/realm.dart';
@RealmModel()
class _BiologicallyDerivedProductRealm {
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
  late _BiologicallyDerivedProductCategoryRealm productCategory;
  late _PrimitiveElementRealm productCategoryElement;
  late _CodeableConceptRealm productCode;
  late _BiologicallyDerivedProductStatusRealm status;
  late _PrimitiveElementRealm statusElement;
  late List<_ReferenceRealm> request;
  late _FhirIntegerRealm quantity;
  late _PrimitiveElementRealm quantityElement;
  late List<_ReferenceRealm> parent;
  late _BiologicallyDerivedProductCollectionRealm collection;
  late List<_BiologicallyDerivedProductProcessingRealm> processing;
  late _BiologicallyDerivedProductManipulationRealm manipulation;
  late List<_BiologicallyDerivedProductStorageRealm> storage;
}
@RealmModel()
class _BiologicallyDerivedProductCollectionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm collector;
  late _ReferenceRealm source;
  late String collectedDateTime;
  late _PrimitiveElementRealm collectedDateTimeElement;
  late _PeriodRealm collectedPeriod;
}
@RealmModel()
class _BiologicallyDerivedProductProcessingRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _CodeableConceptRealm procedure;
  late _ReferenceRealm additive;
  late String timeDateTime;
  late _PrimitiveElementRealm timeDateTimeElement;
  late _PeriodRealm timePeriod;
}
@RealmModel()
class _BiologicallyDerivedProductManipulationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late String timeDateTime;
  late _PrimitiveElementRealm timeDateTimeElement;
  late _PeriodRealm timePeriod;
}
@RealmModel()
class _BiologicallyDerivedProductStorageRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirDecimalRealm temperature;
  late _PrimitiveElementRealm temperatureElement;
  late _BiologicallyDerivedProductStorageScaleRealm scale;
  late _PrimitiveElementRealm scaleElement;
  late _PeriodRealm duration;
}
