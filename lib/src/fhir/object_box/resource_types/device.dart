// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDevice {
  ObjectBoxDevice({
    this.id,
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
    ObjectBoxReference? definition,
    List<ObjectBoxDeviceUdiCarrier>? udiCarrier,
    this.status,
    ObjectBoxElement? statusElement,
    List<ObjectBoxCodeableConcept>? statusReason,
    this.distinctIdentifier,
    ObjectBoxElement? distinctIdentifierElement,
    this.manufacturer,
    ObjectBoxElement? manufacturerElement,
    this.manufactureDate,
    ObjectBoxElement? manufactureDateElement,
    this.expirationDate,
    ObjectBoxElement? expirationDateElement,
    this.lotNumber,
    ObjectBoxElement? lotNumberElement,
    this.serialNumber,
    ObjectBoxElement? serialNumberElement,
    List<ObjectBoxDeviceDeviceName>? deviceName,
    this.modelNumber,
    ObjectBoxElement? modelNumberElement,
    this.partNumber,
    ObjectBoxElement? partNumberElement,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxDeviceSpecialization>? specialization,
    List<ObjectBoxDeviceVersion>? version,
    List<ObjectBoxDeviceProperty>? property,
    ObjectBoxReference? patient,
    ObjectBoxReference? owner,
    List<ObjectBoxContactPoint>? contact,
    ObjectBoxReference? location,
    this.url,
    ObjectBoxElement? urlElement,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxCodeableConcept>? safety,
    ObjectBoxReference? parent,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.definition.target = definition;
    this.udiCarrier.addAll(udiCarrier ?? []);
    this.statusElement.target = statusElement;
    this.statusReason.addAll(statusReason ?? []);
    this.distinctIdentifierElement.target = distinctIdentifierElement;
    this.manufacturerElement.target = manufacturerElement;
    this.manufactureDateElement.target = manufactureDateElement;
    this.expirationDateElement.target = expirationDateElement;
    this.lotNumberElement.target = lotNumberElement;
    this.serialNumberElement.target = serialNumberElement;
    this.deviceName.addAll(deviceName ?? []);
    this.modelNumberElement.target = modelNumberElement;
    this.partNumberElement.target = partNumberElement;
    this.type.target = type;
    this.specialization.addAll(specialization ?? []);
    this.version.addAll(version ?? []);
    this.property.addAll(property ?? []);
    this.patient.target = patient;
    this.owner.target = owner;
    this.contact.addAll(contact ?? []);
    this.location.target = location;
    this.urlElement.target = urlElement;
    this.note.addAll(note ?? []);
    this.safety.addAll(safety ?? []);
    this.parent.target = parent;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  ToOne<ObjectBoxReference> definition = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxDeviceUdiCarrier> udiCarrier =
      ToMany<ObjectBoxDeviceUdiCarrier>();
  String? status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> statusReason =
      ToMany<ObjectBoxCodeableConcept>();
  String? distinctIdentifier;
  ToOne<ObjectBoxElement> distinctIdentifierElement = ToOne<ObjectBoxElement>();
  String? manufacturer;
  ToOne<ObjectBoxElement> manufacturerElement = ToOne<ObjectBoxElement>();
  String? manufactureDate;
  ToOne<ObjectBoxElement> manufactureDateElement = ToOne<ObjectBoxElement>();
  String? expirationDate;
  ToOne<ObjectBoxElement> expirationDateElement = ToOne<ObjectBoxElement>();
  String? lotNumber;
  ToOne<ObjectBoxElement> lotNumberElement = ToOne<ObjectBoxElement>();
  String? serialNumber;
  ToOne<ObjectBoxElement> serialNumberElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxDeviceDeviceName> deviceName =
      ToMany<ObjectBoxDeviceDeviceName>();
  String? modelNumber;
  ToOne<ObjectBoxElement> modelNumberElement = ToOne<ObjectBoxElement>();
  String? partNumber;
  ToOne<ObjectBoxElement> partNumberElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxDeviceSpecialization> specialization =
      ToMany<ObjectBoxDeviceSpecialization>();
  ToMany<ObjectBoxDeviceVersion> version = ToMany<ObjectBoxDeviceVersion>();
  ToMany<ObjectBoxDeviceProperty> property = ToMany<ObjectBoxDeviceProperty>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> owner = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxContactPoint> contact = ToMany<ObjectBoxContactPoint>();
  ToOne<ObjectBoxReference> location = ToOne<ObjectBoxReference>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxCodeableConcept> safety = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> parent = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxDeviceUdiCarrier {
  ObjectBoxDeviceUdiCarrier({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.deviceIdentifier,
    ObjectBoxElement? deviceIdentifierElement,
    this.issuer,
    ObjectBoxElement? issuerElement,
    this.jurisdiction,
    ObjectBoxElement? jurisdictionElement,
    this.carrierAIDC,
    ObjectBoxElement? carrierAIDCElement,
    this.carrierHRF,
    ObjectBoxElement? carrierHRFElement,
    this.entryType,
    ObjectBoxElement? entryTypeElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.deviceIdentifierElement.target = deviceIdentifierElement;
    this.issuerElement.target = issuerElement;
    this.jurisdictionElement.target = jurisdictionElement;
    this.carrierAIDCElement.target = carrierAIDCElement;
    this.carrierHRFElement.target = carrierHRFElement;
    this.entryTypeElement.target = entryTypeElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? deviceIdentifier;
  ToOne<ObjectBoxElement> deviceIdentifierElement = ToOne<ObjectBoxElement>();
  String? issuer;
  ToOne<ObjectBoxElement> issuerElement = ToOne<ObjectBoxElement>();
  String? jurisdiction;
  ToOne<ObjectBoxElement> jurisdictionElement = ToOne<ObjectBoxElement>();
  String? carrierAIDC;
  ToOne<ObjectBoxElement> carrierAIDCElement = ToOne<ObjectBoxElement>();
  String? carrierHRF;
  ToOne<ObjectBoxElement> carrierHRFElement = ToOne<ObjectBoxElement>();
  String? entryType;
  ToOne<ObjectBoxElement> entryTypeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxDeviceDeviceName {
  ObjectBoxDeviceDeviceName({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    required this.type,
    ObjectBoxElement? typeElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.typeElement.target = typeElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxDeviceSpecialization {
  ObjectBoxDeviceSpecialization({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? systemType,
    this.version,
    ObjectBoxElement? versionElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.systemType.target = systemType;
    this.versionElement.target = versionElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> systemType =
      ToOne<ObjectBoxCodeableConcept>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxDeviceVersion {
  ObjectBoxDeviceVersion({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxIdentifier? component,
    required this.value,
    ObjectBoxElement? valueElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.component.target = component;
    this.valueElement.target = valueElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxIdentifier> component = ToOne<ObjectBoxIdentifier>();
  String value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxDeviceProperty {
  ObjectBoxDeviceProperty({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxQuantity>? valueQuantity,
    List<ObjectBoxCodeableConcept>? valueCode,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.valueQuantity.addAll(valueQuantity ?? []);
    this.valueCode.addAll(valueCode ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxQuantity> valueQuantity = ToMany<ObjectBoxQuantity>();
  ToMany<ObjectBoxCodeableConcept> valueCode =
      ToMany<ObjectBoxCodeableConcept>();
}
