import 'package:objectbox/objectbox.dart';
@Entity()
class DeviceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<R4ResourceTypeDbObject> resourceType = ToOne<R4ResourceTypeDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<ReferenceDbObject> definition = ToOne<ReferenceDbObject>();
  final ToMany<DeviceUdiCarrierDbObject> udiCarrier = ToMany<DeviceUdiCarrierDbObject>();
  final ToOne<DeviceStatusDbObject> status = ToOne<DeviceStatusDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> statusReason = ToMany<CodeableConceptDbObject>();
  final ToOne<StringDbObject> distinctIdentifier = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> distinctIdentifierElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> manufacturer = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> manufacturerElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> manufactureDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> manufactureDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> expirationDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> expirationDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> lotNumber = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> lotNumberElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> serialNumber = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> serialNumberElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<DeviceDeviceNameDbObject> deviceName = ToMany<DeviceDeviceNameDbObject>();
  final ToOne<StringDbObject> modelNumber = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> modelNumberElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> partNumber = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> partNumberElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<DeviceSpecializationDbObject> specialization = ToMany<DeviceSpecializationDbObject>();
  final ToMany<DeviceVersionDbObject> version = ToMany<DeviceVersionDbObject>();
  final ToMany<DevicePropertyDbObject> property = ToMany<DevicePropertyDbObject>();
  final ToOne<ReferenceDbObject> patient = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> owner = ToOne<ReferenceDbObject>();
  final ToMany<ContactPointDbObject> contact = ToMany<ContactPointDbObject>();
  final ToOne<ReferenceDbObject> location = ToOne<ReferenceDbObject>();
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<CodeableConceptDbObject> safety = ToMany<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> parent = ToOne<ReferenceDbObject>();
  DeviceDbObject({required this.id});
}
@Entity()
class DeviceUdiCarrierDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> deviceIdentifier = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> deviceIdentifierElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> issuer = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> issuerElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> jurisdiction = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> jurisdictionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBase64BinaryDbObject> carrierAIDC = ToOne<FhirBase64BinaryDbObject>();
  final ToOne<PrimitiveElementDbObject> carrierAIDCElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> carrierHRF = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> carrierHRFElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<DeviceUdiCarrierEntryTypeDbObject> entryType = ToOne<DeviceUdiCarrierEntryTypeDbObject>();
  final ToOne<PrimitiveElementDbObject> entryTypeElement = ToOne<PrimitiveElementDbObject>();
  DeviceUdiCarrierDbObject({required this.id});
}
@Entity()
class DeviceDeviceNameDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<DeviceDeviceNameTypeDbObject> type = ToOne<DeviceDeviceNameTypeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  DeviceDeviceNameDbObject({required this.id});
}
@Entity()
class DeviceSpecializationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> systemType = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement = ToOne<PrimitiveElementDbObject>();
  DeviceSpecializationDbObject({required this.id});
}
@Entity()
class DeviceVersionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<IdentifierDbObject> component = ToOne<IdentifierDbObject>();
  final ToOne<StringDbObject> value = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement = ToOne<PrimitiveElementDbObject>();
  DeviceVersionDbObject({required this.id});
}
@Entity()
class DevicePropertyDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<QuantityDbObject> valueQuantity = ToMany<QuantityDbObject>();
  final ToMany<CodeableConceptDbObject> valueCode = ToMany<CodeableConceptDbObject>();
  DevicePropertyDbObject({required this.id});
}
