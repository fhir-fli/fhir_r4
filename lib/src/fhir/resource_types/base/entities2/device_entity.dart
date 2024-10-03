import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class DeviceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Device';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<IdentifierEntity>? identifier;

  @ToOne()
  ReferenceEntity? definition;

  @ToMany()
  List<DeviceUdiCarrierEntity>? udiCarrier;

  @ToOne()
  DeviceStatusEntity? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToMany()
  List<CodeableConceptEntity>? statusReason;

  String? distinctIdentifier;

  @ToOne()
  PrimitiveElementEntity? distinctIdentifierElement;

  String? manufacturer;

  @ToOne()
  PrimitiveElementEntity? manufacturerElement;

  String? manufactureDate;

  @ToOne()
  PrimitiveElementEntity? manufactureDateElement;

  String? expirationDate;

  @ToOne()
  PrimitiveElementEntity? expirationDateElement;

  String? lotNumber;

  @ToOne()
  PrimitiveElementEntity? lotNumberElement;

  String? serialNumber;

  @ToOne()
  PrimitiveElementEntity? serialNumberElement;

  @ToMany()
  List<DeviceDeviceNameEntity>? deviceName;

  String? modelNumber;

  @ToOne()
  PrimitiveElementEntity? modelNumberElement;

  String? partNumber;

  @ToOne()
  PrimitiveElementEntity? partNumberElement;

  @ToOne()
  CodeableConceptEntity? type;

  @ToMany()
  List<DeviceSpecializationEntity>? specialization;

  @ToMany()
  List<DeviceVersionEntity>? version;

  @ToMany()
  List<DevicePropertyEntity>? property;

  @ToOne()
  ReferenceEntity? patient;

  @ToOne()
  ReferenceEntity? owner;

  @ToMany()
  List<ContactPointEntity>? contact;

  @ToOne()
  ReferenceEntity? location;

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToMany()
  List<CodeableConceptEntity>? safety;

  @ToOne()
  ReferenceEntity? parent;
}

class DeviceUdiCarrierEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? deviceIdentifier;

  @ToOne()
  PrimitiveElementEntity? deviceIdentifierElement;

  String? issuer;

  @ToOne()
  PrimitiveElementEntity? issuerElement;

  String? jurisdiction;

  @ToOne()
  PrimitiveElementEntity? jurisdictionElement;

  String? carrierAIDC;

  @ToOne()
  PrimitiveElementEntity? carrierAIDCElement;

  String? carrierHRF;

  @ToOne()
  PrimitiveElementEntity? carrierHRFElement;

  @ToOne()
  DeviceUdiCarrierEntryTypeEntity? entryType;

  @ToOne()
  PrimitiveElementEntity? entryTypeElement;
}

class DeviceDeviceNameEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  @ToOne()
  DeviceDeviceNameTypeEntity? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;
}

class DeviceSpecializationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? systemType;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;
}

class DeviceVersionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  IdentifierEntity? component;

  String? value;

  @ToOne()
  PrimitiveElementEntity? valueElement;
}

class DevicePropertyEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  @ToMany()
  List<QuantityEntity>? valueQuantity;

  @ToMany()
  List<CodeableConceptEntity>? valueCode;
}
