import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [DeviceDefinition] /// The characteristics, operational status and capabilities of a
/// medical-related component of a medical device.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique instance identifiers assigned to a device by the software,
  /// manufacturers, other organizations or owners. For example: handle ID.
  final List<Identifier>? identifier;

  /// [udiDeviceIdentifier] /// Unique device identifier (UDI) assigned to device label or package. Note
  /// that the Device may include multiple udiCarriers as it either may include
  /// just the udiCarrier for the jurisdiction it is sold, or for multiple
  /// jurisdictions it could have been sold.
  final List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier;

  /// [manufacturerString] /// A name of the manufacturer.
  final FhirString? manufacturerString;
  final Element? manufacturerStringElement;

  /// [manufacturerReference] /// A name of the manufacturer.
  final Reference? manufacturerReference;

  /// [deviceName] /// A name given to the device to identify it.
  final List<DeviceDefinitionDeviceName>? deviceName;

  /// [modelNumber] /// The model number for the device.
  final FhirString? modelNumber;
  final Element? modelNumberElement;

  /// [type] /// What kind of device or device system this is.
  final CodeableConcept? type;

  /// [specialization] /// The capabilities supported on a device, the standards to which the device
  /// conforms for a particular purpose, and used for the communication.
  final List<DeviceDefinitionSpecialization>? specialization;

  /// [version] /// The available versions of the device, e.g., software versions.
  final List<FhirString>? version;
  final List<Element>? versionElement;

  /// [safety] /// Safety characteristics of the device.
  final List<CodeableConcept>? safety;

  /// [shelfLifeStorage] /// Shelf Life and storage information.
  final List<ProductShelfLife>? shelfLifeStorage;

  /// [physicalCharacteristics] /// Dimensions, color etc.
  final ProdCharacteristic? physicalCharacteristics;

  /// [languageCode] /// Language code for the human-readable text strings produced by the device
  /// (all supported).
  final List<CodeableConcept>? languageCode;

  /// [capability] /// Device capabilities.
  final List<DeviceDefinitionCapability>? capability;

  /// [property] /// The actual configuration settings of a device as it actually operates,
  /// e.g., regulation status, time properties.
  final List<DeviceDefinitionProperty>? property;

  /// [owner] /// An organization that is responsible for the provision and ongoing
  /// maintenance of the device.
  final Reference? owner;

  /// [contact] /// Contact details for an organization or a particular human that is
  /// responsible for the device.
  final List<ContactPoint>? contact;

  /// [url] /// A network address on which the device may be contacted directly.
  final FhirUri? url;
  final Element? urlElement;

  /// [onlineInformation] /// Access to on-line information about the device.
  final FhirUri? onlineInformation;
  final Element? onlineInformationElement;

  /// [note] /// Descriptive information, usage information or implantation information that
  /// is not captured in an existing element.
  final List<Annotation>? note;

  /// [quantity] /// The quantity of the device present in the packaging (e.g. the number of
  /// devices present in a pack, or the number of devices in the same package of
  /// the medicinal product).
  final Quantity? quantity;

  /// [parentDevice] /// The parent device it can be part of.
  final Reference? parentDevice;

  /// [material] /// A substance used to create the material(s) of which the device is made.
  final List<DeviceDefinitionMaterial>? material;
  @override
  DeviceDefinition clone() => throw UnimplementedError();
  DeviceDefinition copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier,
    FhirString? manufacturerString,
    Element? manufacturerStringElement,
    Reference? manufacturerReference,
    List<DeviceDefinitionDeviceName>? deviceName,
    FhirString? modelNumber,
    Element? modelNumberElement,
    CodeableConcept? type,
    List<DeviceDefinitionSpecialization>? specialization,
    List<FhirString>? version,
    List<Element>? versionElement,
    List<CodeableConcept>? safety,
    List<ProductShelfLife>? shelfLifeStorage,
    ProdCharacteristic? physicalCharacteristics,
    List<CodeableConcept>? languageCode,
    List<DeviceDefinitionCapability>? capability,
    List<DeviceDefinitionProperty>? property,
    Reference? owner,
    List<ContactPoint>? contact,
    FhirUri? url,
    Element? urlElement,
    FhirUri? onlineInformation,
    Element? onlineInformationElement,
    List<Annotation>? note,
    Quantity? quantity,
    Reference? parentDevice,
    List<DeviceDefinitionMaterial>? material,
  }) {
    return DeviceDefinition(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      udiDeviceIdentifier: udiDeviceIdentifier ?? this.udiDeviceIdentifier,
      manufacturerString: manufacturerString ?? this.manufacturerString,
      manufacturerStringElement:
          manufacturerStringElement ?? this.manufacturerStringElement,
      manufacturerReference:
          manufacturerReference ?? this.manufacturerReference,
      deviceName: deviceName ?? this.deviceName,
      modelNumber: modelNumber ?? this.modelNumber,
      modelNumberElement: modelNumberElement ?? this.modelNumberElement,
      type: type ?? this.type,
      specialization: specialization ?? this.specialization,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      safety: safety ?? this.safety,
      shelfLifeStorage: shelfLifeStorage ?? this.shelfLifeStorage,
      physicalCharacteristics:
          physicalCharacteristics ?? this.physicalCharacteristics,
      languageCode: languageCode ?? this.languageCode,
      capability: capability ?? this.capability,
      property: property ?? this.property,
      owner: owner ?? this.owner,
      contact: contact ?? this.contact,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      onlineInformation: onlineInformation ?? this.onlineInformation,
      onlineInformationElement:
          onlineInformationElement ?? this.onlineInformationElement,
      note: note ?? this.note,
      quantity: quantity ?? this.quantity,
      parentDevice: parentDevice ?? this.parentDevice,
      material: material ?? this.material,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DeviceDefinitionUdiDeviceIdentifier] /// Unique device identifier (UDI) assigned to device label or package. Note
/// that the Device may include multiple udiCarriers as it either may include
/// just the udiCarrier for the jurisdiction it is sold, or for multiple
/// jurisdictions it could have been sold.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [deviceIdentifier] /// The identifier that is to be associated with every Device that references
  /// this DeviceDefintiion for the issuer and jurisdication porvided in the
  /// DeviceDefinition.udiDeviceIdentifier.
  final FhirString deviceIdentifier;
  final Element? deviceIdentifierElement;

  /// [issuer] /// The organization that assigns the identifier algorithm.
  final FhirUri issuer;
  final Element? issuerElement;

  /// [jurisdiction] /// The jurisdiction to which the deviceIdentifier applies.
  final FhirUri jurisdiction;
  final Element? jurisdictionElement;
  @override
  DeviceDefinitionUdiDeviceIdentifier clone() => throw UnimplementedError();
  DeviceDefinitionUdiDeviceIdentifier copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? deviceIdentifier,
    Element? deviceIdentifierElement,
    FhirUri? issuer,
    Element? issuerElement,
    FhirUri? jurisdiction,
    Element? jurisdictionElement,
  }) {
    return DeviceDefinitionUdiDeviceIdentifier(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      deviceIdentifier: deviceIdentifier ?? this.deviceIdentifier,
      deviceIdentifierElement:
          deviceIdentifierElement ?? this.deviceIdentifierElement,
      issuer: issuer ?? this.issuer,
      issuerElement: issuerElement ?? this.issuerElement,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      jurisdictionElement: jurisdictionElement ?? this.jurisdictionElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DeviceDefinitionDeviceName] /// A name given to the device to identify it.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The name of the device.
  final FhirString name;
  final Element? nameElement;

  /// [type] /// The type of deviceName.
  /// UDILabelName | UserFriendlyName | PatientReportedName |
  /// ManufactureDeviceName | ModelName.
  final FhirCode type;
  final Element? typeElement;
  @override
  DeviceDefinitionDeviceName clone() => throw UnimplementedError();
  DeviceDefinitionDeviceName copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirCode? type,
    Element? typeElement,
  }) {
    return DeviceDefinitionDeviceName(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DeviceDefinitionSpecialization] /// The capabilities supported on a device, the standards to which the device
/// conforms for a particular purpose, and used for the communication.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [systemType] /// The standard that is used to operate and communicate.
  final FhirString systemType;
  final Element? systemTypeElement;

  /// [version] /// The version of the standard that is used to operate and communicate.
  final FhirString? version;
  final Element? versionElement;
  @override
  DeviceDefinitionSpecialization clone() => throw UnimplementedError();
  DeviceDefinitionSpecialization copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? systemType,
    Element? systemTypeElement,
    FhirString? version,
    Element? versionElement,
  }) {
    return DeviceDefinitionSpecialization(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      systemType: systemType ?? this.systemType,
      systemTypeElement: systemTypeElement ?? this.systemTypeElement,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DeviceDefinitionCapability] /// Device capabilities.
class DeviceDefinitionCapability extends BackboneElement {
  DeviceDefinitionCapability({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.description,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of capability.
  final CodeableConcept type;

  /// [description] /// Description of capability.
  final List<CodeableConcept>? description;
  @override
  DeviceDefinitionCapability clone() => throw UnimplementedError();
  DeviceDefinitionCapability copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? description,
  }) {
    return DeviceDefinitionCapability(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      description: description ?? this.description,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DeviceDefinitionProperty] /// The actual configuration settings of a device as it actually operates,
/// e.g., regulation status, time properties.
class DeviceDefinitionProperty extends BackboneElement {
  DeviceDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueQuantity,
    this.valueCode,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Code that specifies the property DeviceDefinitionPropetyCode (Extensible).
  final CodeableConcept type;

  /// [valueQuantity] /// Property value as a quantity.
  final List<Quantity>? valueQuantity;

  /// [valueCode] /// Property value as a code, e.g., NTP4 (synced to NTP).
  final List<CodeableConcept>? valueCode;
  @override
  DeviceDefinitionProperty clone() => throw UnimplementedError();
  DeviceDefinitionProperty copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Quantity>? valueQuantity,
    List<CodeableConcept>? valueCode,
  }) {
    return DeviceDefinitionProperty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueCode: valueCode ?? this.valueCode,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DeviceDefinitionMaterial] /// A substance used to create the material(s) of which the device is made.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [substance] /// The substance.
  final CodeableConcept substance;

  /// [alternate] /// Indicates an alternative material of the device.
  final FhirBoolean? alternate;
  final Element? alternateElement;

  /// [allergenicIndicator] /// Whether the substance is a known or suspected allergen.
  final FhirBoolean? allergenicIndicator;
  final Element? allergenicIndicatorElement;
  @override
  DeviceDefinitionMaterial clone() => throw UnimplementedError();
  DeviceDefinitionMaterial copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? substance,
    FhirBoolean? alternate,
    Element? alternateElement,
    FhirBoolean? allergenicIndicator,
    Element? allergenicIndicatorElement,
  }) {
    return DeviceDefinitionMaterial(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      substance: substance ?? this.substance,
      alternate: alternate ?? this.alternate,
      alternateElement: alternateElement ?? this.alternateElement,
      allergenicIndicator: allergenicIndicator ?? this.allergenicIndicator,
      allergenicIndicatorElement:
          allergenicIndicatorElement ?? this.allergenicIndicatorElement,
    );
  }
}
