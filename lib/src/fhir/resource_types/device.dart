import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Device] /// A type of a manufactured item that is used in the provision of healthcare
/// without being substantially changed through that activity. The device may
/// be a medical or non-medical device.
class Device extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique instance identifiers assigned to a device by manufacturers other
  /// organizations or owners.
  final List<Identifier>? identifier;

  /// [definition] /// The reference to the definition for the device.
  final Reference? definition;

  /// [udiCarrier] /// Unique device identifier (UDI) assigned to device label or package. Note
  /// that the Device may include multiple udiCarriers as it either may include
  /// just the udiCarrier for the jurisdiction it is sold, or for multiple
  /// jurisdictions it could have been sold.
  final List<DeviceUdiCarrier>? udiCarrier;

  /// [status] /// Status of the Device availability.
  final FhirCode? status;
  final Element? statusElement;

  /// [statusReason] /// Reason for the dtatus of the Device availability.
  final List<CodeableConcept>? statusReason;

  /// [distinctIdentifier] /// The distinct identification string as required by regulation for a human
  /// cell, tissue, or cellular and tissue-based product.
  final FhirString? distinctIdentifier;
  final Element? distinctIdentifierElement;

  /// [manufacturer] /// A name of the manufacturer.
  final FhirString? manufacturer;
  final Element? manufacturerElement;

  /// [manufactureDate] /// The date and time when the device was manufactured.
  final FhirDateTime? manufactureDate;
  final Element? manufactureDateElement;

  /// [expirationDate] /// The date and time beyond which this device is no longer valid or should not
  /// be used (if applicable).
  final FhirDateTime? expirationDate;
  final Element? expirationDateElement;

  /// [lotNumber] /// Lot number assigned by the manufacturer.
  final FhirString? lotNumber;
  final Element? lotNumberElement;

  /// [serialNumber] /// The serial number assigned by the organization when the device was
  /// manufactured.
  final FhirString? serialNumber;
  final Element? serialNumberElement;

  /// [deviceName] /// This represents the manufacturer's name of the device as provided by the
  /// device, from a UDI label, or by a person describing the Device. This
  /// typically would be used when a person provides the name(s) or when the
  /// device represents one of the names available from DeviceDefinition.
  final List<DeviceDeviceName>? deviceName;

  /// [modelNumber] /// The manufacturer's model number for the device.
  final FhirString? modelNumber;
  final Element? modelNumberElement;

  /// [partNumber] /// The part number or catalog number of the device.
  final FhirString? partNumber;
  final Element? partNumberElement;

  /// [type] /// The kind or type of device.
  final CodeableConcept? type;

  /// [specialization] /// The capabilities supported on a device, the standards to which the device
  /// conforms for a particular purpose, and used for the communication.
  final List<DeviceSpecialization>? specialization;

  /// [version] /// The actual design of the device or software version running on the device.
  final List<DeviceVersion>? version;

  /// [property] /// The actual configuration settings of a device as it actually operates,
  /// e.g., regulation status, time properties.
  final List<DeviceProperty>? property;

  /// [patient] /// Patient information, If the device is affixed to a person.
  final Reference? patient;

  /// [owner] /// An organization that is responsible for the provision and ongoing
  /// maintenance of the device.
  final Reference? owner;

  /// [contact] /// Contact details for an organization or a particular human that is
  /// responsible for the device.
  final List<ContactPoint>? contact;

  /// [location] /// The place where the device can be found.
  final Reference? location;

  /// [url] /// A network address on which the device may be contacted directly.
  final FhirUri? url;
  final Element? urlElement;

  /// [note] /// Descriptive information, usage information or implantation information that
  /// is not captured in an existing element.
  final List<Annotation>? note;

  /// [safety] /// Provides additional safety characteristics about a medical device. For
  /// example devices containing latex.
  final List<CodeableConcept>? safety;

  /// [parent] /// The device that this device is attached to or is part of.
  final Reference? parent;
  @override
  Device clone() => throw UnimplementedError();
  Device copy({
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
    Reference? definition,
    List<DeviceUdiCarrier>? udiCarrier,
    FhirCode? status,
    Element? statusElement,
    List<CodeableConcept>? statusReason,
    FhirString? distinctIdentifier,
    Element? distinctIdentifierElement,
    FhirString? manufacturer,
    Element? manufacturerElement,
    FhirDateTime? manufactureDate,
    Element? manufactureDateElement,
    FhirDateTime? expirationDate,
    Element? expirationDateElement,
    FhirString? lotNumber,
    Element? lotNumberElement,
    FhirString? serialNumber,
    Element? serialNumberElement,
    List<DeviceDeviceName>? deviceName,
    FhirString? modelNumber,
    Element? modelNumberElement,
    FhirString? partNumber,
    Element? partNumberElement,
    CodeableConcept? type,
    List<DeviceSpecialization>? specialization,
    List<DeviceVersion>? version,
    List<DeviceProperty>? property,
    Reference? patient,
    Reference? owner,
    List<ContactPoint>? contact,
    Reference? location,
    FhirUri? url,
    Element? urlElement,
    List<Annotation>? note,
    List<CodeableConcept>? safety,
    Reference? parent,
  }) {
    return Device(
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
      definition: definition ?? this.definition,
      udiCarrier: udiCarrier ?? this.udiCarrier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      statusReason: statusReason ?? this.statusReason,
      distinctIdentifier: distinctIdentifier ?? this.distinctIdentifier,
      distinctIdentifierElement:
          distinctIdentifierElement ?? this.distinctIdentifierElement,
      manufacturer: manufacturer ?? this.manufacturer,
      manufacturerElement: manufacturerElement ?? this.manufacturerElement,
      manufactureDate: manufactureDate ?? this.manufactureDate,
      manufactureDateElement:
          manufactureDateElement ?? this.manufactureDateElement,
      expirationDate: expirationDate ?? this.expirationDate,
      expirationDateElement:
          expirationDateElement ?? this.expirationDateElement,
      lotNumber: lotNumber ?? this.lotNumber,
      lotNumberElement: lotNumberElement ?? this.lotNumberElement,
      serialNumber: serialNumber ?? this.serialNumber,
      serialNumberElement: serialNumberElement ?? this.serialNumberElement,
      deviceName: deviceName ?? this.deviceName,
      modelNumber: modelNumber ?? this.modelNumber,
      modelNumberElement: modelNumberElement ?? this.modelNumberElement,
      partNumber: partNumber ?? this.partNumber,
      partNumberElement: partNumberElement ?? this.partNumberElement,
      type: type ?? this.type,
      specialization: specialization ?? this.specialization,
      version: version ?? this.version,
      property: property ?? this.property,
      patient: patient ?? this.patient,
      owner: owner ?? this.owner,
      contact: contact ?? this.contact,
      location: location ?? this.location,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      note: note ?? this.note,
      safety: safety ?? this.safety,
      parent: parent ?? this.parent,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DeviceUdiCarrier] /// Unique device identifier (UDI) assigned to device label or package. Note
/// that the Device may include multiple udiCarriers as it either may include
/// just the udiCarrier for the jurisdiction it is sold, or for multiple
/// jurisdictions it could have been sold.
class DeviceUdiCarrier extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [deviceIdentifier] /// The device identifier (DI) is a mandatory, fixed portion of a UDI that
  /// identifies the labeler and the specific version or model of a device.
  final FhirString? deviceIdentifier;
  final Element? deviceIdentifierElement;

  /// [issuer] /// Organization that is charged with issuing UDIs for devices. For example,
  /// the US FDA issuers include :
  /// 1) GS1:
  /// http://hl7.org/fhir/NamingSystem/gs1-di,
  /// 2) HIBCC:
  /// http://hl7.org/fhir/NamingSystem/hibcc-dI,
  /// 3) ICCBBA for blood containers:
  /// http://hl7.org/fhir/NamingSystem/iccbba-blood-di,
  /// 4) ICCBA for other devices:
  /// http://hl7.org/fhir/NamingSystem/iccbba-other-di.
  final FhirUri? issuer;
  final Element? issuerElement;

  /// [jurisdiction] /// The identity of the authoritative source for UDI generation within a
  /// jurisdiction. All UDIs are globally unique within a single namespace with
  /// the appropriate repository uri as the system. For example, UDIs of devices
  /// managed in the U.S. by the FDA, the value is
  /// http://hl7.org/fhir/NamingSystem/fda-udi.
  final FhirUri? jurisdiction;
  final Element? jurisdictionElement;

  /// [carrierAIDC] /// The full UDI carrier of the Automatic Identification and Data Capture
  /// (AIDC) technology representation of the barcode string as printed on the
  /// packaging of the device - e.g., a barcode or RFID. Because of limitations
  /// on character sets in XML and the need to round-trip JSON data through XML,
  /// AIDC Formats *SHALL* be base64 encoded.
  final FhirBase64Binary? carrierAIDC;
  final Element? carrierAIDCElement;

  /// [carrierHRF] /// The full UDI carrier as the human readable form (HRF) representation of the
  /// barcode string as printed on the packaging of the device.
  final FhirString? carrierHRF;
  final Element? carrierHRFElement;

  /// [entryType] /// A coded entry to indicate how the data was entered.
  final FhirCode? entryType;
  final Element? entryTypeElement;
  @override
  DeviceUdiCarrier clone() => throw UnimplementedError();
  DeviceUdiCarrier copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? deviceIdentifier,
    Element? deviceIdentifierElement,
    FhirUri? issuer,
    Element? issuerElement,
    FhirUri? jurisdiction,
    Element? jurisdictionElement,
    FhirBase64Binary? carrierAIDC,
    Element? carrierAIDCElement,
    FhirString? carrierHRF,
    Element? carrierHRFElement,
    FhirCode? entryType,
    Element? entryTypeElement,
  }) {
    return DeviceUdiCarrier(
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
      carrierAIDC: carrierAIDC ?? this.carrierAIDC,
      carrierAIDCElement: carrierAIDCElement ?? this.carrierAIDCElement,
      carrierHRF: carrierHRF ?? this.carrierHRF,
      carrierHRFElement: carrierHRFElement ?? this.carrierHRFElement,
      entryType: entryType ?? this.entryType,
      entryTypeElement: entryTypeElement ?? this.entryTypeElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DeviceDeviceName] /// This represents the manufacturer's name of the device as provided by the
/// device, from a UDI label, or by a person describing the Device. This
/// typically would be used when a person provides the name(s) or when the
/// device represents one of the names available from DeviceDefinition.
class DeviceDeviceName extends BackboneElement {
  DeviceDeviceName({
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

  /// [name] /// The name that identifies the device.
  final FhirString name;
  final Element? nameElement;

  /// [type] /// The type of deviceName.
  /// UDILabelName | UserFriendlyName | PatientReportedName |
  /// ManufactureDeviceName | ModelName.
  final FhirCode type;
  final Element? typeElement;
  @override
  DeviceDeviceName clone() => throw UnimplementedError();
  DeviceDeviceName copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirCode? type,
    Element? typeElement,
  }) {
    return DeviceDeviceName(
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

/// [DeviceSpecialization] /// The capabilities supported on a device, the standards to which the device
/// conforms for a particular purpose, and used for the communication.
class DeviceSpecialization extends BackboneElement {
  DeviceSpecialization({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.systemType,
    this.version,
    this.versionElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [systemType] /// The standard that is used to operate and communicate.
  final CodeableConcept systemType;

  /// [version] /// The version of the standard that is used to operate and communicate.
  final FhirString? version;
  final Element? versionElement;
  @override
  DeviceSpecialization clone() => throw UnimplementedError();
  DeviceSpecialization copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? systemType,
    FhirString? version,
    Element? versionElement,
  }) {
    return DeviceSpecialization(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      systemType: systemType ?? this.systemType,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DeviceVersion] /// The actual design of the device or software version running on the device.
class DeviceVersion extends BackboneElement {
  DeviceVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.component,
    required this.value,
    this.valueElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of the device version, e.g. manufacturer, approved, internal.
  final CodeableConcept? type;

  /// [component] /// A single component of the device version.
  final Identifier? component;

  /// [value] /// The version text.
  final FhirString value;
  final Element? valueElement;
  @override
  DeviceVersion clone() => throw UnimplementedError();
  DeviceVersion copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Identifier? component,
    FhirString? value,
    Element? valueElement,
  }) {
    return DeviceVersion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      component: component ?? this.component,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DeviceProperty] /// The actual configuration settings of a device as it actually operates,
/// e.g., regulation status, time properties.
class DeviceProperty extends BackboneElement {
  DeviceProperty({
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
  DeviceProperty clone() => throw UnimplementedError();
  DeviceProperty copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Quantity>? valueQuantity,
    List<CodeableConcept>? valueCode,
  }) {
    return DeviceProperty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueCode: valueCode ?? this.valueCode,
    );
  }
}
