import 'package:objectbox/objectbox.dart';
@Entity()
class DeviceDefinitionDbObject {
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
  final ToMany<DeviceDefinitionUdiDeviceIdentifierDbObject> udiDeviceIdentifier = ToMany<DeviceDefinitionUdiDeviceIdentifierDbObject>();
  final ToOne<StringDbObject> manufacturerString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> manufacturerStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> manufacturerReference = ToOne<ReferenceDbObject>();
  final ToMany<DeviceDefinitionDeviceNameDbObject> deviceName = ToMany<DeviceDefinitionDeviceNameDbObject>();
  final ToOne<StringDbObject> modelNumber = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> modelNumberElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<DeviceDefinitionSpecializationDbObject> specialization = ToMany<DeviceDefinitionSpecializationDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> versionElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> safety = ToMany<CodeableConceptDbObject>();
  final ToMany<ProductShelfLifeDbObject> shelfLifeStorage = ToMany<ProductShelfLifeDbObject>();
  final ToOne<ProdCharacteristicDbObject> physicalCharacteristics = ToOne<ProdCharacteristicDbObject>();
  final ToMany<CodeableConceptDbObject> languageCode = ToMany<CodeableConceptDbObject>();
  final ToMany<DeviceDefinitionCapabilityDbObject> capability = ToMany<DeviceDefinitionCapabilityDbObject>();
  final ToMany<DeviceDefinitionPropertyDbObject> property = ToMany<DeviceDefinitionPropertyDbObject>();
  final ToOne<ReferenceDbObject> owner = ToOne<ReferenceDbObject>();
  final ToMany<ContactPointDbObject> contact = ToMany<ContactPointDbObject>();
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> onlineInformation = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> onlineInformationElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<ReferenceDbObject> parentDevice = ToOne<ReferenceDbObject>();
  final ToMany<DeviceDefinitionMaterialDbObject> material = ToMany<DeviceDefinitionMaterialDbObject>();
  DeviceDefinitionDbObject({required this.id});
}
@Entity()
class DeviceDefinitionUdiDeviceIdentifierDbObject {
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
  DeviceDefinitionUdiDeviceIdentifierDbObject({required this.id});
}
@Entity()
class DeviceDefinitionDeviceNameDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  DeviceDefinitionDeviceNameDbObject({required this.id});
}
@Entity()
class DeviceDefinitionSpecializationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> systemType = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> systemTypeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement = ToOne<PrimitiveElementDbObject>();
  DeviceDefinitionSpecializationDbObject({required this.id});
}
@Entity()
class DeviceDefinitionCapabilityDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> description = ToMany<CodeableConceptDbObject>();
  DeviceDefinitionCapabilityDbObject({required this.id});
}
@Entity()
class DeviceDefinitionPropertyDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<QuantityDbObject> valueQuantity = ToMany<QuantityDbObject>();
  final ToMany<CodeableConceptDbObject> valueCode = ToMany<CodeableConceptDbObject>();
  DeviceDefinitionPropertyDbObject({required this.id});
}
@Entity()
class DeviceDefinitionMaterialDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> substance = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> alternate = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> alternateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> allergenicIndicator = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> allergenicIndicatorElement = ToOne<PrimitiveElementDbObject>();
  DeviceDefinitionMaterialDbObject({required this.id});
}
