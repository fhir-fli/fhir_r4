// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'device.freezed.dart';
part 'device.g.dart';

/// [Device] A type of a manufactured item that is used in the provision of
@freezed
class Device with _$Device implements DomainResource {
  /// [Device] A type of a manufactured item that is used in the provision of
  const Device._();

  /// [Device] A type of a manufactured item that is used in the provision of
  /// healthcare without being substantially changed through that activity. The
  ///  device may be a medical or non-medical device.
  ///
  /// [resourceType] This is a Device resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] Unique instance identifiers assigned to a device by
  ///  manufacturers other organizations or owners.
  ///
  /// [definition] The reference to the definition for the device.
  ///
  /// [udiCarrier] Unique device identifier (UDI) assigned to device label or
  /// package.  Note that the Device may include multiple udiCarriers as it
  /// either may include just the udiCarrier for the jurisdiction it is sold, or
  ///  for multiple jurisdictions it could have been sold.
  ///
  /// [status] Status of the Device availability.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [statusReason] Reason for the dtatus of the Device availability.
  ///
  /// [distinctIdentifier] The distinct identification string as required by
  /// regulation for a human cell, tissue, or cellular and tissue-based
  ///  product.
  ///
  /// [distinctIdentifierElement] Extensions for distinctIdentifier
  ///
  /// [manufacturer] A name of the manufacturer.
  ///
  /// [manufacturerElement] Extensions for manufacturer
  ///
  /// [manufactureDate] The date and time when the device was manufactured.
  ///
  /// [manufactureDateElement] Extensions for manufactureDate
  ///
  /// [expirationDate] The date and time beyond which this device is no longer
  ///  valid or should not be used (if applicable).
  ///
  /// [expirationDateElement] Extensions for expirationDate
  ///
  /// [lotNumber] Lot number assigned by the manufacturer.
  ///
  /// [lotNumberElement] Extensions for lotNumber
  ///
  /// [serialNumber] The serial number assigned by the organization when the
  ///  device was manufactured.
  ///
  /// [serialNumberElement] Extensions for serialNumber
  ///
  /// [deviceName] This represents the manufacturer's name of the device as
  /// provided by the device, from a UDI label, or by a person describing the
  /// Device.  This typically would be used when a person provides the name(s)
  /// or when the device represents one of the names available from
  ///  DeviceDefinition.
  ///
  /// [modelNumber] The model number for the device.
  ///
  /// [modelNumberElement] Extensions for modelNumber
  ///
  /// [partNumber] The part number of the device.
  ///
  /// [partNumberElement] Extensions for partNumber
  ///
  /// [type] The kind or type of device.
  ///
  /// [specialization] The capabilities supported on a  device, the standards
  /// to which the device conforms for a particular purpose, and used for the
  ///  communication.
  ///
  /// [version] The actual design of the device or software version running on
  ///  the device.
  ///
  /// [property] The actual configuration settings of a device as it actually
  ///  operates, e.g., regulation status, time properties.
  ///
  /// [patient] Patient information, If the device is affixed to a person.
  ///
  /// [owner] An organization that is responsible for the provision and ongoing
  ///  maintenance of the device.
  ///
  /// [contact] Contact details for an organization or a particular human that
  ///  is responsible for the device.
  ///
  /// [location] The place where the device can be found.
  ///
  /// [url] A network address on which the device may be contacted directly.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [note] Descriptive information, usage information or implantation
  ///  information that is not captured in an existing element.
  ///
  /// [safety] Provides additional safety characteristics about a medical
  ///  device.  For example devices containing latex.
  ///
  /// [parent] The parent device.
  const factory Device({
    @Default(R4ResourceType.Device)
    @JsonKey(unknownEnumValue: R4ResourceType.Device)

    /// [resourceType] This is a Device resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] Unique instance identifiers assigned to a device by
    ///  manufacturers other organizations or owners.
    List<Identifier>? identifier,

    /// [definition] The reference to the definition for the device.
    Reference? definition,

    /// [udiCarrier] Unique device identifier (UDI) assigned to device label or
    /// package.  Note that the Device may include multiple udiCarriers as it
    /// either may include just the udiCarrier for the jurisdiction it is sold, or
    ///  for multiple jurisdictions it could have been sold.
    List<DeviceUdiCarrier>? udiCarrier,

    /// [status] Status of the Device availability.
    DeviceStatus? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [statusReason] Reason for the dtatus of the Device availability.
    List<CodeableConcept>? statusReason,

    /// [distinctIdentifier] The distinct identification string as required by
    /// regulation for a human cell, tissue, or cellular and tissue-based
    ///  product.
    String? distinctIdentifier,

    /// [distinctIdentifierElement] Extensions for distinctIdentifier
    @JsonKey(name: '_distinctIdentifier')
    PrimitiveElement? distinctIdentifierElement,

    /// [manufacturer] A name of the manufacturer.
    String? manufacturer,

    /// [manufacturerElement] Extensions for manufacturer
    @JsonKey(name: '_manufacturer') PrimitiveElement? manufacturerElement,

    /// [manufactureDate] The date and time when the device was manufactured.
    FhirDateTime? manufactureDate,

    /// [manufactureDateElement] Extensions for manufactureDate
    @JsonKey(name: '_manufactureDate') PrimitiveElement? manufactureDateElement,

    /// [expirationDate] The date and time beyond which this device is no longer
    ///  valid or should not be used (if applicable).
    FhirDateTime? expirationDate,

    /// [expirationDateElement] Extensions for expirationDate
    @JsonKey(name: '_expirationDate') PrimitiveElement? expirationDateElement,

    /// [lotNumber] Lot number assigned by the manufacturer.
    String? lotNumber,

    /// [lotNumberElement] Extensions for lotNumber
    @JsonKey(name: '_lotNumber') PrimitiveElement? lotNumberElement,

    /// [serialNumber] The serial number assigned by the organization when the
    ///  device was manufactured.
    String? serialNumber,

    /// [serialNumberElement] Extensions for serialNumber
    @JsonKey(name: '_serialNumber') PrimitiveElement? serialNumberElement,

    /// [deviceName] This represents the manufacturer's name of the device as
    /// provided by the device, from a UDI label, or by a person describing the
    /// Device.  This typically would be used when a person provides the name(s)
    /// or when the device represents one of the names available from
    ///  DeviceDefinition.
    List<DeviceDeviceName>? deviceName,

    /// [modelNumber] The model number for the device.
    String? modelNumber,

    /// [modelNumberElement] Extensions for modelNumber
    @JsonKey(name: '_modelNumber') PrimitiveElement? modelNumberElement,

    /// [partNumber] The part number of the device.
    String? partNumber,

    /// [partNumberElement] Extensions for partNumber
    @JsonKey(name: '_partNumber') PrimitiveElement? partNumberElement,

    /// [type] The kind or type of device.
    CodeableConcept? type,

    /// [specialization] The capabilities supported on a  device, the standards
    /// to which the device conforms for a particular purpose, and used for the
    ///  communication.
    List<DeviceSpecialization>? specialization,

    /// [version] The actual design of the device or software version running on
    ///  the device.
    List<DeviceVersion>? version,

    /// [property] The actual configuration settings of a device as it actually
    ///  operates, e.g., regulation status, time properties.
    List<DeviceProperty>? property,

    /// [patient] Patient information, If the device is affixed to a person.
    Reference? patient,

    /// [owner] An organization that is responsible for the provision and ongoing
    ///  maintenance of the device.
    Reference? owner,

    /// [contact] Contact details for an organization or a particular human that
    ///  is responsible for the device.
    List<ContactPoint>? contact,

    /// [location] The place where the device can be found.
    Reference? location,

    /// [url] A network address on which the device may be contacted directly.
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [note] Descriptive information, usage information or implantation
    ///  information that is not captured in an existing element.
    List<Annotation>? note,

    /// [safety] Provides additional safety characteristics about a medical
    ///  device.  For example devices containing latex.
    List<CodeableConcept>? safety,

    /// [parent] The parent device.
    Reference? parent,
  }) = _Device;

