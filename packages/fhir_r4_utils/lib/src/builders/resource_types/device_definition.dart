import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        yamlMapToJson,
        yamlToJson,
        R4ResourceType,
        StringExtensionForFHIR,
        DeviceDefinition,
        DeviceDefinitionUdiDeviceIdentifier,
        DeviceDefinitionDeviceName,
        DeviceDefinitionSpecialization,
        DeviceDefinitionCapability,
        DeviceDefinitionProperty,
        DeviceDefinitionMaterial;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// Extension to change [DeviceDefinition] to a Builder
extension BuilderDeviceDefinition on DeviceDefinition {
  /// Converts [DeviceDefinition] to a [DeviceDefinitionBuilder]
  DeviceDefinitionBuilder get toBuilder =>
      DeviceDefinitionBuilder.fromJson(toJson());
}

/// [DeviceDefinitionBuilder]
/// The characteristics, operational status and capabilities of a
/// medical-related component of a medical device.
class DeviceDefinitionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionBuilder]

  DeviceDefinitionBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.udiDeviceIdentifier,
    this.manufacturerX,
    this.deviceName,
    this.modelNumber,
    this.type,
    this.specialization,
    this.version,
    this.safety,
    this.shelfLifeStorage,
    this.physicalCharacteristics,
    this.languageCode,
    this.capability,
    this.property,
    this.owner,
    this.contact,
    this.url,
    this.onlineInformation,
    this.note,
    this.quantity,
    this.parentDevice,
    this.material,
  }) : super(
          objectPath: 'DeviceDefinition',
          resourceType: R4ResourceType.DeviceDefinition,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionBuilder.empty() => DeviceDefinitionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition';
    return DeviceDefinitionBuilder(
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
      udiDeviceIdentifier: (json['udiDeviceIdentifier'] as List<dynamic>?)
          ?.map<DeviceDefinitionUdiDeviceIdentifierBuilder>(
            (v) => DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udiDeviceIdentifier',
              },
            ),
          )
          .toList(),
      manufacturerX:
          JsonParser.parsePolymorphic<ManufacturerXDeviceDefinitionBuilder>(
        json,
        {
          'manufacturerString': FhirStringBuilder.fromJson,
          'manufacturerReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      deviceName: (json['deviceName'] as List<dynamic>?)
          ?.map<DeviceDefinitionDeviceNameBuilder>(
            (v) => DeviceDefinitionDeviceNameBuilder.fromJson(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      specialization: (json['specialization'] as List<dynamic>?)
          ?.map<DeviceDefinitionSpecializationBuilder>(
            (v) => DeviceDefinitionSpecializationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specialization',
              },
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
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
      shelfLifeStorage: (json['shelfLifeStorage'] as List<dynamic>?)
          ?.map<ProductShelfLifeBuilder>(
            (v) => ProductShelfLifeBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.shelfLifeStorage',
              },
            ),
          )
          .toList(),
      physicalCharacteristics:
          JsonParser.parseObject<ProdCharacteristicBuilder>(
        json,
        'physicalCharacteristics',
        ProdCharacteristicBuilder.fromJson,
        '$objectPath.physicalCharacteristics',
      ),
      languageCode: (json['languageCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.languageCode',
              },
            ),
          )
          .toList(),
      capability: (json['capability'] as List<dynamic>?)
          ?.map<DeviceDefinitionCapabilityBuilder>(
            (v) => DeviceDefinitionCapabilityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.capability',
              },
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<DeviceDefinitionPropertyBuilder>(
            (v) => DeviceDefinitionPropertyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
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
      url: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'url',
        FhirUriBuilder.fromJson,
        '$objectPath.url',
      ),
      onlineInformation: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'onlineInformation',
        FhirUriBuilder.fromJson,
        '$objectPath.onlineInformation',
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
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      parentDevice: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'parentDevice',
        ReferenceBuilder.fromJson,
        '$objectPath.parentDevice',
      ),
      material: (json['material'] as List<dynamic>?)
          ?.map<DeviceDefinitionMaterialBuilder>(
            (v) => DeviceDefinitionMaterialBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.material',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinition';

  /// [identifier]
  /// Unique instance identifiers assigned to a device by the software,
  /// manufacturers, other organizations or owners. For example: handle ID.
  List<IdentifierBuilder>? identifier;

  /// [udiDeviceIdentifier]
  /// Unique device identifier (UDI) assigned to device label or package.
  /// Note that the Device may include multiple udiCarriers as it either may
  /// include just the udiCarrier for the jurisdiction it is sold, or for
  /// multiple jurisdictions it could have been sold.
  List<DeviceDefinitionUdiDeviceIdentifierBuilder>? udiDeviceIdentifier;

  /// [manufacturerX]
  /// A name of the manufacturer.
  ManufacturerXDeviceDefinitionBuilder? manufacturerX;

  /// Getter for [manufacturerString] as a FhirStringBuilder
  FhirStringBuilder? get manufacturerString =>
      manufacturerX?.isAs<FhirStringBuilder>();

  /// Getter for [manufacturerReference] as a ReferenceBuilder
  ReferenceBuilder? get manufacturerReference =>
      manufacturerX?.isAs<ReferenceBuilder>();

  /// [deviceName]
  /// A name given to the device to identify it.
  List<DeviceDefinitionDeviceNameBuilder>? deviceName;

  /// [modelNumber]
  /// The model number for the device.
  FhirStringBuilder? modelNumber;

  /// [type]
  /// What kind of device or device system this is.
  CodeableConceptBuilder? type;

  /// [specialization]
  /// The capabilities supported on a device, the standards to which the
  /// device conforms for a particular purpose, and used for the
  /// communication.
  List<DeviceDefinitionSpecializationBuilder>? specialization;

  /// [version]
  /// The available versions of the device, e.g., software versions.
  List<FhirStringBuilder>? version;

  /// [safety]
  /// Safety characteristics of the device.
  List<CodeableConceptBuilder>? safety;

  /// [shelfLifeStorage]
  /// Shelf Life and storage information.
  List<ProductShelfLifeBuilder>? shelfLifeStorage;

  /// [physicalCharacteristics]
  /// Dimensions, color etc.
  ProdCharacteristicBuilder? physicalCharacteristics;

  /// [languageCode]
  /// Language code for the human-readable text strings produced by the
  /// device (all supported).
  List<CodeableConceptBuilder>? languageCode;

  /// [capability]
  /// Device capabilities.
  List<DeviceDefinitionCapabilityBuilder>? capability;

  /// [property]
  /// The actual configuration settings of a device as it actually operates,
  /// e.g., regulation status, time properties.
  List<DeviceDefinitionPropertyBuilder>? property;

  /// [owner]
  /// An organization that is responsible for the provision and ongoing
  /// maintenance of the device.
  ReferenceBuilder? owner;

  /// [contact]
  /// Contact details for an organization or a particular human that is
  /// responsible for the device.
  List<ContactPointBuilder>? contact;

  /// [url]
  /// A network address on which the device may be contacted directly.
  FhirUriBuilder? url;

  /// [onlineInformation]
  /// Access to on-line information about the device.
  FhirUriBuilder? onlineInformation;

  /// [note]
  /// Descriptive information, usage information or implantation information
  /// that is not captured in an existing element.
  List<AnnotationBuilder>? note;

  /// [quantity]
  /// The quantity of the device present in the packaging (e.g. the number of
  /// devices present in a pack, or the number of devices in the same package
  /// of the medicinal product).
  QuantityBuilder? quantity;

  /// [parentDevice]
  /// The parent device it can be part of.
  ReferenceBuilder? parentDevice;

  /// [material]
  /// A substance used to create the material(s) of which the device is made.
  List<DeviceDefinitionMaterialBuilder>? material;

  /// Converts a DeviceDefinitionBuilder to [DeviceDefinition]
  DeviceDefinition build() => DeviceDefinition.fromJson(toJson());

  /// Converts a [DeviceDefinitionBuilder] to a [Map<String, dynamic>]
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
    addField('udiDeviceIdentifier', udiDeviceIdentifier);
    if (manufacturerX != null) {
      final fhirType = manufacturerX!.fhirType;
      addField('manufacturer${fhirType.capitalize()}', manufacturerX);
    }

    addField('deviceName', deviceName);
    addField('modelNumber', modelNumber);
    addField('type', type);
    addField('specialization', specialization);
    addField('version', version);
    addField('safety', safety);
    addField('shelfLifeStorage', shelfLifeStorage);
    addField('physicalCharacteristics', physicalCharacteristics);
    addField('languageCode', languageCode);
    addField('capability', capability);
    addField('property', property);
    addField('owner', owner);
    addField('contact', contact);
    addField('url', url);
    addField('onlineInformation', onlineInformation);
    addField('note', note);
    addField('quantity', quantity);
    addField('parentDevice', parentDevice);
    addField('material', material);
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
      'udiDeviceIdentifier',
      'manufacturerX',
      'deviceName',
      'modelNumber',
      'type',
      'specialization',
      'version',
      'safety',
      'shelfLifeStorage',
      'physicalCharacteristics',
      'languageCode',
      'capability',
      'property',
      'owner',
      'contact',
      'url',
      'onlineInformation',
      'note',
      'quantity',
      'parentDevice',
      'material',
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
      case 'udiDeviceIdentifier':
        if (udiDeviceIdentifier != null) {
          fields.addAll(udiDeviceIdentifier!);
        }
      case 'manufacturer':
        if (manufacturerX != null) {
          fields.add(manufacturerX!);
        }
      case 'manufacturerX':
        if (manufacturerX != null) {
          fields.add(manufacturerX!);
        }
      case 'manufacturerString':
        if (manufacturerX is FhirStringBuilder) {
          fields.add(manufacturerX!);
        }
      case 'manufacturerReference':
        if (manufacturerX is ReferenceBuilder) {
          fields.add(manufacturerX!);
        }
      case 'deviceName':
        if (deviceName != null) {
          fields.addAll(deviceName!);
        }
      case 'modelNumber':
        if (modelNumber != null) {
          fields.add(modelNumber!);
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
      case 'safety':
        if (safety != null) {
          fields.addAll(safety!);
        }
      case 'shelfLifeStorage':
        if (shelfLifeStorage != null) {
          fields.addAll(shelfLifeStorage!);
        }
      case 'physicalCharacteristics':
        if (physicalCharacteristics != null) {
          fields.add(physicalCharacteristics!);
        }
      case 'languageCode':
        if (languageCode != null) {
          fields.addAll(languageCode!);
        }
      case 'capability':
        if (capability != null) {
          fields.addAll(capability!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
        }
      case 'owner':
        if (owner != null) {
          fields.add(owner!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'onlineInformation':
        if (onlineInformation != null) {
          fields.add(onlineInformation!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'parentDevice':
        if (parentDevice != null) {
          fields.add(parentDevice!);
        }
      case 'material':
        if (material != null) {
          fields.addAll(material!);
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
      case 'udiDeviceIdentifier':
        {
          if (child is List<DeviceDefinitionUdiDeviceIdentifierBuilder>) {
            // Replace or create new list
            udiDeviceIdentifier = child;
            return;
          } else if (child is DeviceDefinitionUdiDeviceIdentifierBuilder) {
            // Add single element to existing list or create new list
            udiDeviceIdentifier = [...(udiDeviceIdentifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'manufacturerX':
        {
          if (child is ManufacturerXDeviceDefinitionBuilder) {
            manufacturerX = child;
            return;
          } else {
            if (child is FhirStringBuilder) {
              manufacturerX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              manufacturerX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'manufacturerString':
        {
          if (child is FhirStringBuilder) {
            manufacturerX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'manufacturerReference':
        {
          if (child is ReferenceBuilder) {
            manufacturerX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'deviceName':
        {
          if (child is List<DeviceDefinitionDeviceNameBuilder>) {
            // Replace or create new list
            deviceName = child;
            return;
          } else if (child is DeviceDefinitionDeviceNameBuilder) {
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
          if (child is List<DeviceDefinitionSpecializationBuilder>) {
            // Replace or create new list
            specialization = child;
            return;
          } else if (child is DeviceDefinitionSpecializationBuilder) {
            // Add single element to existing list or create new list
            specialization = [...(specialization ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'version':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            version = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            version = [...(version ?? []), child];
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
      case 'shelfLifeStorage':
        {
          if (child is List<ProductShelfLifeBuilder>) {
            // Replace or create new list
            shelfLifeStorage = child;
            return;
          } else if (child is ProductShelfLifeBuilder) {
            // Add single element to existing list or create new list
            shelfLifeStorage = [...(shelfLifeStorage ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'physicalCharacteristics':
        {
          if (child is ProdCharacteristicBuilder) {
            physicalCharacteristics = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'languageCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            languageCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            languageCode = [...(languageCode ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'capability':
        {
          if (child is List<DeviceDefinitionCapabilityBuilder>) {
            // Replace or create new list
            capability = child;
            return;
          } else if (child is DeviceDefinitionCapabilityBuilder) {
            // Add single element to existing list or create new list
            capability = [...(capability ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'property':
        {
          if (child is List<DeviceDefinitionPropertyBuilder>) {
            // Replace or create new list
            property = child;
            return;
          } else if (child is DeviceDefinitionPropertyBuilder) {
            // Add single element to existing list or create new list
            property = [...(property ?? []), child];
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
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onlineInformation':
        {
          if (child is FhirUriBuilder) {
            onlineInformation = child;
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
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'parentDevice':
        {
          if (child is ReferenceBuilder) {
            parentDevice = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'material':
        {
          if (child is List<DeviceDefinitionMaterialBuilder>) {
            // Replace or create new list
            material = child;
            return;
          } else if (child is DeviceDefinitionMaterialBuilder) {
            // Add single element to existing list or create new list
            material = [...(material ?? []), child];
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
      case 'udiDeviceIdentifier':
        return ['DeviceDefinitionUdiDeviceIdentifierBuilder'];
      case 'manufacturer':
      case 'manufacturerX':
        return ['FhirStringBuilder', 'ReferenceBuilder'];
      case 'manufacturerString':
        return ['FhirStringBuilder'];
      case 'manufacturerReference':
        return ['ReferenceBuilder'];
      case 'deviceName':
        return ['DeviceDefinitionDeviceNameBuilder'];
      case 'modelNumber':
        return ['FhirStringBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'specialization':
        return ['DeviceDefinitionSpecializationBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'safety':
        return ['CodeableConceptBuilder'];
      case 'shelfLifeStorage':
        return ['ProductShelfLifeBuilder'];
      case 'physicalCharacteristics':
        return ['ProdCharacteristicBuilder'];
      case 'languageCode':
        return ['CodeableConceptBuilder'];
      case 'capability':
        return ['DeviceDefinitionCapabilityBuilder'];
      case 'property':
        return ['DeviceDefinitionPropertyBuilder'];
      case 'owner':
        return ['ReferenceBuilder'];
      case 'contact':
        return ['ContactPointBuilder'];
      case 'url':
        return ['FhirUriBuilder'];
      case 'onlineInformation':
        return ['FhirUriBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'parentDevice':
        return ['ReferenceBuilder'];
      case 'material':
        return ['DeviceDefinitionMaterialBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionBuilder]
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
      case 'udiDeviceIdentifier':
        {
          udiDeviceIdentifier = <DeviceDefinitionUdiDeviceIdentifierBuilder>[];
          return;
        }
      case 'manufacturer':
      case 'manufacturerX':
      case 'manufacturerString':
        {
          manufacturerX = FhirStringBuilder.empty();
          return;
        }
      case 'manufacturerReference':
        {
          manufacturerX = ReferenceBuilder.empty();
          return;
        }
      case 'deviceName':
        {
          deviceName = <DeviceDefinitionDeviceNameBuilder>[];
          return;
        }
      case 'modelNumber':
        {
          modelNumber = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'specialization':
        {
          specialization = <DeviceDefinitionSpecializationBuilder>[];
          return;
        }
      case 'version':
        {
          version = <FhirStringBuilder>[];
          return;
        }
      case 'safety':
        {
          safety = <CodeableConceptBuilder>[];
          return;
        }
      case 'shelfLifeStorage':
        {
          shelfLifeStorage = <ProductShelfLifeBuilder>[];
          return;
        }
      case 'physicalCharacteristics':
        {
          physicalCharacteristics = ProdCharacteristicBuilder.empty();
          return;
        }
      case 'languageCode':
        {
          languageCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'capability':
        {
          capability = <DeviceDefinitionCapabilityBuilder>[];
          return;
        }
      case 'property':
        {
          property = <DeviceDefinitionPropertyBuilder>[];
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
      case 'url':
        {
          url = FhirUriBuilder.empty();
          return;
        }
      case 'onlineInformation':
        {
          onlineInformation = FhirUriBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'parentDevice':
        {
          parentDevice = ReferenceBuilder.empty();
          return;
        }
      case 'material':
        {
          material = <DeviceDefinitionMaterialBuilder>[];
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
    bool udiDeviceIdentifier = false,
    bool manufacturer = false,
    bool deviceName = false,
    bool modelNumber = false,
    bool type = false,
    bool specialization = false,
    bool version = false,
    bool safety = false,
    bool shelfLifeStorage = false,
    bool physicalCharacteristics = false,
    bool languageCode = false,
    bool capability = false,
    bool property = false,
    bool owner = false,
    bool contact = false,
    bool url = false,
    bool onlineInformation = false,
    bool note = false,
    bool quantity = false,
    bool parentDevice = false,
    bool material = false,
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
    if (udiDeviceIdentifier) this.udiDeviceIdentifier = null;
    if (manufacturer) this.manufacturerX = null;
    if (deviceName) this.deviceName = null;
    if (modelNumber) this.modelNumber = null;
    if (type) this.type = null;
    if (specialization) this.specialization = null;
    if (version) this.version = null;
    if (safety) this.safety = null;
    if (shelfLifeStorage) this.shelfLifeStorage = null;
    if (physicalCharacteristics) this.physicalCharacteristics = null;
    if (languageCode) this.languageCode = null;
    if (capability) this.capability = null;
    if (property) this.property = null;
    if (owner) this.owner = null;
    if (contact) this.contact = null;
    if (url) this.url = null;
    if (onlineInformation) this.onlineInformation = null;
    if (note) this.note = null;
    if (quantity) this.quantity = null;
    if (parentDevice) this.parentDevice = null;
    if (material) this.material = null;
  }

  @override
  DeviceDefinitionBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    List<DeviceDefinitionUdiDeviceIdentifierBuilder>? udiDeviceIdentifier,
    ManufacturerXDeviceDefinitionBuilder? manufacturerX,
    List<DeviceDefinitionDeviceNameBuilder>? deviceName,
    FhirStringBuilder? modelNumber,
    CodeableConceptBuilder? type,
    List<DeviceDefinitionSpecializationBuilder>? specialization,
    List<FhirStringBuilder>? version,
    List<CodeableConceptBuilder>? safety,
    List<ProductShelfLifeBuilder>? shelfLifeStorage,
    ProdCharacteristicBuilder? physicalCharacteristics,
    List<CodeableConceptBuilder>? languageCode,
    List<DeviceDefinitionCapabilityBuilder>? capability,
    List<DeviceDefinitionPropertyBuilder>? property,
    ReferenceBuilder? owner,
    List<ContactPointBuilder>? contact,
    FhirUriBuilder? url,
    FhirUriBuilder? onlineInformation,
    List<AnnotationBuilder>? note,
    QuantityBuilder? quantity,
    ReferenceBuilder? parentDevice,
    List<DeviceDefinitionMaterialBuilder>? material,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = DeviceDefinitionBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      udiDeviceIdentifier: udiDeviceIdentifier ?? this.udiDeviceIdentifier,
      manufacturerX: manufacturerX ?? this.manufacturerX,
      deviceName: deviceName ?? this.deviceName,
      modelNumber: modelNumber ?? this.modelNumber,
      type: type ?? this.type,
      specialization: specialization ?? this.specialization,
      version: version ?? this.version,
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
      onlineInformation: onlineInformation ?? this.onlineInformation,
      note: note ?? this.note,
      quantity: quantity ?? this.quantity,
      parentDevice: parentDevice ?? this.parentDevice,
      material: material ?? this.material,
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
    if (o is! DeviceDefinitionBuilder) {
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
    if (!listEquals<DeviceDefinitionUdiDeviceIdentifierBuilder>(
      udiDeviceIdentifier,
      o.udiDeviceIdentifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      manufacturerX,
      o.manufacturerX,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionDeviceNameBuilder>(
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionSpecializationBuilder>(
      specialization,
      o.specialization,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      version,
      o.version,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      safety,
      o.safety,
    )) {
      return false;
    }
    if (!listEquals<ProductShelfLifeBuilder>(
      shelfLifeStorage,
      o.shelfLifeStorage,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      physicalCharacteristics,
      o.physicalCharacteristics,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      languageCode,
      o.languageCode,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionCapabilityBuilder>(
      capability,
      o.capability,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionPropertyBuilder>(
      property,
      o.property,
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
      url,
      o.url,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      onlineInformation,
      o.onlineInformation,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      parentDevice,
      o.parentDevice,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionMaterialBuilder>(
      material,
      o.material,
    )) {
      return false;
    }
    return true;
  }
}

/// Extension to change [DeviceDefinitionUdiDeviceIdentifier] to a Builder
extension BuilderDeviceDefinitionUdiDeviceIdentifier
    on DeviceDefinitionUdiDeviceIdentifier {
  /// Converts [DeviceDefinitionUdiDeviceIdentifier] to a [DeviceDefinitionUdiDeviceIdentifierBuilder]
  DeviceDefinitionUdiDeviceIdentifierBuilder get toBuilder =>
      DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(toJson());
}

/// [DeviceDefinitionUdiDeviceIdentifierBuilder]
/// Unique device identifier (UDI) assigned to device label or package.
/// Note that the Device may include multiple udiCarriers as it either may
/// include just the udiCarrier for the jurisdiction it is sold, or for
/// multiple jurisdictions it could have been sold.
class DeviceDefinitionUdiDeviceIdentifierBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionUdiDeviceIdentifierBuilder]

  DeviceDefinitionUdiDeviceIdentifierBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.deviceIdentifier,
    this.issuer,
    this.jurisdiction,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.udiDeviceIdentifier',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionUdiDeviceIdentifierBuilder.empty() =>
      DeviceDefinitionUdiDeviceIdentifierBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.udiDeviceIdentifier';
    return DeviceDefinitionUdiDeviceIdentifierBuilder(
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
    );
  }

  /// Deserialize [DeviceDefinitionUdiDeviceIdentifierBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionUdiDeviceIdentifierBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionUdiDeviceIdentifierBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionUdiDeviceIdentifierBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionUdiDeviceIdentifierBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionUdiDeviceIdentifier';

  /// [deviceIdentifier]
  /// The identifier that is to be associated with every Device that
  /// references this DeviceDefintiion for the issuer and jurisdication
  /// porvided in the DeviceDefinition.udiDeviceIdentifier.
  FhirStringBuilder? deviceIdentifier;

  /// [issuer]
  /// The organization that assigns the identifier algorithm.
  FhirUriBuilder? issuer;

  /// [jurisdiction]
  /// The jurisdiction to which the deviceIdentifier applies.
  FhirUriBuilder? jurisdiction;

  /// Converts a DeviceDefinitionUdiDeviceIdentifierBuilder to [DeviceDefinitionUdiDeviceIdentifier]
  DeviceDefinitionUdiDeviceIdentifier build() =>
      DeviceDefinitionUdiDeviceIdentifier.fromJson(toJson());

  /// Converts a [DeviceDefinitionUdiDeviceIdentifierBuilder] to a [Map<String, dynamic>]
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
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionUdiDeviceIdentifierBuilder]
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
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (deviceIdentifier) this.deviceIdentifier = null;
    if (issuer) this.issuer = null;
    if (jurisdiction) this.jurisdiction = null;
  }

  @override
  DeviceDefinitionUdiDeviceIdentifierBuilder clone() =>
      throw UnimplementedError();
  @override
  DeviceDefinitionUdiDeviceIdentifierBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? deviceIdentifier,
    FhirUriBuilder? issuer,
    FhirUriBuilder? jurisdiction,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionUdiDeviceIdentifierBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      deviceIdentifier: deviceIdentifier ?? this.deviceIdentifier,
      issuer: issuer ?? this.issuer,
      jurisdiction: jurisdiction ?? this.jurisdiction,
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
    if (o is! DeviceDefinitionUdiDeviceIdentifierBuilder) {
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
    return true;
  }
}

/// Extension to change [DeviceDefinitionDeviceName] to a Builder
extension BuilderDeviceDefinitionDeviceName on DeviceDefinitionDeviceName {
  /// Converts [DeviceDefinitionDeviceName] to a [DeviceDefinitionDeviceNameBuilder]
  DeviceDefinitionDeviceNameBuilder get toBuilder =>
      DeviceDefinitionDeviceNameBuilder.fromJson(toJson());
}

/// [DeviceDefinitionDeviceNameBuilder]
/// A name given to the device to identify it.
class DeviceDefinitionDeviceNameBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionDeviceNameBuilder]

  DeviceDefinitionDeviceNameBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.type,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.deviceName',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionDeviceNameBuilder.empty() =>
      DeviceDefinitionDeviceNameBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionDeviceNameBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.deviceName';
    return DeviceDefinitionDeviceNameBuilder(
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

  /// Deserialize [DeviceDefinitionDeviceNameBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionDeviceNameBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionDeviceNameBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionDeviceNameBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionDeviceNameBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionDeviceNameBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionDeviceNameBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionDeviceNameBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionDeviceName';

  /// [name]
  /// The name of the device.
  FhirStringBuilder? name;

  /// [type]
  /// The type of deviceName.
  /// UDILabelName | UserFriendlyName | PatientReportedName |
  /// ManufactureDeviceName | ModelName.
  DeviceNameTypeBuilder? type;

  /// Converts a DeviceDefinitionDeviceNameBuilder to [DeviceDefinitionDeviceName]
  DeviceDefinitionDeviceName build() =>
      DeviceDefinitionDeviceName.fromJson(toJson());

  /// Converts a [DeviceDefinitionDeviceNameBuilder] to a [Map<String, dynamic>]
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

  /// Creates a new [DeviceDefinitionDeviceNameBuilder]
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
  DeviceDefinitionDeviceNameBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionDeviceNameBuilder copyWith({
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
    final newResult = DeviceDefinitionDeviceNameBuilder(
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
    if (o is! DeviceDefinitionDeviceNameBuilder) {
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

/// Extension to change [DeviceDefinitionSpecialization] to a Builder
extension BuilderDeviceDefinitionSpecialization
    on DeviceDefinitionSpecialization {
  /// Converts [DeviceDefinitionSpecialization] to a [DeviceDefinitionSpecializationBuilder]
  DeviceDefinitionSpecializationBuilder get toBuilder =>
      DeviceDefinitionSpecializationBuilder.fromJson(toJson());
}

/// [DeviceDefinitionSpecializationBuilder]
/// The capabilities supported on a device, the standards to which the
/// device conforms for a particular purpose, and used for the
/// communication.
class DeviceDefinitionSpecializationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionSpecializationBuilder]

  DeviceDefinitionSpecializationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.systemType,
    this.version,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.specialization',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionSpecializationBuilder.empty() =>
      DeviceDefinitionSpecializationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionSpecializationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.specialization';
    return DeviceDefinitionSpecializationBuilder(
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
      systemType: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'systemType',
        FhirStringBuilder.fromJson,
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

  /// Deserialize [DeviceDefinitionSpecializationBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionSpecializationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionSpecializationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionSpecializationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionSpecializationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionSpecializationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionSpecializationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionSpecializationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionSpecialization';

  /// [systemType]
  /// The standard that is used to operate and communicate.
  FhirStringBuilder? systemType;

  /// [version]
  /// The version of the standard that is used to operate and communicate.
  FhirStringBuilder? version;

  /// Converts a DeviceDefinitionSpecializationBuilder to [DeviceDefinitionSpecialization]
  DeviceDefinitionSpecialization build() =>
      DeviceDefinitionSpecialization.fromJson(toJson());

  /// Converts a [DeviceDefinitionSpecializationBuilder] to a [Map<String, dynamic>]
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
          if (child is FhirStringBuilder) {
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
        return ['FhirStringBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionSpecializationBuilder]
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
          systemType = FhirStringBuilder.empty();
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
  DeviceDefinitionSpecializationBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionSpecializationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? systemType,
    FhirStringBuilder? version,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionSpecializationBuilder(
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
    if (o is! DeviceDefinitionSpecializationBuilder) {
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

/// Extension to change [DeviceDefinitionCapability] to a Builder
extension BuilderDeviceDefinitionCapability on DeviceDefinitionCapability {
  /// Converts [DeviceDefinitionCapability] to a [DeviceDefinitionCapabilityBuilder]
  DeviceDefinitionCapabilityBuilder get toBuilder =>
      DeviceDefinitionCapabilityBuilder.fromJson(toJson());
}

/// [DeviceDefinitionCapabilityBuilder]
/// Device capabilities.
class DeviceDefinitionCapabilityBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionCapabilityBuilder]

  DeviceDefinitionCapabilityBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.description,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.capability',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionCapabilityBuilder.empty() =>
      DeviceDefinitionCapabilityBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionCapabilityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.capability';
    return DeviceDefinitionCapabilityBuilder(
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
      description: (json['description'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.description',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinitionCapabilityBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionCapabilityBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionCapabilityBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionCapabilityBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionCapabilityBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionCapabilityBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionCapabilityBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionCapabilityBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionCapability';

  /// [type]
  /// Type of capability.
  CodeableConceptBuilder? type;

  /// [description]
  /// Description of capability.
  List<CodeableConceptBuilder>? description;

  /// Converts a DeviceDefinitionCapabilityBuilder to [DeviceDefinitionCapability]
  DeviceDefinitionCapability build() =>
      DeviceDefinitionCapability.fromJson(toJson());

  /// Converts a [DeviceDefinitionCapabilityBuilder] to a [Map<String, dynamic>]
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
    addField('description', description);
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
      'description',
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
      case 'description':
        if (description != null) {
          fields.addAll(description!);
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
      case 'description':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            description = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            description = [...(description ?? []), child];
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
      case 'description':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionCapabilityBuilder]
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
      case 'description':
        {
          description = <CodeableConceptBuilder>[];
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
    bool description = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (description) this.description = null;
  }

  @override
  DeviceDefinitionCapabilityBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionCapabilityBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    List<CodeableConceptBuilder>? description,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionCapabilityBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      description: description ?? this.description,
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
    if (o is! DeviceDefinitionCapabilityBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
      description,
      o.description,
    )) {
      return false;
    }
    return true;
  }
}

/// Extension to change [DeviceDefinitionProperty] to a Builder
extension BuilderDeviceDefinitionProperty on DeviceDefinitionProperty {
  /// Converts [DeviceDefinitionProperty] to a [DeviceDefinitionPropertyBuilder]
  DeviceDefinitionPropertyBuilder get toBuilder =>
      DeviceDefinitionPropertyBuilder.fromJson(toJson());
}

/// [DeviceDefinitionPropertyBuilder]
/// The actual configuration settings of a device as it actually operates,
/// e.g., regulation status, time properties.
class DeviceDefinitionPropertyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionPropertyBuilder]

  DeviceDefinitionPropertyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.valueQuantity,
    this.valueCode,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.property',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionPropertyBuilder.empty() =>
      DeviceDefinitionPropertyBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionPropertyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.property';
    return DeviceDefinitionPropertyBuilder(
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

  /// Deserialize [DeviceDefinitionPropertyBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionPropertyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionPropertyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionPropertyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionPropertyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionPropertyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionPropertyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionPropertyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionProperty';

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

  /// Converts a DeviceDefinitionPropertyBuilder to [DeviceDefinitionProperty]
  DeviceDefinitionProperty build() =>
      DeviceDefinitionProperty.fromJson(toJson());

  /// Converts a [DeviceDefinitionPropertyBuilder] to a [Map<String, dynamic>]
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

  /// Creates a new [DeviceDefinitionPropertyBuilder]
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
  DeviceDefinitionPropertyBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionPropertyBuilder copyWith({
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
    final newResult = DeviceDefinitionPropertyBuilder(
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
    if (o is! DeviceDefinitionPropertyBuilder) {
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

/// Extension to change [DeviceDefinitionMaterial] to a Builder
extension BuilderDeviceDefinitionMaterial on DeviceDefinitionMaterial {
  /// Converts [DeviceDefinitionMaterial] to a [DeviceDefinitionMaterialBuilder]
  DeviceDefinitionMaterialBuilder get toBuilder =>
      DeviceDefinitionMaterialBuilder.fromJson(toJson());
}

/// [DeviceDefinitionMaterialBuilder]
/// A substance used to create the material(s) of which the device is made.
class DeviceDefinitionMaterialBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionMaterialBuilder]

  DeviceDefinitionMaterialBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.substance,
    this.alternate,
    this.allergenicIndicator,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.material',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionMaterialBuilder.empty() =>
      DeviceDefinitionMaterialBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionMaterialBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.material';
    return DeviceDefinitionMaterialBuilder(
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
      substance: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'substance',
        CodeableConceptBuilder.fromJson,
        '$objectPath.substance',
      ),
      alternate: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'alternate',
        FhirBooleanBuilder.fromJson,
        '$objectPath.alternate',
      ),
      allergenicIndicator: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'allergenicIndicator',
        FhirBooleanBuilder.fromJson,
        '$objectPath.allergenicIndicator',
      ),
    );
  }

  /// Deserialize [DeviceDefinitionMaterialBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionMaterialBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionMaterialBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionMaterialBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionMaterialBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionMaterialBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionMaterialBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionMaterialBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionMaterial';

  /// [substance]
  /// The substance.
  CodeableConceptBuilder? substance;

  /// [alternate]
  /// Indicates an alternative material of the device.
  FhirBooleanBuilder? alternate;

  /// [allergenicIndicator]
  /// Whether the substance is a known or suspected allergen.
  FhirBooleanBuilder? allergenicIndicator;

  /// Converts a DeviceDefinitionMaterialBuilder to [DeviceDefinitionMaterial]
  DeviceDefinitionMaterial build() =>
      DeviceDefinitionMaterial.fromJson(toJson());

  /// Converts a [DeviceDefinitionMaterialBuilder] to a [Map<String, dynamic>]
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
    addField('substance', substance);
    addField('alternate', alternate);
    addField('allergenicIndicator', allergenicIndicator);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'substance',
      'alternate',
      'allergenicIndicator',
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
      case 'substance':
        if (substance != null) {
          fields.add(substance!);
        }
      case 'alternate':
        if (alternate != null) {
          fields.add(alternate!);
        }
      case 'allergenicIndicator':
        if (allergenicIndicator != null) {
          fields.add(allergenicIndicator!);
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
      case 'substance':
        {
          if (child is CodeableConceptBuilder) {
            substance = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'alternate':
        {
          if (child is FhirBooleanBuilder) {
            alternate = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allergenicIndicator':
        {
          if (child is FhirBooleanBuilder) {
            allergenicIndicator = child;
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
      case 'substance':
        return ['CodeableConceptBuilder'];
      case 'alternate':
        return ['FhirBooleanBuilder'];
      case 'allergenicIndicator':
        return ['FhirBooleanBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionMaterialBuilder]
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
      case 'substance':
        {
          substance = CodeableConceptBuilder.empty();
          return;
        }
      case 'alternate':
        {
          alternate = FhirBooleanBuilder.empty();
          return;
        }
      case 'allergenicIndicator':
        {
          allergenicIndicator = FhirBooleanBuilder.empty();
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
    bool substance = false,
    bool alternate = false,
    bool allergenicIndicator = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (substance) this.substance = null;
    if (alternate) this.alternate = null;
    if (allergenicIndicator) this.allergenicIndicator = null;
  }

  @override
  DeviceDefinitionMaterialBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionMaterialBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? substance,
    FhirBooleanBuilder? alternate,
    FhirBooleanBuilder? allergenicIndicator,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionMaterialBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      substance: substance ?? this.substance,
      alternate: alternate ?? this.alternate,
      allergenicIndicator: allergenicIndicator ?? this.allergenicIndicator,
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
    if (o is! DeviceDefinitionMaterialBuilder) {
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
      substance,
      o.substance,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      alternate,
      o.alternate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      allergenicIndicator,
      o.allergenicIndicator,
    )) {
      return false;
    }
    return true;
  }
}
