import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class DeviceDefinition extends DomainResource {
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

  @override
  DeviceDefinition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DeviceDefinitionUdiDeviceIdentifier extends BackboneElement {
  final FhirString deviceIdentifier;
  final Element? deviceIdentifierElement;
  final FhirUri issuer;
  final Element? issuerElement;
  final FhirUri jurisdiction;
  final Element? jurisdictionElement;

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

  @override
  DeviceDefinitionUdiDeviceIdentifier clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DeviceDefinitionDeviceName extends BackboneElement {
  final FhirString name;
  final Element? nameElement;
  final FhirCode type;
  final Element? typeElement;

  DeviceDefinitionDeviceName({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    required this.type,
    this.typeElement,
  });

  @override
  DeviceDefinitionDeviceName clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DeviceDefinitionSpecialization extends BackboneElement {
  final FhirString systemType;
  final Element? systemTypeElement;
  final FhirString? version;
  final Element? versionElement;

  DeviceDefinitionSpecialization({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.systemType,
    this.systemTypeElement,
    this.version,
    this.versionElement,
  });

  @override
  DeviceDefinitionSpecialization clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DeviceDefinitionCapability extends BackboneElement {
  final CodeableConcept type;
  final List<CodeableConcept>? description;

  DeviceDefinitionCapability({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.description,
  });

  @override
  DeviceDefinitionCapability clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DeviceDefinitionProperty extends BackboneElement {
  final CodeableConcept type;
  final List<Quantity>? valueQuantity;
  final List<CodeableConcept>? valueCode;

  DeviceDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueQuantity,
    this.valueCode,
  });

  @override
  DeviceDefinitionProperty clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DeviceDefinitionMaterial extends BackboneElement {
  final CodeableConcept substance;
  final FhirBoolean? alternate;
  final Element? alternateElement;
  final FhirBoolean? allergenicIndicator;
  final Element? allergenicIndicatorElement;

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

  @override
  DeviceDefinitionMaterial clone() => throw UnimplementedError();
}
