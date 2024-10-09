import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'device.g.dart';

/// [Device] /// A type of a manufactured item that is used in the provision of healthcare
/// without being substantially changed through that activity. The device may
/// be a medical or non-medical device.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Device);
  @override
  String get fhirType => 'Device';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique instance identifiers assigned to a device by manufacturers other
  /// organizations or owners.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [definition] /// The reference to the definition for the device.
  @JsonKey(name: 'definition')
  final Reference? definition;

  /// [udiCarrier] /// Unique device identifier (UDI) assigned to device label or package. Note
  /// that the Device may include multiple udiCarriers as it either may include
  /// just the udiCarrier for the jurisdiction it is sold, or for multiple
  /// jurisdictions it could have been sold.
  @JsonKey(name: 'udiCarrier')
  final List<DeviceUdiCarrier>? udiCarrier;

  /// [status] /// Status of the Device availability.
  @JsonKey(name: 'status')
  final FHIRDeviceStatus? status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [statusReason] /// Reason for the dtatus of the Device availability.
  @JsonKey(name: 'statusReason')
  final List<CodeableConcept>? statusReason;

  /// [distinctIdentifier] /// The distinct identification string as required by regulation for a human
  /// cell, tissue, or cellular and tissue-based product.
  @JsonKey(name: 'distinctIdentifier')
  final FhirString? distinctIdentifier;
  @JsonKey(name: '_distinctIdentifier')
  final Element? distinctIdentifierElement;

  /// [manufacturer] /// A name of the manufacturer.
  @JsonKey(name: 'manufacturer')
  final FhirString? manufacturer;
  @JsonKey(name: '_manufacturer')
  final Element? manufacturerElement;

  /// [manufactureDate] /// The date and time when the device was manufactured.
  @JsonKey(name: 'manufactureDate')
  final FhirDateTime? manufactureDate;
  @JsonKey(name: '_manufactureDate')
  final Element? manufactureDateElement;

  /// [expirationDate] /// The date and time beyond which this device is no longer valid or should not
  /// be used (if applicable).
  @JsonKey(name: 'expirationDate')
  final FhirDateTime? expirationDate;
  @JsonKey(name: '_expirationDate')
  final Element? expirationDateElement;

  /// [lotNumber] /// Lot number assigned by the manufacturer.
  @JsonKey(name: 'lotNumber')
  final FhirString? lotNumber;
  @JsonKey(name: '_lotNumber')
  final Element? lotNumberElement;

  /// [serialNumber] /// The serial number assigned by the organization when the device was
  /// manufactured.
  @JsonKey(name: 'serialNumber')
  final FhirString? serialNumber;
  @JsonKey(name: '_serialNumber')
  final Element? serialNumberElement;

  /// [deviceName] /// This represents the manufacturer's name of the device as provided by the
  /// device, from a UDI label, or by a person describing the Device. This
  /// typically would be used when a person provides the name(s) or when the
  /// device represents one of the names available from DeviceDefinition.
  @JsonKey(name: 'deviceName')
  final List<DeviceDeviceName>? deviceName;

  /// [modelNumber] /// The manufacturer's model number for the device.
  @JsonKey(name: 'modelNumber')
  final FhirString? modelNumber;
  @JsonKey(name: '_modelNumber')
  final Element? modelNumberElement;

  /// [partNumber] /// The part number or catalog number of the device.
  @JsonKey(name: 'partNumber')
  final FhirString? partNumber;
  @JsonKey(name: '_partNumber')
  final Element? partNumberElement;

  /// [type] /// The kind or type of device.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [specialization] /// The capabilities supported on a device, the standards to which the device
  /// conforms for a particular purpose, and used for the communication.
  @JsonKey(name: 'specialization')
  final List<DeviceSpecialization>? specialization;

  /// [version] /// The actual design of the device or software version running on the device.
  @JsonKey(name: 'version')
  final List<DeviceVersion>? version;

  /// [property] /// The actual configuration settings of a device as it actually operates,
  /// e.g., regulation status, time properties.
  @JsonKey(name: 'property')
  final List<DeviceProperty>? property;

  /// [patient] /// Patient information, If the device is affixed to a person.
  @JsonKey(name: 'patient')
  final Reference? patient;

  /// [owner] /// An organization that is responsible for the provision and ongoing
  /// maintenance of the device.
  @JsonKey(name: 'owner')
  final Reference? owner;

  /// [contact] /// Contact details for an organization or a particular human that is
  /// responsible for the device.
  @JsonKey(name: 'contact')
  final List<ContactPoint>? contact;

  /// [location] /// The place where the device can be found.
  @JsonKey(name: 'location')
  final Reference? location;

  /// [url] /// A network address on which the device may be contacted directly.
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [note] /// Descriptive information, usage information or implantation information that
  /// is not captured in an existing element.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [safety] /// Provides additional safety characteristics about a medical device. For
  /// example devices containing latex.
  @JsonKey(name: 'safety')
  final List<CodeableConcept>? safety;

  /// [parent] /// The device that this device is attached to or is part of.
  @JsonKey(name: 'parent')
  final Reference? parent;
  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceToJson(this);

  @override
  Device clone() => throw UnimplementedError();
  @override
  Device copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    Reference? definition,
    List<DeviceUdiCarrier>? udiCarrier,
    FHIRDeviceStatus? status,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Device.fromYaml(dynamic yaml) => yaml is String
      ? Device.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Device.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Device cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Device.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Device.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DeviceUdiCarrier] /// Unique device identifier (UDI) assigned to device label or package. Note
