import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class DeviceDefinition extends DomainResource {
  DeviceDefinition({
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
  }) : super(resourceType: R4ResourceType.DeviceDefinition);

  final List<Identifier>? identifier;
  final List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier;
  final FhirString? manufacturerString;
  final Element? manufacturerStringElement;
  final Reference? manufacturerReference;
  final List<DeviceDefinitionDeviceName>? deviceName;
  final FhirString? modelNumber;
  final Element? modelNumberElement;
  final CodeableConcept? type;
  final List<DeviceDefinitionSpecialization>? specialization;
  final List<FhirString>? version;
  final List<Element>? versionElement;
  final List<CodeableConcept>? safety;
  final List<ProductShelfLife>? shelfLifeStorage;
  final ProdCharacteristic? physicalCharacteristics;
  final List<CodeableConcept>? languageCode;
  final List<DeviceDefinitionCapability>? capability;
  final List<DeviceDefinitionProperty>? property;
  final Reference? owner;
  final List<ContactPoint>? contact;
  final FhirUri? url;
  final Element? urlElement;
  final FhirUri? onlineInformation;
  final Element? onlineInformationElement;
  final List<Annotation>? note;
  final Quantity? quantity;
  final Reference? parentDevice;
  final List<DeviceDefinitionMaterial>? material;
  @override
  DeviceDefinition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class DeviceDefinitionUdiDeviceIdentifier extends BackboneElement {
  DeviceDefinitionUdiDeviceIdentifier({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.deviceIdentifier,
    this.deviceIdentifierElement,
    required this.issuer,
    this.issuerElement,
    required this.jurisdiction,
    this.jurisdictionElement,
  });

  final FhirString deviceIdentifier;
  final Element? deviceIdentifierElement;
  final FhirUri issuer;
  final Element? issuerElement;
  final FhirUri jurisdiction;
  final Element? jurisdictionElement;
  @override
  DeviceDefinitionUdiDeviceIdentifier clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class DeviceDefinitionDeviceName extends BackboneElement {
  DeviceDefinitionDeviceName({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    required this.type,
    this.typeElement,
  });

  final FhirString name;
  final Element? nameElement;
  final FhirCode type;
  final Element? typeElement;
  @override
  DeviceDefinitionDeviceName clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class DeviceDefinitionSpecialization extends BackboneElement {
  DeviceDefinitionSpecialization({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.systemType,
    this.systemTypeElement,
    this.version,
    this.versionElement,
  });

  final FhirString systemType;
  final Element? systemTypeElement;
  final FhirString? version;
  final Element? versionElement;
  @override
  DeviceDefinitionSpecialization clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class DeviceDefinitionCapability extends BackboneElement {
  DeviceDefinitionCapability({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.description,
  });

  final CodeableConcept type;
  final List<CodeableConcept>? description;
  @override
  DeviceDefinitionCapability clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class DeviceDefinitionProperty extends BackboneElement {
  DeviceDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueQuantity,
    this.valueCode,
  });

  final CodeableConcept type;
  final List<Quantity>? valueQuantity;
  final List<CodeableConcept>? valueCode;
  @override
  DeviceDefinitionProperty clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class DeviceDefinitionMaterial extends BackboneElement {
  DeviceDefinitionMaterial({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.substance,
    this.alternate,
    this.alternateElement,
    this.allergenicIndicator,
    this.allergenicIndicatorElement,
  });

  final CodeableConcept substance;
  final FhirBoolean? alternate;
  final Element? alternateElement;
  final FhirBoolean? allergenicIndicator;
  final Element? allergenicIndicatorElement;
  @override
  DeviceDefinitionMaterial clone() => throw UnimplementedError();
}
