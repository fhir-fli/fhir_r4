import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class DeviceDefinition extends Resource {
  DeviceDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.udiDeviceIdentifier,
    this.manufacturerString,
    this.manufacturerReference,
    this.deviceName,
    this.modelNumber,
    this.type,
    this.specialization,
    this.version,
    this.safety,
    this.shelfLifeStorage,
    this.physicalCharacteristics,
    this.languageCode,
    this.capability,
    this.property,
    this.owner,
    this.contact,
    this.url,
    this.onlineInformation,
    this.note,
    this.quantity,
    this.parentDevice,
    this.material,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToMany<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier =
      ToMany<DeviceDefinitionUdiDeviceIdentifier>();
  String? manufacturerString;
  ToOne<Reference>? manufacturerReference = ToOne<Reference>();
  ToMany<DeviceDefinitionDeviceName>? deviceName =
      ToMany<DeviceDefinitionDeviceName>();
  String? modelNumber;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToMany<DeviceDefinitionSpecialization>? specialization =
      ToMany<DeviceDefinitionSpecialization>();
  List<String>? version;
  ToMany<CodeableConcept>? safety = ToMany<CodeableConcept>();
  ToMany<ProductShelfLife>? shelfLifeStorage = ToMany<ProductShelfLife>();
  ToOne<ProdCharacteristic>? physicalCharacteristics =
      ToOne<ProdCharacteristic>();
  ToMany<CodeableConcept>? languageCode = ToMany<CodeableConcept>();
  ToMany<DeviceDefinitionCapability>? capability =
      ToMany<DeviceDefinitionCapability>();
  ToMany<DeviceDefinitionProperty>? property =
      ToMany<DeviceDefinitionProperty>();
  ToOne<Reference>? owner = ToOne<Reference>();
  ToMany<ContactPoint>? contact = ToMany<ContactPoint>();
  String? url;
  String? onlineInformation;
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<Reference>? parentDevice = ToOne<Reference>();
  ToMany<DeviceDefinitionMaterial>? material =
      ToMany<DeviceDefinitionMaterial>();
}

@Entity()
class DeviceDefinitionUdiDeviceIdentifier {
  DeviceDefinitionUdiDeviceIdentifier({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.deviceIdentifier,
    required this.issuer,
    required this.jurisdiction,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String deviceIdentifier;
  String issuer;
  String jurisdiction;
}

@Entity()
class DeviceDefinitionDeviceName {
  DeviceDefinitionDeviceName({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    required this.type,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  String type;
}

@Entity()
class DeviceDefinitionSpecialization {
  DeviceDefinitionSpecialization({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.systemType,
    this.version,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String systemType;
  String? version;
}

@Entity()
class DeviceDefinitionCapability {
  DeviceDefinitionCapability({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.description,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? description = ToMany<CodeableConcept>();
}

@Entity()
class DeviceDefinitionProperty {
  DeviceDefinitionProperty({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.valueQuantity,
    this.valueCode,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToMany<Quantity>? valueQuantity = ToMany<Quantity>();
  ToMany<CodeableConcept>? valueCode = ToMany<CodeableConcept>();
}

@Entity()
class DeviceDefinitionMaterial {
  DeviceDefinitionMaterial({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.substance,
    this.alternate,
    this.allergenicIndicator,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> substance = ToOne<CodeableConcept>();
  bool? alternate;
  bool? allergenicIndicator;
}