/// that the Device may include multiple udiCarriers as it either may include
/// just the udiCarrier for the jurisdiction it is sold, or for multiple
/// jurisdictions it could have been sold.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'DeviceUdiCarrier';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [deviceIdentifier] /// The device identifier (DI) is a mandatory, fixed portion of a UDI that
  /// identifies the labeler and the specific version or model of a device.
  @JsonKey(name: 'deviceIdentifier')
  final FhirString? deviceIdentifier;
  @JsonKey(name: '_deviceIdentifier')
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
  @JsonKey(name: 'issuer')
  final FhirUri? issuer;
  @JsonKey(name: '_issuer')
  final Element? issuerElement;

  /// [jurisdiction] /// The identity of the authoritative source for UDI generation within a
  /// jurisdiction. All UDIs are globally unique within a single namespace with
  /// the appropriate repository uri as the system. For example, UDIs of devices
  /// managed in the U.S. by the FDA, the value is
  /// http://hl7.org/fhir/NamingSystem/fda-udi.
  @JsonKey(name: 'jurisdiction')
  final FhirUri? jurisdiction;
  @JsonKey(name: '_jurisdiction')
  final Element? jurisdictionElement;

  /// [carrierAIDC] /// The full UDI carrier of the Automatic Identification and Data Capture
  /// (AIDC) technology representation of the barcode string as printed on the
  /// packaging of the device - e.g., a barcode or RFID. Because of limitations
  /// on character sets in XML and the need to round-trip JSON data through XML,
  /// AIDC Formats *SHALL* be base64 encoded.
  @JsonKey(name: 'carrierAIDC')
  final FhirBase64Binary? carrierAIDC;
  @JsonKey(name: '_carrierAIDC')
  final Element? carrierAIDCElement;

  /// [carrierHRF] /// The full UDI carrier as the human readable form (HRF) representation of the
  /// barcode string as printed on the packaging of the device.
  @JsonKey(name: 'carrierHRF')
  final FhirString? carrierHRF;
  @JsonKey(name: '_carrierHRF')
  final Element? carrierHRFElement;

  /// [entryType] /// A coded entry to indicate how the data was entered.
  @JsonKey(name: 'entryType')
  final UDIEntryType? entryType;
  @JsonKey(name: '_entryType')
  final Element? entryTypeElement;
  factory DeviceUdiCarrier.fromJson(Map<String, dynamic> json) =>
      _$DeviceUdiCarrierFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceUdiCarrierToJson(this);

  @override
  DeviceUdiCarrier clone() => throw UnimplementedError();
  @override
  DeviceUdiCarrier copyWith({
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
    UDIEntryType? entryType,
    Element? entryTypeElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory DeviceUdiCarrier.fromYaml(dynamic yaml) => yaml is String
      ? DeviceUdiCarrier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DeviceUdiCarrier.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DeviceUdiCarrier cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DeviceUdiCarrier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceUdiCarrier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DeviceDeviceName] /// This represents the manufacturer's name of the device as provided by the
/// device, from a UDI label, or by a person describing the Device. This
/// typically would be used when a person provides the name(s) or when the
/// device represents one of the names available from DeviceDefinition.
@JsonSerializable()
class DeviceDeviceName extends BackboneElement {
  DeviceDeviceName({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    required this.type,
    this.typeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'DeviceDeviceName';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The name that identifies the device.
  @JsonKey(name: 'name')
  final FhirString name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [type] /// The type of deviceName.
  /// UDILabelName | UserFriendlyName | PatientReportedName |
  /// ManufactureDeviceName | ModelName.
  @JsonKey(name: 'type')
  final DeviceNameType type;
  @JsonKey(name: '_type')
  final Element? typeElement;
  factory DeviceDeviceName.fromJson(Map<String, dynamic> json) =>
      _$DeviceDeviceNameFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceDeviceNameToJson(this);

  @override
  DeviceDeviceName clone() => throw UnimplementedError();
  @override
  DeviceDeviceName copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    DeviceNameType? type,
    Element? typeElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DeviceDeviceName(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory DeviceDeviceName.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDeviceName.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DeviceDeviceName.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DeviceDeviceName cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DeviceDeviceName.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceDeviceName.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DeviceSpecialization] /// The capabilities supported on a device, the standards to which the device
/// conforms for a particular purpose, and used for the communication.
@JsonSerializable()
class DeviceSpecialization extends BackboneElement {
  DeviceSpecialization({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.systemType,
    this.version,
    this.versionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'DeviceSpecialization';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [systemType] /// The standard that is used to operate and communicate.
  @JsonKey(name: 'systemType')
  final CodeableConcept systemType;

  /// [version] /// The version of the standard that is used to operate and communicate.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;
  factory DeviceSpecialization.fromJson(Map<String, dynamic> json) =>
      _$DeviceSpecializationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceSpecializationToJson(this);

  @override
  DeviceSpecialization clone() => throw UnimplementedError();
  @override
  DeviceSpecialization copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? systemType,
    FhirString? version,
    Element? versionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DeviceSpecialization(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      systemType: systemType ?? this.systemType,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory DeviceSpecialization.fromYaml(dynamic yaml) => yaml is String
      ? DeviceSpecialization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DeviceSpecialization.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DeviceSpecialization cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DeviceSpecialization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceSpecialization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DeviceVersion] /// The actual design of the device or software version running on the device.
@JsonSerializable()
class DeviceVersion extends BackboneElement {
  DeviceVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.component,
    required this.value,
    this.valueElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'DeviceVersion';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of the device version, e.g. manufacturer, approved, internal.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [component] /// A single component of the device version.
  @JsonKey(name: 'component')
  final Identifier? component;

  /// [value] /// The version text.
  @JsonKey(name: 'value')
  final FhirString value;
  @JsonKey(name: '_value')
  final Element? valueElement;
  factory DeviceVersion.fromJson(Map<String, dynamic> json) =>
      _$DeviceVersionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceVersionToJson(this);

  @override
  DeviceVersion clone() => throw UnimplementedError();
  @override
  DeviceVersion copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Identifier? component,
    FhirString? value,
    Element? valueElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DeviceVersion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      component: component ?? this.component,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory DeviceVersion.fromYaml(dynamic yaml) => yaml is String
      ? DeviceVersion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DeviceVersion.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DeviceVersion cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DeviceVersion.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceVersion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DeviceProperty] /// The actual configuration settings of a device as it actually operates,
/// e.g., regulation status, time properties.
@JsonSerializable()
class DeviceProperty extends BackboneElement {
  DeviceProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueQuantity,
    this.valueCode,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'DeviceProperty';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Code that specifies the property DeviceDefinitionPropetyCode (Extensible).
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [valueQuantity] /// Property value as a quantity.
  @JsonKey(name: 'valueQuantity')
  final List<Quantity>? valueQuantity;

  /// [valueCode] /// Property value as a code, e.g., NTP4 (synced to NTP).
  @JsonKey(name: 'valueCode')
  final List<CodeableConcept>? valueCode;
  factory DeviceProperty.fromJson(Map<String, dynamic> json) =>
      _$DevicePropertyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DevicePropertyToJson(this);

  @override
  DeviceProperty clone() => throw UnimplementedError();
  @override
  DeviceProperty copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Quantity>? valueQuantity,
    List<CodeableConcept>? valueCode,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DeviceProperty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueCode: valueCode ?? this.valueCode,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory DeviceProperty.fromYaml(dynamic yaml) => yaml is String
      ? DeviceProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DeviceProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DeviceProperty cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DeviceProperty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
