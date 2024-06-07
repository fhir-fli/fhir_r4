import 'package:realm/realm.dart';
@RealmModel()
class _MedicinalProductDefinitionRealm {
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
  late _CodeableConceptRealm domain;
  late String version;
  late _PrimitiveElementRealm versionElement;
  late _CodeableConceptRealm status;
  late String statusDate;
  late _PrimitiveElementRealm statusDateElement;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late _CodeableConceptRealm combinedPharmaceuticalDoseForm;
  late List<_CodeableConceptRealm> route;
  late _FhirMarkdownRealm indication;
  late _PrimitiveElementRealm indicationElement;
  late _CodeableConceptRealm legalStatusOfSupply;
  late _CodeableConceptRealm additionalMonitoringIndicator;
  late List<_CodeableConceptRealm> specialMeasures;
  late _CodeableConceptRealm pediatricUseIndicator;
@RealmModel()
class _classification,Realm {
  late List<_MarketingStatusRealm> marketingStatus;
  late List<_CodeableConceptRealm> packagedMedicinalProduct;
  late List<_CodeableConceptRealm> ingredient;
  late List<_CodeableReferenceRealm> impurity;
  late List<_ReferenceRealm> attachedDocument;
  late List<_ReferenceRealm> masterFile;
  late List<_MedicinalProductDefinitionContactRealm> contact;
  late List<_ReferenceRealm> clinicalTrial;
  late List<_CodingRealm> code;
  late List<_MedicinalProductDefinitionNameRealm> name;
  late List<_MedicinalProductDefinitionCrossReferenceRealm> crossReference;
  late List<_MedicinalProductDefinitionOperationRealm> operation;
  late List<_MedicinalProductDefinitionCharacteristicRealm> characteristic;
}
@RealmModel()
class _MedicinalProductDefinitionContactRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _ReferenceRealm contact;
}
@RealmModel()
class _MedicinalProductDefinitionNameRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String productName;
  late _PrimitiveElementRealm productNameElement;
  late _CodeableConceptRealm type;
  late List<_MedicinalProductDefinitionNamePartRealm> namePart;
  late List<_MedicinalProductDefinitionCountryLanguageRealm> countryLanguage;
}
@RealmModel()
class _MedicinalProductDefinitionNamePartRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String part_;
  late _PrimitiveElementRealm partElement;
  late _CodeableConceptRealm type;
}
@RealmModel()
class _MedicinalProductDefinitionCountryLanguageRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm country;
  late _CodeableConceptRealm jurisdiction;
  late _CodeableConceptRealm language;
}
@RealmModel()
class _MedicinalProductDefinitionCrossReferenceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableReferenceRealm product;
  late _CodeableConceptRealm type;
}
@RealmModel()
class _MedicinalProductDefinitionOperationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableReferenceRealm type;
  late _PeriodRealm effectiveDate;
  late List<_ReferenceRealm> organization;
  late _CodeableConceptRealm confidentialityIndicator;
}
@RealmModel()
class _MedicinalProductDefinitionCharacteristicRealm {
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
