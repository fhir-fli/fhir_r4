import 'package:realm/realm.dart';
@RealmModel()
class _DeviceDefinitionRealm {
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
  late List<_DeviceDefinitionUdiDeviceIdentifierRealm> udiDeviceIdentifier;
  late String manufacturerString;
  late _PrimitiveElementRealm manufacturerStringElement;
  late _ReferenceRealm manufacturerReference;
  late List<_DeviceDefinitionDeviceNameRealm> deviceName;
  late String modelNumber;
  late _PrimitiveElementRealm modelNumberElement;
  late _CodeableConceptRealm type;
  late List<_DeviceDefinitionSpecializationRealm> specialization;
  late String version;
  late List<_PrimitiveElementRealm> versionElement;
  late List<_CodeableConceptRealm> safety;
  late List<_ProductShelfLifeRealm> shelfLifeStorage;
  late _ProdCharacteristicRealm physicalCharacteristics;
  late List<_CodeableConceptRealm> languageCode;
  late List<_DeviceDefinitionCapabilityRealm> capability;
  late List<_DeviceDefinitionPropertyRealm> property;
  late _ReferenceRealm owner;
  late List<_ContactPointRealm> contact;
  late _FhirUriRealm url;
  late _PrimitiveElementRealm urlElement;
  late _FhirUriRealm onlineInformation;
  late _PrimitiveElementRealm onlineInformationElement;
  late List<_AnnotationRealm> note;
  late _QuantityRealm quantity;
  late _ReferenceRealm parentDevice;
  late List<_DeviceDefinitionMaterialRealm> material;
}
@RealmModel()
class _DeviceDefinitionUdiDeviceIdentifierRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String deviceIdentifier;
  late _PrimitiveElementRealm deviceIdentifierElement;
  late _FhirUriRealm issuer;
  late _PrimitiveElementRealm issuerElement;
  late _FhirUriRealm jurisdiction;
  late _PrimitiveElementRealm jurisdictionElement;
}
@RealmModel()
class _DeviceDefinitionDeviceNameRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
}
@RealmModel()
class _DeviceDefinitionSpecializationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String systemType;
  late _PrimitiveElementRealm systemTypeElement;
  late String version;
  late _PrimitiveElementRealm versionElement;
}
@RealmModel()
class _DeviceDefinitionCapabilityRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late List<_CodeableConceptRealm> description;
}
@RealmModel()
class _DeviceDefinitionPropertyRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late List<_QuantityRealm> valueQuantity;
  late List<_CodeableConceptRealm> valueCode;
}
@RealmModel()
class _DeviceDefinitionMaterialRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm substance;
  late _FhirBooleanRealm alternate;
  late _PrimitiveElementRealm alternateElement;
  late _FhirBooleanRealm allergenicIndicator;
  late _PrimitiveElementRealm allergenicIndicatorElement;
}
