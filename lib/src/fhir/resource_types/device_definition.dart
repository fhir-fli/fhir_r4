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

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.udiDeviceIdentifier,
    this.manufacturerString,

    /// Extensions for [manufacturerString]
    this.manufacturerStringElement,
    this.manufacturerReference,
    this.deviceName,
    this.modelNumber,

    /// Extensions for [modelNumber]
    this.modelNumberElement,
    this.type,
    this.specialization,
    this.version,

    /// Extensions for [version]
    this.versionElement,
    this.safety,
    this.shelfLifeStorage,
    this.physicalCharacteristics,
    this.languageCode,
    this.capability,
    this.property,
    this.owner,
    this.contact,
    this.url,

    /// Extensions for [url]
    this.urlElement,
    this.onlineInformation,

    /// Extensions for [onlineInformation]
    this.onlineInformationElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (dynamic v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      udiDeviceIdentifier: json['udiDeviceIdentifier'] != null
          ? (json['udiDeviceIdentifier'] as List<dynamic>)
              .map<DeviceDefinitionUdiDeviceIdentifier>(
                (dynamic v) => DeviceDefinitionUdiDeviceIdentifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      manufacturerString: json['manufacturerString'] != null
          ? FhirString.fromJson(json['manufacturerString'])
          : null,
      manufacturerStringElement: json['_manufacturerString'] != null
          ? Element.fromJson(
              json['_manufacturerString'] as Map<String, dynamic>,
            )
          : null,
      manufacturerReference: json['manufacturerReference'] != null
          ? Reference.fromJson(
              json['manufacturerReference'] as Map<String, dynamic>,
            )
          : null,
      deviceName: json['deviceName'] != null
          ? (json['deviceName'] as List<dynamic>)
              .map<DeviceDefinitionDeviceName>(
                (dynamic v) => DeviceDefinitionDeviceName.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modelNumber: json['modelNumber'] != null
          ? FhirString.fromJson(json['modelNumber'])
          : null,
      modelNumberElement: json['_modelNumber'] != null
          ? Element.fromJson(
              json['_modelNumber'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      specialization: json['specialization'] != null
          ? (json['specialization'] as List<dynamic>)
              .map<DeviceDefinitionSpecialization>(
                (dynamic v) => DeviceDefinitionSpecialization.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      version: json['version'] != null
          ? (json['version'] as List<dynamic>)
              .map<FhirString>(
                (dynamic v) => FhirString.fromJson(v as dynamic),
              )
              .toList()
          : null,
      versionElement: json['_version'] != null
          ? (json['_version'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      safety: json['safety'] != null
          ? (json['safety'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      shelfLifeStorage: json['shelfLifeStorage'] != null
          ? (json['shelfLifeStorage'] as List<dynamic>)
              .map<ProductShelfLife>(
                (dynamic v) => ProductShelfLife.fromJson(
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
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      capability: json['capability'] != null
          ? (json['capability'] as List<dynamic>)
              .map<DeviceDefinitionCapability>(
                (dynamic v) => DeviceDefinitionCapability.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      property: json['property'] != null
          ? (json['property'] as List<dynamic>)
              .map<DeviceDefinitionProperty>(
                (dynamic v) => DeviceDefinitionProperty.fromJson(
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
                (dynamic v) => ContactPoint.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      url: json['url'] != null ? FhirUri.fromJson(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(
              json['_url'] as Map<String, dynamic>,
            )
          : null,
      onlineInformation: json['onlineInformation'] != null
          ? FhirUri.fromJson(json['onlineInformation'])
          : null,
      onlineInformationElement: json['_onlineInformation'] != null
          ? Element.fromJson(
              json['_onlineInformation'] as Map<String, dynamic>,
            )
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (dynamic v) => Annotation.fromJson(
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
                (dynamic v) => DeviceDefinitionMaterial.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [DeviceDefinition] from a [String] or [YamlMap] object
  factory DeviceDefinition.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DeviceDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DeviceDefinition cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DeviceDefinition] that takes in a [String]
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

  /// Extensions for [manufacturerString]
  final Element? manufacturerStringElement;

  /// [manufacturerReference]
  /// A name of the manufacturer.
  final Reference? manufacturerReference;

  /// [deviceName]
  /// A name given to the device to identify it.
  final List<DeviceDefinitionDeviceName>? deviceName;

  /// [modelNumber]
  /// The model number for the device.
  final FhirString? modelNumber;

  /// Extensions for [modelNumber]
  final Element? modelNumberElement;

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

  /// Extensions for [version]
  final List<Element>? versionElement;

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

  /// Extensions for [url]
  final Element? urlElement;

  /// [onlineInformation]
  /// Access to on-line information about the device.
  final FhirUri? onlineInformation;

  /// Extensions for [onlineInformation]
  final Element? onlineInformationElement;

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
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    if (udiDeviceIdentifier != null && udiDeviceIdentifier!.isNotEmpty) {
      json['udiDeviceIdentifier'] = udiDeviceIdentifier!
          .map((DeviceDefinitionUdiDeviceIdentifier v) => v.toJson())
          .toList();
    }
    if (manufacturerString?.value != null) {
      json['manufacturerString'] = manufacturerString!.toJson();
    }
    if (manufacturerStringElement != null) {
      json['_manufacturerString'] = manufacturerStringElement!.toJson();
    }
    if (manufacturerReference != null) {
      json['manufacturerReference'] = manufacturerReference!.toJson();
    }
    if (deviceName != null && deviceName!.isNotEmpty) {
      json['deviceName'] = deviceName!
          .map((DeviceDefinitionDeviceName v) => v.toJson())
          .toList();
    }
    if (modelNumber?.value != null) {
      json['modelNumber'] = modelNumber!.toJson();
    }
    if (modelNumberElement != null) {
      json['_modelNumber'] = modelNumberElement!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (specialization != null && specialization!.isNotEmpty) {
      json['specialization'] = specialization!
          .map((DeviceDefinitionSpecialization v) => v.toJson())
          .toList();
    }
    if (version != null && version!.isNotEmpty) {
      json['version'] = version!.map((FhirString v) => v.toJson()).toList();
    }
    if (versionElement != null && versionElement!.isNotEmpty) {
      json['_version'] =
          versionElement!.map((Element v) => v.toJson()).toList();
    }
    if (safety != null && safety!.isNotEmpty) {
      json['safety'] = safety!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (shelfLifeStorage != null && shelfLifeStorage!.isNotEmpty) {
      json['shelfLifeStorage'] =
          shelfLifeStorage!.map((ProductShelfLife v) => v.toJson()).toList();
    }
    if (physicalCharacteristics != null) {
      json['physicalCharacteristics'] = physicalCharacteristics!.toJson();
    }
    if (languageCode != null && languageCode!.isNotEmpty) {
      json['languageCode'] =
          languageCode!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (capability != null && capability!.isNotEmpty) {
      json['capability'] = capability!
          .map((DeviceDefinitionCapability v) => v.toJson())
          .toList();
    }
    if (property != null && property!.isNotEmpty) {
      json['property'] =
          property!.map((DeviceDefinitionProperty v) => v.toJson()).toList();
    }
    if (owner != null) {
      json['owner'] = owner!.toJson();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((ContactPoint v) => v.toJson()).toList();
    }
    if (url?.value != null) {
      json['url'] = url!.toJson();
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (onlineInformation?.value != null) {
      json['onlineInformation'] = onlineInformation!.toJson();
    }
    if (onlineInformationElement != null) {
      json['_onlineInformation'] = onlineInformationElement!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((Annotation v) => v.toJson()).toList();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (parentDevice != null) {
      json['parentDevice'] = parentDevice!.toJson();
    }
    if (material != null && material!.isNotEmpty) {
      json['material'] =
          material!.map((DeviceDefinitionMaterial v) => v.toJson()).toList();
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
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier,
    FhirString? manufacturerString,
    Element? manufacturerStringElement,
    Reference? manufacturerReference,
    List<DeviceDefinitionDeviceName>? deviceName,
    FhirString? modelNumber,
    Element? modelNumberElement,
    CodeableConcept? type,
    List<DeviceDefinitionSpecialization>? specialization,
    List<FhirString>? version,
    List<Element>? versionElement,
    List<CodeableConcept>? safety,
    List<ProductShelfLife>? shelfLifeStorage,
    ProdCharacteristic? physicalCharacteristics,
    List<CodeableConcept>? languageCode,
    List<DeviceDefinitionCapability>? capability,
    List<DeviceDefinitionProperty>? property,
    Reference? owner,
    List<ContactPoint>? contact,
    FhirUri? url,
    Element? urlElement,
    FhirUri? onlineInformation,
    Element? onlineInformationElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      udiDeviceIdentifier: udiDeviceIdentifier ?? this.udiDeviceIdentifier,
      manufacturerString: manufacturerString ?? this.manufacturerString,
      manufacturerStringElement:
          manufacturerStringElement ?? this.manufacturerStringElement,
      manufacturerReference:
          manufacturerReference ?? this.manufacturerReference,
      deviceName: deviceName ?? this.deviceName,
      modelNumber: modelNumber ?? this.modelNumber,
      modelNumberElement: modelNumberElement ?? this.modelNumberElement,
      type: type ?? this.type,
      specialization: specialization ?? this.specialization,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
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
      urlElement: urlElement ?? this.urlElement,
      onlineInformation: onlineInformation ?? this.onlineInformation,
      onlineInformationElement:
          onlineInformationElement ?? this.onlineInformationElement,
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
    super.extension_,
    super.modifierExtension,
    required this.deviceIdentifier,

    /// Extensions for [deviceIdentifier]
    this.deviceIdentifierElement,
    required this.issuer,

    /// Extensions for [issuer]
    this.issuerElement,
    required this.jurisdiction,

    /// Extensions for [jurisdiction]
    this.jurisdictionElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      deviceIdentifier: FhirString.fromJson(json['deviceIdentifier']),
      deviceIdentifierElement: json['_deviceIdentifier'] != null
          ? Element.fromJson(
              json['_deviceIdentifier'] as Map<String, dynamic>,
            )
          : null,
      issuer: FhirUri.fromJson(json['issuer']),
      issuerElement: json['_issuer'] != null
          ? Element.fromJson(
              json['_issuer'] as Map<String, dynamic>,
            )
          : null,
      jurisdiction: FhirUri.fromJson(json['jurisdiction']),
      jurisdictionElement: json['_jurisdiction'] != null
          ? Element.fromJson(
              json['_jurisdiction'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [DeviceDefinitionUdiDeviceIdentifier] from a [String] or [YamlMap] object
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
              'DeviceDefinitionUdiDeviceIdentifier cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DeviceDefinitionUdiDeviceIdentifier] that takes in a [String]
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

  /// [deviceIdentifier]
  /// The identifier that is to be associated with every Device that
  /// references this DeviceDefintiion for the issuer and jurisdication
  /// porvided in the DeviceDefinition.udiDeviceIdentifier.
  final FhirString deviceIdentifier;

  /// Extensions for [deviceIdentifier]
  final Element? deviceIdentifierElement;

  /// [issuer]
  /// The organization that assigns the identifier algorithm.
  final FhirUri issuer;

  /// Extensions for [issuer]
  final Element? issuerElement;

  /// [jurisdiction]
  /// The jurisdiction to which the deviceIdentifier applies.
  final FhirUri jurisdiction;

  /// Extensions for [jurisdiction]
  final Element? jurisdictionElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['deviceIdentifier'] = deviceIdentifier.toJson();
    if (deviceIdentifierElement != null) {
      json['_deviceIdentifier'] = deviceIdentifierElement!.toJson();
    }
    json['issuer'] = issuer.toJson();
    if (issuerElement != null) {
      json['_issuer'] = issuerElement!.toJson();
    }
    json['jurisdiction'] = jurisdiction.toJson();
    if (jurisdictionElement != null) {
      json['_jurisdiction'] = jurisdictionElement!.toJson();
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
    Element? deviceIdentifierElement,
    FhirUri? issuer,
    Element? issuerElement,
    FhirUri? jurisdiction,
    Element? jurisdictionElement,
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
      deviceIdentifierElement:
          deviceIdentifierElement ?? this.deviceIdentifierElement,
      issuer: issuer ?? this.issuer,
      issuerElement: issuerElement ?? this.issuerElement,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      jurisdictionElement: jurisdictionElement ?? this.jurisdictionElement,
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
    super.extension_,
    super.modifierExtension,
    required this.name,

    /// Extensions for [name]
    this.nameElement,
    required this.type,

    /// Extensions for [type]
    this.typeElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: FhirString.fromJson(json['name']),
      nameElement: json['_name'] != null
          ? Element.fromJson(
              json['_name'] as Map<String, dynamic>,
            )
          : null,
      type: DeviceNameType.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(
              json['_type'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [DeviceDefinitionDeviceName] from a [String] or [YamlMap] object
  factory DeviceDefinitionDeviceName.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinitionDeviceName.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DeviceDefinitionDeviceName.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DeviceDefinitionDeviceName cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DeviceDefinitionDeviceName] that takes in a [String]
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

  /// [name]
  /// The name of the device.
  final FhirString name;

  /// Extensions for [name]
  final Element? nameElement;

  /// [type]
  /// The type of deviceName.
  /// UDILabelName | UserFriendlyName | PatientReportedName |
  /// ManufactureDeviceName | ModelName.
  final DeviceNameType type;

  /// Extensions for [type]
  final Element? typeElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['name'] = name.toJson();
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    json['type'] = type.toJson();
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
    return DeviceDefinitionDeviceName(
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
}

/// [DeviceDefinitionSpecialization]
/// The capabilities supported on a device, the standards to which the
/// device conforms for a particular purpose, and used for the
/// communication.
class DeviceDefinitionSpecialization extends BackboneElement {
  /// Primary constructor for [DeviceDefinitionSpecialization]

  DeviceDefinitionSpecialization({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.systemType,

    /// Extensions for [systemType]
    this.systemTypeElement,
    this.version,

    /// Extensions for [version]
    this.versionElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      systemType: FhirString.fromJson(json['systemType']),
      systemTypeElement: json['_systemType'] != null
          ? Element.fromJson(
              json['_systemType'] as Map<String, dynamic>,
            )
          : null,
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(
              json['_version'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [DeviceDefinitionSpecialization] from a [String] or [YamlMap] object
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
              'DeviceDefinitionSpecialization cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DeviceDefinitionSpecialization] that takes in a [String]
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

  /// [systemType]
  /// The standard that is used to operate and communicate.
  final FhirString systemType;

  /// Extensions for [systemType]
  final Element? systemTypeElement;

  /// [version]
  /// The version of the standard that is used to operate and communicate.
  final FhirString? version;

  /// Extensions for [version]
  final Element? versionElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['systemType'] = systemType.toJson();
    if (systemTypeElement != null) {
      json['_systemType'] = systemTypeElement!.toJson();
    }
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
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
    Element? systemTypeElement,
    FhirString? version,
    Element? versionElement,
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
      systemTypeElement: systemTypeElement ?? this.systemTypeElement,
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
}

/// [DeviceDefinitionCapability]
/// Device capabilities.
class DeviceDefinitionCapability extends BackboneElement {
  /// Primary constructor for [DeviceDefinitionCapability]

  DeviceDefinitionCapability({
    super.id,
    super.extension_,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
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
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [DeviceDefinitionCapability] from a [String] or [YamlMap] object
  factory DeviceDefinitionCapability.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinitionCapability.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DeviceDefinitionCapability.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DeviceDefinitionCapability cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DeviceDefinitionCapability] that takes in a [String]
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
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['type'] = type.toJson();
    if (description != null && description!.isNotEmpty) {
      json['description'] =
          description!.map((CodeableConcept v) => v.toJson()).toList();
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionProperty.fromJson(Map<String, dynamic> json) {
    return DeviceDefinitionProperty(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
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
                (dynamic v) => Quantity.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      valueCode: json['valueCode'] != null
          ? (json['valueCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [DeviceDefinitionProperty] from a [String] or [YamlMap] object
  factory DeviceDefinitionProperty.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinitionProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DeviceDefinitionProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DeviceDefinitionProperty cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DeviceDefinitionProperty] that takes in a [String]
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
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['type'] = type.toJson();
    if (valueQuantity != null && valueQuantity!.isNotEmpty) {
      json['valueQuantity'] =
          valueQuantity!.map((Quantity v) => v.toJson()).toList();
    }
    if (valueCode != null && valueCode!.isNotEmpty) {
      json['valueCode'] =
          valueCode!.map((CodeableConcept v) => v.toJson()).toList();
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
    super.extension_,
    super.modifierExtension,
    required this.substance,
    this.alternate,

    /// Extensions for [alternate]
    this.alternateElement,
    this.allergenicIndicator,

    /// Extensions for [allergenicIndicator]
    this.allergenicIndicatorElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      substance: CodeableConcept.fromJson(
        json['substance'] as Map<String, dynamic>,
      ),
      alternate: json['alternate'] != null
          ? FhirBoolean.fromJson(json['alternate'])
          : null,
      alternateElement: json['_alternate'] != null
          ? Element.fromJson(
              json['_alternate'] as Map<String, dynamic>,
            )
          : null,
      allergenicIndicator: json['allergenicIndicator'] != null
          ? FhirBoolean.fromJson(json['allergenicIndicator'])
          : null,
      allergenicIndicatorElement: json['_allergenicIndicator'] != null
          ? Element.fromJson(
              json['_allergenicIndicator'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [DeviceDefinitionMaterial] from a [String] or [YamlMap] object
  factory DeviceDefinitionMaterial.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinitionMaterial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DeviceDefinitionMaterial.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DeviceDefinitionMaterial cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DeviceDefinitionMaterial] that takes in a [String]
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

  /// [substance]
  /// The substance.
  final CodeableConcept substance;

  /// [alternate]
  /// Indicates an alternative material of the device.
  final FhirBoolean? alternate;

  /// Extensions for [alternate]
  final Element? alternateElement;

  /// [allergenicIndicator]
  /// Whether the substance is a known or suspected allergen.
  final FhirBoolean? allergenicIndicator;

  /// Extensions for [allergenicIndicator]
  final Element? allergenicIndicatorElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['substance'] = substance.toJson();
    if (alternate?.value != null) {
      json['alternate'] = alternate!.toJson();
    }
    if (alternateElement != null) {
      json['_alternate'] = alternateElement!.toJson();
    }
    if (allergenicIndicator?.value != null) {
      json['allergenicIndicator'] = allergenicIndicator!.toJson();
    }
    if (allergenicIndicatorElement != null) {
      json['_allergenicIndicator'] = allergenicIndicatorElement!.toJson();
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
    Element? alternateElement,
    FhirBoolean? allergenicIndicator,
    Element? allergenicIndicatorElement,
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
      alternateElement: alternateElement ?? this.alternateElement,
      allergenicIndicator: allergenicIndicator ?? this.allergenicIndicator,
      allergenicIndicatorElement:
          allergenicIndicatorElement ?? this.allergenicIndicatorElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
