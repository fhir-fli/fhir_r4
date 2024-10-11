import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Device extends Resource {
  Device({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.definition,
    this.udiCarrier,
    this.status,
    this.statusReason,
    this.distinctIdentifier,
    this.manufacturer,
    this.manufactureDate,
    this.expirationDate,
    this.lotNumber,
    this.serialNumber,
    this.deviceName,
    this.modelNumber,
    this.partNumber,
    this.type,
    this.specialization,
    this.version,
    this.property,
    this.patient,
    this.owner,
    this.contact,
    this.location,
    this.url,
    this.note,
    this.safety,
    this.parent,
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
  ToOne<Reference>? definition = ToOne<Reference>();
  ToMany<DeviceUdiCarrier>? udiCarrier = ToMany<DeviceUdiCarrier>();
  String? status;
  ToMany<CodeableConcept>? statusReason = ToMany<CodeableConcept>();
  String? distinctIdentifier;
  String? manufacturer;
  String? manufactureDate;
  String? expirationDate;
  String? lotNumber;
  String? serialNumber;
  ToMany<DeviceDeviceName>? deviceName = ToMany<DeviceDeviceName>();
  String? modelNumber;
  String? partNumber;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToMany<DeviceSpecialization>? specialization = ToMany<DeviceSpecialization>();
  ToMany<DeviceVersion>? version = ToMany<DeviceVersion>();
  ToMany<DeviceProperty>? property = ToMany<DeviceProperty>();
  ToOne<Reference>? patient = ToOne<Reference>();
  ToOne<Reference>? owner = ToOne<Reference>();
  ToMany<ContactPoint>? contact = ToMany<ContactPoint>();
  ToOne<Reference>? location = ToOne<Reference>();
  String? url;
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<CodeableConcept>? safety = ToMany<CodeableConcept>();
  ToOne<Reference>? parent = ToOne<Reference>();
}

@Entity()
class DeviceUdiCarrier {
  DeviceUdiCarrier({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.deviceIdentifier,
    this.issuer,
    this.jurisdiction,
    this.carrierAIDC,
    this.carrierHRF,
    this.entryType,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? deviceIdentifier;
  String? issuer;
  String? jurisdiction;
  String? carrierAIDC;
  String? carrierHRF;
  String? entryType;
}

@Entity()
class DeviceDeviceName {
  DeviceDeviceName({
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
class DeviceSpecialization {
  DeviceSpecialization({
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
  ToOne<CodeableConcept> systemType = ToOne<CodeableConcept>();
  String? version;
}

@Entity()
class DeviceVersion {
  DeviceVersion({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.component,
    required this.value,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Identifier>? component = ToOne<Identifier>();
  String value;
}

@Entity()
class DeviceProperty {
  DeviceProperty({
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
