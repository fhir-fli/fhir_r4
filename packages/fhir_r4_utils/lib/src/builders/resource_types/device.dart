import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        yamlMapToJson,
        yamlToJson,
        R4ResourceType,
        StringExtensionForFHIR,
        Device,
        DeviceUdiCarrier,
        DeviceDeviceName,
        DeviceSpecialization,
        DeviceVersion,
        DeviceProperty;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [DeviceBuilder]
/// A type of a manufactured item that is used in the provision of
/// healthcare without being substantially changed through that activity.
/// The device may be a medical or non-medical device.
class DeviceBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [DeviceBuilder]

  DeviceBuilder({
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
  /// For Builder classes, no fields are required
  factory DeviceBuilder.empty() => DeviceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device';
    return DeviceBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      definition: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'definition',
        ReferenceBuilder.fromJson,
        '$objectPath.definition',
      ),
      udiCarrier: (json['udiCarrier'] as List<dynamic>?)
          ?.map<DeviceUdiCarrierBuilder>(
            (v) => DeviceUdiCarrierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udiCarrier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<FHIRDeviceStatusBuilder>(
        json,
        'status',
        FHIRDeviceStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      statusReason: (json['statusReason'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.statusReason',
              },
            ),
          )
          .toList(),
      distinctIdentifier: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'distinctIdentifier',
        FhirStringBuilder.fromJson,
        '$objectPath.distinctIdentifier',
      ),
      manufacturer: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'manufacturer',
        FhirStringBuilder.fromJson,
        '$objectPath.manufacturer',
      ),
      manufactureDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'manufactureDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.manufactureDate',
      ),
      expirationDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'expirationDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.expirationDate',
      ),
      lotNumber: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'lotNumber',
        FhirStringBuilder.fromJson,
        '$objectPath.lotNumber',
      ),
      serialNumber: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'serialNumber',
        FhirStringBuilder.fromJson,
        '$objectPath.serialNumber',
      ),
      deviceName: (json['deviceName'] as List<dynamic>?)
          ?.map<DeviceDeviceNameBuilder>(
            (v) => DeviceDeviceNameBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.deviceName',
              },
            ),
          )
          .toList(),
      modelNumber: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'modelNumber',
        FhirStringBuilder.fromJson,
        '$objectPath.modelNumber',
      ),
      partNumber: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'partNumber',
        FhirStringBuilder.fromJson,
        '$objectPath.partNumber',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      specialization: (json['specialization'] as List<dynamic>?)
          ?.map<DeviceSpecializationBuilder>(
            (v) => DeviceSpecializationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specialization',
              },
            ),
          )
          .toList(),
      version: (json['version'] as List<dynamic>?)
          ?.map<DeviceVersionBuilder>(
            (v) => DeviceVersionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.version',
              },
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<DevicePropertyBuilder>(
            (v) => DevicePropertyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
      patient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'patient',
        ReferenceBuilder.fromJson,
        '$objectPath.patient',
      ),
      owner: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'owner',
        ReferenceBuilder.fromJson,
        '$objectPath.owner',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactPointBuilder>(
            (v) => ContactPointBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      url: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'url',
        FhirUriBuilder.fromJson,
        '$objectPath.url',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      safety: (json['safety'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.safety',
              },
            ),
          )
          .toList(),
      parent: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'parent',
        ReferenceBuilder.fromJson,
        '$objectPath.parent',
      ),
    );
  }

  /// Deserialize [DeviceBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [definition]
  /// The reference to the definition for the device.
  ReferenceBuilder? definition;

  /// [udiCarrier]
  /// Unique device identifier (UDI) assigned to device label or package.
  /// Note that the Device may include multiple udiCarriers as it either may
  /// include just the udiCarrier for the jurisdiction it is sold, or for
  /// multiple jurisdictions it could have been sold.
  List<DeviceUdiCarrierBuilder>? udiCarrier;

  /// [status]
  /// Status of the Device availability.
  FHIRDeviceStatusBuilder? status;

  /// [statusReason]
  /// Reason for the dtatus of the Device availability.
  List<CodeableConceptBuilder>? statusReason;

  /// [distinctIdentifier]
  /// The distinct identification string as required by regulation for a
  /// human cell, tissue, or cellular and tissue-based product.
  FhirStringBuilder? distinctIdentifier;

  /// [manufacturer]
  /// A name of the manufacturer.
  FhirStringBuilder? manufacturer;

  /// [manufactureDate]
  /// The date and time when the device was manufactured.
  FhirDateTimeBuilder? manufactureDate;

  /// [expirationDate]
  /// The date and time beyond which this device is no longer valid or should
  /// not be used (if applicable).
  FhirDateTimeBuilder? expirationDate;

  /// [lotNumber]
  /// Lot number assigned by the manufacturer.
  FhirStringBuilder? lotNumber;

  /// [serialNumber]
  /// The serial number assigned by the organization when the device was
  /// manufactured.
  FhirStringBuilder? serialNumber;

  /// [deviceName]
  /// This represents the manufacturer's name of the device as provided by
  /// the device, from a UDI label, or by a person describing the Device.
  /// This typically would be used when a person provides the name(s) or when
  /// the device represents one of the names available from DeviceDefinition.
  List<DeviceDeviceNameBuilder>? deviceName;

  /// [modelNumber]
  /// The manufacturer's model number for the device.
  FhirStringBuilder? modelNumber;

  /// [partNumber]
  /// The part number or catalog number of the device.
  FhirStringBuilder? partNumber;

  /// [type]
  /// The kind or type of device.
  CodeableConceptBuilder? type;

  /// [specialization]
  /// The capabilities supported on a device, the standards to which the
  /// device conforms for a particular purpose, and used for the
  /// communication.
  List<DeviceSpecializationBuilder>? specialization;

  /// [version]
  /// The actual design of the device or software version running on the
  /// device.
  List<DeviceVersionBuilder>? version;

  /// [property]
  /// The actual configuration settings of a device as it actually operates,
  /// e.g., regulation status, time properties.
  List<DevicePropertyBuilder>? property;

  /// [patient]
  /// Patient information, If the device is affixed to a person.
  ReferenceBuilder? patient;

  /// [owner]
  /// An organization that is responsible for the provision and ongoing
  /// maintenance of the device.
  ReferenceBuilder? owner;

  /// [contact]
  /// Contact details for an organization or a particular human that is
  /// responsible for the device.
  List<ContactPointBuilder>? contact;

  /// [location]
  /// The place where the device can be found.
  ReferenceBuilder? location;

  /// [url]
  /// A network address on which the device may be contacted directly.
  FhirUriBuilder? url;

  /// [note]
  /// Descriptive information, usage information or implantation information
  /// that is not captured in an existing element.
  List<AnnotationBuilder>? note;

  /// [safety]
  /// Provides additional safety characteristics about a medical device. For
  /// example devices containing latex.
  List<CodeableConceptBuilder>? safety;

  /// [parent]
  /// The device that this device is attached to or is part of.
  ReferenceBuilder? parent;

  /// Converts a DeviceBuilder to [Device]
  Device build() => Device.fromJson(toJson());

  /// Converts a [DeviceBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('definition', definition);
    addField('udiCarrier', udiCarrier);
    addField('status', status);
    addField('statusReason', statusReason);
    addField('distinctIdentifier', distinctIdentifier);
    addField('manufacturer', manufacturer);
    addField('manufactureDate', manufactureDate);
    addField('expirationDate', expirationDate);
    addField('lotNumber', lotNumber);
    addField('serialNumber', serialNumber);
    addField('deviceName', deviceName);
    addField('modelNumber', modelNumber);
    addField('partNumber', partNumber);
    addField('type', type);
    addField('specialization', specialization);
    addField('version', version);
    addField('property', property);
    addField('patient', patient);
    addField('owner', owner);
    addField('contact', contact);
    addField('location', location);
    addField('url', url);
    addField('note', note);
    addField('safety', safety);
    addField('parent', parent);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [...(contained ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [...(identifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'definition':
        {
          if (child is ReferenceBuilder) {
            definition = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'udiCarrier':
        {
          if (child is List<DeviceUdiCarrierBuilder>) {
            // Replace or create new list
            udiCarrier = child;
            return;
          } else if (child is DeviceUdiCarrierBuilder) {
            // Add single element to existing list or create new list
            udiCarrier = [...(udiCarrier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is FHIRDeviceStatusBuilder) {
            status = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'statusReason':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            statusReason = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            statusReason = [...(statusReason ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'distinctIdentifier':
        {
          if (child is FhirStringBuilder) {
            distinctIdentifier = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'manufacturer':
        {
          if (child is FhirStringBuilder) {
            manufacturer = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'manufactureDate':
        {
          if (child is FhirDateTimeBuilder) {
            manufactureDate = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'expirationDate':
        {
          if (child is FhirDateTimeBuilder) {
            expirationDate = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'lotNumber':
        {
          if (child is FhirStringBuilder) {
            lotNumber = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'serialNumber':
        {
          if (child is FhirStringBuilder) {
            serialNumber = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'deviceName':
        {
          if (child is List<DeviceDeviceNameBuilder>) {
            // Replace or create new list
            deviceName = child;
            return;
          } else if (child is DeviceDeviceNameBuilder) {
            // Add single element to existing list or create new list
            deviceName = [...(deviceName ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modelNumber':
        {
          if (child is FhirStringBuilder) {
            modelNumber = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'partNumber':
        {
          if (child is FhirStringBuilder) {
            partNumber = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'specialization':
        {
          if (child is List<DeviceSpecializationBuilder>) {
            // Replace or create new list
            specialization = child;
            return;
          } else if (child is DeviceSpecializationBuilder) {
            // Add single element to existing list or create new list
            specialization = [...(specialization ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is List<DeviceVersionBuilder>) {
            // Replace or create new list
            version = child;
            return;
          } else if (child is DeviceVersionBuilder) {
            // Add single element to existing list or create new list
            version = [...(version ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'property':
        {
          if (child is List<DevicePropertyBuilder>) {
            // Replace or create new list
            property = child;
            return;
          } else if (child is DevicePropertyBuilder) {
            // Add single element to existing list or create new list
            property = [...(property ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patient':
        {
          if (child is ReferenceBuilder) {
            patient = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'owner':
        {
          if (child is ReferenceBuilder) {
            owner = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contact':
        {
          if (child is List<ContactPointBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is ContactPointBuilder) {
            // Add single element to existing list or create new list
            contact = [...(contact ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'location':
        {
          if (child is ReferenceBuilder) {
            location = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [...(note ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'safety':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            safety = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            safety = [...(safety ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'parent':
        {
          if (child is ReferenceBuilder) {
            parent = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'definition':
        return ['ReferenceBuilder'];
      case 'udiCarrier':
        return ['DeviceUdiCarrierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'statusReason':
        return ['CodeableConceptBuilder'];
      case 'distinctIdentifier':
        return ['FhirStringBuilder'];
      case 'manufacturer':
        return ['FhirStringBuilder'];
      case 'manufactureDate':
        return ['FhirDateTimeBuilder'];
      case 'expirationDate':
        return ['FhirDateTimeBuilder'];
      case 'lotNumber':
        return ['FhirStringBuilder'];
      case 'serialNumber':
        return ['FhirStringBuilder'];
      case 'deviceName':
        return ['DeviceDeviceNameBuilder'];
      case 'modelNumber':
        return ['FhirStringBuilder'];
      case 'partNumber':
        return ['FhirStringBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'specialization':
        return ['DeviceSpecializationBuilder'];
      case 'version':
        return ['DeviceVersionBuilder'];
      case 'property':
        return ['DevicePropertyBuilder'];
      case 'patient':
        return ['ReferenceBuilder'];
      case 'owner':
        return ['ReferenceBuilder'];
      case 'contact':
        return ['ContactPointBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'url':
        return ['FhirUriBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'safety':
        return ['CodeableConceptBuilder'];
      case 'parent':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'definition':
        {
          definition = ReferenceBuilder.empty();
          return;
        }
      case 'udiCarrier':
        {
          udiCarrier = <DeviceUdiCarrierBuilder>[];
          return;
        }
      case 'status':
        {
          status = FHIRDeviceStatusBuilder.empty();
          return;
        }
      case 'statusReason':
        {
          statusReason = <CodeableConceptBuilder>[];
          return;
        }
      case 'distinctIdentifier':
        {
          distinctIdentifier = FhirStringBuilder.empty();
          return;
        }
      case 'manufacturer':
        {
          manufacturer = FhirStringBuilder.empty();
          return;
        }
      case 'manufactureDate':
        {
          manufactureDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'expirationDate':
        {
          expirationDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'lotNumber':
        {
          lotNumber = FhirStringBuilder.empty();
          return;
        }
      case 'serialNumber':
        {
          serialNumber = FhirStringBuilder.empty();
          return;
        }
      case 'deviceName':
        {
          deviceName = <DeviceDeviceNameBuilder>[];
          return;
        }
      case 'modelNumber':
        {
          modelNumber = FhirStringBuilder.empty();
          return;
        }
      case 'partNumber':
        {
          partNumber = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'specialization':
        {
          specialization = <DeviceSpecializationBuilder>[];
          return;
        }
      case 'version':
        {
          version = <DeviceVersionBuilder>[];
          return;
        }
      case 'property':
        {
          property = <DevicePropertyBuilder>[];
          return;
        }
      case 'patient':
        {
          patient = ReferenceBuilder.empty();
          return;
        }
      case 'owner':
        {
          owner = ReferenceBuilder.empty();
          return;
        }
      case 'contact':
        {
          contact = <ContactPointBuilder>[];
          return;
        }
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'url':
        {
          url = FhirUriBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'safety':
        {
          safety = <CodeableConceptBuilder>[];
          return;
        }
      case 'parent':
        {
          parent = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
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
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (definition) this.definition = null;
    if (udiCarrier) this.udiCarrier = null;
    if (status) this.status = null;
    if (statusReason) this.statusReason = null;
    if (distinctIdentifier) this.distinctIdentifier = null;
    if (manufacturer) this.manufacturer = null;
    if (manufactureDate) this.manufactureDate = null;
    if (expirationDate) this.expirationDate = null;
    if (lotNumber) this.lotNumber = null;
    if (serialNumber) this.serialNumber = null;
    if (deviceName) this.deviceName = null;
    if (modelNumber) this.modelNumber = null;
    if (partNumber) this.partNumber = null;
    if (type) this.type = null;
    if (specialization) this.specialization = null;
    if (version) this.version = null;
    if (property) this.property = null;
    if (patient) this.patient = null;
    if (owner) this.owner = null;
    if (contact) this.contact = null;
    if (location) this.location = null;
    if (url) this.url = null;
    if (note) this.note = null;
    if (safety) this.safety = null;
    if (parent) this.parent = null;
  }

  @override
  DeviceBuilder clone() => throw UnimplementedError();
  @override
  DeviceBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    ReferenceBuilder? definition,
    List<DeviceUdiCarrierBuilder>? udiCarrier,
    FHIRDeviceStatusBuilder? status,
    List<CodeableConceptBuilder>? statusReason,
    FhirStringBuilder? distinctIdentifier,
    FhirStringBuilder? manufacturer,
    FhirDateTimeBuilder? manufactureDate,
    FhirDateTimeBuilder? expirationDate,
    FhirStringBuilder? lotNumber,
    FhirStringBuilder? serialNumber,
    List<DeviceDeviceNameBuilder>? deviceName,
    FhirStringBuilder? modelNumber,
    FhirStringBuilder? partNumber,
    CodeableConceptBuilder? type,
    List<DeviceSpecializationBuilder>? specialization,
    List<DeviceVersionBuilder>? version,
    List<DevicePropertyBuilder>? property,
    ReferenceBuilder? patient,
    ReferenceBuilder? owner,
    List<ContactPointBuilder>? contact,
    ReferenceBuilder? location,
    FhirUriBuilder? url,
    List<AnnotationBuilder>? note,
    List<CodeableConceptBuilder>? safety,
    ReferenceBuilder? parent,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = DeviceBuilder(
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

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! DeviceBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
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
    if (!listEquals<DeviceUdiCarrierBuilder>(
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
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<DeviceDeviceNameBuilder>(
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
    if (!listEquals<DeviceSpecializationBuilder>(
      specialization,
      o.specialization,
    )) {
      return false;
    }
    if (!listEquals<DeviceVersionBuilder>(
      version,
      o.version,
    )) {
      return false;
    }
    if (!listEquals<DevicePropertyBuilder>(
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
    if (!listEquals<ContactPointBuilder>(
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
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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

/// [DeviceUdiCarrierBuilder]
/// Unique device identifier (UDI) assigned to device label or package.
/// Note that the Device may include multiple udiCarriers as it either may
/// include just the udiCarrier for the jurisdiction it is sold, or for
/// multiple jurisdictions it could have been sold.
class DeviceUdiCarrierBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceUdiCarrierBuilder]

  DeviceUdiCarrierBuilder({
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
  /// For Builder classes, no fields are required
  factory DeviceUdiCarrierBuilder.empty() => DeviceUdiCarrierBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceUdiCarrierBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device.udiCarrier';
    return DeviceUdiCarrierBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      deviceIdentifier: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'deviceIdentifier',
        FhirStringBuilder.fromJson,
        '$objectPath.deviceIdentifier',
      ),
      issuer: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'issuer',
        FhirUriBuilder.fromJson,
        '$objectPath.issuer',
      ),
      jurisdiction: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'jurisdiction',
        FhirUriBuilder.fromJson,
        '$objectPath.jurisdiction',
      ),
      carrierAIDC: JsonParser.parsePrimitive<FhirBase64BinaryBuilder>(
        json,
        'carrierAIDC',
        FhirBase64BinaryBuilder.fromJson,
        '$objectPath.carrierAIDC',
      ),
      carrierHRF: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'carrierHRF',
        FhirStringBuilder.fromJson,
        '$objectPath.carrierHRF',
      ),
      entryType: JsonParser.parsePrimitive<UDIEntryTypeBuilder>(
        json,
        'entryType',
        UDIEntryTypeBuilder.fromJson,
        '$objectPath.entryType',
      ),
    );
  }

  /// Deserialize [DeviceUdiCarrierBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceUdiCarrierBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceUdiCarrierBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceUdiCarrierBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceUdiCarrierBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceUdiCarrierBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceUdiCarrierBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceUdiCarrierBuilder.fromJson(json);
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
  FhirStringBuilder? deviceIdentifier;

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
  FhirUriBuilder? issuer;

  /// [jurisdiction]
  /// The identity of the authoritative source for UDI generation within a
  /// jurisdiction. All UDIs are globally unique within a single namespace
  /// with the appropriate repository uri as the system. For example, UDIs of
  /// devices managed in the U.S. by the FDA, the value is
  /// http://hl7.org/fhir/NamingSystem/fda-udi.
  FhirUriBuilder? jurisdiction;

  /// [carrierAIDC]
  /// The full UDI carrier of the Automatic Identification and Data Capture
  /// (AIDC) technology representation of the barcode string as printed on
  /// the packaging of the device - e.g., a barcode or RFID. Because of
  /// limitations on character sets in XML and the need to round-trip JSON
  /// data through XML, AIDC Formats *SHALL* be base64 encoded.
  FhirBase64BinaryBuilder? carrierAIDC;

  /// [carrierHRF]
  /// The full UDI carrier as the human readable form (HRF) representation of
  /// the barcode string as printed on the packaging of the device.
  FhirStringBuilder? carrierHRF;

  /// [entryType]
  /// A coded entry to indicate how the data was entered.
  UDIEntryTypeBuilder? entryType;

  /// Converts a DeviceUdiCarrierBuilder to [DeviceUdiCarrier]
  DeviceUdiCarrier build() => DeviceUdiCarrier.fromJson(toJson());

  /// Converts a [DeviceUdiCarrierBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('deviceIdentifier', deviceIdentifier);
    addField('issuer', issuer);
    addField('jurisdiction', jurisdiction);
    addField('carrierAIDC', carrierAIDC);
    addField('carrierHRF', carrierHRF);
    addField('entryType', entryType);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'deviceIdentifier':
        {
          if (child is FhirStringBuilder) {
            deviceIdentifier = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'issuer':
        {
          if (child is FhirUriBuilder) {
            issuer = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'jurisdiction':
        {
          if (child is FhirUriBuilder) {
            jurisdiction = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'carrierAIDC':
        {
          if (child is FhirBase64BinaryBuilder) {
            carrierAIDC = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'carrierHRF':
        {
          if (child is FhirStringBuilder) {
            carrierHRF = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'entryType':
        {
          if (child is UDIEntryTypeBuilder) {
            entryType = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'deviceIdentifier':
        return ['FhirStringBuilder'];
      case 'issuer':
        return ['FhirUriBuilder'];
      case 'jurisdiction':
        return ['FhirUriBuilder'];
      case 'carrierAIDC':
        return ['FhirBase64BinaryBuilder'];
      case 'carrierHRF':
        return ['FhirStringBuilder'];
      case 'entryType':
        return ['FhirCodeEnumBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceUdiCarrierBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'deviceIdentifier':
        {
          deviceIdentifier = FhirStringBuilder.empty();
          return;
        }
      case 'issuer':
        {
          issuer = FhirUriBuilder.empty();
          return;
        }
      case 'jurisdiction':
        {
          jurisdiction = FhirUriBuilder.empty();
          return;
        }
      case 'carrierAIDC':
        {
          carrierAIDC = FhirBase64BinaryBuilder.empty();
          return;
        }
      case 'carrierHRF':
        {
          carrierHRF = FhirStringBuilder.empty();
          return;
        }
      case 'entryType':
        {
          entryType = UDIEntryTypeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
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
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (deviceIdentifier) this.deviceIdentifier = null;
    if (issuer) this.issuer = null;
    if (jurisdiction) this.jurisdiction = null;
    if (carrierAIDC) this.carrierAIDC = null;
    if (carrierHRF) this.carrierHRF = null;
    if (entryType) this.entryType = null;
  }

  @override
  DeviceUdiCarrierBuilder clone() => throw UnimplementedError();
  @override
  DeviceUdiCarrierBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? deviceIdentifier,
    FhirUriBuilder? issuer,
    FhirUriBuilder? jurisdiction,
    FhirBase64BinaryBuilder? carrierAIDC,
    FhirStringBuilder? carrierHRF,
    UDIEntryTypeBuilder? entryType,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceUdiCarrierBuilder(
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

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! DeviceUdiCarrierBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [DeviceDeviceNameBuilder]
/// This represents the manufacturer's name of the device as provided by
/// the device, from a UDI label, or by a person describing the Device.
/// This typically would be used when a person provides the name(s) or when
/// the device represents one of the names available from DeviceDefinition.
class DeviceDeviceNameBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDeviceNameBuilder]

  DeviceDeviceNameBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.type,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Device.deviceName',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDeviceNameBuilder.empty() => DeviceDeviceNameBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDeviceNameBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device.deviceName';
    return DeviceDeviceNameBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      type: JsonParser.parsePrimitive<DeviceNameTypeBuilder>(
        json,
        'type',
        DeviceNameTypeBuilder.fromJson,
        '$objectPath.type',
      ),
    );
  }

  /// Deserialize [DeviceDeviceNameBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDeviceNameBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDeviceNameBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDeviceNameBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDeviceNameBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDeviceNameBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDeviceNameBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDeviceNameBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDeviceName';

  /// [name]
  /// The name that identifies the device.
  FhirStringBuilder? name;

  /// [type]
  /// The type of deviceName.
  /// UDILabelName | UserFriendlyName | PatientReportedName |
  /// ManufactureDeviceName | ModelName.
  DeviceNameTypeBuilder? type;

  /// Converts a DeviceDeviceNameBuilder to [DeviceDeviceName]
  DeviceDeviceName build() => DeviceDeviceName.fromJson(toJson());

  /// Converts a [DeviceDeviceNameBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('name', name);
    addField('type', type);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (name != null) {
          fields.add(name!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is DeviceNameTypeBuilder) {
            type = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDeviceNameBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = DeviceNameTypeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool name = false,
    bool type = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (name) this.name = null;
    if (type) this.type = null;
  }

  @override
  DeviceDeviceNameBuilder clone() => throw UnimplementedError();
  @override
  DeviceDeviceNameBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    DeviceNameTypeBuilder? type,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDeviceNameBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! DeviceDeviceNameBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [DeviceSpecializationBuilder]
/// The capabilities supported on a device, the standards to which the
/// device conforms for a particular purpose, and used for the
/// communication.
class DeviceSpecializationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceSpecializationBuilder]

  DeviceSpecializationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.systemType,
    this.version,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Device.specialization',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceSpecializationBuilder.empty() => DeviceSpecializationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceSpecializationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device.specialization';
    return DeviceSpecializationBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      systemType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'systemType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.systemType',
      ),
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
    );
  }

  /// Deserialize [DeviceSpecializationBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceSpecializationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceSpecializationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceSpecializationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceSpecializationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceSpecializationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceSpecializationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceSpecializationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceSpecialization';

  /// [systemType]
  /// The standard that is used to operate and communicate.
  CodeableConceptBuilder? systemType;

  /// [version]
  /// The version of the standard that is used to operate and communicate.
  FhirStringBuilder? version;

  /// Converts a DeviceSpecializationBuilder to [DeviceSpecialization]
  DeviceSpecialization build() => DeviceSpecialization.fromJson(toJson());

  /// Converts a [DeviceSpecializationBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('systemType', systemType);
    addField('version', version);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (systemType != null) {
          fields.add(systemType!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'systemType':
        {
          if (child is CodeableConceptBuilder) {
            systemType = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is FhirStringBuilder) {
            version = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'systemType':
        return ['CodeableConceptBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceSpecializationBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'systemType':
        {
          systemType = CodeableConceptBuilder.empty();
          return;
        }
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool systemType = false,
    bool version = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (systemType) this.systemType = null;
    if (version) this.version = null;
  }

  @override
  DeviceSpecializationBuilder clone() => throw UnimplementedError();
  @override
  DeviceSpecializationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? systemType,
    FhirStringBuilder? version,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceSpecializationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      systemType: systemType ?? this.systemType,
      version: version ?? this.version,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! DeviceSpecializationBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [DeviceVersionBuilder]
/// The actual design of the device or software version running on the
/// device.
class DeviceVersionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceVersionBuilder]

  DeviceVersionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.component,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Device.version',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceVersionBuilder.empty() => DeviceVersionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceVersionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device.version';
    return DeviceVersionBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      component: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'component',
        IdentifierBuilder.fromJson,
        '$objectPath.component',
      ),
      value: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'value',
        FhirStringBuilder.fromJson,
        '$objectPath.value',
      ),
    );
  }

  /// Deserialize [DeviceVersionBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceVersionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceVersionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceVersionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceVersionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceVersionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceVersionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceVersionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceVersion';

  /// [type]
  /// The type of the device version, e.g. manufacturer, approved, internal.
  CodeableConceptBuilder? type;

  /// [component]
  /// A single component of the device version.
  IdentifierBuilder? component;

  /// [value]
  /// The version text.
  FhirStringBuilder? value;

  /// Converts a DeviceVersionBuilder to [DeviceVersion]
  DeviceVersion build() => DeviceVersion.fromJson(toJson());

  /// Converts a [DeviceVersionBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('component', component);
    addField('value', value);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (value != null) {
          fields.add(value!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'component':
        {
          if (child is IdentifierBuilder) {
            component = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'value':
        {
          if (child is FhirStringBuilder) {
            value = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'component':
        return ['IdentifierBuilder'];
      case 'value':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceVersionBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'component':
        {
          component = IdentifierBuilder.empty();
          return;
        }
      case 'value':
        {
          value = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool component = false,
    bool value = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (component) this.component = null;
    if (value) this.value = null;
  }

  @override
  DeviceVersionBuilder clone() => throw UnimplementedError();
  @override
  DeviceVersionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    IdentifierBuilder? component,
    FhirStringBuilder? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceVersionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      component: component ?? this.component,
      value: value ?? this.value,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! DeviceVersionBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [DevicePropertyBuilder]
/// The actual configuration settings of a device as it actually operates,
/// e.g., regulation status, time properties.
class DevicePropertyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DevicePropertyBuilder]

  DevicePropertyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.valueQuantity,
    this.valueCode,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Device.property',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DevicePropertyBuilder.empty() => DevicePropertyBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DevicePropertyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device.property';
    return DevicePropertyBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      valueQuantity: (json['valueQuantity'] as List<dynamic>?)
          ?.map<QuantityBuilder>(
            (v) => QuantityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.valueQuantity',
              },
            ),
          )
          .toList(),
      valueCode: (json['valueCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.valueCode',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DevicePropertyBuilder]
  /// from a [String] or [YamlMap] object
  factory DevicePropertyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DevicePropertyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DevicePropertyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DevicePropertyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DevicePropertyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DevicePropertyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DevicePropertyBuilder.fromJson(json);
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
  CodeableConceptBuilder? type;

  /// [valueQuantity]
  /// Property value as a quantity.
  List<QuantityBuilder>? valueQuantity;

  /// [valueCode]
  /// Property value as a code, e.g., NTP4 (synced to NTP).
  List<CodeableConceptBuilder>? valueCode;

  /// Converts a DevicePropertyBuilder to [DeviceProperty]
  DeviceProperty build() => DeviceProperty.fromJson(toJson());

  /// Converts a [DevicePropertyBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('valueQuantity', valueQuantity);
    addField('valueCode', valueCode);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is List<QuantityBuilder>) {
            // Replace or create new list
            valueQuantity = child;
            return;
          } else if (child is QuantityBuilder) {
            // Add single element to existing list or create new list
            valueQuantity = [...(valueQuantity ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            valueCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            valueCode = [...(valueCode ?? []), child];
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueCode':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DevicePropertyBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueQuantity = <QuantityBuilder>[];
          return;
        }
      case 'valueCode':
        {
          valueCode = <CodeableConceptBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool valueQuantity = false,
    bool valueCode = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (valueQuantity) this.valueQuantity = null;
    if (valueCode) this.valueCode = null;
  }

  @override
  DevicePropertyBuilder clone() => throw UnimplementedError();
  @override
  DevicePropertyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    List<QuantityBuilder>? valueQuantity,
    List<CodeableConceptBuilder>? valueCode,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DevicePropertyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueCode: valueCode ?? this.valueCode,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! DevicePropertyBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<QuantityBuilder>(
      valueQuantity,
      o.valueQuantity,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      valueCode,
      o.valueCode,
    )) {
      return false;
    }
    return true;
  }
}
