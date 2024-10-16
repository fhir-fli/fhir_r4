import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [DeviceDefinition]
/// The characteristics, operational status and capabilities of a
/// medical-related component of a medical device.
class DeviceDefinition extends DomainResource {
  /// Primary constructor for [DeviceDefinition]

  DeviceDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.udiDeviceIdentifier,
    this.manufacturerString,
    this.manufacturerReference,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.DeviceDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinition.fromJson(Map<String, dynamic> json) {
    return DeviceDefinition(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
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
      udiDeviceIdentifier: json['udiDeviceIdentifier'] != null
          ? (json['udiDeviceIdentifier'] as List<dynamic>)
              .map<DeviceDefinitionUdiDeviceIdentifier>(
                (v) => DeviceDefinitionUdiDeviceIdentifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      manufacturerString: json['manufacturerString'] != null
          ? FhirString.fromJson({
              'value': json['manufacturerString'],
              '_value': json['_manufacturerString'],
            })
          : null,
      manufacturerReference: json['manufacturerReference'] != null
          ? Reference.fromJson(
              json['manufacturerReference'] as Map<String, dynamic>,
            )
          : null,
      deviceName: json['deviceName'] != null
          ? (json['deviceName'] as List<dynamic>)
              .map<DeviceDefinitionDeviceName>(
                (v) => DeviceDefinitionDeviceName.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modelNumber: json['modelNumber'] != null
          ? FhirString.fromJson({
              'value': json['modelNumber'],
              '_value': json['_modelNumber'],
            })
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      specialization: json['specialization'] != null
          ? (json['specialization'] as List<dynamic>)
              .map<DeviceDefinitionSpecialization>(
                (v) => DeviceDefinitionSpecialization.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      version: parsePrimitiveList<FhirString>(
          json['version'] as List<dynamic>?, json['_version'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      safety: json['safety'] != null
          ? (json['safety'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      shelfLifeStorage: json['shelfLifeStorage'] != null
          ? (json['shelfLifeStorage'] as List<dynamic>)
              .map<ProductShelfLife>(
                (v) => ProductShelfLife.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      physicalCharacteristics: json['physicalCharacteristics'] != null
          ? ProdCharacteristic.fromJson(
              json['physicalCharacteristics'] as Map<String, dynamic>,
            )
          : null,
      languageCode: json['languageCode'] != null
          ? (json['languageCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      capability: json['capability'] != null
          ? (json['capability'] as List<dynamic>)
              .map<DeviceDefinitionCapability>(
                (v) => DeviceDefinitionCapability.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      property: json['property'] != null
          ? (json['property'] as List<dynamic>)
              .map<DeviceDefinitionProperty>(
                (v) => DeviceDefinitionProperty.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
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
      url: json['url'] != null
          ? FhirUri.fromJson({
              'value': json['url'],
              '_value': json['_url'],
            })
          : null,
      onlineInformation: json['onlineInformation'] != null
          ? FhirUri.fromJson({
              'value': json['onlineInformation'],
              '_value': json['_onlineInformation'],
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
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      parentDevice: json['parentDevice'] != null
          ? Reference.fromJson(
              json['parentDevice'] as Map<String, dynamic>,
            )
          : null,
      material: json['material'] != null
          ? (json['material'] as List<dynamic>)
              .map<DeviceDefinitionMaterial>(
                (v) => DeviceDefinitionMaterial.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [DeviceDefinition] from a [String]
  /// or [YamlMap] object
  factory DeviceDefinition.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DeviceDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('DeviceDefinition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DeviceDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinition';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [manufacturerString]
  /// A name of the manufacturer.
  final FhirString? manufacturerString;

  /// [manufacturerReference]
  /// A name of the manufacturer.
  final Reference? manufacturerReference;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (udiDeviceIdentifier != null && udiDeviceIdentifier!.isNotEmpty) {
      final fieldJson9 = udiDeviceIdentifier!.map((e) => e.toJson()).toList();
      json['udiDeviceIdentifier'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_udiDeviceIdentifier'] =
            fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (manufacturerString != null) {
      final fieldJson10 = manufacturerString!.toJson();
      json['manufacturerString'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_manufacturerString'] = fieldJson10['_value'];
      }
    }

    if (manufacturerReference != null) {
      final fieldJson11 = manufacturerReference!.toJson();
      json['manufacturerReference'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_manufacturerReference'] = fieldJson11['_value'];
      }
    }

    if (deviceName != null && deviceName!.isNotEmpty) {
      final fieldJson12 = deviceName!.map((e) => e.toJson()).toList();
      json['deviceName'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_deviceName'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (modelNumber != null) {
      final fieldJson13 = modelNumber!.toJson();
      json['modelNumber'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_modelNumber'] = fieldJson13['_value'];
      }
    }

    if (type != null) {
      final fieldJson14 = type!.toJson();
      json['type'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_type'] = fieldJson14['_value'];
      }
    }

    if (specialization != null && specialization!.isNotEmpty) {
      final fieldJson15 = specialization!.map((e) => e.toJson()).toList();
      json['specialization'] = fieldJson15.map((e) => e['value']).toList();
      if (fieldJson15.any((e) => e['_value'] != null)) {
        json['_specialization'] = fieldJson15.map((e) => e['_value']).toList();
      }
    }

    if (version != null && version!.isNotEmpty) {
      final fieldJson16 = version!.map((e) => e.toJson()).toList();
      json['version'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_version'] = fieldJson16.map((e) => e['_value']).toList();
      }
    }

    if (safety != null && safety!.isNotEmpty) {
      final fieldJson17 = safety!.map((e) => e.toJson()).toList();
      json['safety'] = fieldJson17.map((e) => e['value']).toList();
      if (fieldJson17.any((e) => e['_value'] != null)) {
        json['_safety'] = fieldJson17.map((e) => e['_value']).toList();
      }
    }

    if (shelfLifeStorage != null && shelfLifeStorage!.isNotEmpty) {
      final fieldJson18 = shelfLifeStorage!.map((e) => e.toJson()).toList();
      json['shelfLifeStorage'] = fieldJson18.map((e) => e['value']).toList();
      if (fieldJson18.any((e) => e['_value'] != null)) {
        json['_shelfLifeStorage'] =
            fieldJson18.map((e) => e['_value']).toList();
      }
    }

    if (physicalCharacteristics != null) {
      final fieldJson19 = physicalCharacteristics!.toJson();
      json['physicalCharacteristics'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_physicalCharacteristics'] = fieldJson19['_value'];
      }
    }

    if (languageCode != null && languageCode!.isNotEmpty) {
      final fieldJson20 = languageCode!.map((e) => e.toJson()).toList();
      json['languageCode'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_languageCode'] = fieldJson20.map((e) => e['_value']).toList();
      }
    }

    if (capability != null && capability!.isNotEmpty) {
      final fieldJson21 = capability!.map((e) => e.toJson()).toList();
      json['capability'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_capability'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (property != null && property!.isNotEmpty) {
      final fieldJson22 = property!.map((e) => e.toJson()).toList();
      json['property'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_property'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    if (owner != null) {
      final fieldJson23 = owner!.toJson();
      json['owner'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_owner'] = fieldJson23['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      final fieldJson24 = contact!.map((e) => e.toJson()).toList();
      json['contact'] = fieldJson24.map((e) => e['value']).toList();
      if (fieldJson24.any((e) => e['_value'] != null)) {
        json['_contact'] = fieldJson24.map((e) => e['_value']).toList();
      }
    }

    if (url != null) {
      final fieldJson25 = url!.toJson();
      json['url'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_url'] = fieldJson25['_value'];
      }
    }

    if (onlineInformation != null) {
      final fieldJson26 = onlineInformation!.toJson();
      json['onlineInformation'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_onlineInformation'] = fieldJson26['_value'];
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson27 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson27.map((e) => e['value']).toList();
      if (fieldJson27.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson27.map((e) => e['_value']).toList();
      }
    }

    if (quantity != null) {
      final fieldJson28 = quantity!.toJson();
      json['quantity'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_quantity'] = fieldJson28['_value'];
      }
    }

    if (parentDevice != null) {
      final fieldJson29 = parentDevice!.toJson();
      json['parentDevice'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_parentDevice'] = fieldJson29['_value'];
      }
    }

    if (material != null && material!.isNotEmpty) {
      final fieldJson30 = material!.map((e) => e.toJson()).toList();
      json['material'] = fieldJson30.map((e) => e['value']).toList();
      if (fieldJson30.any((e) => e['_value'] != null)) {
        json['_material'] = fieldJson30.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    FhirString? manufacturerString,
    Reference? manufacturerReference,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DeviceDefinition(
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
      manufacturerString: manufacturerString ?? this.manufacturerString,
      manufacturerReference:
          manufacturerReference ?? this.manufacturerReference,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [DeviceDefinitionUdiDeviceIdentifier]
/// Unique device identifier (UDI) assigned to device label or package.
/// Note that the Device may include multiple udiCarriers as it either may
/// include just the udiCarrier for the jurisdiction it is sold, or for
/// multiple jurisdictions it could have been sold.
class DeviceDefinitionUdiDeviceIdentifier extends BackboneElement {
  /// Primary constructor for [DeviceDefinitionUdiDeviceIdentifier]

  DeviceDefinitionUdiDeviceIdentifier({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.deviceIdentifier,
    required this.issuer,
    required this.jurisdiction,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionUdiDeviceIdentifier.fromJson(
      Map<String, dynamic> json) {
    return DeviceDefinitionUdiDeviceIdentifier(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      deviceIdentifier: FhirString.fromJson({
        'value': json['deviceIdentifier'],
        '_value': json['_deviceIdentifier'],
      }),
      issuer: FhirUri.fromJson({
        'value': json['issuer'],
        '_value': json['_issuer'],
      }),
      jurisdiction: FhirUri.fromJson({
        'value': json['jurisdiction'],
        '_value': json['_jurisdiction'],
      }),
    );
  }

  /// Deserialize [DeviceDefinitionUdiDeviceIdentifier] from a [String]
  /// or [YamlMap] object
  factory DeviceDefinitionUdiDeviceIdentifier.fromYaml(dynamic yaml) => yaml
          is String
      ? DeviceDefinitionUdiDeviceIdentifier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DeviceDefinitionUdiDeviceIdentifier.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DeviceDefinitionUdiDeviceIdentifier cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DeviceDefinitionUdiDeviceIdentifier]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionUdiDeviceIdentifier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceDefinitionUdiDeviceIdentifier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionUdiDeviceIdentifier';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = deviceIdentifier.toJson();
    json['deviceIdentifier'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_deviceIdentifier'] = fieldJson3['_value'];
    }

    final fieldJson4 = issuer.toJson();
    json['issuer'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_issuer'] = fieldJson4['_value'];
    }

    final fieldJson5 = jurisdiction.toJson();
    json['jurisdiction'] = fieldJson5['value'];
    if (fieldJson5['_value'] != null) {
      json['_jurisdiction'] = fieldJson5['_value'];
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DeviceDefinitionUdiDeviceIdentifier(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      deviceIdentifier: deviceIdentifier ?? this.deviceIdentifier,
      issuer: issuer ?? this.issuer,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [DeviceDefinitionDeviceName]
/// A name given to the device to identify it.
class DeviceDefinitionDeviceName extends BackboneElement {
  /// Primary constructor for [DeviceDefinitionDeviceName]

  DeviceDefinitionDeviceName({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.name,
    required this.type,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionDeviceName.fromJson(Map<String, dynamic> json) {
    return DeviceDefinitionDeviceName(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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

  /// Deserialize [DeviceDefinitionDeviceName] from a [String]
  /// or [YamlMap] object
  factory DeviceDefinitionDeviceName.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinitionDeviceName.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DeviceDefinitionDeviceName.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DeviceDefinitionDeviceName cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DeviceDefinitionDeviceName]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionDeviceName.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceDefinitionDeviceName.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionDeviceName';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = name.toJson();
    json['name'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_name'] = fieldJson3['_value'];
    }

    final fieldJson4 = type.toJson();
    json['type'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_type'] = fieldJson4['_value'];
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DeviceDefinitionDeviceName(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [DeviceDefinitionSpecialization]
/// The capabilities supported on a device, the standards to which the
/// device conforms for a particular purpose, and used for the
/// communication.
class DeviceDefinitionSpecialization extends BackboneElement {
  /// Primary constructor for [DeviceDefinitionSpecialization]

  DeviceDefinitionSpecialization({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.systemType,
    this.version,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionSpecialization.fromJson(Map<String, dynamic> json) {
    return DeviceDefinitionSpecialization(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      systemType: FhirString.fromJson({
        'value': json['systemType'],
        '_value': json['_systemType'],
      }),
      version: json['version'] != null
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
    );
  }

  /// Deserialize [DeviceDefinitionSpecialization] from a [String]
  /// or [YamlMap] object
  factory DeviceDefinitionSpecialization.fromYaml(dynamic yaml) => yaml
          is String
      ? DeviceDefinitionSpecialization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DeviceDefinitionSpecialization.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DeviceDefinitionSpecialization cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DeviceDefinitionSpecialization]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionSpecialization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceDefinitionSpecialization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionSpecialization';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [systemType]
  /// The standard that is used to operate and communicate.
  final FhirString systemType;

  /// [version]
  /// The version of the standard that is used to operate and communicate.
  final FhirString? version;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = systemType.toJson();
    json['systemType'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_systemType'] = fieldJson3['_value'];
    }

    if (version != null) {
      final fieldJson4 = version!.toJson();
      json['version'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_version'] = fieldJson4['_value'];
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DeviceDefinitionSpecialization(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      systemType: systemType ?? this.systemType,
      version: version ?? this.version,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [DeviceDefinitionCapability]
/// Device capabilities.
class DeviceDefinitionCapability extends BackboneElement {
  /// Primary constructor for [DeviceDefinitionCapability]

  DeviceDefinitionCapability({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.type,
    this.description,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionCapability.fromJson(Map<String, dynamic> json) {
    return DeviceDefinitionCapability(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      description: json['description'] != null
          ? (json['description'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [DeviceDefinitionCapability] from a [String]
  /// or [YamlMap] object
  factory DeviceDefinitionCapability.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinitionCapability.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DeviceDefinitionCapability.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DeviceDefinitionCapability cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DeviceDefinitionCapability]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionCapability.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceDefinitionCapability.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionCapability';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// Type of capability.
  final CodeableConcept type;

  /// [description]
  /// Description of capability.
  final List<CodeableConcept>? description;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    if (description != null && description!.isNotEmpty) {
      final fieldJson4 = description!.map((e) => e.toJson()).toList();
      json['description'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_description'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DeviceDefinitionCapability(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      description: description ?? this.description,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [DeviceDefinitionProperty]
/// The actual configuration settings of a device as it actually operates,
/// e.g., regulation status, time properties.
class DeviceDefinitionProperty extends BackboneElement {
  /// Primary constructor for [DeviceDefinitionProperty]

  DeviceDefinitionProperty({
    super.id,
    this.extension_,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionProperty.fromJson(Map<String, dynamic> json) {
    return DeviceDefinitionProperty(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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

  /// Deserialize [DeviceDefinitionProperty] from a [String]
  /// or [YamlMap] object
  factory DeviceDefinitionProperty.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinitionProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DeviceDefinitionProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DeviceDefinitionProperty cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DeviceDefinitionProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionProperty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceDefinitionProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionProperty';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    if (valueQuantity != null && valueQuantity!.isNotEmpty) {
      final fieldJson4 = valueQuantity!.map((e) => e.toJson()).toList();
      json['valueQuantity'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_valueQuantity'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (valueCode != null && valueCode!.isNotEmpty) {
      final fieldJson5 = valueCode!.map((e) => e.toJson()).toList();
      json['valueCode'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_valueCode'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DeviceDefinitionProperty(
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
}

/// [DeviceDefinitionMaterial]
/// A substance used to create the material(s) of which the device is made.
class DeviceDefinitionMaterial extends BackboneElement {
  /// Primary constructor for [DeviceDefinitionMaterial]

  DeviceDefinitionMaterial({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.substance,
    this.alternate,
    this.allergenicIndicator,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionMaterial.fromJson(Map<String, dynamic> json) {
    return DeviceDefinitionMaterial(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      substance: CodeableConcept.fromJson(
        json['substance'] as Map<String, dynamic>,
      ),
      alternate: json['alternate'] != null
          ? FhirBoolean.fromJson({
              'value': json['alternate'],
              '_value': json['_alternate'],
            })
          : null,
      allergenicIndicator: json['allergenicIndicator'] != null
          ? FhirBoolean.fromJson({
              'value': json['allergenicIndicator'],
              '_value': json['_allergenicIndicator'],
            })
          : null,
    );
  }

  /// Deserialize [DeviceDefinitionMaterial] from a [String]
  /// or [YamlMap] object
  factory DeviceDefinitionMaterial.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinitionMaterial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DeviceDefinitionMaterial.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DeviceDefinitionMaterial cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DeviceDefinitionMaterial]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionMaterial.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceDefinitionMaterial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionMaterial';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = substance.toJson();
    json['substance'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_substance'] = fieldJson3['_value'];
    }

    if (alternate != null) {
      final fieldJson4 = alternate!.toJson();
      json['alternate'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_alternate'] = fieldJson4['_value'];
      }
    }

    if (allergenicIndicator != null) {
      final fieldJson5 = allergenicIndicator!.toJson();
      json['allergenicIndicator'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_allergenicIndicator'] = fieldJson5['_value'];
      }
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DeviceDefinitionMaterial(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      substance: substance ?? this.substance,
      alternate: alternate ?? this.alternate,
      allergenicIndicator: allergenicIndicator ?? this.allergenicIndicator,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
