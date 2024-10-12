// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDeviceDefinition {
  ObjectBoxDeviceDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.udiDeviceIdentifier,
    this.manufacturerString,
    this.manufacturerStringElement,
    this.manufacturerReference,
    this.deviceName,
    this.modelNumber,
    this.modelNumberElement,
    this.type,
    this.specialization,
    this.version,
    this.versionElement,
    this.safety,
    this.shelfLifeStorage,
    this.physicalCharacteristics,
    this.languageCode,
    this.capability,
    this.property,
    this.owner,
    this.contact,
    this.url,
    this.urlElement,
    this.onlineInformation,
    this.onlineInformationElement,
    this.note,
    this.quantity,
    this.parentDevice,
    this.material,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  ToMany<ObjectBoxDeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier =
      ToMany<ObjectBoxDeviceDefinitionUdiDeviceIdentifier>();
  String? manufacturerString;
  ToOne<ObjectBoxElement>? manufacturerStringElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? manufacturerReference =
      ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxDeviceDefinitionDeviceName>? deviceName =
      ToMany<ObjectBoxDeviceDefinitionDeviceName>();
  String? modelNumber;
  ToOne<ObjectBoxElement>? modelNumberElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxDeviceDefinitionSpecialization>? specialization =
      ToMany<ObjectBoxDeviceDefinitionSpecialization>();
  List<String>? version;
  ToMany<ObjectBoxElement>? versionElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? safety = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxProductShelfLife>? shelfLifeStorage =
      ToMany<ObjectBoxProductShelfLife>();
  ToOne<ObjectBoxProdCharacteristic>? physicalCharacteristics =
      ToOne<ObjectBoxProdCharacteristic>();
  ToMany<ObjectBoxCodeableConcept>? languageCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxDeviceDefinitionCapability>? capability =
      ToMany<ObjectBoxDeviceDefinitionCapability>();
  ToMany<ObjectBoxDeviceDefinitionProperty>? property =
      ToMany<ObjectBoxDeviceDefinitionProperty>();
  ToOne<ObjectBoxReference>? owner = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxContactPoint>? contact = ToMany<ObjectBoxContactPoint>();
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  String? onlineInformation;
  ToOne<ObjectBoxElement>? onlineInformationElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxReference>? parentDevice = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxDeviceDefinitionMaterial>? material =
      ToMany<ObjectBoxDeviceDefinitionMaterial>();
}

@Entity()
class ObjectBoxDeviceDefinitionUdiDeviceIdentifier {
  ObjectBoxDeviceDefinitionUdiDeviceIdentifier({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.deviceIdentifier,
    this.deviceIdentifierElement,
    required this.issuer,
    this.issuerElement,
    required this.jurisdiction,
    this.jurisdictionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String deviceIdentifier;
  ToOne<ObjectBoxElement>? deviceIdentifierElement = ToOne<ObjectBoxElement>();
  String issuer;
  ToOne<ObjectBoxElement>? issuerElement = ToOne<ObjectBoxElement>();
  String jurisdiction;
  ToOne<ObjectBoxElement>? jurisdictionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxDeviceDefinitionDeviceName {
  ObjectBoxDeviceDefinitionDeviceName({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.nameElement,
    required this.type,
    this.typeElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxDeviceDefinitionSpecialization {
  ObjectBoxDeviceDefinitionSpecialization({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.systemType,
    this.systemTypeElement,
    this.version,
    this.versionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String systemType;
  ToOne<ObjectBoxElement>? systemTypeElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxDeviceDefinitionCapability {
  ObjectBoxDeviceDefinitionCapability({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.description,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? description =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxDeviceDefinitionProperty {
  ObjectBoxDeviceDefinitionProperty({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxQuantity>? valueQuantity = ToMany<ObjectBoxQuantity>();
  ToMany<ObjectBoxCodeableConcept>? valueCode =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxDeviceDefinitionMaterial {
  ObjectBoxDeviceDefinitionMaterial({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.substance,
    this.alternate,
    this.alternateElement,
    this.allergenicIndicator,
    this.allergenicIndicatorElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> substance = ToOne<ObjectBoxCodeableConcept>();
  bool? alternate;
  ToOne<ObjectBoxElement>? alternateElement = ToOne<ObjectBoxElement>();
  bool? allergenicIndicator;
  ToOne<ObjectBoxElement>? allergenicIndicatorElement =
      ToOne<ObjectBoxElement>();
}
