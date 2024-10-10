import 'dart:convert';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.Device);

  @override
  String get fhirType => 'Device';

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
  final FHIRDeviceStatus? status;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (definition != null) {
      json['definition'] = definition!.toJson();
    }
    if (udiCarrier != null && udiCarrier!.isNotEmpty) {
      json['udiCarrier'] =
          udiCarrier!.map<dynamic>((DeviceUdiCarrier v) => v.toJson()).toList();
    }
    if (status != null) {
      json['status'] = status!.toJson();
    }
    if (statusReason != null && statusReason!.isNotEmpty) {
      json['statusReason'] = statusReason!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (distinctIdentifier?.value != null) {
      json['distinctIdentifier'] = distinctIdentifier!.toJson();
    }
    if (distinctIdentifierElement != null) {
      json['_distinctIdentifier'] = distinctIdentifierElement!.toJson();
    }
    if (manufacturer?.value != null) {
      json['manufacturer'] = manufacturer!.toJson();
    }
    if (manufacturerElement != null) {
      json['_manufacturer'] = manufacturerElement!.toJson();
    }
    if (manufactureDate?.value != null) {
      json['manufactureDate'] = manufactureDate!.toJson();
    }
    if (manufactureDateElement != null) {
      json['_manufactureDate'] = manufactureDateElement!.toJson();
    }
    if (expirationDate?.value != null) {
      json['expirationDate'] = expirationDate!.toJson();
    }
    if (expirationDateElement != null) {
      json['_expirationDate'] = expirationDateElement!.toJson();
    }
    if (lotNumber?.value != null) {
      json['lotNumber'] = lotNumber!.toJson();
    }
    if (lotNumberElement != null) {
      json['_lotNumber'] = lotNumberElement!.toJson();
    }
    if (serialNumber?.value != null) {
      json['serialNumber'] = serialNumber!.toJson();
    }
    if (serialNumberElement != null) {
      json['_serialNumber'] = serialNumberElement!.toJson();
    }
    if (deviceName != null && deviceName!.isNotEmpty) {
      json['deviceName'] =
          deviceName!.map<dynamic>((DeviceDeviceName v) => v.toJson()).toList();
    }
    if (modelNumber?.value != null) {
      json['modelNumber'] = modelNumber!.toJson();
    }
    if (modelNumberElement != null) {
      json['_modelNumber'] = modelNumberElement!.toJson();
    }
    if (partNumber?.value != null) {
      json['partNumber'] = partNumber!.toJson();
    }
    if (partNumberElement != null) {
      json['_partNumber'] = partNumberElement!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (specialization != null && specialization!.isNotEmpty) {
      json['specialization'] = specialization!
          .map<dynamic>((DeviceSpecialization v) => v.toJson())
          .toList();
    }
    if (version != null && version!.isNotEmpty) {
      json['version'] =
          version!.map<dynamic>((DeviceVersion v) => v.toJson()).toList();
    }
    if (property != null && property!.isNotEmpty) {
      json['property'] =
          property!.map<dynamic>((DeviceProperty v) => v.toJson()).toList();
    }
    if (patient != null) {
      json['patient'] = patient!.toJson();
    }
    if (owner != null) {
      json['owner'] = owner!.toJson();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] =
          contact!.map<dynamic>((ContactPoint v) => v.toJson()).toList();
    }
    if (location != null) {
      json['location'] = location!.toJson();
    }
    if (url?.value != null) {
      json['url'] = url!.toJson();
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (safety != null && safety!.isNotEmpty) {
      json['safety'] =
          safety!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (parent != null) {
      json['parent'] = parent!.toJson();
    }
    return json;
  }

  factory Device.fromJson(Map<String, dynamic> json) {
    return Device(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      definition: json['definition'] != null
          ? Reference.fromJson(json['definition'] as Map<String, dynamic>)
          : null,
      udiCarrier: json['udiCarrier'] != null
          ? (json['udiCarrier'] as List<dynamic>)
              .map<DeviceUdiCarrier>((dynamic v) =>
                  DeviceUdiCarrier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: json['status'] != null
          ? FHIRDeviceStatus.fromJson(json['status'])
          : null,
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      statusReason: json['statusReason'] != null
          ? (json['statusReason'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      distinctIdentifier: json['distinctIdentifier'] != null
          ? FhirString.fromJson(json['distinctIdentifier'])
          : null,
      distinctIdentifierElement: json['_distinctIdentifier'] != null
          ? Element.fromJson(
              json['_distinctIdentifier'] as Map<String, dynamic>)
          : null,
      manufacturer: json['manufacturer'] != null
          ? FhirString.fromJson(json['manufacturer'])
          : null,
      manufacturerElement: json['_manufacturer'] != null
          ? Element.fromJson(json['_manufacturer'] as Map<String, dynamic>)
          : null,
      manufactureDate: json['manufactureDate'] != null
          ? FhirDateTime.fromJson(json['manufactureDate'])
          : null,
      manufactureDateElement: json['_manufactureDate'] != null
          ? Element.fromJson(json['_manufactureDate'] as Map<String, dynamic>)
          : null,
      expirationDate: json['expirationDate'] != null
          ? FhirDateTime.fromJson(json['expirationDate'])
          : null,
      expirationDateElement: json['_expirationDate'] != null
          ? Element.fromJson(json['_expirationDate'] as Map<String, dynamic>)
          : null,
      lotNumber: json['lotNumber'] != null
          ? FhirString.fromJson(json['lotNumber'])
          : null,
      lotNumberElement: json['_lotNumber'] != null
          ? Element.fromJson(json['_lotNumber'] as Map<String, dynamic>)
          : null,
      serialNumber: json['serialNumber'] != null
          ? FhirString.fromJson(json['serialNumber'])
          : null,
      serialNumberElement: json['_serialNumber'] != null
          ? Element.fromJson(json['_serialNumber'] as Map<String, dynamic>)
          : null,
      deviceName: json['deviceName'] != null
          ? (json['deviceName'] as List<dynamic>)
              .map<DeviceDeviceName>((dynamic v) =>
                  DeviceDeviceName.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modelNumber: json['modelNumber'] != null
          ? FhirString.fromJson(json['modelNumber'])
          : null,
      modelNumberElement: json['_modelNumber'] != null
          ? Element.fromJson(json['_modelNumber'] as Map<String, dynamic>)
          : null,
      partNumber: json['partNumber'] != null
          ? FhirString.fromJson(json['partNumber'])
          : null,
      partNumberElement: json['_partNumber'] != null
          ? Element.fromJson(json['_partNumber'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      specialization: json['specialization'] != null
          ? (json['specialization'] as List<dynamic>)
              .map<DeviceSpecialization>((dynamic v) =>
                  DeviceSpecialization.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      version: json['version'] != null
          ? (json['version'] as List<dynamic>)
              .map<DeviceVersion>((dynamic v) =>
                  DeviceVersion.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      property: json['property'] != null
          ? (json['property'] as List<dynamic>)
              .map<DeviceProperty>((dynamic v) =>
                  DeviceProperty.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      patient: json['patient'] != null
          ? Reference.fromJson(json['patient'] as Map<String, dynamic>)
          : null,
      owner: json['owner'] != null
          ? Reference.fromJson(json['owner'] as Map<String, dynamic>)
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactPoint>((dynamic v) =>
                  ContactPoint.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      location: json['location'] != null
          ? Reference.fromJson(json['location'] as Map<String, dynamic>)
          : null,
      url: json['url'] != null ? FhirUri.fromJson(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(json['_url'] as Map<String, dynamic>)
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      safety: json['safety'] != null
          ? (json['safety'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      parent: json['parent'] != null
          ? Reference.fromJson(json['parent'] as Map<String, dynamic>)
          : null,
    );
  }
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
  final UDIEntryType? entryType;
  final Element? entryTypeElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (deviceIdentifier?.value != null) {
      json['deviceIdentifier'] = deviceIdentifier!.toJson();
    }
    if (deviceIdentifierElement != null) {
      json['_deviceIdentifier'] = deviceIdentifierElement!.toJson();
    }
    if (issuer?.value != null) {
      json['issuer'] = issuer!.toJson();
    }
    if (issuerElement != null) {
      json['_issuer'] = issuerElement!.toJson();
    }
    if (jurisdiction?.value != null) {
      json['jurisdiction'] = jurisdiction!.toJson();
    }
    if (jurisdictionElement != null) {
      json['_jurisdiction'] = jurisdictionElement!.toJson();
    }
    if (carrierAIDC?.value != null) {
      json['carrierAIDC'] = carrierAIDC!.toJson();
    }
    if (carrierAIDCElement != null) {
      json['_carrierAIDC'] = carrierAIDCElement!.toJson();
    }
    if (carrierHRF?.value != null) {
      json['carrierHRF'] = carrierHRF!.toJson();
    }
    if (carrierHRFElement != null) {
      json['_carrierHRF'] = carrierHRFElement!.toJson();
    }
    if (entryType != null) {
      json['entryType'] = entryType!.toJson();
    }
    return json;
  }

  factory DeviceUdiCarrier.fromJson(Map<String, dynamic> json) {
    return DeviceUdiCarrier(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      deviceIdentifier: json['deviceIdentifier'] != null
          ? FhirString.fromJson(json['deviceIdentifier'])
          : null,
      deviceIdentifierElement: json['_deviceIdentifier'] != null
          ? Element.fromJson(json['_deviceIdentifier'] as Map<String, dynamic>)
          : null,
      issuer: json['issuer'] != null ? FhirUri.fromJson(json['issuer']) : null,
      issuerElement: json['_issuer'] != null
          ? Element.fromJson(json['_issuer'] as Map<String, dynamic>)
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? FhirUri.fromJson(json['jurisdiction'])
          : null,
      jurisdictionElement: json['_jurisdiction'] != null
          ? Element.fromJson(json['_jurisdiction'] as Map<String, dynamic>)
          : null,
      carrierAIDC: json['carrierAIDC'] != null
          ? FhirBase64Binary.fromJson(json['carrierAIDC'])
          : null,
      carrierAIDCElement: json['_carrierAIDC'] != null
          ? Element.fromJson(json['_carrierAIDC'] as Map<String, dynamic>)
          : null,
      carrierHRF: json['carrierHRF'] != null
          ? FhirString.fromJson(json['carrierHRF'])
          : null,
      carrierHRFElement: json['_carrierHRF'] != null
          ? Element.fromJson(json['_carrierHRF'] as Map<String, dynamic>)
          : null,
      entryType: json['entryType'] != null
          ? UDIEntryType.fromJson(json['entryType'])
          : null,
      entryTypeElement: json['_entryType'] != null
          ? Element.fromJson(json['_entryType'] as Map<String, dynamic>)
          : null,
    );
  }
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

  /// [name] /// The name that identifies the device.
  final FhirString name;
  final Element? nameElement;

  /// [type] /// The type of deviceName.
  /// UDILabelName | UserFriendlyName | PatientReportedName |
  /// ManufactureDeviceName | ModelName.
  final DeviceNameType type;
  final Element? typeElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['name'] = name.toJson();
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    json['type'] = type.toJson();
    return json;
  }

  factory DeviceDeviceName.fromJson(Map<String, dynamic> json) {
    return DeviceDeviceName(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      name: FhirString.fromJson(json['name']),
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      type: DeviceNameType.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(json['_type'] as Map<String, dynamic>)
          : null,
    );
  }
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

  /// [systemType] /// The standard that is used to operate and communicate.
  final CodeableConcept systemType;

  /// [version] /// The version of the standard that is used to operate and communicate.
  final FhirString? version;
  final Element? versionElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['systemType'] = systemType.toJson();
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    return json;
  }

  factory DeviceSpecialization.fromJson(Map<String, dynamic> json) {
    return DeviceSpecialization(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      systemType:
          CodeableConcept.fromJson(json['systemType'] as Map<String, dynamic>),
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(json['_version'] as Map<String, dynamic>)
          : null,
    );
  }
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

  /// [type] /// The type of the device version, e.g. manufacturer, approved, internal.
  final CodeableConcept? type;

  /// [component] /// A single component of the device version.
  final Identifier? component;

  /// [value] /// The version text.
  final FhirString value;
  final Element? valueElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (component != null) {
      json['component'] = component!.toJson();
    }
    json['value'] = value.toJson();
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    return json;
  }

  factory DeviceVersion.fromJson(Map<String, dynamic> json) {
    return DeviceVersion(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      component: json['component'] != null
          ? Identifier.fromJson(json['component'] as Map<String, dynamic>)
          : null,
      value: FhirString.fromJson(json['value']),
      valueElement: json['_value'] != null
          ? Element.fromJson(json['_value'] as Map<String, dynamic>)
          : null,
    );
  }
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

  /// [type] /// Code that specifies the property DeviceDefinitionPropetyCode (Extensible).
  final CodeableConcept type;

  /// [valueQuantity] /// Property value as a quantity.
  final List<Quantity>? valueQuantity;

  /// [valueCode] /// Property value as a code, e.g., NTP4 (synced to NTP).
  final List<CodeableConcept>? valueCode;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['type'] = type.toJson();
    if (valueQuantity != null && valueQuantity!.isNotEmpty) {
      json['valueQuantity'] =
          valueQuantity!.map<dynamic>((Quantity v) => v.toJson()).toList();
    }
    if (valueCode != null && valueCode!.isNotEmpty) {
      json['valueCode'] =
          valueCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    return json;
  }

  factory DeviceProperty.fromJson(Map<String, dynamic> json) {
    return DeviceProperty(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      valueQuantity: json['valueQuantity'] != null
          ? (json['valueQuantity'] as List<dynamic>)
              .map<Quantity>(
                  (dynamic v) => Quantity.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      valueCode: json['valueCode'] != null
          ? (json['valueCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
