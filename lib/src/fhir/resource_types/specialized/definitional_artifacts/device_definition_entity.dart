import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class DeviceDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'DeviceDefinition';

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

  @ToMany()
  List<DeviceDefinitionUdiDeviceIdentifierEntity>? udiDeviceIdentifier;

  String? manufacturerString;

  @ToOne()
  PrimitiveElementEntity? manufacturerStringElement;

  @ToOne()
  ReferenceEntity? manufacturerReference;

  @ToMany()
  List<DeviceDefinitionDeviceNameEntity>? deviceName;

  String? modelNumber;

  @ToOne()
  PrimitiveElementEntity? modelNumberElement;

  @ToOne()
  CodeableConceptEntity? type;

  @ToMany()
  List<DeviceDefinitionSpecializationEntity>? specialization;

  List<String>? version;

  @ToMany()
  List<PrimitiveElementEntity>? versionElement;

  @ToMany()
  List<CodeableConceptEntity>? safety;

  @ToMany()
  List<ProductShelfLifeEntity>? shelfLifeStorage;

  @ToOne()
  ProdCharacteristicEntity? physicalCharacteristics;

  @ToMany()
  List<CodeableConceptEntity>? languageCode;

  @ToMany()
  List<DeviceDefinitionCapabilityEntity>? capability;

  @ToMany()
  List<DeviceDefinitionPropertyEntity>? property;

  @ToOne()
  ReferenceEntity? owner;

  @ToMany()
  List<ContactPointEntity>? contact;

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  String? onlineInformation;

  @ToOne()
  PrimitiveElementEntity? onlineInformationElement;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToOne()
  QuantityEntity? quantity;

  @ToOne()
  ReferenceEntity? parentDevice;

  @ToMany()
  List<DeviceDefinitionMaterialEntity>? material;
}

class DeviceDefinitionUdiDeviceIdentifierEntity {
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
}

class DeviceDefinitionDeviceNameEntity {
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

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;
}

class DeviceDefinitionSpecializationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? systemType;

  @ToOne()
  PrimitiveElementEntity? systemTypeElement;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;
}

class DeviceDefinitionCapabilityEntity {
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
  List<CodeableConceptEntity>? description;
}

class DeviceDefinitionPropertyEntity {
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

class DeviceDefinitionMaterialEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? substance;

  bool? alternate;

  @ToOne()
  PrimitiveElementEntity? alternateElement;

  bool? allergenicIndicator;

  @ToOne()
  PrimitiveElementEntity? allergenicIndicatorElement;
}
