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
  }): super(resourceType: R4ResourceType.DeviceDefinition);

@override
DeviceDefinition clone() => this;

}


@Data()
@JsonCodable()
class DeviceDefinitionUdiDeviceIdentifier {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? deviceIdentifier;
  final Element? deviceIdentifierElement;
  final FhirUri? issuer;
  final Element? issuerElement;
  final FhirUri? jurisdiction;
  final Element? jurisdictionElement;

  DeviceDefinitionUdiDeviceIdentifier({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.deviceIdentifier,
    this.deviceIdentifierElement,
    this.issuer,
    this.issuerElement,
    this.jurisdiction,
    this.jurisdictionElement,
  });

}


@Data()
@JsonCodable()
class DeviceDefinitionDeviceName {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? name;
  final Element? nameElement;
  final FhirCode? type;
  final Element? typeElement;

  DeviceDefinitionDeviceName({
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
class DeviceDefinitionSpecialization {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? systemType;
  final Element? systemTypeElement;
  final FhirString? version;
  final Element? versionElement;

  DeviceDefinitionSpecialization({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.systemType,
    this.systemTypeElement,
    this.version,
    this.versionElement,
  });

}


@Data()
@JsonCodable()
class DeviceDefinitionCapability {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept>? description;

  DeviceDefinitionCapability({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.description,
  });

}


@Data()
@JsonCodable()
class DeviceDefinitionProperty {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final List<Quantity>? valueQuantity;
  final List<CodeableConcept>? valueCode;

  DeviceDefinitionProperty({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.valueQuantity,
    this.valueCode,
  });

}


@Data()
@JsonCodable()
class DeviceDefinitionMaterial {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept substance;
  final FhirBoolean? alternate;
  final Element? alternateElement;
  final FhirBoolean? allergenicIndicator;
  final Element? allergenicIndicatorElement;

  DeviceDefinitionMaterial({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.substance,
    this.alternate,
    this.alternateElement,
    this.allergenicIndicator,
    this.allergenicIndicatorElement,
  });

}



