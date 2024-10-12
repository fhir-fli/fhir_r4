// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDevice {
  ObjectBoxDevice({
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
    this.definition,
    this.udiCarrier,
    this.status,
    this.statusElement,
    this.statusReason,
    this.distinctIdentifier,
    this.distinctIdentifierElement,
    this.manufacturer,
    this.manufacturerElement,
    this.manufactureDate,
    this.manufactureDateElement,
    this.expirationDate,
    this.expirationDateElement,
    this.lotNumber,
    this.lotNumberElement,
    this.serialNumber,
    this.serialNumberElement,
    this.deviceName,
    this.modelNumber,
    this.modelNumberElement,
    this.partNumber,
    this.partNumberElement,
    this.type,
    this.specialization,
    this.version,
    this.property,
    this.patient,
    this.owner,
    this.contact,
    this.location,
    this.url,
    this.urlElement,
    this.note,
    this.safety,
    this.parent,
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
  ToOne<ObjectBoxReference>? definition = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxDeviceUdiCarrier>? udiCarrier =
      ToMany<ObjectBoxDeviceUdiCarrier>();
  String? status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? statusReason =
      ToMany<ObjectBoxCodeableConcept>();
  String? distinctIdentifier;
  ToOne<ObjectBoxElement>? distinctIdentifierElement =
      ToOne<ObjectBoxElement>();
  String? manufacturer;
  ToOne<ObjectBoxElement>? manufacturerElement = ToOne<ObjectBoxElement>();
  String? manufactureDate;
  ToOne<ObjectBoxElement>? manufactureDateElement = ToOne<ObjectBoxElement>();
  String? expirationDate;
  ToOne<ObjectBoxElement>? expirationDateElement = ToOne<ObjectBoxElement>();
  String? lotNumber;
  ToOne<ObjectBoxElement>? lotNumberElement = ToOne<ObjectBoxElement>();
  String? serialNumber;
  ToOne<ObjectBoxElement>? serialNumberElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxDeviceDeviceName>? deviceName =
      ToMany<ObjectBoxDeviceDeviceName>();
  String? modelNumber;
  ToOne<ObjectBoxElement>? modelNumberElement = ToOne<ObjectBoxElement>();
  String? partNumber;
  ToOne<ObjectBoxElement>? partNumberElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxDeviceSpecialization>? specialization =
      ToMany<ObjectBoxDeviceSpecialization>();
  ToMany<ObjectBoxDeviceVersion>? version = ToMany<ObjectBoxDeviceVersion>();
  ToMany<ObjectBoxDeviceProperty>? property = ToMany<ObjectBoxDeviceProperty>();
  ToOne<ObjectBoxReference>? patient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? owner = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxContactPoint>? contact = ToMany<ObjectBoxContactPoint>();
  ToOne<ObjectBoxReference>? location = ToOne<ObjectBoxReference>();
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxCodeableConcept>? safety = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? parent = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxDeviceUdiCarrier {
  ObjectBoxDeviceUdiCarrier({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.deviceIdentifier,
    this.deviceIdentifierElement,
    this.issuer,
    this.issuerElement,
    this.jurisdiction,
    this.jurisdictionElement,
    this.carrierAIDC,
    this.carrierAIDCElement,
    this.carrierHRF,
    this.carrierHRFElement,
    this.entryType,
    this.entryTypeElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? deviceIdentifier;
  ToOne<ObjectBoxElement>? deviceIdentifierElement = ToOne<ObjectBoxElement>();
  String? issuer;
  ToOne<ObjectBoxElement>? issuerElement = ToOne<ObjectBoxElement>();
  String? jurisdiction;
  ToOne<ObjectBoxElement>? jurisdictionElement = ToOne<ObjectBoxElement>();
  String? carrierAIDC;
  ToOne<ObjectBoxElement>? carrierAIDCElement = ToOne<ObjectBoxElement>();
  String? carrierHRF;
  ToOne<ObjectBoxElement>? carrierHRFElement = ToOne<ObjectBoxElement>();
  String? entryType;
  ToOne<ObjectBoxElement>? entryTypeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxDeviceDeviceName {
  ObjectBoxDeviceDeviceName({
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
class ObjectBoxDeviceSpecialization {
  ObjectBoxDeviceSpecialization({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.systemType,
    this.version,
    this.versionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> systemType =
      ToOne<ObjectBoxCodeableConcept>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxDeviceVersion {
  ObjectBoxDeviceVersion({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.component,
    required this.value,
    this.valueElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxIdentifier>? component = ToOne<ObjectBoxIdentifier>();
  String value;
  ToOne<ObjectBoxElement>? valueElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxDeviceProperty {
  ObjectBoxDeviceProperty({
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