  @override
  String get fhirType => 'Device';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Device.fromYaml(dynamic yaml) => yaml is String
      ? Device.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Device.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Device cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);

  /// Acts like a constructor, returns a [Device], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Device.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => 'Device/$id';

  @override
  String get resourceTypeString => 'Device';

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(meta));

  Device updateContactPointSystem(ContactPointSystem system, [int index = 0]) {
    if (contact == null || contact!.isEmpty) {
      return copyWith(contact: <ContactPoint>[ContactPoint(system: system)]);
    } else if (index >= contact!.length) {
      return copyWith(
          contact: <ContactPoint>[...contact!, ContactPoint(system: system)]);
    } else {
      return copyWith(contact: <ContactPoint>[
        ...contact!.sublist(0, index),
        contact![index].copyWith(system: system),
        ...contact!.sublist(index + 1)
      ]);
    }
  }

  Device updateContactPointValue(String value, [int index = 0]) {
    if (contact == null || contact!.isEmpty) {
      return copyWith(contact: <ContactPoint>[ContactPoint(value: value)]);
    } else if (index >= contact!.length) {
      return copyWith(
          contact: <ContactPoint>[...contact!, ContactPoint(value: value)]);
    } else {
      return copyWith(contact: <ContactPoint>[
        ...contact!.sublist(0, index),
        contact![index].copyWith(value: value),
        ...contact!.sublist(index + 1)
      ]);
    }
  }

  Device updateContactPointUse(ContactPointUse use, [int index = 0]) {
    if (contact == null || contact!.isEmpty) {
      return copyWith(contact: <ContactPoint>[ContactPoint(use: use)]);
    } else if (index >= contact!.length) {
      return copyWith(
          contact: <ContactPoint>[...contact!, ContactPoint(use: use)]);
    } else {
      return copyWith(contact: <ContactPoint>[
        ...contact!.sublist(0, index),
        contact![index].copyWith(use: use),
        ...contact!.sublist(index + 1)
      ]);
    }
  }

  Device updateContactPointRank(FhirPositiveInt rank, [int index = 0]) {
    if (contact == null || contact!.isEmpty) {
      return copyWith(contact: <ContactPoint>[ContactPoint(rank: rank)]);
    } else if (index >= contact!.length) {
      return copyWith(
          contact: <ContactPoint>[...contact!, ContactPoint(rank: rank)]);
    } else {
      return copyWith(contact: <ContactPoint>[
        ...contact!.sublist(0, index),
        contact![index].copyWith(rank: rank),
        ...contact!.sublist(index + 1)
      ]);
    }
  }

  Device updateContactPointPeriod(Period period, [int index = 0]) {
    if (contact == null || contact!.isEmpty) {
      return copyWith(contact: <ContactPoint>[ContactPoint(period: period)]);
    } else if (index >= contact!.length) {
      return copyWith(
          contact: <ContactPoint>[...contact!, ContactPoint(period: period)]);
    } else {
      return copyWith(contact: <ContactPoint>[
        ...contact!.sublist(0, index),
        contact![index].copyWith(period: period),
        ...contact!.sublist(index + 1)
      ]);
    }
  }
}

