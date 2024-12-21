import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Device]
/// A type of a manufactured item that is used in the provision of
/// healthcare without being substantially changed through that activity.
/// The device may be a medical or non-medical device.
class Device extends DomainResource {
  /// Primary constructor for
  /// [Device]

  const Device({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.definition,
    this.udiCarrier,
    this.status,
    this.statusReason,
    this.distinctIdentifier,
    this.manufacturer,
    this.manufactureDate,
    this.expirationDate,
    this.lotNumber,
    this.serialNumber,
    this.deviceName,
    this.modelNumber,
    this.partNumber,
    this.type,
    this.specialization,
    this.version,
    this.property,
    this.patient,
    this.owner,
    this.contact,
    this.location,
    this.url,
    this.note,
    this.safety,
    this.parent,
  }) : super(
          resourceType: R4ResourceType.Device,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Device.fromJson(
    Map<String, dynamic> json,
  ) {
    return Device(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      definition: json['definition'] != null
          ? Reference.fromJson(
              json['definition'] as Map<String, dynamic>,
            )
          : null,
      udiCarrier: json['udiCarrier'] != null
          ? (json['udiCarrier'] as List<dynamic>)
              .map<DeviceUdiCarrier>(
                (v) => DeviceUdiCarrier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: (json['status'] != null || json['_status'] != null)
          ? FHIRDeviceStatus.fromJson({
              'value': json['status'],
              '_value': json['_status'],
            })
          : null,
      statusReason: json['statusReason'] != null
          ? (json['statusReason'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      distinctIdentifier: (json['distinctIdentifier'] != null ||
              json['_distinctIdentifier'] != null)
          ? FhirString.fromJson({
              'value': json['distinctIdentifier'],
              '_value': json['_distinctIdentifier'],
            })
          : null,
      manufacturer:
          (json['manufacturer'] != null || json['_manufacturer'] != null)
              ? FhirString.fromJson({
                  'value': json['manufacturer'],
                  '_value': json['_manufacturer'],
                })
              : null,
      manufactureDate:
          (json['manufactureDate'] != null || json['_manufactureDate'] != null)
              ? FhirDateTime.fromJson({
                  'value': json['manufactureDate'],
                  '_value': json['_manufactureDate'],
                })
              : null,
      expirationDate:
          (json['expirationDate'] != null || json['_expirationDate'] != null)
              ? FhirDateTime.fromJson({
                  'value': json['expirationDate'],
                  '_value': json['_expirationDate'],
                })
              : null,
      lotNumber: (json['lotNumber'] != null || json['_lotNumber'] != null)
          ? FhirString.fromJson({
              'value': json['lotNumber'],
              '_value': json['_lotNumber'],
            })
          : null,
      serialNumber:
          (json['serialNumber'] != null || json['_serialNumber'] != null)
              ? FhirString.fromJson({
                  'value': json['serialNumber'],
                  '_value': json['_serialNumber'],
                })
              : null,
      deviceName: json['deviceName'] != null
          ? (json['deviceName'] as List<dynamic>)
              .map<DeviceDeviceName>(
                (v) => DeviceDeviceName.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modelNumber: (json['modelNumber'] != null || json['_modelNumber'] != null)
          ? FhirString.fromJson({
              'value': json['modelNumber'],
              '_value': json['_modelNumber'],
            })
          : null,
      partNumber: (json['partNumber'] != null || json['_partNumber'] != null)
          ? FhirString.fromJson({
              'value': json['partNumber'],
              '_value': json['_partNumber'],
            })
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      specialization: json['specialization'] != null
          ? (json['specialization'] as List<dynamic>)
              .map<DeviceSpecialization>(
                (v) => DeviceSpecialization.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      version: json['version'] != null
          ? (json['version'] as List<dynamic>)
              .map<DeviceVersion>(
                (v) => DeviceVersion.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      property: json['property'] != null
          ? (json['property'] as List<dynamic>)
              .map<DeviceProperty>(
                (v) => DeviceProperty.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      patient: json['patient'] != null
          ? Reference.fromJson(
              json['patient'] as Map<String, dynamic>,
            )
          : null,
      owner: json['owner'] != null
          ? Reference.fromJson(
              json['owner'] as Map<String, dynamic>,
            )
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactPoint>(
                (v) => ContactPoint.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      location: json['location'] != null
          ? Reference.fromJson(
              json['location'] as Map<String, dynamic>,
            )
          : null,
      url: (json['url'] != null || json['_url'] != null)
          ? FhirUri.fromJson({
              'value': json['url'],
              '_value': json['_url'],
            })
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      safety: json['safety'] != null
          ? (json['safety'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      parent: json['parent'] != null
          ? Reference.fromJson(
              json['parent'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [Device]
  /// from a [String] or [YamlMap] object
  factory Device.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Device.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Device.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Device '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Device]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Device.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Device.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Device';

  /// [identifier]
  /// Unique instance identifiers assigned to a device by manufacturers other
  /// organizations or owners.
  final List<Identifier>? identifier;

  /// [definition]
  /// The reference to the definition for the device.
  final Reference? definition;

  /// [udiCarrier]
  /// Unique device identifier (UDI) assigned to device label or package.
  /// Note that the Device may include multiple udiCarriers as it either may
  /// include just the udiCarrier for the jurisdiction it is sold, or for
  /// multiple jurisdictions it could have been sold.
  final List<DeviceUdiCarrier>? udiCarrier;

  /// [status]
  /// Status of the Device availability.
  final FHIRDeviceStatus? status;

  /// [statusReason]
  /// Reason for the dtatus of the Device availability.
  final List<CodeableConcept>? statusReason;

  /// [distinctIdentifier]
  /// The distinct identification string as required by regulation for a
  /// human cell, tissue, or cellular and tissue-based product.
  final FhirString? distinctIdentifier;

  /// [manufacturer]
  /// A name of the manufacturer.
  final FhirString? manufacturer;

  /// [manufactureDate]
  /// The date and time when the device was manufactured.
  final FhirDateTime? manufactureDate;

  /// [expirationDate]
  /// The date and time beyond which this device is no longer valid or should
  /// not be used (if applicable).
  final FhirDateTime? expirationDate;

  /// [lotNumber]
  /// Lot number assigned by the manufacturer.
  final FhirString? lotNumber;

  /// [serialNumber]
  /// The serial number assigned by the organization when the device was
  /// manufactured.
  final FhirString? serialNumber;

  /// [deviceName]
  /// This represents the manufacturer's name of the device as provided by
  /// the device, from a UDI label, or by a person describing the Device.
  /// This typically would be used when a person provides the name(s) or when
  /// the device represents one of the names available from DeviceDefinition.
  final List<DeviceDeviceName>? deviceName;

  /// [modelNumber]
  /// The manufacturer's model number for the device.
  final FhirString? modelNumber;

  /// [partNumber]
  /// The part number or catalog number of the device.
  final FhirString? partNumber;

  /// [type]
  /// The kind or type of device.
  final CodeableConcept? type;

  /// [specialization]
  /// The capabilities supported on a device, the standards to which the
  /// device conforms for a particular purpose, and used for the
  /// communication.
  final List<DeviceSpecialization>? specialization;

  /// [version]
  /// The actual design of the device or software version running on the
  /// device.
  final List<DeviceVersion>? version;

  /// [property]
  /// The actual configuration settings of a device as it actually operates,
  /// e.g., regulation status, time properties.
  final List<DeviceProperty>? property;

  /// [patient]
  /// Patient information, If the device is affixed to a person.
  final Reference? patient;

  /// [owner]
  /// An organization that is responsible for the provision and ongoing
  /// maintenance of the device.
  final Reference? owner;

  /// [contact]
  /// Contact details for an organization or a particular human that is
  /// responsible for the device.
  final List<ContactPoint>? contact;

  /// [location]
  /// The place where the device can be found.
  final Reference? location;

  /// [url]
  /// A network address on which the device may be contacted directly.
  final FhirUri? url;

  /// [note]
  /// Descriptive information, usage information or implantation information
  /// that is not captured in an existing element.
  final List<Annotation>? note;

  /// [safety]
  /// Provides additional safety characteristics about a medical device. For
  /// example devices containing latex.
  final List<CodeableConcept>? safety;

  /// [parent]
  /// The device that this device is attached to or is part of.
  final Reference? parent;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (definition != null) {
      json['definition'] = definition!.toJson();
    }

    if (udiCarrier != null && udiCarrier!.isNotEmpty) {
      json['udiCarrier'] = udiCarrier!.map((e) => e.toJson()).toList();
    }

    if (status != null) {
      addField('status', status);
    }

    if (statusReason != null && statusReason!.isNotEmpty) {
      json['statusReason'] = statusReason!.map((e) => e.toJson()).toList();
    }

    if (distinctIdentifier != null) {
      addField('distinctIdentifier', distinctIdentifier);
    }

    if (manufacturer != null) {
      addField('manufacturer', manufacturer);
    }

    if (manufactureDate != null) {
      addField('manufactureDate', manufactureDate);
    }

    if (expirationDate != null) {
      addField('expirationDate', expirationDate);
    }

    if (lotNumber != null) {
      addField('lotNumber', lotNumber);
    }

    if (serialNumber != null) {
      addField('serialNumber', serialNumber);
    }

    if (deviceName != null && deviceName!.isNotEmpty) {
      json['deviceName'] = deviceName!.map((e) => e.toJson()).toList();
    }

    if (modelNumber != null) {
      addField('modelNumber', modelNumber);
    }

    if (partNumber != null) {
      addField('partNumber', partNumber);
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (specialization != null && specialization!.isNotEmpty) {
      json['specialization'] = specialization!.map((e) => e.toJson()).toList();
    }

    if (version != null && version!.isNotEmpty) {
      json['version'] = version!.map((e) => e.toJson()).toList();
    }

    if (property != null && property!.isNotEmpty) {
      json['property'] = property!.map((e) => e.toJson()).toList();
    }

    if (patient != null) {
      json['patient'] = patient!.toJson();
    }

    if (owner != null) {
      json['owner'] = owner!.toJson();
    }

    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    if (location != null) {
      json['location'] = location!.toJson();
    }

    if (url != null) {
      addField('url', url);
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (safety != null && safety!.isNotEmpty) {
      json['safety'] = safety!.map((e) => e.toJson()).toList();
    }

    if (parent != null) {
      json['parent'] = parent!.toJson();
    }

    return json;
  }

  @override
  Device clone() => throw UnimplementedError();
  @override
  Device copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    Reference? definition,
    List<DeviceUdiCarrier>? udiCarrier,
    FHIRDeviceStatus? status,
    List<CodeableConcept>? statusReason,
    FhirString? distinctIdentifier,
    FhirString? manufacturer,
    FhirDateTime? manufactureDate,
    FhirDateTime? expirationDate,
    FhirString? lotNumber,
    FhirString? serialNumber,
    List<DeviceDeviceName>? deviceName,
    FhirString? modelNumber,
    FhirString? partNumber,
    CodeableConcept? type,
    List<DeviceSpecialization>? specialization,
    List<DeviceVersion>? version,
    List<DeviceProperty>? property,
    Reference? patient,
    Reference? owner,
    List<ContactPoint>? contact,
    Reference? location,
    FhirUri? url,
    List<Annotation>? note,
    List<CodeableConcept>? safety,
    Reference? parent,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Device(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      definition: definition ?? this.definition,
      udiCarrier: udiCarrier ?? this.udiCarrier,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      distinctIdentifier: distinctIdentifier ?? this.distinctIdentifier,
      manufacturer: manufacturer ?? this.manufacturer,
      manufactureDate: manufactureDate ?? this.manufactureDate,
      expirationDate: expirationDate ?? this.expirationDate,
      lotNumber: lotNumber ?? this.lotNumber,
      serialNumber: serialNumber ?? this.serialNumber,
      deviceName: deviceName ?? this.deviceName,
      modelNumber: modelNumber ?? this.modelNumber,
      partNumber: partNumber ?? this.partNumber,
      type: type ?? this.type,
      specialization: specialization ?? this.specialization,
      version: version ?? this.version,
      property: property ?? this.property,
      patient: patient ?? this.patient,
      owner: owner ?? this.owner,
      contact: contact ?? this.contact,
      location: location ?? this.location,
      url: url ?? this.url,
      note: note ?? this.note,
      safety: safety ?? this.safety,
      parent: parent ?? this.parent,
    );
  }
}

/// [DeviceUdiCarrier]
/// Unique device identifier (UDI) assigned to device label or package.
/// Note that the Device may include multiple udiCarriers as it either may
/// include just the udiCarrier for the jurisdiction it is sold, or for
/// multiple jurisdictions it could have been sold.
class DeviceUdiCarrier extends BackboneElement {
  /// Primary constructor for
  /// [DeviceUdiCarrier]

  const DeviceUdiCarrier({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.deviceIdentifier,
    this.issuer,
    this.jurisdiction,
    this.carrierAIDC,
    this.carrierHRF,
    this.entryType,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceUdiCarrier.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceUdiCarrier(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      deviceIdentifier: (json['deviceIdentifier'] != null ||
              json['_deviceIdentifier'] != null)
          ? FhirString.fromJson({
              'value': json['deviceIdentifier'],
              '_value': json['_deviceIdentifier'],
            })
          : null,
      issuer: (json['issuer'] != null || json['_issuer'] != null)
          ? FhirUri.fromJson({
              'value': json['issuer'],
              '_value': json['_issuer'],
            })
          : null,
      jurisdiction:
          (json['jurisdiction'] != null || json['_jurisdiction'] != null)
              ? FhirUri.fromJson({
                  'value': json['jurisdiction'],
                  '_value': json['_jurisdiction'],
                })
              : null,
      carrierAIDC: (json['carrierAIDC'] != null || json['_carrierAIDC'] != null)
          ? FhirBase64Binary.fromJson({
              'value': json['carrierAIDC'],
              '_value': json['_carrierAIDC'],
            })
          : null,
      carrierHRF: (json['carrierHRF'] != null || json['_carrierHRF'] != null)
          ? FhirString.fromJson({
              'value': json['carrierHRF'],
              '_value': json['_carrierHRF'],
            })
          : null,
      entryType: (json['entryType'] != null || json['_entryType'] != null)
          ? UDIEntryType.fromJson({
              'value': json['entryType'],
              '_value': json['_entryType'],
            })
          : null,
    );
  }

  /// Deserialize [DeviceUdiCarrier]
  /// from a [String] or [YamlMap] object
  factory DeviceUdiCarrier.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceUdiCarrier.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceUdiCarrier.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceUdiCarrier '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceUdiCarrier]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceUdiCarrier.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceUdiCarrier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DeviceUdiCarrier';

  /// [deviceIdentifier]
  /// The device identifier (DI) is a mandatory, fixed portion of a UDI that
  /// identifies the labeler and the specific version or model of a device.
  final FhirString? deviceIdentifier;

  /// [issuer]
  /// Organization that is charged with issuing UDIs for devices. For
  /// example, the US FDA issuers include :
  /// 1) GS1:
  /// http://hl7.org/fhir/NamingSystem/gs1-di,
  /// 2) HIBCC:
  /// http://hl7.org/fhir/NamingSystem/hibcc-dI,
  /// 3) ICCBBA for blood containers:
  /// http://hl7.org/fhir/NamingSystem/iccbba-blood-di,
  /// 4) ICCBA for other devices:
  /// http://hl7.org/fhir/NamingSystem/iccbba-other-di.
  final FhirUri? issuer;

  /// [jurisdiction]
  /// The identity of the authoritative source for UDI generation within a
  /// jurisdiction. All UDIs are globally unique within a single namespace
  /// with the appropriate repository uri as the system. For example, UDIs of
  /// devices managed in the U.S. by the FDA, the value is
  /// http://hl7.org/fhir/NamingSystem/fda-udi.
  final FhirUri? jurisdiction;

  /// [carrierAIDC]
  /// The full UDI carrier of the Automatic Identification and Data Capture
  /// (AIDC) technology representation of the barcode string as printed on
  /// the packaging of the device - e.g., a barcode or RFID. Because of
  /// limitations on character sets in XML and the need to round-trip JSON
  /// data through XML, AIDC Formats *SHALL* be base64 encoded.
  final FhirBase64Binary? carrierAIDC;

  /// [carrierHRF]
  /// The full UDI carrier as the human readable form (HRF) representation of
  /// the barcode string as printed on the packaging of the device.
  final FhirString? carrierHRF;

  /// [entryType]
  /// A coded entry to indicate how the data was entered.
  final UDIEntryType? entryType;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (deviceIdentifier != null) {
      addField('deviceIdentifier', deviceIdentifier);
    }

    if (issuer != null) {
      addField('issuer', issuer);
    }

    if (jurisdiction != null) {
      addField('jurisdiction', jurisdiction);
    }

    if (carrierAIDC != null) {
      addField('carrierAIDC', carrierAIDC);
    }

    if (carrierHRF != null) {
      addField('carrierHRF', carrierHRF);
    }

    if (entryType != null) {
      addField('entryType', entryType);
    }

    return json;
  }

  @override
  DeviceUdiCarrier clone() => throw UnimplementedError();
  @override
  DeviceUdiCarrier copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? deviceIdentifier,
    FhirUri? issuer,
    FhirUri? jurisdiction,
    FhirBase64Binary? carrierAIDC,
    FhirString? carrierHRF,
    UDIEntryType? entryType,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return DeviceUdiCarrier(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      deviceIdentifier: deviceIdentifier ?? this.deviceIdentifier,
      issuer: issuer ?? this.issuer,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      carrierAIDC: carrierAIDC ?? this.carrierAIDC,
      carrierHRF: carrierHRF ?? this.carrierHRF,
      entryType: entryType ?? this.entryType,
    );
  }
}

/// [DeviceDeviceName]
/// This represents the manufacturer's name of the device as provided by
/// the device, from a UDI label, or by a person describing the Device.
/// This typically would be used when a person provides the name(s) or when
/// the device represents one of the names available from DeviceDefinition.
class DeviceDeviceName extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDeviceName]

  const DeviceDeviceName({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    required this.type,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDeviceName.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDeviceName(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      type: DeviceNameType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
    );
  }

  /// Deserialize [DeviceDeviceName]
  /// from a [String] or [YamlMap] object
  factory DeviceDeviceName.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDeviceName.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDeviceName.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDeviceName '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDeviceName]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDeviceName.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceDeviceName.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DeviceDeviceName';

  /// [name]
  /// The name that identifies the device.
  final FhirString name;

  /// [type]
  /// The type of deviceName.
  /// UDILabelName | UserFriendlyName | PatientReportedName |
  /// ManufactureDeviceName | ModelName.
  final DeviceNameType type;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('name', name);
    addField('type', type);
    return json;
  }

  @override
  DeviceDeviceName clone() => throw UnimplementedError();
  @override
  DeviceDeviceName copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    DeviceNameType? type,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return DeviceDeviceName(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }
}

/// [DeviceSpecialization]
/// The capabilities supported on a device, the standards to which the
/// device conforms for a particular purpose, and used for the
/// communication.
class DeviceSpecialization extends BackboneElement {
  /// Primary constructor for
  /// [DeviceSpecialization]

  const DeviceSpecialization({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.systemType,
    this.version,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceSpecialization.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceSpecialization(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      systemType: CodeableConcept.fromJson(
        json['systemType'] as Map<String, dynamic>,
      ),
      version: (json['version'] != null || json['_version'] != null)
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
    );
  }

  /// Deserialize [DeviceSpecialization]
  /// from a [String] or [YamlMap] object
  factory DeviceSpecialization.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceSpecialization.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceSpecialization.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceSpecialization '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceSpecialization]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceSpecialization.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceSpecialization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DeviceSpecialization';

  /// [systemType]
  /// The standard that is used to operate and communicate.
  final CodeableConcept systemType;

  /// [version]
  /// The version of the standard that is used to operate and communicate.
  final FhirString? version;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['systemType'] = systemType.toJson();

    if (version != null) {
      addField('version', version);
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return DeviceSpecialization(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      systemType: systemType ?? this.systemType,
      version: version ?? this.version,
    );
  }
}

/// [DeviceVersion]
/// The actual design of the device or software version running on the
/// device.
class DeviceVersion extends BackboneElement {
  /// Primary constructor for
  /// [DeviceVersion]

  const DeviceVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.component,
    required this.value,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceVersion.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceVersion(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      component: json['component'] != null
          ? Identifier.fromJson(
              json['component'] as Map<String, dynamic>,
            )
          : null,
      value: FhirString.fromJson({
        'value': json['value'],
        '_value': json['_value'],
      }),
    );
  }

  /// Deserialize [DeviceVersion]
  /// from a [String] or [YamlMap] object
  factory DeviceVersion.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceVersion.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceVersion.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceVersion '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceVersion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceVersion.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceVersion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DeviceVersion';

  /// [type]
  /// The type of the device version, e.g. manufacturer, approved, internal.
  final CodeableConcept? type;

  /// [component]
  /// A single component of the device version.
  final Identifier? component;

  /// [value]
  /// The version text.
  final FhirString value;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (component != null) {
      json['component'] = component!.toJson();
    }

    addField('value', value);
    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return DeviceVersion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      component: component ?? this.component,
      value: value ?? this.value,
    );
  }
}

/// [DeviceProperty]
/// The actual configuration settings of a device as it actually operates,
/// e.g., regulation status, time properties.
class DeviceProperty extends BackboneElement {
  /// Primary constructor for
  /// [DeviceProperty]

  const DeviceProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueQuantity,
    this.valueCode,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceProperty(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      valueQuantity: json['valueQuantity'] != null
          ? (json['valueQuantity'] as List<dynamic>)
              .map<Quantity>(
                (v) => Quantity.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      valueCode: json['valueCode'] != null
          ? (json['valueCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [DeviceProperty]
  /// from a [String] or [YamlMap] object
  factory DeviceProperty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceProperty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceProperty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceProperty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceProperty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DeviceProperty';

  /// [type]
  /// Code that specifies the property DeviceDefinitionPropetyCode
  /// (Extensible).
  final CodeableConcept type;

  /// [valueQuantity]
  /// Property value as a quantity.
  final List<Quantity>? valueQuantity;

  /// [valueCode]
  /// Property value as a code, e.g., NTP4 (synced to NTP).
  final List<CodeableConcept>? valueCode;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    if (valueQuantity != null && valueQuantity!.isNotEmpty) {
      json['valueQuantity'] = valueQuantity!.map((e) => e.toJson()).toList();
    }

    if (valueCode != null && valueCode!.isNotEmpty) {
      json['valueCode'] = valueCode!.map((e) => e.toJson()).toList();
    }

    return json;
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
