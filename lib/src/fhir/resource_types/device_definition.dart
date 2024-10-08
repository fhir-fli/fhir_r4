import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'device_definition.g.dart';

/// [DeviceDefinition] /// The characteristics, operational status and capabilities of a
/// medical-related component of a medical device.
@JsonSerializable()
class DeviceDefinition extends DomainResource {
  DeviceDefinition({
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
    this.udiDeviceIdentifier,
    this.manufacturerString,
    this.manufacturerStringElement,
    this.manufacturerReference,
    this.deviceName,
    this.modelNumber,
    this.modelNumberElement,
    this.type,
    this.specialization,
    this.version,
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
    this.urlElement,
    this.onlineInformation,
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
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.DeviceDefinition,
            fhirType: 'DeviceDefinition');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique instance identifiers assigned to a device by the software,
  /// manufacturers, other organizations or owners. For example: handle ID.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [udiDeviceIdentifier] /// Unique device identifier (UDI) assigned to device label or package. Note
  /// that the Device may include multiple udiCarriers as it either may include
  /// just the udiCarrier for the jurisdiction it is sold, or for multiple
  /// jurisdictions it could have been sold.
  @JsonKey(name: 'udiDeviceIdentifier')
  final List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier;

  /// [manufacturerString] /// A name of the manufacturer.
  @JsonKey(name: 'manufacturerString')
  final FhirString? manufacturerString;
  @JsonKey(name: '_manufacturerString')
  final Element? manufacturerStringElement;

  /// [manufacturerReference] /// A name of the manufacturer.
  @JsonKey(name: 'manufacturerReference')
  final Reference? manufacturerReference;

  /// [deviceName] /// A name given to the device to identify it.
  @JsonKey(name: 'deviceName')
  final List<DeviceDefinitionDeviceName>? deviceName;

  /// [modelNumber] /// The model number for the device.
  @JsonKey(name: 'modelNumber')
  final FhirString? modelNumber;
  @JsonKey(name: '_modelNumber')
  final Element? modelNumberElement;

  /// [type] /// What kind of device or device system this is.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [specialization] /// The capabilities supported on a device, the standards to which the device
  /// conforms for a particular purpose, and used for the communication.
  @JsonKey(name: 'specialization')
  final List<DeviceDefinitionSpecialization>? specialization;

  /// [version] /// The available versions of the device, e.g., software versions.
  @JsonKey(name: 'version')
  final List<FhirString>? version;
  @JsonKey(name: '_version')
  final List<Element>? versionElement;

  /// [safety] /// Safety characteristics of the device.
  @JsonKey(name: 'safety')
  final List<CodeableConcept>? safety;

  /// [shelfLifeStorage] /// Shelf Life and storage information.
  @JsonKey(name: 'shelfLifeStorage')
  final List<ProductShelfLife>? shelfLifeStorage;

  /// [physicalCharacteristics] /// Dimensions, color etc.
  @JsonKey(name: 'physicalCharacteristics')
  final ProdCharacteristic? physicalCharacteristics;

  /// [languageCode] /// Language code for the human-readable text strings produced by the device
  /// (all supported).
  @JsonKey(name: 'languageCode')
  final List<CodeableConcept>? languageCode;

  /// [capability] /// Device capabilities.
  @JsonKey(name: 'capability')
  final List<DeviceDefinitionCapability>? capability;

  /// [property] /// The actual configuration settings of a device as it actually operates,
  /// e.g., regulation status, time properties.
  @JsonKey(name: 'property')
  final List<DeviceDefinitionProperty>? property;

  /// [owner] /// An organization that is responsible for the provision and ongoing
  /// maintenance of the device.
  @JsonKey(name: 'owner')
  final Reference? owner;

  /// [contact] /// Contact details for an organization or a particular human that is
  /// responsible for the device.
  @JsonKey(name: 'contact')
  final List<ContactPoint>? contact;

  /// [url] /// A network address on which the device may be contacted directly.
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [onlineInformation] /// Access to on-line information about the device.
  @JsonKey(name: 'onlineInformation')
  final FhirUri? onlineInformation;
  @JsonKey(name: '_onlineInformation')
  final Element? onlineInformationElement;

  /// [note] /// Descriptive information, usage information or implantation information that
  /// is not captured in an existing element.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [quantity] /// The quantity of the device present in the packaging (e.g. the number of
  /// devices present in a pack, or the number of devices in the same package of
  /// the medicinal product).
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [parentDevice] /// The parent device it can be part of.
  @JsonKey(name: 'parentDevice')
  final Reference? parentDevice;

  /// [material] /// A substance used to create the material(s) of which the device is made.
  @JsonKey(name: 'material')
  final List<DeviceDefinitionMaterial>? material;
  factory DeviceDefinition.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceDefinitionToJson(this);

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

  factory DeviceDefinition.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DeviceDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DeviceDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DeviceDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DeviceDefinitionUdiDeviceIdentifier] /// Unique device identifier (UDI) assigned to device label or package. Note
/// that the Device may include multiple udiCarriers as it either may include
/// just the udiCarrier for the jurisdiction it is sold, or for multiple
/// jurisdictions it could have been sold.
@JsonSerializable()
class DeviceDefinitionUdiDeviceIdentifier extends BackboneElement {
  DeviceDefinitionUdiDeviceIdentifier({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.deviceIdentifier,
    this.deviceIdentifierElement,
    required this.issuer,
    this.issuerElement,
    required this.jurisdiction,
    this.jurisdictionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'DeviceDefinitionUdiDeviceIdentifier');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [deviceIdentifier] /// The identifier that is to be associated with every Device that references
  /// this DeviceDefintiion for the issuer and jurisdication porvided in the
  /// DeviceDefinition.udiDeviceIdentifier.
  @JsonKey(name: 'deviceIdentifier')
  final FhirString deviceIdentifier;
  @JsonKey(name: '_deviceIdentifier')
  final Element? deviceIdentifierElement;

  /// [issuer] /// The organization that assigns the identifier algorithm.
  @JsonKey(name: 'issuer')
  final FhirUri issuer;
  @JsonKey(name: '_issuer')
  final Element? issuerElement;

  /// [jurisdiction] /// The jurisdiction to which the deviceIdentifier applies.
  @JsonKey(name: 'jurisdiction')
  final FhirUri jurisdiction;
  @JsonKey(name: '_jurisdiction')
  final Element? jurisdictionElement;
  factory DeviceDefinitionUdiDeviceIdentifier.fromJson(
          Map<String, dynamic> json) =>
      _$DeviceDefinitionUdiDeviceIdentifierFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$DeviceDefinitionUdiDeviceIdentifierToJson(this);

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

  factory DeviceDefinitionUdiDeviceIdentifier.fromYaml(dynamic yaml) => yaml
          is String
      ? DeviceDefinitionUdiDeviceIdentifier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DeviceDefinitionUdiDeviceIdentifier.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DeviceDefinitionUdiDeviceIdentifier cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DeviceDefinitionUdiDeviceIdentifier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceDefinitionUdiDeviceIdentifier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DeviceDefinitionDeviceName] /// A name given to the device to identify it.
@JsonSerializable()
class DeviceDefinitionDeviceName extends BackboneElement {
  DeviceDefinitionDeviceName({
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
  }) : super(fhirType: 'DeviceDefinitionDeviceName');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The name of the device.
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
  factory DeviceDefinitionDeviceName.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinitionDeviceNameFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceDefinitionDeviceNameToJson(this);

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