/// [DeviceUdiCarrier] A type of a manufactured item that is used in the
@freezed
class DeviceUdiCarrier with _$DeviceUdiCarrier implements BackboneElement {
  /// [DeviceUdiCarrier] A type of a manufactured item that is used in the
  const DeviceUdiCarrier._();

  /// [DeviceUdiCarrier] A type of a manufactured item that is used in the
  /// provision of healthcare without being substantially changed through that
  ///  activity. The device may be a medical or non-medical device.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [deviceIdentifier] The device identifier (DI) is a mandatory, fixed
  /// portion of a UDI that identifies the labeler and the specific version or
  ///  model of a device.
  ///
  /// [deviceIdentifierElement] Extensions for deviceIdentifier
  ///
  /// [issuer] Organization that is charged with issuing UDIs for devices.  For
  ///  example, the US FDA issuers include :
  /// 1) GS1:
  /// http://hl7.org/fhir/NamingSystem/gs1-di,
  /// 2) HIBCC:
  /// http://hl7.org/fhir/NamingSystem/hibcc-dI,
  /// 3) ICCBBA for blood containers:
  /// http://hl7.org/fhir/NamingSystem/iccbba-blood-di,
  /// 4) ICCBA for other devices:
  /// http://hl7.org/fhir/NamingSystem/iccbba-other-di.
  ///
  /// [issuerElement] Extensions for issuer
  ///
  /// [jurisdiction] The identity of the authoritative source for UDI
  /// generation within a  jurisdiction.  All UDIs are globally unique within a
  /// single namespace with the appropriate repository uri as the system.  For
  /// example,  UDIs of devices managed in the U.S. by the FDA, the value is
  ///  http://hl7.org/fhir/NamingSystem/fda-udi.
  ///
  /// [jurisdictionElement] Extensions for jurisdiction
  ///
  /// [carrierAIDC] The full UDI carrier of the Automatic Identification and
  /// Data Capture (AIDC) technology representation of the barcode string as
  /// printed on the packaging of the device - e.g., a barcode or RFID.
  /// Because of limitations on character sets in XML and the need to round-trip
  ///  JSON data through XML, AIDC Formats *SHALL* be base64 encoded.
  ///
  /// [carrierAIDCElement] Extensions for carrierAIDC
  ///
  /// [carrierHRF] The full UDI carrier as the human readable form (HRF)
  /// representation of the barcode string as printed on the packaging of the
  ///  device.
  ///
  /// [carrierHRFElement] Extensions for carrierHRF
  ///
  /// [entryType] A coded entry to indicate how the data was entered.
  ///
  /// [entryTypeElement] Extensions for entryType
  const factory DeviceUdiCarrier({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [deviceIdentifier] The device identifier (DI) is a mandatory, fixed
    /// portion of a UDI that identifies the labeler and the specific version or
    ///  model of a device.
    String? deviceIdentifier,

    /// [deviceIdentifierElement] Extensions for deviceIdentifier
    @JsonKey(name: '_deviceIdentifier')
    PrimitiveElement? deviceIdentifierElement,

    /// [issuer] Organization that is charged with issuing UDIs for devices.  For
    ///  example, the US FDA issuers include :
    /// 1) GS1:
    /// http://hl7.org/fhir/NamingSystem/gs1-di,
    /// 2) HIBCC:
    /// http://hl7.org/fhir/NamingSystem/hibcc-dI,
    /// 3) ICCBBA for blood containers:
    /// http://hl7.org/fhir/NamingSystem/iccbba-blood-di,
    /// 4) ICCBA for other devices:
    /// http://hl7.org/fhir/NamingSystem/iccbba-other-di.
    FhirUri? issuer,

    /// [issuerElement] Extensions for issuer
    @JsonKey(name: '_issuer') PrimitiveElement? issuerElement,

    /// [jurisdiction] The identity of the authoritative source for UDI
    /// generation within a  jurisdiction.  All UDIs are globally unique within a
    /// single namespace with the appropriate repository uri as the system.  For
    /// example,  UDIs of devices managed in the U.S. by the FDA, the value is
    ///  http://hl7.org/fhir/NamingSystem/fda-udi.
    FhirUri? jurisdiction,

    /// [jurisdictionElement] Extensions for jurisdiction
    @JsonKey(name: '_jurisdiction') PrimitiveElement? jurisdictionElement,

    /// [carrierAIDC] The full UDI carrier of the Automatic Identification and
    /// Data Capture (AIDC) technology representation of the barcode string as
    /// printed on the packaging of the device - e.g., a barcode or RFID.
    /// Because of limitations on character sets in XML and the need to round-trip
    ///  JSON data through XML, AIDC Formats *SHALL* be base64 encoded.
    FhirBase64Binary? carrierAIDC,

    /// [carrierAIDCElement] Extensions for carrierAIDC
    @JsonKey(name: '_carrierAIDC') PrimitiveElement? carrierAIDCElement,

    /// [carrierHRF] The full UDI carrier as the human readable form (HRF)
    /// representation of the barcode string as printed on the packaging of the
    ///  device.
    String? carrierHRF,

    /// [carrierHRFElement] Extensions for carrierHRF
    @JsonKey(name: '_carrierHRF') PrimitiveElement? carrierHRFElement,

    /// [entryType] A coded entry to indicate how the data was entered.
    DeviceUdiCarrierEntryType? entryType,

    /// [entryTypeElement] Extensions for entryType
    @JsonKey(name: '_entryType') PrimitiveElement? entryTypeElement,
  }) = _DeviceUdiCarrier;

