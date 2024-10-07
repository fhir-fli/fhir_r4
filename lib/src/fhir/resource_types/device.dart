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
  }) : super(resourceType: R4ResourceType.Device);

  @override
  Device clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DeviceUdiCarrier extends BackboneElement {
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
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @override
  DeviceUdiCarrier clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DeviceDeviceName extends BackboneElement {
  final FhirString name;
  final Element? nameElement;
  final FhirCode type;
  final Element? typeElement;

  DeviceDeviceName({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    required this.type,
    this.typeElement,
  });

  @override
  DeviceDeviceName clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DeviceSpecialization extends BackboneElement {
  final CodeableConcept systemType;
  final FhirString? version;
  final Element? versionElement;

  DeviceSpecialization({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.systemType,
    this.version,
    this.versionElement,
  });

  @override
  DeviceSpecialization clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DeviceVersion extends BackboneElement {
  final CodeableConcept? type;
  final Identifier? component;
  final FhirString value;
  final Element? valueElement;

  DeviceVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.component,
    required this.value,
    this.valueElement,
  });

  @override
  DeviceVersion clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DeviceProperty extends BackboneElement {
  final CodeableConcept type;
  final List<Quantity>? valueQuantity;
  final List<CodeableConcept>? valueCode;

  DeviceProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueQuantity,
    this.valueCode,
  });

  @override
  DeviceProperty clone() => throw UnimplementedError();
}
