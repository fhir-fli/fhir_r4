import 'package:realm/realm.dart';
@RealmModel()
class _DeviceRealm {
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
  late _ReferenceRealm definition;
  late List<_DeviceUdiCarrierRealm> udiCarrier;
  late _DeviceStatusRealm status;
  late _PrimitiveElementRealm statusElement;
  late List<_CodeableConceptRealm> statusReason;
  late String distinctIdentifier;
  late _PrimitiveElementRealm distinctIdentifierElement;
  late String manufacturer;
  late _PrimitiveElementRealm manufacturerElement;
  late String manufactureDate;
  late _PrimitiveElementRealm manufactureDateElement;
  late String expirationDate;
  late _PrimitiveElementRealm expirationDateElement;
  late String lotNumber;
  late _PrimitiveElementRealm lotNumberElement;
  late String serialNumber;
  late _PrimitiveElementRealm serialNumberElement;
  late List<_DeviceDeviceNameRealm> deviceName;
  late String modelNumber;
  late _PrimitiveElementRealm modelNumberElement;
  late String partNumber;
  late _PrimitiveElementRealm partNumberElement;
  late _CodeableConceptRealm type;
  late List<_DeviceSpecializationRealm> specialization;
  late List<_DeviceVersionRealm> version;
  late List<_DevicePropertyRealm> property;
  late _ReferenceRealm patient;
  late _ReferenceRealm owner;
  late List<_ContactPointRealm> contact;
  late _ReferenceRealm location;
  late _FhirUriRealm url;
  late _PrimitiveElementRealm urlElement;
  late List<_AnnotationRealm> note;
  late List<_CodeableConceptRealm> safety;
  late _ReferenceRealm parent;
}
@RealmModel()
class _DeviceUdiCarrierRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String deviceIdentifier;
  late _PrimitiveElementRealm deviceIdentifierElement;
  late _FhirUriRealm issuer;
  late _PrimitiveElementRealm issuerElement;
  late _FhirUriRealm jurisdiction;
  late _PrimitiveElementRealm jurisdictionElement;
  late _FhirBase64BinaryRealm carrierAIDC;
  late _PrimitiveElementRealm carrierAIDCElement;
  late String carrierHRF;
  late _PrimitiveElementRealm carrierHRFElement;
  late _DeviceUdiCarrierEntryTypeRealm entryType;
  late _PrimitiveElementRealm entryTypeElement;
}
@RealmModel()
class _DeviceDeviceNameRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _DeviceDeviceNameTypeRealm type;
  late _PrimitiveElementRealm typeElement;
}
@RealmModel()
class _DeviceSpecializationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm systemType;
  late String version;
  late _PrimitiveElementRealm versionElement;
}
@RealmModel()
class _DeviceVersionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _IdentifierRealm component;
  late String value;
  late _PrimitiveElementRealm valueElement;
}
@RealmModel()
class _DevicePropertyRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late List<_QuantityRealm> valueQuantity;
  late List<_CodeableConceptRealm> valueCode;
}