  @override
  String get fhirType => 'DeviceUdiCarrier';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DeviceUdiCarrier.fromYaml(dynamic yaml) => yaml is String
      ? DeviceUdiCarrier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceUdiCarrier.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceUdiCarrier cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DeviceUdiCarrier.fromJson(Map<String, dynamic> json) =>
      _$DeviceUdiCarrierFromJson(json);

  /// Acts like a constructor, returns a [DeviceUdiCarrier], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DeviceUdiCarrier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceUdiCarrierFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [DeviceDeviceName] A type of a manufactured item that is used in the
@freezed
class DeviceDeviceName with _$DeviceDeviceName implements BackboneElement {
  /// [DeviceDeviceName] A type of a manufactured item that is used in the
  const DeviceDeviceName._();

  /// [DeviceDeviceName] A type of a manufactured item that is used in the
  /// provision of healthcare without being substantially changed through that
  ///  activity. The device may be a medical or non-medical device.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [name] The name of the device.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [type] The type of deviceName.
  /// UDILabelName | UserFriendlyName | PatientReportedName |
  ///  ManufactureDeviceName | ModelName.
  ///
  /// [typeElement] Extensions for type
  const factory DeviceDeviceName({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [name] The name of the device.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [type] The type of deviceName.
    /// UDILabelName | UserFriendlyName | PatientReportedName |
    ///  ManufactureDeviceName | ModelName.
    DeviceDeviceNameType? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,
  }) = _DeviceDeviceName;

