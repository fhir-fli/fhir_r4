import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Device extends DomainResource {
  final List<Identifier>? identifier;
  final Reference? definition;
  final List<DeviceUdiCarrier>? udiCarrier;
  final FhirCode? status;
  final Element? statusElement;
  final List<CodeableConcept>? statusReason;
  final FhirString? distinctIdentifier;
  final Element? distinctIdentifierElement;
  final FhirString? manufacturer;
  final Element? manufacturerElement;
  final FhirDateTime? manufactureDate;
  final Element? manufactureDateElement;
  final FhirDateTime? expirationDate;
  final Element? expirationDateElement;
  final FhirString? lotNumber;
  final Element? lotNumberElement;
  final FhirString? serialNumber;
  final Element? serialNumberElement;
  final List<DeviceDeviceName>? deviceName;
  final FhirString? modelNumber;
  final Element? modelNumberElement;
  final FhirString? partNumber;
  final Element? partNumberElement;
  final CodeableConcept? type;
  final List<DeviceSpecialization>? specialization;
  final List<DeviceVersion>? version;
  final List<DeviceProperty>? property;
  final Reference? patient;
  final Reference? owner;
  final List<ContactPoint>? contact;
  final Reference? location;
  final FhirUri? url;
  final Element? urlElement;
  final List<Annotation>? note;
  final List<CodeableConcept>? safety;
  final Reference? parent;

  Device({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
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
  }): super(resourceType: R4ResourceType.Device);

@override
Device clone() => this;

}


@Data()
@JsonCodable()
class DeviceUdiCarrier {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? deviceIdentifier;
  final Element? deviceIdentifierElement;
  final FhirUri? issuer;
  final Element? issuerElement;
  final FhirUri? jurisdiction;
  final Element? jurisdictionElement;
  final FhirBase64Binary? carrierAIDC;
  final Element? carrierAIDCElement;
  final FhirString? carrierHRF;
  final Element? carrierHRFElement;
  final FhirCode? entryType;
  final Element? entryTypeElement;

  DeviceUdiCarrier({
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

}


@Data()
@JsonCodable()
class DeviceDeviceName {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? name;
  final Element? nameElement;
  final FhirCode? type;
  final Element? typeElement;

  DeviceDeviceName({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.type,
    this.typeElement,
  });

}


@Data()
@JsonCodable()
class DeviceSpecialization {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept systemType;
  final FhirString? version;
  final Element? versionElement;

  DeviceSpecialization({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.systemType,
    this.version,
    this.versionElement,
  });

}


@Data()
@JsonCodable()
class DeviceVersion {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final Identifier? component;
  final FhirString? value;
  final Element? valueElement;

  DeviceVersion({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.component,
    this.value,
    this.valueElement,
  });

}


@Data()
@JsonCodable()
class DeviceProperty {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final List<Quantity>? valueQuantity;
  final List<CodeableConcept>? valueCode;

  DeviceProperty({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.valueQuantity,
    this.valueCode,
  });

}


