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
          objectPath: 'Device',
          resourceType: R4ResourceType.Device,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Device.empty() => const Device();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Device.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device';
    return Device(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      definition: JsonParser.parseObject<Reference>(
        json,
        'definition',
        Reference.fromJson,
        '$objectPath.definition',
      ),
      udiCarrier: (json['udiCarrier'] as List<dynamic>?)
          ?.map<DeviceUdiCarrier>(
            (v) => DeviceUdiCarrier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udiCarrier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<FHIRDeviceStatus>(
        json,
        'status',
        FHIRDeviceStatus.fromJson,
        '$objectPath.status',
      ),
      statusReason: (json['statusReason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.statusReason',
              },
            ),
          )
          .toList(),
      distinctIdentifier: JsonParser.parsePrimitive<FhirString>(
        json,
        'distinctIdentifier',
        FhirString.fromJson,
        '$objectPath.distinctIdentifier',
      ),
      manufacturer: JsonParser.parsePrimitive<FhirString>(
        json,
        'manufacturer',
        FhirString.fromJson,
        '$objectPath.manufacturer',
      ),
      manufactureDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'manufactureDate',
        FhirDateTime.fromJson,
        '$objectPath.manufactureDate',
      ),
      expirationDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'expirationDate',
        FhirDateTime.fromJson,
        '$objectPath.expirationDate',
      ),
      lotNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'lotNumber',
        FhirString.fromJson,
        '$objectPath.lotNumber',
      ),
      serialNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'serialNumber',
        FhirString.fromJson,
        '$objectPath.serialNumber',
      ),
      deviceName: (json['deviceName'] as List<dynamic>?)
          ?.map<DeviceDeviceName>(
            (v) => DeviceDeviceName.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.deviceName',
              },
            ),
          )
          .toList(),
      modelNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'modelNumber',
        FhirString.fromJson,
        '$objectPath.modelNumber',
      ),
      partNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'partNumber',
        FhirString.fromJson,
        '$objectPath.partNumber',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      specialization: (json['specialization'] as List<dynamic>?)
          ?.map<DeviceSpecialization>(
            (v) => DeviceSpecialization.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specialization',
              },
            ),
          )
          .toList(),
      version: (json['version'] as List<dynamic>?)
          ?.map<DeviceVersion>(
            (v) => DeviceVersion.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.version',
              },
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<DeviceProperty>(
            (v) => DeviceProperty.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
        '$objectPath.patient',
      ),
      owner: JsonParser.parseObject<Reference>(
        json,
        'owner',
        Reference.fromJson,
        '$objectPath.owner',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
        '$objectPath.location',
      ),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
        '$objectPath.url',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      safety: (json['safety'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.safety',
              },
            ),
          )
          .toList(),
      parent: JsonParser.parseObject<Reference>(
        json,
        'parent',
        Reference.fromJson,
        '$objectPath.parent',
      ),
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
    if (json is Map<String, dynamic>) {
      return Device.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'definition',
      definition,
    );
    addField(
      'udiCarrier',
      udiCarrier,
    );
    addField(
      'status',
      status,
    );
    addField(
      'statusReason',
      statusReason,
    );
    addField(
      'distinctIdentifier',
      distinctIdentifier,
    );
    addField(
      'manufacturer',
      manufacturer,
    );
    addField(
      'manufactureDate',
      manufactureDate,
    );
    addField(
      'expirationDate',
      expirationDate,
    );
    addField(
      'lotNumber',
      lotNumber,
    );
    addField(
      'serialNumber',
      serialNumber,
    );
    addField(
      'deviceName',
      deviceName,
    );
    addField(
      'modelNumber',
      modelNumber,
    );
    addField(
      'partNumber',
      partNumber,
    );
    addField(
      'type',
      type,
    );
    addField(
      'specialization',
      specialization,
    );
    addField(
      'version',
      version,
    );
    addField(
      'property',
      property,
    );
    addField(
      'patient',
      patient,
    );
    addField(
      'owner',
      owner,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'location',
      location,
    );
    addField(
      'url',
      url,
    );
    addField(
      'note',
      note,
    );
    addField(
      'safety',
      safety,
    );
    addField(
      'parent',
      parent,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'definition',
      'udiCarrier',
      'status',
      'statusReason',
      'distinctIdentifier',
      'manufacturer',
      'manufactureDate',
      'expirationDate',
      'lotNumber',
      'serialNumber',
      'deviceName',
      'modelNumber',
      'partNumber',
      'type',
      'specialization',
      'version',
      'property',
      'patient',
      'owner',
      'contact',
      'location',
      'url',
      'note',
      'safety',
      'parent',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'definition':
        if (definition != null) {
          fields.add(definition!);
        }
      case 'udiCarrier':
        if (udiCarrier != null) {
          fields.addAll(udiCarrier!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'statusReason':
        if (statusReason != null) {
          fields.addAll(statusReason!);
        }
      case 'distinctIdentifier':
        if (distinctIdentifier != null) {
          fields.add(distinctIdentifier!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.add(manufacturer!);
        }
      case 'manufactureDate':
        if (manufactureDate != null) {
          fields.add(manufactureDate!);
        }
      case 'expirationDate':
        if (expirationDate != null) {
          fields.add(expirationDate!);
        }
      case 'lotNumber':
        if (lotNumber != null) {
          fields.add(lotNumber!);
        }
      case 'serialNumber':
        if (serialNumber != null) {
          fields.add(serialNumber!);
        }
      case 'deviceName':
        if (deviceName != null) {
          fields.addAll(deviceName!);
        }
      case 'modelNumber':
        if (modelNumber != null) {
          fields.add(modelNumber!);
        }
      case 'partNumber':
        if (partNumber != null) {
          fields.add(partNumber!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'specialization':
        if (specialization != null) {
          fields.addAll(specialization!);
        }
      case 'version':
        if (version != null) {
          fields.addAll(version!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
        }
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
      case 'owner':
        if (owner != null) {
          fields.add(owner!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'safety':
        if (safety != null) {
          fields.addAll(safety!);
        }
      case 'parent':
        if (parent != null) {
          fields.add(parent!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [...?contained, child];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [...?identifier, child];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definition':
        {
          if (child is Reference) {
            return copyWith(definition: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'udiCarrier':
        {
          if (child is List<DeviceUdiCarrier>) {
            // Add all elements from passed list
            final newList = [...?udiCarrier, ...child];
            return copyWith(udiCarrier: newList);
          } else if (child is DeviceUdiCarrier) {
            // Add single element to existing list or create new list
            final newList = [...?udiCarrier, child];
            return copyWith(udiCarrier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is FHIRDeviceStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statusReason':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?statusReason, ...child];
            return copyWith(statusReason: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?statusReason, child];
            return copyWith(statusReason: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'distinctIdentifier':
        {
          if (child is FhirString) {
            return copyWith(distinctIdentifier: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'manufacturer':
        {
          if (child is FhirString) {
            return copyWith(manufacturer: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'manufactureDate':
        {
          if (child is FhirDateTime) {
            return copyWith(manufactureDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'expirationDate':
        {
          if (child is FhirDateTime) {
            return copyWith(expirationDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'lotNumber':
        {
          if (child is FhirString) {
            return copyWith(lotNumber: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'serialNumber':
        {
          if (child is FhirString) {
            return copyWith(serialNumber: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'deviceName':
        {
          if (child is List<DeviceDeviceName>) {
            // Add all elements from passed list
            final newList = [...?deviceName, ...child];
            return copyWith(deviceName: newList);
          } else if (child is DeviceDeviceName) {
            // Add single element to existing list or create new list
            final newList = [...?deviceName, child];
            return copyWith(deviceName: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modelNumber':
        {
          if (child is FhirString) {
            return copyWith(modelNumber: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'partNumber':
        {
          if (child is FhirString) {
            return copyWith(partNumber: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'specialization':
        {
          if (child is List<DeviceSpecialization>) {
            // Add all elements from passed list
            final newList = [...?specialization, ...child];
            return copyWith(specialization: newList);
          } else if (child is DeviceSpecialization) {
            // Add single element to existing list or create new list
            final newList = [...?specialization, child];
            return copyWith(specialization: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is List<DeviceVersion>) {
            // Add all elements from passed list
            final newList = [...?version, ...child];
            return copyWith(version: newList);
          } else if (child is DeviceVersion) {
            // Add single element to existing list or create new list
            final newList = [...?version, child];
            return copyWith(version: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'property':
        {
          if (child is List<DeviceProperty>) {
            // Add all elements from passed list
            final newList = [...?property, ...child];
            return copyWith(property: newList);
          } else if (child is DeviceProperty) {
            // Add single element to existing list or create new list
            final newList = [...?property, child];
            return copyWith(property: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patient':
        {
          if (child is Reference) {
            return copyWith(patient: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'owner':
        {
          if (child is Reference) {
            return copyWith(owner: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contact':
        {
          if (child is List<ContactPoint>) {
            // Add all elements from passed list
            final newList = [...?contact, ...child];
            return copyWith(contact: newList);
          } else if (child is ContactPoint) {
            // Add single element to existing list or create new list
            final newList = [...?contact, child];
            return copyWith(contact: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'location':
        {
          if (child is Reference) {
            return copyWith(location: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            // Add all elements from passed list
            final newList = [...?note, ...child];
            return copyWith(note: newList);
          } else if (child is Annotation) {
            // Add single element to existing list or create new list
            final newList = [...?note, child];
            return copyWith(note: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'safety':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?safety, ...child];
            return copyWith(safety: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?safety, child];
            return copyWith(safety: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'parent':
        {
          if (child is Reference) {
            return copyWith(parent: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'definition':
        return ['Reference'];
      case 'udiCarrier':
        return ['DeviceUdiCarrier'];
      case 'status':
        return ['FhirCode'];
      case 'statusReason':
        return ['CodeableConcept'];
      case 'distinctIdentifier':
        return ['FhirString'];
      case 'manufacturer':
        return ['FhirString'];
      case 'manufactureDate':
        return ['FhirDateTime'];
      case 'expirationDate':
        return ['FhirDateTime'];
      case 'lotNumber':
        return ['FhirString'];
      case 'serialNumber':
        return ['FhirString'];
      case 'deviceName':
        return ['DeviceDeviceName'];
      case 'modelNumber':
        return ['FhirString'];
      case 'partNumber':
        return ['FhirString'];
      case 'type':
        return ['CodeableConcept'];
      case 'specialization':
        return ['DeviceSpecialization'];
      case 'version':
        return ['DeviceVersion'];
      case 'property':
        return ['DeviceProperty'];
      case 'patient':
        return ['Reference'];
      case 'owner':
        return ['Reference'];
      case 'contact':
        return ['ContactPoint'];
      case 'location':
        return ['Reference'];
      case 'url':
        return ['FhirUri'];
      case 'note':
        return ['Annotation'];
      case 'safety':
        return ['CodeableConcept'];
      case 'parent':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Device]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Device createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'definition':
        {
          return copyWith(
            definition: Reference.empty(),
          );
        }
      case 'udiCarrier':
        {
          return copyWith(
            udiCarrier: <DeviceUdiCarrier>[],
          );
        }
      case 'status':
        {
          return copyWith(
            status: FHIRDeviceStatus.empty(),
          );
        }
      case 'statusReason':
        {
          return copyWith(
            statusReason: <CodeableConcept>[],
          );
        }
      case 'distinctIdentifier':
        {
          return copyWith(
            distinctIdentifier: FhirString.empty(),
          );
        }
      case 'manufacturer':
        {
          return copyWith(
            manufacturer: FhirString.empty(),
          );
        }
      case 'manufactureDate':
        {
          return copyWith(
            manufactureDate: FhirDateTime.empty(),
          );
        }
      case 'expirationDate':
        {
          return copyWith(
            expirationDate: FhirDateTime.empty(),
          );
        }
      case 'lotNumber':
        {
          return copyWith(
            lotNumber: FhirString.empty(),
          );
        }
      case 'serialNumber':
        {
          return copyWith(
            serialNumber: FhirString.empty(),
          );
        }
      case 'deviceName':
        {
          return copyWith(
            deviceName: <DeviceDeviceName>[],
          );
        }
      case 'modelNumber':
        {
          return copyWith(
            modelNumber: FhirString.empty(),
          );
        }
      case 'partNumber':
        {
          return copyWith(
            partNumber: FhirString.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'specialization':
        {
          return copyWith(
            specialization: <DeviceSpecialization>[],
          );
        }
      case 'version':
        {
          return copyWith(
            version: <DeviceVersion>[],
          );
        }
      case 'property':
        {
          return copyWith(
            property: <DeviceProperty>[],
          );
        }
      case 'patient':
        {
          return copyWith(
            patient: Reference.empty(),
          );
        }
      case 'owner':
        {
          return copyWith(
            owner: Reference.empty(),
          );
        }
      case 'contact':
        {
          return copyWith(
            contact: <ContactPoint>[],
          );
        }
      case 'location':
        {
          return copyWith(
            location: Reference.empty(),
          );
        }
      case 'url':
        {
          return copyWith(
            url: FhirUri.empty(),
          );
        }
      case 'note':
        {
          return copyWith(
            note: <Annotation>[],
          );
        }
      case 'safety':
        {
          return copyWith(
            safety: <CodeableConcept>[],
          );
        }
      case 'parent':
        {
          return copyWith(
            parent: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Device clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool definition = false,
    bool udiCarrier = false,
    bool status = false,
    bool statusReason = false,
    bool distinctIdentifier = false,
    bool manufacturer = false,
    bool manufactureDate = false,
    bool expirationDate = false,
    bool lotNumber = false,
    bool serialNumber = false,
    bool deviceName = false,
    bool modelNumber = false,
    bool partNumber = false,
    bool type = false,
    bool specialization = false,
    bool version = false,
    bool property = false,
    bool patient = false,
    bool owner = false,
    bool contact = false,
    bool location = false,
    bool url = false,
    bool note = false,
    bool safety = false,
    bool parent = false,
  }) {
    return Device(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      definition: definition ? null : this.definition,
      udiCarrier: udiCarrier ? null : this.udiCarrier,
      status: status ? null : this.status,
      statusReason: statusReason ? null : this.statusReason,
      distinctIdentifier: distinctIdentifier ? null : this.distinctIdentifier,
      manufacturer: manufacturer ? null : this.manufacturer,
      manufactureDate: manufactureDate ? null : this.manufactureDate,
      expirationDate: expirationDate ? null : this.expirationDate,
      lotNumber: lotNumber ? null : this.lotNumber,
      serialNumber: serialNumber ? null : this.serialNumber,
      deviceName: deviceName ? null : this.deviceName,
      modelNumber: modelNumber ? null : this.modelNumber,
      partNumber: partNumber ? null : this.partNumber,
      type: type ? null : this.type,
      specialization: specialization ? null : this.specialization,
      version: version ? null : this.version,
      property: property ? null : this.property,
      patient: patient ? null : this.patient,
      owner: owner ? null : this.owner,
      contact: contact ? null : this.contact,
      location: location ? null : this.location,
      url: url ? null : this.url,
      note: note ? null : this.note,
      safety: safety ? null : this.safety,
      parent: parent ? null : this.parent,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Device(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      definition: definition?.copyWith(
            objectPath: '$newObjectPath.definition',
          ) ??
          this.definition,
      udiCarrier: udiCarrier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.udiCarrier',
                ),
              )
              .toList() ??
          this.udiCarrier,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      statusReason: statusReason
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.statusReason',
                ),
              )
              .toList() ??
          this.statusReason,
      distinctIdentifier: distinctIdentifier?.copyWith(
            objectPath: '$newObjectPath.distinctIdentifier',
          ) ??
          this.distinctIdentifier,
      manufacturer: manufacturer?.copyWith(
            objectPath: '$newObjectPath.manufacturer',
          ) ??
          this.manufacturer,
      manufactureDate: manufactureDate?.copyWith(
            objectPath: '$newObjectPath.manufactureDate',
          ) ??
          this.manufactureDate,
      expirationDate: expirationDate?.copyWith(
            objectPath: '$newObjectPath.expirationDate',
          ) ??
          this.expirationDate,
      lotNumber: lotNumber?.copyWith(
            objectPath: '$newObjectPath.lotNumber',
          ) ??
          this.lotNumber,
      serialNumber: serialNumber?.copyWith(
            objectPath: '$newObjectPath.serialNumber',
          ) ??
          this.serialNumber,
      deviceName: deviceName
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.deviceName',
                ),
              )
              .toList() ??
          this.deviceName,
      modelNumber: modelNumber?.copyWith(
            objectPath: '$newObjectPath.modelNumber',
          ) ??
          this.modelNumber,
      partNumber: partNumber?.copyWith(
            objectPath: '$newObjectPath.partNumber',
          ) ??
          this.partNumber,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      specialization: specialization
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.specialization',
                ),
              )
              .toList() ??
          this.specialization,
      version: version
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.version',
                ),
              )
              .toList() ??
          this.version,
      property: property
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.property',
                ),
              )
              .toList() ??
          this.property,
      patient: patient?.copyWith(
            objectPath: '$newObjectPath.patient',
          ) ??
          this.patient,
      owner: owner?.copyWith(
            objectPath: '$newObjectPath.owner',
          ) ??
          this.owner,
      contact: contact
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.contact',
                ),
              )
              .toList() ??
          this.contact,
      location: location?.copyWith(
            objectPath: '$newObjectPath.location',
          ) ??
          this.location,
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      safety: safety
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.safety',
                ),
              )
              .toList() ??
          this.safety,
      parent: parent?.copyWith(
            objectPath: '$newObjectPath.parent',
          ) ??
          this.parent,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Device) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      definition,
      o.definition,
    )) {
      return false;
    }
    if (!listEquals<DeviceUdiCarrier>(
      udiCarrier,
      o.udiCarrier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      statusReason,
      o.statusReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      distinctIdentifier,
      o.distinctIdentifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      manufactureDate,
      o.manufactureDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expirationDate,
      o.expirationDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lotNumber,
      o.lotNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      serialNumber,
      o.serialNumber,
    )) {
      return false;
    }
    if (!listEquals<DeviceDeviceName>(
      deviceName,
      o.deviceName,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      modelNumber,
      o.modelNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      partNumber,
      o.partNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<DeviceSpecialization>(
      specialization,
      o.specialization,
    )) {
      return false;
    }
    if (!listEquals<DeviceVersion>(
      version,
      o.version,
    )) {
      return false;
    }
    if (!listEquals<DeviceProperty>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      owner,
      o.owner,
    )) {
      return false;
    }
    if (!listEquals<ContactPoint>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      safety,
      o.safety,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      parent,
      o.parent,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Device.udiCarrier',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DeviceUdiCarrier.empty() => const DeviceUdiCarrier();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceUdiCarrier.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device.udiCarrier';
    return DeviceUdiCarrier(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      deviceIdentifier: JsonParser.parsePrimitive<FhirString>(
        json,
        'deviceIdentifier',
        FhirString.fromJson,
        '$objectPath.deviceIdentifier',
      ),
      issuer: JsonParser.parsePrimitive<FhirUri>(
        json,
        'issuer',
        FhirUri.fromJson,
        '$objectPath.issuer',
      ),
      jurisdiction: JsonParser.parsePrimitive<FhirUri>(
        json,
        'jurisdiction',
        FhirUri.fromJson,
        '$objectPath.jurisdiction',
      ),
      carrierAIDC: JsonParser.parsePrimitive<FhirBase64Binary>(
        json,
        'carrierAIDC',
        FhirBase64Binary.fromJson,
        '$objectPath.carrierAIDC',
      ),
      carrierHRF: JsonParser.parsePrimitive<FhirString>(
        json,
        'carrierHRF',
        FhirString.fromJson,
        '$objectPath.carrierHRF',
      ),
      entryType: JsonParser.parsePrimitive<UDIEntryType>(
        json,
        'entryType',
        UDIEntryType.fromJson,
        '$objectPath.entryType',
      ),
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
    if (json is Map<String, dynamic>) {
      return DeviceUdiCarrier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'deviceIdentifier',
      deviceIdentifier,
    );
    addField(
      'issuer',
      issuer,
    );
    addField(
      'jurisdiction',
      jurisdiction,
    );
    addField(
      'carrierAIDC',
      carrierAIDC,
    );
    addField(
      'carrierHRF',
      carrierHRF,
    );
    addField(
      'entryType',
      entryType,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'deviceIdentifier',
      'issuer',
      'jurisdiction',
      'carrierAIDC',
      'carrierHRF',
      'entryType',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'deviceIdentifier':
        if (deviceIdentifier != null) {
          fields.add(deviceIdentifier!);
        }
      case 'issuer':
        if (issuer != null) {
          fields.add(issuer!);
        }
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.add(jurisdiction!);
        }
      case 'carrierAIDC':
        if (carrierAIDC != null) {
          fields.add(carrierAIDC!);
        }
      case 'carrierHRF':
        if (carrierHRF != null) {
          fields.add(carrierHRF!);
        }
      case 'entryType':
        if (entryType != null) {
          fields.add(entryType!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'deviceIdentifier':
        {
          if (child is FhirString) {
            return copyWith(deviceIdentifier: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'issuer':
        {
          if (child is FhirUri) {
            return copyWith(issuer: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'jurisdiction':
        {
          if (child is FhirUri) {
            return copyWith(jurisdiction: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'carrierAIDC':
        {
          if (child is FhirBase64Binary) {
            return copyWith(carrierAIDC: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'carrierHRF':
        {
          if (child is FhirString) {
            return copyWith(carrierHRF: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'entryType':
        {
          if (child is UDIEntryType) {
            return copyWith(entryType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'deviceIdentifier':
        return ['FhirString'];
      case 'issuer':
        return ['FhirUri'];
      case 'jurisdiction':
        return ['FhirUri'];
      case 'carrierAIDC':
        return ['FhirBase64Binary'];
      case 'carrierHRF':
        return ['FhirString'];
      case 'entryType':
        return ['FhirCode'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceUdiCarrier]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DeviceUdiCarrier createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'deviceIdentifier':
        {
          return copyWith(
            deviceIdentifier: FhirString.empty(),
          );
        }
      case 'issuer':
        {
          return copyWith(
            issuer: FhirUri.empty(),
          );
        }
      case 'jurisdiction':
        {
          return copyWith(
            jurisdiction: FhirUri.empty(),
          );
        }
      case 'carrierAIDC':
        {
          return copyWith(
            carrierAIDC: FhirBase64Binary.empty(),
          );
        }
      case 'carrierHRF':
        {
          return copyWith(
            carrierHRF: FhirString.empty(),
          );
        }
      case 'entryType':
        {
          return copyWith(
            entryType: UDIEntryType.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DeviceUdiCarrier clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool deviceIdentifier = false,
    bool issuer = false,
    bool jurisdiction = false,
    bool carrierAIDC = false,
    bool carrierHRF = false,
    bool entryType = false,
  }) {
    return DeviceUdiCarrier(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      deviceIdentifier: deviceIdentifier ? null : this.deviceIdentifier,
      issuer: issuer ? null : this.issuer,
      jurisdiction: jurisdiction ? null : this.jurisdiction,
      carrierAIDC: carrierAIDC ? null : this.carrierAIDC,
      carrierHRF: carrierHRF ? null : this.carrierHRF,
      entryType: entryType ? null : this.entryType,
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
    FhirUri? issuer,
    FhirUri? jurisdiction,
    FhirBase64Binary? carrierAIDC,
    FhirString? carrierHRF,
    UDIEntryType? entryType,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DeviceUdiCarrier(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      deviceIdentifier: deviceIdentifier?.copyWith(
            objectPath: '$newObjectPath.deviceIdentifier',
          ) ??
          this.deviceIdentifier,
      issuer: issuer?.copyWith(
            objectPath: '$newObjectPath.issuer',
          ) ??
          this.issuer,
      jurisdiction: jurisdiction?.copyWith(
            objectPath: '$newObjectPath.jurisdiction',
          ) ??
          this.jurisdiction,
      carrierAIDC: carrierAIDC?.copyWith(
            objectPath: '$newObjectPath.carrierAIDC',
          ) ??
          this.carrierAIDC,
      carrierHRF: carrierHRF?.copyWith(
            objectPath: '$newObjectPath.carrierHRF',
          ) ??
          this.carrierHRF,
      entryType: entryType?.copyWith(
            objectPath: '$newObjectPath.entryType',
          ) ??
          this.entryType,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceUdiCarrier) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      deviceIdentifier,
      o.deviceIdentifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      issuer,
      o.issuer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      carrierAIDC,
      o.carrierAIDC,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      carrierHRF,
      o.carrierHRF,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      entryType,
      o.entryType,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Device.deviceName',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DeviceDeviceName.empty() => DeviceDeviceName(
        name: FhirString.empty(),
        type: DeviceNameType.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDeviceName.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device.deviceName';
    return DeviceDeviceName(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      )!,
      type: JsonParser.parsePrimitive<DeviceNameType>(
        json,
        'type',
        DeviceNameType.fromJson,
        '$objectPath.type',
      )!,
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
    if (json is Map<String, dynamic>) {
      return DeviceDeviceName.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'name',
      name,
    );
    addField(
      'type',
      type,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'name',
      'type',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'name':
        fields.add(name);
      case 'type':
        fields.add(type);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is DeviceNameType) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'name':
        return ['FhirString'];
      case 'type':
        return ['FhirCode'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDeviceName]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DeviceDeviceName createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'name':
        {
          return copyWith(
            name: FhirString.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: DeviceNameType.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DeviceDeviceName clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return DeviceDeviceName(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      name: name,
      type: type,
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
    DeviceNameType? type,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DeviceDeviceName(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDeviceName) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Device.specialization',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DeviceSpecialization.empty() => DeviceSpecialization(
        systemType: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceSpecialization.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device.specialization';
    return DeviceSpecialization(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      systemType: JsonParser.parseObject<CodeableConcept>(
        json,
        'systemType',
        CodeableConcept.fromJson,
        '$objectPath.systemType',
      )!,
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
        '$objectPath.version',
      ),
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
    if (json is Map<String, dynamic>) {
      return DeviceSpecialization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'systemType',
      systemType,
    );
    addField(
      'version',
      version,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'systemType',
      'version',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'systemType':
        fields.add(systemType);
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'systemType':
        {
          if (child is CodeableConcept) {
            return copyWith(systemType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is FhirString) {
            return copyWith(version: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'systemType':
        return ['CodeableConcept'];
      case 'version':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceSpecialization]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DeviceSpecialization createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'systemType':
        {
          return copyWith(
            systemType: CodeableConcept.empty(),
          );
        }
      case 'version':
        {
          return copyWith(
            version: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DeviceSpecialization clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool version = false,
  }) {
    return DeviceSpecialization(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      systemType: systemType,
      version: version ? null : this.version,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DeviceSpecialization(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      systemType: systemType?.copyWith(
            objectPath: '$newObjectPath.systemType',
          ) ??
          this.systemType,
      version: version?.copyWith(
            objectPath: '$newObjectPath.version',
          ) ??
          this.version,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceSpecialization) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      systemType,
      o.systemType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Device.version',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DeviceVersion.empty() => DeviceVersion(
        value: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceVersion.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device.version';
    return DeviceVersion(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      component: JsonParser.parseObject<Identifier>(
        json,
        'component',
        Identifier.fromJson,
        '$objectPath.component',
      ),
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
        '$objectPath.value',
      )!,
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
    if (json is Map<String, dynamic>) {
      return DeviceVersion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'component',
      component,
    );
    addField(
      'value',
      value,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'component',
      'value',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'component':
        if (component != null) {
          fields.add(component!);
        }
      case 'value':
        fields.add(value);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'component':
        {
          if (child is Identifier) {
            return copyWith(component: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'value':
        {
          if (child is FhirString) {
            return copyWith(value: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'component':
        return ['Identifier'];
      case 'value':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceVersion]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DeviceVersion createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'component':
        {
          return copyWith(
            component: Identifier.empty(),
          );
        }
      case 'value':
        {
          return copyWith(
            value: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DeviceVersion clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool component = false,
  }) {
    return DeviceVersion(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type ? null : this.type,
      component: component ? null : this.component,
      value: value,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DeviceVersion(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      component: component?.copyWith(
            objectPath: '$newObjectPath.component',
          ) ??
          this.component,
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceVersion) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      component,
      o.component,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Device.property',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DeviceProperty.empty() => DeviceProperty(
        type: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device.property';
    return DeviceProperty(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      )!,
      valueQuantity: (json['valueQuantity'] as List<dynamic>?)
          ?.map<Quantity>(
            (v) => Quantity.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.valueQuantity',
              },
            ),
          )
          .toList(),
      valueCode: (json['valueCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.valueCode',
              },
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return DeviceProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'valueQuantity',
      valueQuantity,
    );
    addField(
      'valueCode',
      valueCode,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'valueQuantity',
      'valueCode',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        fields.add(type);
      case 'valueQuantity':
        if (valueQuantity != null) {
          fields.addAll(valueQuantity!);
        }
      case 'valueCode':
        if (valueCode != null) {
          fields.addAll(valueCode!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is List<Quantity>) {
            // Add all elements from passed list
            final newList = [...?valueQuantity, ...child];
            return copyWith(valueQuantity: newList);
          } else if (child is Quantity) {
            // Add single element to existing list or create new list
            final newList = [...?valueQuantity, child];
            return copyWith(valueQuantity: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCode':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?valueCode, ...child];
            return copyWith(valueCode: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?valueCode, child];
            return copyWith(valueCode: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'valueQuantity':
        return ['Quantity'];
      case 'valueCode':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceProperty]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DeviceProperty createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'valueQuantity':
        {
          return copyWith(
            valueQuantity: <Quantity>[],
          );
        }
      case 'valueCode':
        {
          return copyWith(
            valueCode: <CodeableConcept>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DeviceProperty clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool valueQuantity = false,
    bool valueCode = false,
  }) {
    return DeviceProperty(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      valueQuantity: valueQuantity ? null : this.valueQuantity,
      valueCode: valueCode ? null : this.valueCode,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DeviceProperty(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      valueQuantity: valueQuantity
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.valueQuantity',
                ),
              )
              .toList() ??
          this.valueQuantity,
      valueCode: valueCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.valueCode',
                ),
              )
              .toList() ??
          this.valueCode,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceProperty) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<Quantity>(
      valueQuantity,
      o.valueQuantity,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      valueCode,
      o.valueCode,
    )) {
      return false;
    }
    return true;
  }
}
