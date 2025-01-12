import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [DeviceDefinition]
/// The characteristics, operational status and capabilities of a
/// medical-related component of a medical device.
class DeviceDefinition extends DomainResource {
  /// Primary constructor for
  /// [DeviceDefinition]

  const DeviceDefinition({
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition';
    return DeviceDefinition(
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
      udiDeviceIdentifier: (json['udiDeviceIdentifier'] as List<dynamic>?)
          ?.map<DeviceDefinitionUdiDeviceIdentifier>(
            (v) => DeviceDefinitionUdiDeviceIdentifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udiDeviceIdentifier',
              },
            ),
          )
          .toList(),
      manufacturerX: JsonParser.parsePolymorphic<ManufacturerXDeviceDefinition>(
        json,
        {
          'manufacturerString': FhirString.fromJson,
          'manufacturerReference': Reference.fromJson,
        },
        objectPath,
      ),
      deviceName: (json['deviceName'] as List<dynamic>?)
          ?.map<DeviceDefinitionDeviceName>(
            (v) => DeviceDefinitionDeviceName.fromJson(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      specialization: (json['specialization'] as List<dynamic>?)
          ?.map<DeviceDefinitionSpecialization>(
            (v) => DeviceDefinitionSpecialization.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specialization',
              },
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'version',
        FhirString.fromJson,
        '$objectPath.version',
      ),
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
      shelfLifeStorage: (json['shelfLifeStorage'] as List<dynamic>?)
          ?.map<ProductShelfLife>(
            (v) => ProductShelfLife.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.shelfLifeStorage',
              },
            ),
          )
          .toList(),
      physicalCharacteristics: JsonParser.parseObject<ProdCharacteristic>(
        json,
        'physicalCharacteristics',
        ProdCharacteristic.fromJson,
        '$objectPath.physicalCharacteristics',
      ),
      languageCode: (json['languageCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.languageCode',
              },
            ),
          )
          .toList(),
      capability: (json['capability'] as List<dynamic>?)
          ?.map<DeviceDefinitionCapability>(
            (v) => DeviceDefinitionCapability.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.capability',
              },
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<DeviceDefinitionProperty>(
            (v) => DeviceDefinitionProperty.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
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
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
        '$objectPath.url',
      ),
      onlineInformation: JsonParser.parsePrimitive<FhirUri>(
        json,
        'onlineInformation',
        FhirUri.fromJson,
        '$objectPath.onlineInformation',
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
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      parentDevice: JsonParser.parseObject<Reference>(
        json,
        'parentDevice',
        Reference.fromJson,
        '$objectPath.parentDevice',
      ),
      material: (json['material'] as List<dynamic>?)
          ?.map<DeviceDefinitionMaterial>(
            (v) => DeviceDefinitionMaterial.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.material',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinition]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinition.fromJson(json);
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
  final List<Identifier>? identifier;

  /// [udiDeviceIdentifier]
  /// Unique device identifier (UDI) assigned to device label or package.
  /// Note that the Device may include multiple udiCarriers as it either may
  /// include just the udiCarrier for the jurisdiction it is sold, or for
  /// multiple jurisdictions it could have been sold.
  final List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier;

  /// [manufacturerX]
  /// A name of the manufacturer.
  final ManufacturerXDeviceDefinition? manufacturerX;

  /// [deviceName]
  /// A name given to the device to identify it.
  final List<DeviceDefinitionDeviceName>? deviceName;

  /// [modelNumber]
  /// The model number for the device.
  final FhirString? modelNumber;

  /// [type]
  /// What kind of device or device system this is.
  final CodeableConcept? type;

  /// [specialization]
  /// The capabilities supported on a device, the standards to which the
  /// device conforms for a particular purpose, and used for the
  /// communication.
  final List<DeviceDefinitionSpecialization>? specialization;

  /// [version]
  /// The available versions of the device, e.g., software versions.
  final List<FhirString>? version;

  /// [safety]
  /// Safety characteristics of the device.
  final List<CodeableConcept>? safety;

  /// [shelfLifeStorage]
  /// Shelf Life and storage information.
  final List<ProductShelfLife>? shelfLifeStorage;

  /// [physicalCharacteristics]
  /// Dimensions, color etc.
  final ProdCharacteristic? physicalCharacteristics;

  /// [languageCode]
  /// Language code for the human-readable text strings produced by the
  /// device (all supported).
  final List<CodeableConcept>? languageCode;

  /// [capability]
  /// Device capabilities.
  final List<DeviceDefinitionCapability>? capability;

  /// [property]
  /// The actual configuration settings of a device as it actually operates,
  /// e.g., regulation status, time properties.
  final List<DeviceDefinitionProperty>? property;

  /// [owner]
  /// An organization that is responsible for the provision and ongoing
  /// maintenance of the device.
  final Reference? owner;

  /// [contact]
  /// Contact details for an organization or a particular human that is
  /// responsible for the device.
  final List<ContactPoint>? contact;

  /// [url]
  /// A network address on which the device may be contacted directly.
  final FhirUri? url;

  /// [onlineInformation]
  /// Access to on-line information about the device.
  final FhirUri? onlineInformation;

  /// [note]
  /// Descriptive information, usage information or implantation information
  /// that is not captured in an existing element.
  final List<Annotation>? note;

  /// [quantity]
  /// The quantity of the device present in the packaging (e.g. the number of
  /// devices present in a pack, or the number of devices in the same package
  /// of the medicinal product).
  final Quantity? quantity;

  /// [parentDevice]
  /// The parent device it can be part of.
  final Reference? parentDevice;

  /// [material]
  /// A substance used to create the material(s) of which the device is made.
  final List<DeviceDefinitionMaterial>? material;
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
      case 'udiDeviceIdentifier':
        if (udiDeviceIdentifier != null) {
          fields.addAll(udiDeviceIdentifier!);
        }
      case 'manufacturer':
        fields.add(manufacturerX!);
      case 'manufacturerX':
        fields.add(manufacturerX!);
      case 'manufacturerString':
        if (manufacturerX is FhirString) {
          fields.add(manufacturerX!);
        }
      case 'manufacturerReference':
        if (manufacturerX is Reference) {
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceDefinition clone() => throw UnimplementedError();
  @override
  DeviceDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier,
    ManufacturerXDeviceDefinition? manufacturerX,
    List<DeviceDefinitionDeviceName>? deviceName,
    FhirString? modelNumber,
    CodeableConcept? type,
    List<DeviceDefinitionSpecialization>? specialization,
    List<FhirString>? version,
    List<CodeableConcept>? safety,
    List<ProductShelfLife>? shelfLifeStorage,
    ProdCharacteristic? physicalCharacteristics,
    List<CodeableConcept>? languageCode,
    List<DeviceDefinitionCapability>? capability,
    List<DeviceDefinitionProperty>? property,
    Reference? owner,
    List<ContactPoint>? contact,
    FhirUri? url,
    FhirUri? onlineInformation,
    List<Annotation>? note,
    Quantity? quantity,
    Reference? parentDevice,
    List<DeviceDefinitionMaterial>? material,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return DeviceDefinition(
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
      udiDeviceIdentifier: udiDeviceIdentifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.udiDeviceIdentifier',
                ),
              )
              .toList() ??
          this.udiDeviceIdentifier,
      manufacturerX: manufacturerX?.copyWith(
            objectPath: '$newObjectPath.manufacturerX',
          ) as ManufacturerXDeviceDefinition? ??
          this.manufacturerX,
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
      safety: safety
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.safety',
                ),
              )
              .toList() ??
          this.safety,
      shelfLifeStorage: shelfLifeStorage
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.shelfLifeStorage',
                ),
              )
              .toList() ??
          this.shelfLifeStorage,
      physicalCharacteristics: physicalCharacteristics?.copyWith(
            objectPath: '$newObjectPath.physicalCharacteristics',
          ) ??
          this.physicalCharacteristics,
      languageCode: languageCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.languageCode',
                ),
              )
              .toList() ??
          this.languageCode,
      capability: capability
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.capability',
                ),
              )
              .toList() ??
          this.capability,
      property: property
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.property',
                ),
              )
              .toList() ??
          this.property,
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
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      onlineInformation: onlineInformation?.copyWith(
            objectPath: '$newObjectPath.onlineInformation',
          ) ??
          this.onlineInformation,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      parentDevice: parentDevice?.copyWith(
            objectPath: '$newObjectPath.parentDevice',
          ) ??
          this.parentDevice,
      material: material
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.material',
                ),
              )
              .toList() ??
          this.material,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinition) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
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
    if (!listEquals<DeviceDefinitionUdiDeviceIdentifier>(
      udiDeviceIdentifier,
      o.udiDeviceIdentifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(manufacturerX, o.manufacturerX)) {
      return false;
    }
    if (!listEquals<DeviceDefinitionDeviceName>(
      deviceName,
      o.deviceName,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(modelNumber, o.modelNumber)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!listEquals<DeviceDefinitionSpecialization>(
      specialization,
      o.specialization,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      version,
      o.version,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      safety,
      o.safety,
    )) {
      return false;
    }
    if (!listEquals<ProductShelfLife>(
      shelfLifeStorage,
      o.shelfLifeStorage,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
        physicalCharacteristics, o.physicalCharacteristics)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      languageCode,
      o.languageCode,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionCapability>(
      capability,
      o.capability,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionProperty>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(owner, o.owner)) {
      return false;
    }
    if (!listEquals<ContactPoint>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(url, o.url)) {
      return false;
    }
    if (!equalsDeepWithNull(onlineInformation, o.onlineInformation)) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(quantity, o.quantity)) {
      return false;
    }
    if (!equalsDeepWithNull(parentDevice, o.parentDevice)) {
      return false;
    }
    if (!listEquals<DeviceDefinitionMaterial>(
      material,
      o.material,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionUdiDeviceIdentifier]
/// Unique device identifier (UDI) assigned to device label or package.
/// Note that the Device may include multiple udiCarriers as it either may
/// include just the udiCarrier for the jurisdiction it is sold, or for
/// multiple jurisdictions it could have been sold.
class DeviceDefinitionUdiDeviceIdentifier extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionUdiDeviceIdentifier]

  const DeviceDefinitionUdiDeviceIdentifier({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.deviceIdentifier,
    required this.issuer,
    required this.jurisdiction,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.udiDeviceIdentifier',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionUdiDeviceIdentifier.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.udiDeviceIdentifier';
    return DeviceDefinitionUdiDeviceIdentifier(
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
      )!,
      issuer: JsonParser.parsePrimitive<FhirUri>(
        json,
        'issuer',
        FhirUri.fromJson,
        '$objectPath.issuer',
      )!,
      jurisdiction: JsonParser.parsePrimitive<FhirUri>(
        json,
        'jurisdiction',
        FhirUri.fromJson,
        '$objectPath.jurisdiction',
      )!,
    );
  }

  /// Deserialize [DeviceDefinitionUdiDeviceIdentifier]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionUdiDeviceIdentifier.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionUdiDeviceIdentifier.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionUdiDeviceIdentifier.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionUdiDeviceIdentifier '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionUdiDeviceIdentifier]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionUdiDeviceIdentifier.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionUdiDeviceIdentifier.fromJson(json);
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
  final FhirString deviceIdentifier;

  /// [issuer]
  /// The organization that assigns the identifier algorithm.
  final FhirUri issuer;

  /// [jurisdiction]
  /// The jurisdiction to which the deviceIdentifier applies.
  final FhirUri jurisdiction;
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
        fields.add(deviceIdentifier);
      case 'issuer':
        fields.add(issuer);
      case 'jurisdiction':
        fields.add(jurisdiction);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceDefinitionUdiDeviceIdentifier clone() => throw UnimplementedError();
  @override
  DeviceDefinitionUdiDeviceIdentifier copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? deviceIdentifier,
    FhirUri? issuer,
    FhirUri? jurisdiction,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DeviceDefinitionUdiDeviceIdentifier(
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
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionUdiDeviceIdentifier) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(deviceIdentifier, o.deviceIdentifier)) {
      return false;
    }
    if (!equalsDeepWithNull(issuer, o.issuer)) {
      return false;
    }
    if (!equalsDeepWithNull(jurisdiction, o.jurisdiction)) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionDeviceName]