  factory DeviceDefinitionDeviceName.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinitionDeviceName.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DeviceDefinitionDeviceName.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DeviceDefinitionDeviceName cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DeviceDefinitionDeviceName.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceDefinitionDeviceName.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DeviceDefinitionSpecialization] /// The capabilities supported on a device, the standards to which the device
/// conforms for a particular purpose, and used for the communication.
@JsonSerializable()
class DeviceDefinitionSpecialization extends BackboneElement {
  DeviceDefinitionSpecialization({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.systemType,
    this.systemTypeElement,
    this.version,
    this.versionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'DeviceDefinitionSpecialization');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [systemType] /// The standard that is used to operate and communicate.
  @JsonKey(name: 'systemType')
  final FhirString systemType;
  @JsonKey(name: '_systemType')
  final Element? systemTypeElement;

  /// [version] /// The version of the standard that is used to operate and communicate.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;
  factory DeviceDefinitionSpecialization.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinitionSpecializationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceDefinitionSpecializationToJson(this);

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

  factory DeviceDefinitionSpecialization.fromYaml(dynamic yaml) => yaml
          is String
      ? DeviceDefinitionSpecialization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DeviceDefinitionSpecialization.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DeviceDefinitionSpecialization cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DeviceDefinitionSpecialization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceDefinitionSpecialization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DeviceDefinitionCapability] /// Device capabilities.
@JsonSerializable()
class DeviceDefinitionCapability extends BackboneElement {
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
  }) : super(fhirType: 'DeviceDefinitionCapability');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of capability.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [description] /// Description of capability.
  @JsonKey(name: 'description')
  final List<CodeableConcept>? description;
  factory DeviceDefinitionCapability.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinitionCapabilityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceDefinitionCapabilityToJson(this);

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

  factory DeviceDefinitionCapability.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinitionCapability.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DeviceDefinitionCapability.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DeviceDefinitionCapability cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DeviceDefinitionCapability.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceDefinitionCapability.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DeviceDefinitionProperty] /// The actual configuration settings of a device as it actually operates,
/// e.g., regulation status, time properties.
@JsonSerializable()
class DeviceDefinitionProperty extends BackboneElement {
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
  }) : super(fhirType: 'DeviceDefinitionProperty');
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
  factory DeviceDefinitionProperty.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinitionPropertyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceDefinitionPropertyToJson(this);

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

  factory DeviceDefinitionProperty.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinitionProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DeviceDefinitionProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DeviceDefinitionProperty cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DeviceDefinitionProperty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceDefinitionProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DeviceDefinitionMaterial] /// A substance used to create the material(s) of which the device is made.
@JsonSerializable()
class DeviceDefinitionMaterial extends BackboneElement {
  DeviceDefinitionMaterial({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.substance,
    this.alternate,
    this.alternateElement,
    this.allergenicIndicator,
    this.allergenicIndicatorElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'DeviceDefinitionMaterial');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [substance] /// The substance.
  @JsonKey(name: 'substance')
  final CodeableConcept substance;

  /// [alternate] /// Indicates an alternative material of the device.
  @JsonKey(name: 'alternate')
  final FhirBoolean? alternate;
  @JsonKey(name: '_alternate')
  final Element? alternateElement;

  /// [allergenicIndicator] /// Whether the substance is a known or suspected allergen.
  @JsonKey(name: 'allergenicIndicator')
  final FhirBoolean? allergenicIndicator;
  @JsonKey(name: '_allergenicIndicator')
  final Element? allergenicIndicatorElement;
  factory DeviceDefinitionMaterial.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinitionMaterialFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceDefinitionMaterialToJson(this);

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

  factory DeviceDefinitionMaterial.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinitionMaterial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DeviceDefinitionMaterial.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DeviceDefinitionMaterial cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DeviceDefinitionMaterial.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceDefinitionMaterial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