  @override
  String get fhirType => 'DeviceDeviceName';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DeviceDeviceName.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDeviceName.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceDeviceName.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceDeviceName cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DeviceDeviceName.fromJson(Map<String, dynamic> json) =>
      _$DeviceDeviceNameFromJson(json);

  /// Acts like a constructor, returns a [DeviceDeviceName], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DeviceDeviceName.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceDeviceNameFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [DeviceSpecialization] A type of a manufactured item that is used in the
@freezed
class DeviceSpecialization
    with _$DeviceSpecialization
    implements BackboneElement {
  /// [DeviceSpecialization] A type of a manufactured item that is used in the
  const DeviceSpecialization._();

  /// [DeviceSpecialization] A type of a manufactured item that is used in the
  /// provision of healthcare without being substantially changed through that
  ///  activity. The device may be a medical or non-medical device.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [systemType] The standard that is used to operate and communicate.
  ///
  /// [version] The version of the standard that is used to operate and
  ///  communicate.
  ///
  /// [versionElement] Extensions for version
  const factory DeviceSpecialization({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [systemType] The standard that is used to operate and communicate.
    required CodeableConcept systemType,

    /// [version] The version of the standard that is used to operate and
    ///  communicate.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,
  }) = _DeviceSpecialization;

  @override
  String get fhirType => 'DeviceSpecialization';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DeviceSpecialization.fromYaml(dynamic yaml) => yaml is String
      ? DeviceSpecialization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceSpecialization.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceSpecialization cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DeviceSpecialization.fromJson(Map<String, dynamic> json) =>
      _$DeviceSpecializationFromJson(json);

  /// Acts like a constructor, returns a [DeviceSpecialization], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DeviceSpecialization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceSpecializationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [DeviceVersion] A type of a manufactured item that is used in the
@freezed
class DeviceVersion with _$DeviceVersion implements BackboneElement {
  /// [DeviceVersion] A type of a manufactured item that is used in the
  const DeviceVersion._();

  /// [DeviceVersion] A type of a manufactured item that is used in the
  /// provision of healthcare without being substantially changed through that
  ///  activity. The device may be a medical or non-medical device.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] The type of the device version.
  ///
  /// [component] A single component of the device version.
  ///
  /// [value] The version text.
  ///
  /// [valueElement] Extensions for value
  const factory DeviceVersion({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] The type of the device version.
    CodeableConcept? type,

    /// [component] A single component of the device version.
    Identifier? component,

    /// [value] The version text.
    String? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') PrimitiveElement? valueElement,
  }) = _DeviceVersion;

  @override
  String get fhirType => 'DeviceVersion';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DeviceVersion.fromYaml(dynamic yaml) => yaml is String
      ? DeviceVersion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceVersion.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceVersion cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DeviceVersion.fromJson(Map<String, dynamic> json) =>
      _$DeviceVersionFromJson(json);

  /// Acts like a constructor, returns a [DeviceVersion], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DeviceVersion.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceVersionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [DeviceProperty] A type of a manufactured item that is used in the
@freezed
class DeviceProperty with _$DeviceProperty implements BackboneElement {
  /// [DeviceProperty] A type of a manufactured item that is used in the
  const DeviceProperty._();

  /// [DeviceProperty] A type of a manufactured item that is used in the
  /// provision of healthcare without being substantially changed through that
  ///  activity. The device may be a medical or non-medical device.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] Code that specifies the property DeviceDefinitionPropetyCode
  ///  (Extensible).
  ///
  /// [valueQuantity] Property value as a quantity.
  ///
  /// [valueCode] Property value as a code, e.g., NTP4 (synced to NTP).
  const factory DeviceProperty({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] Code that specifies the property DeviceDefinitionPropetyCode
    ///  (Extensible).
    required CodeableConcept type,

    /// [valueQuantity] Property value as a quantity.
    List<Quantity>? valueQuantity,

    /// [valueCode] Property value as a code, e.g., NTP4 (synced to NTP).
    List<CodeableConcept>? valueCode,
  }) = _DeviceProperty;

  @override
  String get fhirType => 'DeviceProperty';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DeviceProperty.fromYaml(dynamic yaml) => yaml is String
      ? DeviceProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceProperty cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DeviceProperty.fromJson(Map<String, dynamic> json) =>
      _$DevicePropertyFromJson(json);

  /// Acts like a constructor, returns a [DeviceProperty], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DeviceProperty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DevicePropertyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}