/// A name given to the device to identify it.
class DeviceDefinitionDeviceName extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionDeviceName]

  const DeviceDefinitionDeviceName({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    required this.type,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.deviceName',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionDeviceName.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.deviceName';
    return DeviceDefinitionDeviceName(
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

  /// Deserialize [DeviceDefinitionDeviceName]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionDeviceName.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionDeviceName.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionDeviceName.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionDeviceName '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionDeviceName]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionDeviceName.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionDeviceName.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionDeviceName';

  /// [name]
  /// The name of the device.
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('name', name);
    addField('type', type);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceDefinitionDeviceName clone() => throw UnimplementedError();
  @override
  DeviceDefinitionDeviceName copyWith({
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
    return DeviceDefinitionDeviceName(
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
    if (o is! DeviceDefinitionDeviceName) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionSpecialization]
/// The capabilities supported on a device, the standards to which the
/// device conforms for a particular purpose, and used for the
/// communication.
class DeviceDefinitionSpecialization extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionSpecialization]

  const DeviceDefinitionSpecialization({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.systemType,
    this.version,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.specialization',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionSpecialization.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.specialization';
    return DeviceDefinitionSpecialization(
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
      systemType: JsonParser.parsePrimitive<FhirString>(
        json,
        'systemType',
        FhirString.fromJson,
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

  /// Deserialize [DeviceDefinitionSpecialization]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionSpecialization.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionSpecialization.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionSpecialization.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionSpecialization '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionSpecialization]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionSpecialization.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionSpecialization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionSpecialization';

  /// [systemType]
  /// The standard that is used to operate and communicate.
  final FhirString systemType;

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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('systemType', systemType);
    addField('version', version);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceDefinitionSpecialization clone() => throw UnimplementedError();
  @override
  DeviceDefinitionSpecialization copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? systemType,
    FhirString? version,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DeviceDefinitionSpecialization(
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
    if (o is! DeviceDefinitionSpecialization) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(systemType, o.systemType)) {
      return false;
    }
    if (!equalsDeepWithNull(version, o.version)) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionCapability]
/// Device capabilities.
class DeviceDefinitionCapability extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionCapability]

  const DeviceDefinitionCapability({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.description,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.capability',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionCapability.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.capability';
    return DeviceDefinitionCapability(
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
      description: (json['description'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.description',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinitionCapability]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionCapability.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionCapability.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionCapability.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionCapability '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionCapability]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionCapability.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionCapability.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionCapability';

  /// [type]
  /// Type of capability.
  final CodeableConcept type;

  /// [description]
  /// Description of capability.
  final List<CodeableConcept>? description;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('description', description);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceDefinitionCapability clone() => throw UnimplementedError();
  @override
  DeviceDefinitionCapability copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? description,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DeviceDefinitionCapability(
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
      description: description
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.description',
                ),
              )
              .toList() ??
          this.description,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionCapability) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      description,
      o.description,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionProperty]
/// The actual configuration settings of a device as it actually operates,
/// e.g., regulation status, time properties.
class DeviceDefinitionProperty extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionProperty]

  const DeviceDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueQuantity,
    this.valueCode,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.property',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.property';
    return DeviceDefinitionProperty(
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

  /// Deserialize [DeviceDefinitionProperty]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionProperty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionProperty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionProperty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionProperty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionProperty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionProperty.fromJson(json);
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceDefinitionProperty clone() => throw UnimplementedError();
  @override
  DeviceDefinitionProperty copyWith({
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
    return DeviceDefinitionProperty(
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
    if (o is! DeviceDefinitionProperty) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
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

/// [DeviceDefinitionMaterial]
/// A substance used to create the material(s) of which the device is made.
class DeviceDefinitionMaterial extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionMaterial]

  const DeviceDefinitionMaterial({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.substance,
    this.alternate,
    this.allergenicIndicator,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.material',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionMaterial.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.material';
    return DeviceDefinitionMaterial(
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
      substance: JsonParser.parseObject<CodeableConcept>(
        json,
        'substance',
        CodeableConcept.fromJson,
        '$objectPath.substance',
      )!,
      alternate: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'alternate',
        FhirBoolean.fromJson,
        '$objectPath.alternate',
      ),
      allergenicIndicator: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'allergenicIndicator',
        FhirBoolean.fromJson,
        '$objectPath.allergenicIndicator',
      ),
    );
  }

  /// Deserialize [DeviceDefinitionMaterial]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionMaterial.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionMaterial.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionMaterial.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionMaterial '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionMaterial]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionMaterial.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionMaterial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionMaterial';

  /// [substance]
  /// The substance.
  final CodeableConcept substance;

  /// [alternate]
  /// Indicates an alternative material of the device.
  final FhirBoolean? alternate;

  /// [allergenicIndicator]
  /// Whether the substance is a known or suspected allergen.
  final FhirBoolean? allergenicIndicator;
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
      case 'substance':
        fields.add(substance);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceDefinitionMaterial clone() => throw UnimplementedError();
  @override
  DeviceDefinitionMaterial copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? substance,
    FhirBoolean? alternate,
    FhirBoolean? allergenicIndicator,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DeviceDefinitionMaterial(
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
      substance: substance?.copyWith(
            objectPath: '$newObjectPath.substance',
          ) ??
          this.substance,
      alternate: alternate?.copyWith(
            objectPath: '$newObjectPath.alternate',
          ) ??
          this.alternate,
      allergenicIndicator: allergenicIndicator?.copyWith(
            objectPath: '$newObjectPath.allergenicIndicator',
          ) ??
          this.allergenicIndicator,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionMaterial) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(substance, o.substance)) {
      return false;
    }
    if (!equalsDeepWithNull(alternate, o.alternate)) {
      return false;
    }
    if (!equalsDeepWithNull(allergenicIndicator, o.allergenicIndicator)) {
      return false;
    }
    return true;
  }
}
