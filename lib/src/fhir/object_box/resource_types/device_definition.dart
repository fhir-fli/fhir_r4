// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDeviceDefinition {
  ObjectBoxDeviceDefinition({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    List<ObjectBoxDeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier,
    this.manufacturerString,
    ObjectBoxElement? manufacturerStringElement,
    ObjectBoxReference? manufacturerReference,
    List<ObjectBoxDeviceDefinitionDeviceName>? deviceName,
    this.modelNumber,
    ObjectBoxElement? modelNumberElement,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxDeviceDefinitionSpecialization>? specialization,
    this.version,
    List<ObjectBoxElement>? versionElement,
    List<ObjectBoxCodeableConcept>? safety,
    List<ObjectBoxProductShelfLife>? shelfLifeStorage,
    ObjectBoxProdCharacteristic? physicalCharacteristics,
    List<ObjectBoxCodeableConcept>? languageCode,
    List<ObjectBoxDeviceDefinitionCapability>? capability,
    List<ObjectBoxDeviceDefinitionProperty>? property,
    ObjectBoxReference? owner,
    List<ObjectBoxContactPoint>? contact,
    this.url,
    ObjectBoxElement? urlElement,
    this.onlineInformation,
    ObjectBoxElement? onlineInformationElement,
    List<ObjectBoxAnnotation>? note,
    ObjectBoxQuantity? quantity,
    ObjectBoxReference? parentDevice,
    List<ObjectBoxDeviceDefinitionMaterial>? material,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.udiDeviceIdentifier.addAll(udiDeviceIdentifier ?? []);
    this.manufacturerStringElement.target = manufacturerStringElement;
    this.manufacturerReference.target = manufacturerReference;
    this.deviceName.addAll(deviceName ?? []);
    this.modelNumberElement.target = modelNumberElement;
    this.type.target = type;
    this.specialization.addAll(specialization ?? []);
    this.versionElement.addAll(versionElement ?? []);
    this.safety.addAll(safety ?? []);
    this.shelfLifeStorage.addAll(shelfLifeStorage ?? []);
    this.physicalCharacteristics.target = physicalCharacteristics;
    this.languageCode.addAll(languageCode ?? []);
    this.capability.addAll(capability ?? []);
    this.property.addAll(property ?? []);
    this.owner.target = owner;
    this.contact.addAll(contact ?? []);
    this.urlElement.target = urlElement;
    this.onlineInformationElement.target = onlineInformationElement;
    this.note.addAll(note ?? []);
    this.quantity.target = quantity;
    this.parentDevice.target = parentDevice;
    this.material.addAll(material ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  ToMany<ObjectBoxDeviceDefinitionUdiDeviceIdentifier> udiDeviceIdentifier =
      ToMany<ObjectBoxDeviceDefinitionUdiDeviceIdentifier>();
  String? manufacturerString;
  ToOne<ObjectBoxElement> manufacturerStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> manufacturerReference = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxDeviceDefinitionDeviceName> deviceName =
      ToMany<ObjectBoxDeviceDefinitionDeviceName>();
  String? modelNumber;
  ToOne<ObjectBoxElement> modelNumberElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxDeviceDefinitionSpecialization> specialization =
      ToMany<ObjectBoxDeviceDefinitionSpecialization>();
  List<String>? version;
  ToMany<ObjectBoxElement> versionElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> safety = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxProductShelfLife> shelfLifeStorage =
      ToMany<ObjectBoxProductShelfLife>();
  ToOne<ObjectBoxProdCharacteristic> physicalCharacteristics =
      ToOne<ObjectBoxProdCharacteristic>();
  ToMany<ObjectBoxCodeableConcept> languageCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxDeviceDefinitionCapability> capability =
      ToMany<ObjectBoxDeviceDefinitionCapability>();
  ToMany<ObjectBoxDeviceDefinitionProperty> property =
      ToMany<ObjectBoxDeviceDefinitionProperty>();
  ToOne<ObjectBoxReference> owner = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxContactPoint> contact = ToMany<ObjectBoxContactPoint>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  String? onlineInformation;
  ToOne<ObjectBoxElement> onlineInformationElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxReference> parentDevice = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxDeviceDefinitionMaterial> material =
      ToMany<ObjectBoxDeviceDefinitionMaterial>();
}

@Entity()
class ObjectBoxDeviceDefinitionUdiDeviceIdentifier {
  ObjectBoxDeviceDefinitionUdiDeviceIdentifier({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.deviceIdentifier,
    ObjectBoxElement? deviceIdentifierElement,
    required this.issuer,
    ObjectBoxElement? issuerElement,
    required this.jurisdiction,
    ObjectBoxElement? jurisdictionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.deviceIdentifierElement.target = deviceIdentifierElement;
    this.issuerElement.target = issuerElement;
    this.jurisdictionElement.target = jurisdictionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String deviceIdentifier;
  ToOne<ObjectBoxElement> deviceIdentifierElement = ToOne<ObjectBoxElement>();
  String issuer;
  ToOne<ObjectBoxElement> issuerElement = ToOne<ObjectBoxElement>();
  String jurisdiction;
  ToOne<ObjectBoxElement> jurisdictionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxDeviceDefinitionDeviceName {
  ObjectBoxDeviceDefinitionDeviceName({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    required this.type,
    ObjectBoxElement? typeElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.typeElement.target = typeElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxDeviceDefinitionSpecialization {
  ObjectBoxDeviceDefinitionSpecialization({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.systemType,
    ObjectBoxElement? systemTypeElement,
    this.version,
    ObjectBoxElement? versionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.systemTypeElement.target = systemTypeElement;
    this.versionElement.target = versionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String systemType;
  ToOne<ObjectBoxElement> systemTypeElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxDeviceDefinitionCapability {
  ObjectBoxDeviceDefinitionCapability({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxCodeableConcept>? description,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.description.addAll(description ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> description =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxDeviceDefinitionProperty {
  ObjectBoxDeviceDefinitionProperty({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxQuantity>? valueQuantity,
    List<ObjectBoxCodeableConcept>? valueCode,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.valueQuantity.addAll(valueQuantity ?? []);
    this.valueCode.addAll(valueCode ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxQuantity> valueQuantity = ToMany<ObjectBoxQuantity>();
  ToMany<ObjectBoxCodeableConcept> valueCode =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxDeviceDefinitionMaterial {
  ObjectBoxDeviceDefinitionMaterial({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? substance,
    this.alternate,
    ObjectBoxElement? alternateElement,
    this.allergenicIndicator,
    ObjectBoxElement? allergenicIndicatorElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.substance.target = substance;
    this.alternateElement.target = alternateElement;
    this.allergenicIndicatorElement.target = allergenicIndicatorElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> substance = ToOne<ObjectBoxCodeableConcept>();
  bool? alternate;
  ToOne<ObjectBoxElement> alternateElement = ToOne<ObjectBoxElement>();
  bool? allergenicIndicator;
  ToOne<ObjectBoxElement> allergenicIndicatorElement =
      ToOne<ObjectBoxElement>();
}
