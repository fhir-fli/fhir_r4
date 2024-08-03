// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceDefinition _$DeviceDefinitionFromJson(Map<String, dynamic> json) {
  return _DeviceDefinition.fromJson(json);
}

/// @nodoc
mixin _$DeviceDefinition {
  @JsonKey(unknownEnumValue: R4ResourceType.DeviceDefinition)
  R4ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] Unique instance identifiers assigned to a device by the
  /// software, manufacturers, other organizations or owners. For example:
  ///  handle ID.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [udiDeviceIdentifier] Unique device identifier (UDI) assigned to device
  /// label or package.  Note that the Device may include multiple udiCarriers
  /// as it either may include just the udiCarrier for the jurisdiction it is
  ///  sold, or for multiple jurisdictions it could have been sold.
  List<DeviceDefinitionUdiDeviceIdentifier>? get udiDeviceIdentifier =>
      throw _privateConstructorUsedError;

  /// [manufacturerString] A name of the manufacturer.
  String? get manufacturerString => throw _privateConstructorUsedError;

  /// [manufacturerStringElement] Extensions for manufacturerString
  @JsonKey(name: '_manufacturerString')
  PrimitiveElement? get manufacturerStringElement =>
      throw _privateConstructorUsedError;

  /// [manufacturerReference] A name of the manufacturer.
  Reference? get manufacturerReference => throw _privateConstructorUsedError;

  /// [deviceName] A name given to the device to identify it.
  List<DeviceDefinitionDeviceName>? get deviceName =>
      throw _privateConstructorUsedError;

  /// [modelNumber] The model number for the device.
  String? get modelNumber => throw _privateConstructorUsedError;

  /// [modelNumberElement] Extensions for modelNumber
  @JsonKey(name: '_modelNumber')
  PrimitiveElement? get modelNumberElement =>
      throw _privateConstructorUsedError;

  /// [type] What kind of device or device system this is.
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [specialization] The capabilities supported on a  device, the standards
  /// to which the device conforms for a particular purpose, and used for the
  ///  communication.
  List<DeviceDefinitionSpecialization>? get specialization =>
      throw _privateConstructorUsedError;

  /// [version] The available versions of the device, e.g., software versions.
  List<String>? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  List<PrimitiveElement>? get versionElement =>
      throw _privateConstructorUsedError;

  /// [safety] Safety characteristics of the device.
  List<CodeableConcept>? get safety => throw _privateConstructorUsedError;

  /// [shelfLifeStorage] Shelf Life and storage information.
  List<ProductShelfLife>? get shelfLifeStorage =>
      throw _privateConstructorUsedError;

  /// [physicalCharacteristics] Dimensions, color etc.
  ProdCharacteristic? get physicalCharacteristics =>
      throw _privateConstructorUsedError;

  /// [languageCode] Language code for the human-readable text strings produced
  ///  by the device (all supported).
  List<CodeableConcept>? get languageCode => throw _privateConstructorUsedError;

  /// [capability] Device capabilities.
  List<DeviceDefinitionCapability>? get capability =>
      throw _privateConstructorUsedError;

  /// [property] The actual configuration settings of a device as it actually
  ///  operates, e.g., regulation status, time properties.
  List<DeviceDefinitionProperty>? get property =>
      throw _privateConstructorUsedError;

  /// [owner] An organization that is responsible for the provision and ongoing
  ///  maintenance of the device.
  Reference? get owner => throw _privateConstructorUsedError;

  /// [contact] Contact details for an organization or a particular human that
  ///  is responsible for the device.
  List<ContactPoint>? get contact => throw _privateConstructorUsedError;

  /// [url] A network address on which the device may be contacted directly.
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [onlineInformation] Access to on-line information about the device.
  FhirUri? get onlineInformation => throw _privateConstructorUsedError;

  /// [onlineInformationElement] Extensions for onlineInformation
  @JsonKey(name: '_onlineInformation')
  PrimitiveElement? get onlineInformationElement =>
      throw _privateConstructorUsedError;

  /// [note] Descriptive information, usage information or implantation
  ///  information that is not captured in an existing element.
  List<Annotation>? get note => throw _privateConstructorUsedError;

  /// [quantity] The quantity of the device present in the packaging (e.g. the
  /// number of devices present in a pack, or the number of devices in the same
  ///  package of the medicinal product).
  Quantity? get quantity => throw _privateConstructorUsedError;

  /// [parentDevice] The parent device it can be part of.
  Reference? get parentDevice => throw _privateConstructorUsedError;

  /// [material] A substance used to create the material(s) of which the device
  ///  is made.
  List<DeviceDefinitionMaterial>? get material =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceDefinitionCopyWith<DeviceDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDefinitionCopyWith<$Res> {
  factory $DeviceDefinitionCopyWith(
          DeviceDefinition value, $Res Function(DeviceDefinition) then) =
      _$DeviceDefinitionCopyWithImpl<$Res, DeviceDefinition>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.DeviceDefinition)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier,
      String? manufacturerString,
      @JsonKey(name: '_manufacturerString')
      PrimitiveElement? manufacturerStringElement,
      Reference? manufacturerReference,
      List<DeviceDefinitionDeviceName>? deviceName,
      String? modelNumber,
      @JsonKey(name: '_modelNumber') PrimitiveElement? modelNumberElement,
      CodeableConcept? type,
      List<DeviceDefinitionSpecialization>? specialization,
      List<String>? version,
      @JsonKey(name: '_version') List<PrimitiveElement>? versionElement,
      List<CodeableConcept>? safety,
      List<ProductShelfLife>? shelfLifeStorage,
      ProdCharacteristic? physicalCharacteristics,
      List<CodeableConcept>? languageCode,
      List<DeviceDefinitionCapability>? capability,
      List<DeviceDefinitionProperty>? property,
      Reference? owner,
      List<ContactPoint>? contact,
      FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      FhirUri? onlineInformation,
      @JsonKey(name: '_onlineInformation')
      PrimitiveElement? onlineInformationElement,
      List<Annotation>? note,
      Quantity? quantity,
      Reference? parentDevice,
      List<DeviceDefinitionMaterial>? material});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $ReferenceCopyWith<$Res>? get manufacturerReference;
  $CodeableConceptCopyWith<$Res>? get type;
  $ProdCharacteristicCopyWith<$Res>? get physicalCharacteristics;
  $ReferenceCopyWith<$Res>? get owner;
  $QuantityCopyWith<$Res>? get quantity;
  $ReferenceCopyWith<$Res>? get parentDevice;
}

/// @nodoc
class _$DeviceDefinitionCopyWithImpl<$Res, $Val extends DeviceDefinition>
    implements $DeviceDefinitionCopyWith<$Res> {
  _$DeviceDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? udiDeviceIdentifier = freezed,
    Object? manufacturerString = freezed,
    Object? manufacturerStringElement = freezed,
    Object? manufacturerReference = freezed,
    Object? deviceName = freezed,
    Object? modelNumber = freezed,
    Object? modelNumberElement = freezed,
    Object? type = freezed,
    Object? specialization = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
    Object? safety = freezed,
    Object? shelfLifeStorage = freezed,
    Object? physicalCharacteristics = freezed,
    Object? languageCode = freezed,
    Object? capability = freezed,
    Object? property = freezed,
    Object? owner = freezed,
    Object? contact = freezed,
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? onlineInformation = freezed,
    Object? onlineInformationElement = freezed,
    Object? note = freezed,
    Object? quantity = freezed,
    Object? parentDevice = freezed,
    Object? material = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      udiDeviceIdentifier: freezed == udiDeviceIdentifier
          ? _value.udiDeviceIdentifier
          : udiDeviceIdentifier // ignore: cast_nullable_to_non_nullable
              as List<DeviceDefinitionUdiDeviceIdentifier>?,
      manufacturerString: freezed == manufacturerString
          ? _value.manufacturerString
          : manufacturerString // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturerStringElement: freezed == manufacturerStringElement
          ? _value.manufacturerStringElement
          : manufacturerStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      manufacturerReference: freezed == manufacturerReference
          ? _value.manufacturerReference
          : manufacturerReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as List<DeviceDefinitionDeviceName>?,
      modelNumber: freezed == modelNumber
          ? _value.modelNumber
          : modelNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      modelNumberElement: freezed == modelNumberElement
          ? _value.modelNumberElement
          : modelNumberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as List<DeviceDefinitionSpecialization>?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      versionElement: freezed == versionElement
          ? _value.versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      safety: freezed == safety
          ? _value.safety
          : safety // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      shelfLifeStorage: freezed == shelfLifeStorage
          ? _value.shelfLifeStorage
          : shelfLifeStorage // ignore: cast_nullable_to_non_nullable
              as List<ProductShelfLife>?,
      physicalCharacteristics: freezed == physicalCharacteristics
          ? _value.physicalCharacteristics
          : physicalCharacteristics // ignore: cast_nullable_to_non_nullable
              as ProdCharacteristic?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      capability: freezed == capability
          ? _value.capability
          : capability // ignore: cast_nullable_to_non_nullable
              as List<DeviceDefinitionCapability>?,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as List<DeviceDefinitionProperty>?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Reference?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      onlineInformation: freezed == onlineInformation
          ? _value.onlineInformation
          : onlineInformation // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      onlineInformationElement: freezed == onlineInformationElement
          ? _value.onlineInformationElement
          : onlineInformationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      parentDevice: freezed == parentDevice
          ? _value.parentDevice
          : parentDevice // ignore: cast_nullable_to_non_nullable
              as Reference?,
      material: freezed == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as List<DeviceDefinitionMaterial>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get manufacturerReference {
    if (_value.manufacturerReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.manufacturerReference!, (value) {
      return _then(_value.copyWith(manufacturerReference: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProdCharacteristicCopyWith<$Res>? get physicalCharacteristics {
    if (_value.physicalCharacteristics == null) {
      return null;
    }

    return $ProdCharacteristicCopyWith<$Res>(_value.physicalCharacteristics!,
        (value) {
      return _then(_value.copyWith(physicalCharacteristics: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get quantity {
    if (_value.quantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.quantity!, (value) {
      return _then(_value.copyWith(quantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get parentDevice {
    if (_value.parentDevice == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.parentDevice!, (value) {
      return _then(_value.copyWith(parentDevice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeviceDefinitionImplCopyWith<$Res>
    implements $DeviceDefinitionCopyWith<$Res> {
  factory _$$DeviceDefinitionImplCopyWith(_$DeviceDefinitionImpl value,
          $Res Function(_$DeviceDefinitionImpl) then) =
      __$$DeviceDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.DeviceDefinition)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier,
      String? manufacturerString,
      @JsonKey(name: '_manufacturerString')
      PrimitiveElement? manufacturerStringElement,
      Reference? manufacturerReference,
      List<DeviceDefinitionDeviceName>? deviceName,
      String? modelNumber,
      @JsonKey(name: '_modelNumber') PrimitiveElement? modelNumberElement,
      CodeableConcept? type,
      List<DeviceDefinitionSpecialization>? specialization,
      List<String>? version,
      @JsonKey(name: '_version') List<PrimitiveElement>? versionElement,
      List<CodeableConcept>? safety,
      List<ProductShelfLife>? shelfLifeStorage,
      ProdCharacteristic? physicalCharacteristics,
      List<CodeableConcept>? languageCode,
      List<DeviceDefinitionCapability>? capability,
      List<DeviceDefinitionProperty>? property,
      Reference? owner,
      List<ContactPoint>? contact,
      FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      FhirUri? onlineInformation,
      @JsonKey(name: '_onlineInformation')
      PrimitiveElement? onlineInformationElement,
      List<Annotation>? note,
      Quantity? quantity,
      Reference? parentDevice,
      List<DeviceDefinitionMaterial>? material});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ReferenceCopyWith<$Res>? get manufacturerReference;
  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $ProdCharacteristicCopyWith<$Res>? get physicalCharacteristics;
  @override
  $ReferenceCopyWith<$Res>? get owner;
  @override
  $QuantityCopyWith<$Res>? get quantity;
  @override
  $ReferenceCopyWith<$Res>? get parentDevice;
}

/// @nodoc
class __$$DeviceDefinitionImplCopyWithImpl<$Res>
    extends _$DeviceDefinitionCopyWithImpl<$Res, _$DeviceDefinitionImpl>
    implements _$$DeviceDefinitionImplCopyWith<$Res> {
  __$$DeviceDefinitionImplCopyWithImpl(_$DeviceDefinitionImpl _value,
      $Res Function(_$DeviceDefinitionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? udiDeviceIdentifier = freezed,
    Object? manufacturerString = freezed,
    Object? manufacturerStringElement = freezed,
    Object? manufacturerReference = freezed,
    Object? deviceName = freezed,
    Object? modelNumber = freezed,
    Object? modelNumberElement = freezed,
    Object? type = freezed,
    Object? specialization = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
    Object? safety = freezed,
    Object? shelfLifeStorage = freezed,
    Object? physicalCharacteristics = freezed,
    Object? languageCode = freezed,
    Object? capability = freezed,
    Object? property = freezed,
    Object? owner = freezed,
    Object? contact = freezed,
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? onlineInformation = freezed,
    Object? onlineInformationElement = freezed,
    Object? note = freezed,
    Object? quantity = freezed,
    Object? parentDevice = freezed,
    Object? material = freezed,
  }) {
    return _then(_$DeviceDefinitionImpl(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      udiDeviceIdentifier: freezed == udiDeviceIdentifier
          ? _value._udiDeviceIdentifier
          : udiDeviceIdentifier // ignore: cast_nullable_to_non_nullable
              as List<DeviceDefinitionUdiDeviceIdentifier>?,
      manufacturerString: freezed == manufacturerString
          ? _value.manufacturerString
          : manufacturerString // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturerStringElement: freezed == manufacturerStringElement
          ? _value.manufacturerStringElement
          : manufacturerStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      manufacturerReference: freezed == manufacturerReference
          ? _value.manufacturerReference
          : manufacturerReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      deviceName: freezed == deviceName
          ? _value._deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as List<DeviceDefinitionDeviceName>?,
      modelNumber: freezed == modelNumber
          ? _value.modelNumber
          : modelNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      modelNumberElement: freezed == modelNumberElement
          ? _value.modelNumberElement
          : modelNumberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      specialization: freezed == specialization
          ? _value._specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as List<DeviceDefinitionSpecialization>?,
      version: freezed == version
          ? _value._version
          : version // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      versionElement: freezed == versionElement
          ? _value._versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      safety: freezed == safety
          ? _value._safety
          : safety // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      shelfLifeStorage: freezed == shelfLifeStorage
          ? _value._shelfLifeStorage
          : shelfLifeStorage // ignore: cast_nullable_to_non_nullable
              as List<ProductShelfLife>?,
      physicalCharacteristics: freezed == physicalCharacteristics
          ? _value.physicalCharacteristics
          : physicalCharacteristics // ignore: cast_nullable_to_non_nullable
              as ProdCharacteristic?,
      languageCode: freezed == languageCode
          ? _value._languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      capability: freezed == capability
          ? _value._capability
          : capability // ignore: cast_nullable_to_non_nullable
              as List<DeviceDefinitionCapability>?,
      property: freezed == property
          ? _value._property
          : property // ignore: cast_nullable_to_non_nullable
              as List<DeviceDefinitionProperty>?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Reference?,
      contact: freezed == contact
          ? _value._contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      onlineInformation: freezed == onlineInformation
          ? _value.onlineInformation
          : onlineInformation // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      onlineInformationElement: freezed == onlineInformationElement
          ? _value.onlineInformationElement
          : onlineInformationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      parentDevice: freezed == parentDevice
          ? _value.parentDevice
          : parentDevice // ignore: cast_nullable_to_non_nullable
              as Reference?,
      material: freezed == material
          ? _value._material
          : material // ignore: cast_nullable_to_non_nullable
              as List<DeviceDefinitionMaterial>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceDefinitionImpl extends _DeviceDefinition {
  const _$DeviceDefinitionImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.DeviceDefinition)
      this.resourceType = R4ResourceType.DeviceDefinition,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules') this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier,
      this.manufacturerString,
      @JsonKey(name: '_manufacturerString') this.manufacturerStringElement,
      this.manufacturerReference,
      final List<DeviceDefinitionDeviceName>? deviceName,
      this.modelNumber,
      @JsonKey(name: '_modelNumber') this.modelNumberElement,
      this.type,
      final List<DeviceDefinitionSpecialization>? specialization,
      final List<String>? version,
      @JsonKey(name: '_version') final List<PrimitiveElement>? versionElement,
      final List<CodeableConcept>? safety,
      final List<ProductShelfLife>? shelfLifeStorage,
      this.physicalCharacteristics,
      final List<CodeableConcept>? languageCode,
      final List<DeviceDefinitionCapability>? capability,
      final List<DeviceDefinitionProperty>? property,
      this.owner,
      final List<ContactPoint>? contact,
      this.url,
      @JsonKey(name: '_url') this.urlElement,
      this.onlineInformation,
      @JsonKey(name: '_onlineInformation') this.onlineInformationElement,
      final List<Annotation>? note,
      this.quantity,
      this.parentDevice,
      final List<DeviceDefinitionMaterial>? material})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _udiDeviceIdentifier = udiDeviceIdentifier,
        _deviceName = deviceName,
        _specialization = specialization,
        _version = version,
        _versionElement = versionElement,
        _safety = safety,
        _shelfLifeStorage = shelfLifeStorage,
        _languageCode = languageCode,
        _capability = capability,
        _property = property,
        _contact = contact,
        _note = note,
        _material = material,
        super._();

  factory _$DeviceDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceDefinitionImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.DeviceDefinition)
  final R4ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  @override
  final String? id;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  final FhirCode? language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] Unique instance identifiers assigned to a device by the
  /// software, manufacturers, other organizations or owners. For example:
  ///  handle ID.
  final List<Identifier>? _identifier;

  /// [identifier] Unique instance identifiers assigned to a device by the
  /// software, manufacturers, other organizations or owners. For example:
  ///  handle ID.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [udiDeviceIdentifier] Unique device identifier (UDI) assigned to device
  /// label or package.  Note that the Device may include multiple udiCarriers
  /// as it either may include just the udiCarrier for the jurisdiction it is
  ///  sold, or for multiple jurisdictions it could have been sold.
  final List<DeviceDefinitionUdiDeviceIdentifier>? _udiDeviceIdentifier;

  /// [udiDeviceIdentifier] Unique device identifier (UDI) assigned to device
  /// label or package.  Note that the Device may include multiple udiCarriers
  /// as it either may include just the udiCarrier for the jurisdiction it is
  ///  sold, or for multiple jurisdictions it could have been sold.
  @override
  List<DeviceDefinitionUdiDeviceIdentifier>? get udiDeviceIdentifier {
    final value = _udiDeviceIdentifier;
    if (value == null) return null;
    if (_udiDeviceIdentifier is EqualUnmodifiableListView)
      return _udiDeviceIdentifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [manufacturerString] A name of the manufacturer.
  @override
  final String? manufacturerString;

  /// [manufacturerStringElement] Extensions for manufacturerString
  @override
  @JsonKey(name: '_manufacturerString')
  final PrimitiveElement? manufacturerStringElement;

  /// [manufacturerReference] A name of the manufacturer.
  @override
  final Reference? manufacturerReference;

  /// [deviceName] A name given to the device to identify it.
  final List<DeviceDefinitionDeviceName>? _deviceName;

  /// [deviceName] A name given to the device to identify it.
  @override
  List<DeviceDefinitionDeviceName>? get deviceName {
    final value = _deviceName;
    if (value == null) return null;
    if (_deviceName is EqualUnmodifiableListView) return _deviceName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modelNumber] The model number for the device.
  @override
  final String? modelNumber;

  /// [modelNumberElement] Extensions for modelNumber
  @override
  @JsonKey(name: '_modelNumber')
  final PrimitiveElement? modelNumberElement;

  /// [type] What kind of device or device system this is.
  @override
  final CodeableConcept? type;

  /// [specialization] The capabilities supported on a  device, the standards
  /// to which the device conforms for a particular purpose, and used for the
  ///  communication.
  final List<DeviceDefinitionSpecialization>? _specialization;

  /// [specialization] The capabilities supported on a  device, the standards
  /// to which the device conforms for a particular purpose, and used for the
  ///  communication.
  @override
  List<DeviceDefinitionSpecialization>? get specialization {
    final value = _specialization;
    if (value == null) return null;
    if (_specialization is EqualUnmodifiableListView) return _specialization;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [version] The available versions of the device, e.g., software versions.
  final List<String>? _version;

  /// [version] The available versions of the device, e.g., software versions.
  @override
  List<String>? get version {
    final value = _version;
    if (value == null) return null;
    if (_version is EqualUnmodifiableListView) return _version;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [versionElement] Extensions for version
  final List<PrimitiveElement>? _versionElement;

  /// [versionElement] Extensions for version
  @override
  @JsonKey(name: '_version')
  List<PrimitiveElement>? get versionElement {
    final value = _versionElement;
    if (value == null) return null;
    if (_versionElement is EqualUnmodifiableListView) return _versionElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [safety] Safety characteristics of the device.
  final List<CodeableConcept>? _safety;

  /// [safety] Safety characteristics of the device.
  @override
  List<CodeableConcept>? get safety {
    final value = _safety;
    if (value == null) return null;
    if (_safety is EqualUnmodifiableListView) return _safety;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [shelfLifeStorage] Shelf Life and storage information.
  final List<ProductShelfLife>? _shelfLifeStorage;

  /// [shelfLifeStorage] Shelf Life and storage information.
  @override
  List<ProductShelfLife>? get shelfLifeStorage {
    final value = _shelfLifeStorage;
    if (value == null) return null;
    if (_shelfLifeStorage is EqualUnmodifiableListView)
      return _shelfLifeStorage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [physicalCharacteristics] Dimensions, color etc.
  @override
  final ProdCharacteristic? physicalCharacteristics;

  /// [languageCode] Language code for the human-readable text strings produced
  ///  by the device (all supported).
  final List<CodeableConcept>? _languageCode;

  /// [languageCode] Language code for the human-readable text strings produced
  ///  by the device (all supported).
  @override
  List<CodeableConcept>? get languageCode {
    final value = _languageCode;
    if (value == null) return null;
    if (_languageCode is EqualUnmodifiableListView) return _languageCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [capability] Device capabilities.
  final List<DeviceDefinitionCapability>? _capability;

  /// [capability] Device capabilities.
  @override
  List<DeviceDefinitionCapability>? get capability {
    final value = _capability;
    if (value == null) return null;
    if (_capability is EqualUnmodifiableListView) return _capability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [property] The actual configuration settings of a device as it actually
  ///  operates, e.g., regulation status, time properties.
  final List<DeviceDefinitionProperty>? _property;

  /// [property] The actual configuration settings of a device as it actually
  ///  operates, e.g., regulation status, time properties.
  @override
  List<DeviceDefinitionProperty>? get property {
    final value = _property;
    if (value == null) return null;
    if (_property is EqualUnmodifiableListView) return _property;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [owner] An organization that is responsible for the provision and ongoing
  ///  maintenance of the device.
  @override
  final Reference? owner;

  /// [contact] Contact details for an organization or a particular human that
  ///  is responsible for the device.
  final List<ContactPoint>? _contact;

  /// [contact] Contact details for an organization or a particular human that
  ///  is responsible for the device.
  @override
  List<ContactPoint>? get contact {
    final value = _contact;
    if (value == null) return null;
    if (_contact is EqualUnmodifiableListView) return _contact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [url] A network address on which the device may be contacted directly.
  @override
  final FhirUri? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [onlineInformation] Access to on-line information about the device.
  @override
  final FhirUri? onlineInformation;

  /// [onlineInformationElement] Extensions for onlineInformation
  @override
  @JsonKey(name: '_onlineInformation')
  final PrimitiveElement? onlineInformationElement;

  /// [note] Descriptive information, usage information or implantation
  ///  information that is not captured in an existing element.
  final List<Annotation>? _note;

  /// [note] Descriptive information, usage information or implantation
  ///  information that is not captured in an existing element.
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [quantity] The quantity of the device present in the packaging (e.g. the
  /// number of devices present in a pack, or the number of devices in the same
  ///  package of the medicinal product).
  @override
  final Quantity? quantity;

  /// [parentDevice] The parent device it can be part of.
  @override
  final Reference? parentDevice;

  /// [material] A substance used to create the material(s) of which the device
  ///  is made.
  final List<DeviceDefinitionMaterial>? _material;

  /// [material] A substance used to create the material(s) of which the device
  ///  is made.
  @override
  List<DeviceDefinitionMaterial>? get material {
    final value = _material;
    if (value == null) return null;
    if (_material is EqualUnmodifiableListView) return _material;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceDefinitionImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            const DeepCollectionEquality()
                .equals(other._udiDeviceIdentifier, _udiDeviceIdentifier) &&
            (identical(other.manufacturerString, manufacturerString) ||
                other.manufacturerString == manufacturerString) &&
            (identical(other.manufacturerStringElement,
                    manufacturerStringElement) ||
                other.manufacturerStringElement == manufacturerStringElement) &&
            (identical(other.manufacturerReference, manufacturerReference) ||
                other.manufacturerReference == manufacturerReference) &&
            const DeepCollectionEquality()
                .equals(other._deviceName, _deviceName) &&
            (identical(other.modelNumber, modelNumber) ||
                other.modelNumber == modelNumber) &&
            (identical(other.modelNumberElement, modelNumberElement) ||
                other.modelNumberElement == modelNumberElement) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._specialization, _specialization) &&
            const DeepCollectionEquality().equals(other._version, _version) &&
            const DeepCollectionEquality()
                .equals(other._versionElement, _versionElement) &&
            const DeepCollectionEquality().equals(other._safety, _safety) &&
            const DeepCollectionEquality()
                .equals(other._shelfLifeStorage, _shelfLifeStorage) &&
            (identical(
                    other.physicalCharacteristics, physicalCharacteristics) ||
                other.physicalCharacteristics == physicalCharacteristics) &&
            const DeepCollectionEquality()
                .equals(other._languageCode, _languageCode) &&
            const DeepCollectionEquality()
                .equals(other._capability, _capability) &&
            const DeepCollectionEquality().equals(other._property, _property) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            const DeepCollectionEquality().equals(other._contact, _contact) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlElement, urlElement) ||
                other.urlElement == urlElement) &&
            (identical(other.onlineInformation, onlineInformation) ||
                other.onlineInformation == onlineInformation) &&
            (identical(
                    other.onlineInformationElement, onlineInformationElement) ||
                other.onlineInformationElement == onlineInformationElement) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.parentDevice, parentDevice) ||
                other.parentDevice == parentDevice) &&
            const DeepCollectionEquality().equals(other._material, _material));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        meta,
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        text,
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        const DeepCollectionEquality().hash(_udiDeviceIdentifier),
        manufacturerString,
        manufacturerStringElement,
        manufacturerReference,
        const DeepCollectionEquality().hash(_deviceName),
        modelNumber,
        modelNumberElement,
        type,
        const DeepCollectionEquality().hash(_specialization),
        const DeepCollectionEquality().hash(_version),
        const DeepCollectionEquality().hash(_versionElement),
        const DeepCollectionEquality().hash(_safety),
        const DeepCollectionEquality().hash(_shelfLifeStorage),
        physicalCharacteristics,
        const DeepCollectionEquality().hash(_languageCode),
        const DeepCollectionEquality().hash(_capability),
        const DeepCollectionEquality().hash(_property),
        owner,
        const DeepCollectionEquality().hash(_contact),
        url,
        urlElement,
        onlineInformation,
        onlineInformationElement,
        const DeepCollectionEquality().hash(_note),
        quantity,
        parentDevice,
        const DeepCollectionEquality().hash(_material)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceDefinitionImplCopyWith<_$DeviceDefinitionImpl> get copyWith =>
      __$$DeviceDefinitionImplCopyWithImpl<_$DeviceDefinitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceDefinitionImplToJson(
      this,
    );
  }
}

abstract class _DeviceDefinition extends DeviceDefinition {
  const factory _DeviceDefinition(
      {@JsonKey(unknownEnumValue: R4ResourceType.DeviceDefinition)
      final R4ResourceType resourceType,
      final String? id,
      final FhirMeta? meta,
      final FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules')
      final PrimitiveElement? implicitRulesElement,
      final FhirCode? language,
      @JsonKey(name: '_language') final PrimitiveElement? languageElement,
      final Narrative? text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier,
      final String? manufacturerString,
      @JsonKey(name: '_manufacturerString')
      final PrimitiveElement? manufacturerStringElement,
      final Reference? manufacturerReference,
      final List<DeviceDefinitionDeviceName>? deviceName,
      final String? modelNumber,
      @JsonKey(name: '_modelNumber') final PrimitiveElement? modelNumberElement,
      final CodeableConcept? type,
      final List<DeviceDefinitionSpecialization>? specialization,
      final List<String>? version,
      @JsonKey(name: '_version') final List<PrimitiveElement>? versionElement,
      final List<CodeableConcept>? safety,
      final List<ProductShelfLife>? shelfLifeStorage,
      final ProdCharacteristic? physicalCharacteristics,
      final List<CodeableConcept>? languageCode,
      final List<DeviceDefinitionCapability>? capability,
      final List<DeviceDefinitionProperty>? property,
      final Reference? owner,
      final List<ContactPoint>? contact,
      final FhirUri? url,
      @JsonKey(name: '_url') final PrimitiveElement? urlElement,
      final FhirUri? onlineInformation,
      @JsonKey(name: '_onlineInformation')
      final PrimitiveElement? onlineInformationElement,
      final List<Annotation>? note,
      final Quantity? quantity,
      final Reference? parentDevice,
      final List<DeviceDefinitionMaterial>? material}) = _$DeviceDefinitionImpl;
  const _DeviceDefinition._() : super._();

  factory _DeviceDefinition.fromJson(Map<String, dynamic> json) =
      _$DeviceDefinitionImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.DeviceDefinition)
  R4ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.
  FhirCode? get language;
  @override

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] Unique instance identifiers assigned to a device by the
  /// software, manufacturers, other organizations or owners. For example:
  ///  handle ID.
  List<Identifier>? get identifier;
  @override

  /// [udiDeviceIdentifier] Unique device identifier (UDI) assigned to device
  /// label or package.  Note that the Device may include multiple udiCarriers
  /// as it either may include just the udiCarrier for the jurisdiction it is
  ///  sold, or for multiple jurisdictions it could have been sold.
  List<DeviceDefinitionUdiDeviceIdentifier>? get udiDeviceIdentifier;
  @override

  /// [manufacturerString] A name of the manufacturer.
  String? get manufacturerString;
  @override

  /// [manufacturerStringElement] Extensions for manufacturerString
  @JsonKey(name: '_manufacturerString')
  PrimitiveElement? get manufacturerStringElement;
  @override

  /// [manufacturerReference] A name of the manufacturer.
  Reference? get manufacturerReference;
  @override

  /// [deviceName] A name given to the device to identify it.
  List<DeviceDefinitionDeviceName>? get deviceName;
  @override

  /// [modelNumber] The model number for the device.
  String? get modelNumber;
  @override

  /// [modelNumberElement] Extensions for modelNumber
  @JsonKey(name: '_modelNumber')
  PrimitiveElement? get modelNumberElement;
  @override

  /// [type] What kind of device or device system this is.
  CodeableConcept? get type;
  @override

  /// [specialization] The capabilities supported on a  device, the standards
  /// to which the device conforms for a particular purpose, and used for the
  ///  communication.
  List<DeviceDefinitionSpecialization>? get specialization;
  @override

  /// [version] The available versions of the device, e.g., software versions.
  List<String>? get version;
  @override

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  List<PrimitiveElement>? get versionElement;
  @override

  /// [safety] Safety characteristics of the device.
  List<CodeableConcept>? get safety;
  @override

  /// [shelfLifeStorage] Shelf Life and storage information.
  List<ProductShelfLife>? get shelfLifeStorage;
  @override

  /// [physicalCharacteristics] Dimensions, color etc.
  ProdCharacteristic? get physicalCharacteristics;
  @override

  /// [languageCode] Language code for the human-readable text strings produced
  ///  by the device (all supported).
  List<CodeableConcept>? get languageCode;
  @override

  /// [capability] Device capabilities.
  List<DeviceDefinitionCapability>? get capability;
  @override

  /// [property] The actual configuration settings of a device as it actually
  ///  operates, e.g., regulation status, time properties.
  List<DeviceDefinitionProperty>? get property;
  @override

  /// [owner] An organization that is responsible for the provision and ongoing
  ///  maintenance of the device.
  Reference? get owner;
  @override

  /// [contact] Contact details for an organization or a particular human that
  ///  is responsible for the device.
  List<ContactPoint>? get contact;
  @override

  /// [url] A network address on which the device may be contacted directly.
  FhirUri? get url;
  @override

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override

  /// [onlineInformation] Access to on-line information about the device.
  FhirUri? get onlineInformation;
  @override

  /// [onlineInformationElement] Extensions for onlineInformation
  @JsonKey(name: '_onlineInformation')
  PrimitiveElement? get onlineInformationElement;
  @override

  /// [note] Descriptive information, usage information or implantation
  ///  information that is not captured in an existing element.
  List<Annotation>? get note;
  @override

  /// [quantity] The quantity of the device present in the packaging (e.g. the
  /// number of devices present in a pack, or the number of devices in the same
  ///  package of the medicinal product).
  Quantity? get quantity;
  @override

  /// [parentDevice] The parent device it can be part of.
  Reference? get parentDevice;
  @override

  /// [material] A substance used to create the material(s) of which the device
  ///  is made.
  List<DeviceDefinitionMaterial>? get material;
  @override
  @JsonKey(ignore: true)
  _$$DeviceDefinitionImplCopyWith<_$DeviceDefinitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceDefinitionUdiDeviceIdentifier
    _$DeviceDefinitionUdiDeviceIdentifierFromJson(Map<String, dynamic> json) {
  return _DeviceDefinitionUdiDeviceIdentifier.fromJson(json);
}

/// @nodoc
mixin _$DeviceDefinitionUdiDeviceIdentifier {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [deviceIdentifier] The identifier that is to be associated with every
  /// Device that references this DeviceDefintiion for the issuer and
  ///  jurisdication porvided in the DeviceDefinition.udiDeviceIdentifier.
  String? get deviceIdentifier => throw _privateConstructorUsedError;

  /// [deviceIdentifierElement] Extensions for deviceIdentifier
  @JsonKey(name: '_deviceIdentifier')
  PrimitiveElement? get deviceIdentifierElement =>
      throw _privateConstructorUsedError;

  /// [issuer] The organization that assigns the identifier algorithm.
  FhirUri? get issuer => throw _privateConstructorUsedError;

  /// [issuerElement] Extensions for issuer
  @JsonKey(name: '_issuer')
  PrimitiveElement? get issuerElement => throw _privateConstructorUsedError;

  /// [jurisdiction] The jurisdiction to which the deviceIdentifier applies.
  FhirUri? get jurisdiction => throw _privateConstructorUsedError;

  /// [jurisdictionElement] Extensions for jurisdiction
  @JsonKey(name: '_jurisdiction')
  PrimitiveElement? get jurisdictionElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceDefinitionUdiDeviceIdentifierCopyWith<
          DeviceDefinitionUdiDeviceIdentifier>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDefinitionUdiDeviceIdentifierCopyWith<$Res> {
  factory $DeviceDefinitionUdiDeviceIdentifierCopyWith(
          DeviceDefinitionUdiDeviceIdentifier value,
          $Res Function(DeviceDefinitionUdiDeviceIdentifier) then) =
      _$DeviceDefinitionUdiDeviceIdentifierCopyWithImpl<$Res,
          DeviceDefinitionUdiDeviceIdentifier>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? deviceIdentifier,
      @JsonKey(name: '_deviceIdentifier')
      PrimitiveElement? deviceIdentifierElement,
      FhirUri? issuer,
      @JsonKey(name: '_issuer') PrimitiveElement? issuerElement,
      FhirUri? jurisdiction,
      @JsonKey(name: '_jurisdiction') PrimitiveElement? jurisdictionElement});
}

/// @nodoc
class _$DeviceDefinitionUdiDeviceIdentifierCopyWithImpl<$Res,
        $Val extends DeviceDefinitionUdiDeviceIdentifier>
    implements $DeviceDefinitionUdiDeviceIdentifierCopyWith<$Res> {
  _$DeviceDefinitionUdiDeviceIdentifierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? deviceIdentifier = freezed,
    Object? deviceIdentifierElement = freezed,
    Object? issuer = freezed,
    Object? issuerElement = freezed,
    Object? jurisdiction = freezed,
    Object? jurisdictionElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      deviceIdentifier: freezed == deviceIdentifier
          ? _value.deviceIdentifier
          : deviceIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceIdentifierElement: freezed == deviceIdentifierElement
          ? _value.deviceIdentifierElement
          : deviceIdentifierElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      issuer: freezed == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      issuerElement: freezed == issuerElement
          ? _value.issuerElement
          : issuerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      jurisdiction: freezed == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      jurisdictionElement: freezed == jurisdictionElement
          ? _value.jurisdictionElement
          : jurisdictionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceDefinitionUdiDeviceIdentifierImplCopyWith<$Res>
    implements $DeviceDefinitionUdiDeviceIdentifierCopyWith<$Res> {
  factory _$$DeviceDefinitionUdiDeviceIdentifierImplCopyWith(
          _$DeviceDefinitionUdiDeviceIdentifierImpl value,
          $Res Function(_$DeviceDefinitionUdiDeviceIdentifierImpl) then) =
      __$$DeviceDefinitionUdiDeviceIdentifierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? deviceIdentifier,
      @JsonKey(name: '_deviceIdentifier')
      PrimitiveElement? deviceIdentifierElement,
      FhirUri? issuer,
      @JsonKey(name: '_issuer') PrimitiveElement? issuerElement,
      FhirUri? jurisdiction,
      @JsonKey(name: '_jurisdiction') PrimitiveElement? jurisdictionElement});
}

/// @nodoc
class __$$DeviceDefinitionUdiDeviceIdentifierImplCopyWithImpl<$Res>
    extends _$DeviceDefinitionUdiDeviceIdentifierCopyWithImpl<$Res,
        _$DeviceDefinitionUdiDeviceIdentifierImpl>
    implements _$$DeviceDefinitionUdiDeviceIdentifierImplCopyWith<$Res> {
  __$$DeviceDefinitionUdiDeviceIdentifierImplCopyWithImpl(
      _$DeviceDefinitionUdiDeviceIdentifierImpl _value,
      $Res Function(_$DeviceDefinitionUdiDeviceIdentifierImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? deviceIdentifier = freezed,
    Object? deviceIdentifierElement = freezed,
    Object? issuer = freezed,
    Object? issuerElement = freezed,
    Object? jurisdiction = freezed,
    Object? jurisdictionElement = freezed,
  }) {
    return _then(_$DeviceDefinitionUdiDeviceIdentifierImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      deviceIdentifier: freezed == deviceIdentifier
          ? _value.deviceIdentifier
          : deviceIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceIdentifierElement: freezed == deviceIdentifierElement
          ? _value.deviceIdentifierElement
          : deviceIdentifierElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      issuer: freezed == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      issuerElement: freezed == issuerElement
          ? _value.issuerElement
          : issuerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      jurisdiction: freezed == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      jurisdictionElement: freezed == jurisdictionElement
          ? _value.jurisdictionElement
          : jurisdictionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceDefinitionUdiDeviceIdentifierImpl
    extends _DeviceDefinitionUdiDeviceIdentifier {
  const _$DeviceDefinitionUdiDeviceIdentifierImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.deviceIdentifier,
      @JsonKey(name: '_deviceIdentifier') this.deviceIdentifierElement,
      this.issuer,
      @JsonKey(name: '_issuer') this.issuerElement,
      this.jurisdiction,
      @JsonKey(name: '_jurisdiction') this.jurisdictionElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$DeviceDefinitionUdiDeviceIdentifierImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeviceDefinitionUdiDeviceIdentifierImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [deviceIdentifier] The identifier that is to be associated with every
  /// Device that references this DeviceDefintiion for the issuer and
  ///  jurisdication porvided in the DeviceDefinition.udiDeviceIdentifier.
  @override
  final String? deviceIdentifier;

  /// [deviceIdentifierElement] Extensions for deviceIdentifier
  @override
  @JsonKey(name: '_deviceIdentifier')
  final PrimitiveElement? deviceIdentifierElement;

  /// [issuer] The organization that assigns the identifier algorithm.
  @override
  final FhirUri? issuer;

  /// [issuerElement] Extensions for issuer
  @override
  @JsonKey(name: '_issuer')
  final PrimitiveElement? issuerElement;

  /// [jurisdiction] The jurisdiction to which the deviceIdentifier applies.
  @override
  final FhirUri? jurisdiction;

  /// [jurisdictionElement] Extensions for jurisdiction
  @override
  @JsonKey(name: '_jurisdiction')
  final PrimitiveElement? jurisdictionElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceDefinitionUdiDeviceIdentifierImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.deviceIdentifier, deviceIdentifier) ||
                other.deviceIdentifier == deviceIdentifier) &&
            (identical(
                    other.deviceIdentifierElement, deviceIdentifierElement) ||
                other.deviceIdentifierElement == deviceIdentifierElement) &&
            (identical(other.issuer, issuer) || other.issuer == issuer) &&
            (identical(other.issuerElement, issuerElement) ||
                other.issuerElement == issuerElement) &&
            (identical(other.jurisdiction, jurisdiction) ||
                other.jurisdiction == jurisdiction) &&
            (identical(other.jurisdictionElement, jurisdictionElement) ||
                other.jurisdictionElement == jurisdictionElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      deviceIdentifier,
      deviceIdentifierElement,
      issuer,
      issuerElement,
      jurisdiction,
      jurisdictionElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceDefinitionUdiDeviceIdentifierImplCopyWith<
          _$DeviceDefinitionUdiDeviceIdentifierImpl>
      get copyWith => __$$DeviceDefinitionUdiDeviceIdentifierImplCopyWithImpl<
          _$DeviceDefinitionUdiDeviceIdentifierImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceDefinitionUdiDeviceIdentifierImplToJson(
      this,
    );
  }
}

abstract class _DeviceDefinitionUdiDeviceIdentifier
    extends DeviceDefinitionUdiDeviceIdentifier {
  const factory _DeviceDefinitionUdiDeviceIdentifier(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final String? deviceIdentifier,
          @JsonKey(name: '_deviceIdentifier')
          final PrimitiveElement? deviceIdentifierElement,
          final FhirUri? issuer,
          @JsonKey(name: '_issuer') final PrimitiveElement? issuerElement,
          final FhirUri? jurisdiction,
          @JsonKey(name: '_jurisdiction')
          final PrimitiveElement? jurisdictionElement}) =
      _$DeviceDefinitionUdiDeviceIdentifierImpl;
  const _DeviceDefinitionUdiDeviceIdentifier._() : super._();

  factory _DeviceDefinitionUdiDeviceIdentifier.fromJson(
          Map<String, dynamic> json) =
      _$DeviceDefinitionUdiDeviceIdentifierImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [deviceIdentifier] The identifier that is to be associated with every
  /// Device that references this DeviceDefintiion for the issuer and
  ///  jurisdication porvided in the DeviceDefinition.udiDeviceIdentifier.
  String? get deviceIdentifier;
  @override

  /// [deviceIdentifierElement] Extensions for deviceIdentifier
  @JsonKey(name: '_deviceIdentifier')
  PrimitiveElement? get deviceIdentifierElement;
  @override

  /// [issuer] The organization that assigns the identifier algorithm.
  FhirUri? get issuer;
  @override

  /// [issuerElement] Extensions for issuer
  @JsonKey(name: '_issuer')
  PrimitiveElement? get issuerElement;
  @override

  /// [jurisdiction] The jurisdiction to which the deviceIdentifier applies.
  FhirUri? get jurisdiction;
  @override

  /// [jurisdictionElement] Extensions for jurisdiction
  @JsonKey(name: '_jurisdiction')
  PrimitiveElement? get jurisdictionElement;
  @override
  @JsonKey(ignore: true)
  _$$DeviceDefinitionUdiDeviceIdentifierImplCopyWith<
          _$DeviceDefinitionUdiDeviceIdentifierImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeviceDefinitionDeviceName _$DeviceDefinitionDeviceNameFromJson(
    Map<String, dynamic> json) {
  return _DeviceDefinitionDeviceName.fromJson(json);
}

/// @nodoc
mixin _$DeviceDefinitionDeviceName {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [name] The name of the device.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [type] The type of deviceName.
  /// UDILabelName | UserFriendlyName | PatientReportedName |
  ///  ManufactureDeviceName | ModelName.
  FhirCode? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceDefinitionDeviceNameCopyWith<DeviceDefinitionDeviceName>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDefinitionDeviceNameCopyWith<$Res> {
  factory $DeviceDefinitionDeviceNameCopyWith(DeviceDefinitionDeviceName value,
          $Res Function(DeviceDefinitionDeviceName) then) =
      _$DeviceDefinitionDeviceNameCopyWithImpl<$Res,
          DeviceDefinitionDeviceName>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement});
}

/// @nodoc
class _$DeviceDefinitionDeviceNameCopyWithImpl<$Res,
        $Val extends DeviceDefinitionDeviceName>
    implements $DeviceDefinitionDeviceNameCopyWith<$Res> {
  _$DeviceDefinitionDeviceNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceDefinitionDeviceNameImplCopyWith<$Res>
    implements $DeviceDefinitionDeviceNameCopyWith<$Res> {
  factory _$$DeviceDefinitionDeviceNameImplCopyWith(
          _$DeviceDefinitionDeviceNameImpl value,
          $Res Function(_$DeviceDefinitionDeviceNameImpl) then) =
      __$$DeviceDefinitionDeviceNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement});
}

/// @nodoc
class __$$DeviceDefinitionDeviceNameImplCopyWithImpl<$Res>
    extends _$DeviceDefinitionDeviceNameCopyWithImpl<$Res,
        _$DeviceDefinitionDeviceNameImpl>
    implements _$$DeviceDefinitionDeviceNameImplCopyWith<$Res> {
  __$$DeviceDefinitionDeviceNameImplCopyWithImpl(
      _$DeviceDefinitionDeviceNameImpl _value,
      $Res Function(_$DeviceDefinitionDeviceNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
  }) {
    return _then(_$DeviceDefinitionDeviceNameImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceDefinitionDeviceNameImpl extends _DeviceDefinitionDeviceName {
  const _$DeviceDefinitionDeviceNameImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.type,
      @JsonKey(name: '_type') this.typeElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$DeviceDefinitionDeviceNameImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeviceDefinitionDeviceNameImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [name] The name of the device.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [type] The type of deviceName.
  /// UDILabelName | UserFriendlyName | PatientReportedName |
  ///  ManufactureDeviceName | ModelName.
  @override
  final FhirCode? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceDefinitionDeviceNameImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      name,
      nameElement,
      type,
      typeElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceDefinitionDeviceNameImplCopyWith<_$DeviceDefinitionDeviceNameImpl>
      get copyWith => __$$DeviceDefinitionDeviceNameImplCopyWithImpl<
          _$DeviceDefinitionDeviceNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceDefinitionDeviceNameImplToJson(
      this,
    );
  }
}

abstract class _DeviceDefinitionDeviceName extends DeviceDefinitionDeviceName {
  const factory _DeviceDefinitionDeviceName(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final String? name,
          @JsonKey(name: '_name') final PrimitiveElement? nameElement,
          final FhirCode? type,
          @JsonKey(name: '_type') final PrimitiveElement? typeElement}) =
      _$DeviceDefinitionDeviceNameImpl;
  const _DeviceDefinitionDeviceName._() : super._();

  factory _DeviceDefinitionDeviceName.fromJson(Map<String, dynamic> json) =
      _$DeviceDefinitionDeviceNameImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [name] The name of the device.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [type] The type of deviceName.
  /// UDILabelName | UserFriendlyName | PatientReportedName |
  ///  ManufactureDeviceName | ModelName.
  FhirCode? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override
  @JsonKey(ignore: true)
  _$$DeviceDefinitionDeviceNameImplCopyWith<_$DeviceDefinitionDeviceNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeviceDefinitionSpecialization _$DeviceDefinitionSpecializationFromJson(
    Map<String, dynamic> json) {
  return _DeviceDefinitionSpecialization.fromJson(json);
}

/// @nodoc
mixin _$DeviceDefinitionSpecialization {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [systemType] The standard that is used to operate and communicate.
  String? get systemType => throw _privateConstructorUsedError;

  /// [systemTypeElement] Extensions for systemType
  @JsonKey(name: '_systemType')
  PrimitiveElement? get systemTypeElement => throw _privateConstructorUsedError;

  /// [version] The version of the standard that is used to operate and
  ///  communicate.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceDefinitionSpecializationCopyWith<DeviceDefinitionSpecialization>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDefinitionSpecializationCopyWith<$Res> {
  factory $DeviceDefinitionSpecializationCopyWith(
          DeviceDefinitionSpecialization value,
          $Res Function(DeviceDefinitionSpecialization) then) =
      _$DeviceDefinitionSpecializationCopyWithImpl<$Res,
          DeviceDefinitionSpecialization>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? systemType,
      @JsonKey(name: '_systemType') PrimitiveElement? systemTypeElement,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement});
}

/// @nodoc
class _$DeviceDefinitionSpecializationCopyWithImpl<$Res,
        $Val extends DeviceDefinitionSpecialization>
    implements $DeviceDefinitionSpecializationCopyWith<$Res> {
  _$DeviceDefinitionSpecializationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? systemType = freezed,
    Object? systemTypeElement = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      systemType: freezed == systemType
          ? _value.systemType
          : systemType // ignore: cast_nullable_to_non_nullable
              as String?,
      systemTypeElement: freezed == systemTypeElement
          ? _value.systemTypeElement
          : systemTypeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionElement: freezed == versionElement
          ? _value.versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceDefinitionSpecializationImplCopyWith<$Res>
    implements $DeviceDefinitionSpecializationCopyWith<$Res> {
  factory _$$DeviceDefinitionSpecializationImplCopyWith(
          _$DeviceDefinitionSpecializationImpl value,
          $Res Function(_$DeviceDefinitionSpecializationImpl) then) =
      __$$DeviceDefinitionSpecializationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? systemType,
      @JsonKey(name: '_systemType') PrimitiveElement? systemTypeElement,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement});
}

/// @nodoc
class __$$DeviceDefinitionSpecializationImplCopyWithImpl<$Res>
    extends _$DeviceDefinitionSpecializationCopyWithImpl<$Res,
        _$DeviceDefinitionSpecializationImpl>
    implements _$$DeviceDefinitionSpecializationImplCopyWith<$Res> {
  __$$DeviceDefinitionSpecializationImplCopyWithImpl(
      _$DeviceDefinitionSpecializationImpl _value,
      $Res Function(_$DeviceDefinitionSpecializationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? systemType = freezed,
    Object? systemTypeElement = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
  }) {
    return _then(_$DeviceDefinitionSpecializationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      systemType: freezed == systemType
          ? _value.systemType
          : systemType // ignore: cast_nullable_to_non_nullable
              as String?,
      systemTypeElement: freezed == systemTypeElement
          ? _value.systemTypeElement
          : systemTypeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionElement: freezed == versionElement
          ? _value.versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceDefinitionSpecializationImpl
    extends _DeviceDefinitionSpecialization {
  const _$DeviceDefinitionSpecializationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.systemType,
      @JsonKey(name: '_systemType') this.systemTypeElement,
      this.version,
      @JsonKey(name: '_version') this.versionElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$DeviceDefinitionSpecializationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeviceDefinitionSpecializationImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [systemType] The standard that is used to operate and communicate.
  @override
  final String? systemType;

  /// [systemTypeElement] Extensions for systemType
  @override
  @JsonKey(name: '_systemType')
  final PrimitiveElement? systemTypeElement;

  /// [version] The version of the standard that is used to operate and
  ///  communicate.
  @override
  final String? version;

  /// [versionElement] Extensions for version
  @override
  @JsonKey(name: '_version')
  final PrimitiveElement? versionElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceDefinitionSpecializationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.systemType, systemType) ||
                other.systemType == systemType) &&
            (identical(other.systemTypeElement, systemTypeElement) ||
                other.systemTypeElement == systemTypeElement) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.versionElement, versionElement) ||
                other.versionElement == versionElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      systemType,
      systemTypeElement,
      version,
      versionElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceDefinitionSpecializationImplCopyWith<
          _$DeviceDefinitionSpecializationImpl>
      get copyWith => __$$DeviceDefinitionSpecializationImplCopyWithImpl<
          _$DeviceDefinitionSpecializationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceDefinitionSpecializationImplToJson(
      this,
    );
  }
}

abstract class _DeviceDefinitionSpecialization
    extends DeviceDefinitionSpecialization {
  const factory _DeviceDefinitionSpecialization(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? systemType,
      @JsonKey(name: '_systemType') final PrimitiveElement? systemTypeElement,
      final String? version,
      @JsonKey(name: '_version')
      final PrimitiveElement?
          versionElement}) = _$DeviceDefinitionSpecializationImpl;
  const _DeviceDefinitionSpecialization._() : super._();

  factory _DeviceDefinitionSpecialization.fromJson(Map<String, dynamic> json) =
      _$DeviceDefinitionSpecializationImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [systemType] The standard that is used to operate and communicate.
  String? get systemType;
  @override

  /// [systemTypeElement] Extensions for systemType
  @JsonKey(name: '_systemType')
  PrimitiveElement? get systemTypeElement;
  @override

  /// [version] The version of the standard that is used to operate and
  ///  communicate.
  String? get version;
  @override

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement;
  @override
  @JsonKey(ignore: true)
  _$$DeviceDefinitionSpecializationImplCopyWith<
          _$DeviceDefinitionSpecializationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeviceDefinitionCapability _$DeviceDefinitionCapabilityFromJson(
    Map<String, dynamic> json) {
  return _DeviceDefinitionCapability.fromJson(json);
}

/// @nodoc
mixin _$DeviceDefinitionCapability {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] Type of capability.
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [description] Description of capability.
  List<CodeableConcept>? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceDefinitionCapabilityCopyWith<DeviceDefinitionCapability>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDefinitionCapabilityCopyWith<$Res> {
  factory $DeviceDefinitionCapabilityCopyWith(DeviceDefinitionCapability value,
          $Res Function(DeviceDefinitionCapability) then) =
      _$DeviceDefinitionCapabilityCopyWithImpl<$Res,
          DeviceDefinitionCapability>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      List<CodeableConcept>? description});

  $CodeableConceptCopyWith<$Res> get type;
}

/// @nodoc
class _$DeviceDefinitionCapabilityCopyWithImpl<$Res,
        $Val extends DeviceDefinitionCapability>
    implements $DeviceDefinitionCapabilityCopyWith<$Res> {
  _$DeviceDefinitionCapabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeviceDefinitionCapabilityImplCopyWith<$Res>
    implements $DeviceDefinitionCapabilityCopyWith<$Res> {
  factory _$$DeviceDefinitionCapabilityImplCopyWith(
          _$DeviceDefinitionCapabilityImpl value,
          $Res Function(_$DeviceDefinitionCapabilityImpl) then) =
      __$$DeviceDefinitionCapabilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      List<CodeableConcept>? description});

  @override
  $CodeableConceptCopyWith<$Res> get type;
}

/// @nodoc
class __$$DeviceDefinitionCapabilityImplCopyWithImpl<$Res>
    extends _$DeviceDefinitionCapabilityCopyWithImpl<$Res,
        _$DeviceDefinitionCapabilityImpl>
    implements _$$DeviceDefinitionCapabilityImplCopyWith<$Res> {
  __$$DeviceDefinitionCapabilityImplCopyWithImpl(
      _$DeviceDefinitionCapabilityImpl _value,
      $Res Function(_$DeviceDefinitionCapabilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? description = freezed,
  }) {
    return _then(_$DeviceDefinitionCapabilityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      description: freezed == description
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceDefinitionCapabilityImpl extends _DeviceDefinitionCapability {
  const _$DeviceDefinitionCapabilityImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      final List<CodeableConcept>? description})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _description = description,
        super._();

  factory _$DeviceDefinitionCapabilityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeviceDefinitionCapabilityImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] Type of capability.
  @override
  final CodeableConcept type;

  /// [description] Description of capability.
  final List<CodeableConcept>? _description;

  /// [description] Description of capability.
  @override
  List<CodeableConcept>? get description {
    final value = _description;
    if (value == null) return null;
    if (_description is EqualUnmodifiableListView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceDefinitionCapabilityImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._description, _description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      const DeepCollectionEquality().hash(_description));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceDefinitionCapabilityImplCopyWith<_$DeviceDefinitionCapabilityImpl>
      get copyWith => __$$DeviceDefinitionCapabilityImplCopyWithImpl<
          _$DeviceDefinitionCapabilityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceDefinitionCapabilityImplToJson(
      this,
    );
  }
}

abstract class _DeviceDefinitionCapability extends DeviceDefinitionCapability {
  const factory _DeviceDefinitionCapability(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept type,
          final List<CodeableConcept>? description}) =
      _$DeviceDefinitionCapabilityImpl;
  const _DeviceDefinitionCapability._() : super._();

  factory _DeviceDefinitionCapability.fromJson(Map<String, dynamic> json) =
      _$DeviceDefinitionCapabilityImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] Type of capability.
  CodeableConcept get type;
  @override

  /// [description] Description of capability.
  List<CodeableConcept>? get description;
  @override
  @JsonKey(ignore: true)
  _$$DeviceDefinitionCapabilityImplCopyWith<_$DeviceDefinitionCapabilityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeviceDefinitionProperty _$DeviceDefinitionPropertyFromJson(
    Map<String, dynamic> json) {
  return _DeviceDefinitionProperty.fromJson(json);
}

/// @nodoc
mixin _$DeviceDefinitionProperty {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] Code that specifies the property DeviceDefinitionPropetyCode
  ///  (Extensible).
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [valueQuantity] Property value as a quantity.
  List<Quantity>? get valueQuantity => throw _privateConstructorUsedError;

  /// [valueCode] Property value as a code, e.g., NTP4 (synced to NTP).
  List<CodeableConcept>? get valueCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceDefinitionPropertyCopyWith<DeviceDefinitionProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDefinitionPropertyCopyWith<$Res> {
  factory $DeviceDefinitionPropertyCopyWith(DeviceDefinitionProperty value,
          $Res Function(DeviceDefinitionProperty) then) =
      _$DeviceDefinitionPropertyCopyWithImpl<$Res, DeviceDefinitionProperty>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      List<Quantity>? valueQuantity,
      List<CodeableConcept>? valueCode});

  $CodeableConceptCopyWith<$Res> get type;
}

/// @nodoc
class _$DeviceDefinitionPropertyCopyWithImpl<$Res,
        $Val extends DeviceDefinitionProperty>
    implements $DeviceDefinitionPropertyCopyWith<$Res> {
  _$DeviceDefinitionPropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? valueQuantity = freezed,
    Object? valueCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as List<Quantity>?,
      valueCode: freezed == valueCode
          ? _value.valueCode
          : valueCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeviceDefinitionPropertyImplCopyWith<$Res>
    implements $DeviceDefinitionPropertyCopyWith<$Res> {
  factory _$$DeviceDefinitionPropertyImplCopyWith(
          _$DeviceDefinitionPropertyImpl value,
          $Res Function(_$DeviceDefinitionPropertyImpl) then) =
      __$$DeviceDefinitionPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      List<Quantity>? valueQuantity,
      List<CodeableConcept>? valueCode});

  @override
  $CodeableConceptCopyWith<$Res> get type;
}

/// @nodoc
class __$$DeviceDefinitionPropertyImplCopyWithImpl<$Res>
    extends _$DeviceDefinitionPropertyCopyWithImpl<$Res,
        _$DeviceDefinitionPropertyImpl>
    implements _$$DeviceDefinitionPropertyImplCopyWith<$Res> {
  __$$DeviceDefinitionPropertyImplCopyWithImpl(
      _$DeviceDefinitionPropertyImpl _value,
      $Res Function(_$DeviceDefinitionPropertyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? valueQuantity = freezed,
    Object? valueCode = freezed,
  }) {
    return _then(_$DeviceDefinitionPropertyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      valueQuantity: freezed == valueQuantity
          ? _value._valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as List<Quantity>?,
      valueCode: freezed == valueCode
          ? _value._valueCode
          : valueCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceDefinitionPropertyImpl extends _DeviceDefinitionProperty {
  const _$DeviceDefinitionPropertyImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      final List<Quantity>? valueQuantity,
      final List<CodeableConcept>? valueCode})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _valueQuantity = valueQuantity,
        _valueCode = valueCode,
        super._();

  factory _$DeviceDefinitionPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceDefinitionPropertyImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] Code that specifies the property DeviceDefinitionPropetyCode
  ///  (Extensible).
  @override
  final CodeableConcept type;

  /// [valueQuantity] Property value as a quantity.
  final List<Quantity>? _valueQuantity;

  /// [valueQuantity] Property value as a quantity.
  @override
  List<Quantity>? get valueQuantity {
    final value = _valueQuantity;
    if (value == null) return null;
    if (_valueQuantity is EqualUnmodifiableListView) return _valueQuantity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [valueCode] Property value as a code, e.g., NTP4 (synced to NTP).
  final List<CodeableConcept>? _valueCode;

  /// [valueCode] Property value as a code, e.g., NTP4 (synced to NTP).
  @override
  List<CodeableConcept>? get valueCode {
    final value = _valueCode;
    if (value == null) return null;
    if (_valueCode is EqualUnmodifiableListView) return _valueCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceDefinitionPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._valueQuantity, _valueQuantity) &&
            const DeepCollectionEquality()
                .equals(other._valueCode, _valueCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      const DeepCollectionEquality().hash(_valueQuantity),
      const DeepCollectionEquality().hash(_valueCode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceDefinitionPropertyImplCopyWith<_$DeviceDefinitionPropertyImpl>
      get copyWith => __$$DeviceDefinitionPropertyImplCopyWithImpl<
          _$DeviceDefinitionPropertyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceDefinitionPropertyImplToJson(
      this,
    );
  }
}

abstract class _DeviceDefinitionProperty extends DeviceDefinitionProperty {
  const factory _DeviceDefinitionProperty(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept type,
      final List<Quantity>? valueQuantity,
      final List<CodeableConcept>? valueCode}) = _$DeviceDefinitionPropertyImpl;
  const _DeviceDefinitionProperty._() : super._();

  factory _DeviceDefinitionProperty.fromJson(Map<String, dynamic> json) =
      _$DeviceDefinitionPropertyImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] Code that specifies the property DeviceDefinitionPropetyCode
  ///  (Extensible).
  CodeableConcept get type;
  @override

  /// [valueQuantity] Property value as a quantity.
  List<Quantity>? get valueQuantity;
  @override

  /// [valueCode] Property value as a code, e.g., NTP4 (synced to NTP).
  List<CodeableConcept>? get valueCode;
  @override
  @JsonKey(ignore: true)
  _$$DeviceDefinitionPropertyImplCopyWith<_$DeviceDefinitionPropertyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeviceDefinitionMaterial _$DeviceDefinitionMaterialFromJson(
    Map<String, dynamic> json) {
  return _DeviceDefinitionMaterial.fromJson(json);
}

/// @nodoc
mixin _$DeviceDefinitionMaterial {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [substance] The substance.
  CodeableConcept get substance => throw _privateConstructorUsedError;

  /// [alternate] Indicates an alternative material of the device.
  FhirBoolean? get alternate => throw _privateConstructorUsedError;

  /// [alternateElement] Extensions for alternate
  @JsonKey(name: '_alternate')
  PrimitiveElement? get alternateElement => throw _privateConstructorUsedError;

  /// [allergenicIndicator] Whether the substance is a known or suspected
  ///  allergen.
  FhirBoolean? get allergenicIndicator => throw _privateConstructorUsedError;

  /// [allergenicIndicatorElement] Extensions for allergenicIndicator
  @JsonKey(name: '_allergenicIndicator')
  PrimitiveElement? get allergenicIndicatorElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceDefinitionMaterialCopyWith<DeviceDefinitionMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDefinitionMaterialCopyWith<$Res> {
  factory $DeviceDefinitionMaterialCopyWith(DeviceDefinitionMaterial value,
          $Res Function(DeviceDefinitionMaterial) then) =
      _$DeviceDefinitionMaterialCopyWithImpl<$Res, DeviceDefinitionMaterial>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept substance,
      FhirBoolean? alternate,
      @JsonKey(name: '_alternate') PrimitiveElement? alternateElement,
      FhirBoolean? allergenicIndicator,
      @JsonKey(name: '_allergenicIndicator')
      PrimitiveElement? allergenicIndicatorElement});

  $CodeableConceptCopyWith<$Res> get substance;
}

/// @nodoc
class _$DeviceDefinitionMaterialCopyWithImpl<$Res,
        $Val extends DeviceDefinitionMaterial>
    implements $DeviceDefinitionMaterialCopyWith<$Res> {
  _$DeviceDefinitionMaterialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? substance = null,
    Object? alternate = freezed,
    Object? alternateElement = freezed,
    Object? allergenicIndicator = freezed,
    Object? allergenicIndicatorElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      substance: null == substance
          ? _value.substance
          : substance // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      alternate: freezed == alternate
          ? _value.alternate
          : alternate // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      alternateElement: freezed == alternateElement
          ? _value.alternateElement
          : alternateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      allergenicIndicator: freezed == allergenicIndicator
          ? _value.allergenicIndicator
          : allergenicIndicator // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      allergenicIndicatorElement: freezed == allergenicIndicatorElement
          ? _value.allergenicIndicatorElement
          : allergenicIndicatorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get substance {
    return $CodeableConceptCopyWith<$Res>(_value.substance, (value) {
      return _then(_value.copyWith(substance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeviceDefinitionMaterialImplCopyWith<$Res>
    implements $DeviceDefinitionMaterialCopyWith<$Res> {
  factory _$$DeviceDefinitionMaterialImplCopyWith(
          _$DeviceDefinitionMaterialImpl value,
          $Res Function(_$DeviceDefinitionMaterialImpl) then) =
      __$$DeviceDefinitionMaterialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept substance,
      FhirBoolean? alternate,
      @JsonKey(name: '_alternate') PrimitiveElement? alternateElement,
      FhirBoolean? allergenicIndicator,
      @JsonKey(name: '_allergenicIndicator')
      PrimitiveElement? allergenicIndicatorElement});

  @override
  $CodeableConceptCopyWith<$Res> get substance;
}

/// @nodoc
class __$$DeviceDefinitionMaterialImplCopyWithImpl<$Res>
    extends _$DeviceDefinitionMaterialCopyWithImpl<$Res,
        _$DeviceDefinitionMaterialImpl>
    implements _$$DeviceDefinitionMaterialImplCopyWith<$Res> {
  __$$DeviceDefinitionMaterialImplCopyWithImpl(
      _$DeviceDefinitionMaterialImpl _value,
      $Res Function(_$DeviceDefinitionMaterialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? substance = null,
    Object? alternate = freezed,
    Object? alternateElement = freezed,
    Object? allergenicIndicator = freezed,
    Object? allergenicIndicatorElement = freezed,
  }) {
    return _then(_$DeviceDefinitionMaterialImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      substance: null == substance
          ? _value.substance
          : substance // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      alternate: freezed == alternate
          ? _value.alternate
          : alternate // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      alternateElement: freezed == alternateElement
          ? _value.alternateElement
          : alternateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      allergenicIndicator: freezed == allergenicIndicator
          ? _value.allergenicIndicator
          : allergenicIndicator // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      allergenicIndicatorElement: freezed == allergenicIndicatorElement
          ? _value.allergenicIndicatorElement
          : allergenicIndicatorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceDefinitionMaterialImpl extends _DeviceDefinitionMaterial {
  const _$DeviceDefinitionMaterialImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.substance,
      this.alternate,
      @JsonKey(name: '_alternate') this.alternateElement,
      this.allergenicIndicator,
      @JsonKey(name: '_allergenicIndicator') this.allergenicIndicatorElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$DeviceDefinitionMaterialImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceDefinitionMaterialImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [substance] The substance.
  @override
  final CodeableConcept substance;

  /// [alternate] Indicates an alternative material of the device.
  @override
  final FhirBoolean? alternate;

  /// [alternateElement] Extensions for alternate
  @override
  @JsonKey(name: '_alternate')
  final PrimitiveElement? alternateElement;

  /// [allergenicIndicator] Whether the substance is a known or suspected
  ///  allergen.
  @override
  final FhirBoolean? allergenicIndicator;

  /// [allergenicIndicatorElement] Extensions for allergenicIndicator
  @override
  @JsonKey(name: '_allergenicIndicator')
  final PrimitiveElement? allergenicIndicatorElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceDefinitionMaterialImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.substance, substance) ||
                other.substance == substance) &&
            (identical(other.alternate, alternate) ||
                other.alternate == alternate) &&
            (identical(other.alternateElement, alternateElement) ||
                other.alternateElement == alternateElement) &&
            (identical(other.allergenicIndicator, allergenicIndicator) ||
                other.allergenicIndicator == allergenicIndicator) &&
            (identical(other.allergenicIndicatorElement,
                    allergenicIndicatorElement) ||
                other.allergenicIndicatorElement ==
                    allergenicIndicatorElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      substance,
      alternate,
      alternateElement,
      allergenicIndicator,
      allergenicIndicatorElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceDefinitionMaterialImplCopyWith<_$DeviceDefinitionMaterialImpl>
      get copyWith => __$$DeviceDefinitionMaterialImplCopyWithImpl<
          _$DeviceDefinitionMaterialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceDefinitionMaterialImplToJson(
      this,
    );
  }
}

abstract class _DeviceDefinitionMaterial extends DeviceDefinitionMaterial {
  const factory _DeviceDefinitionMaterial(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept substance,
          final FhirBoolean? alternate,
          @JsonKey(name: '_alternate') final PrimitiveElement? alternateElement,
          final FhirBoolean? allergenicIndicator,
          @JsonKey(name: '_allergenicIndicator')
          final PrimitiveElement? allergenicIndicatorElement}) =
      _$DeviceDefinitionMaterialImpl;
  const _DeviceDefinitionMaterial._() : super._();

  factory _DeviceDefinitionMaterial.fromJson(Map<String, dynamic> json) =
      _$DeviceDefinitionMaterialImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [substance] The substance.
  CodeableConcept get substance;
  @override

  /// [alternate] Indicates an alternative material of the device.
  FhirBoolean? get alternate;
  @override

  /// [alternateElement] Extensions for alternate
  @JsonKey(name: '_alternate')
  PrimitiveElement? get alternateElement;
  @override

  /// [allergenicIndicator] Whether the substance is a known or suspected
  ///  allergen.
  FhirBoolean? get allergenicIndicator;
  @override

  /// [allergenicIndicatorElement] Extensions for allergenicIndicator
  @JsonKey(name: '_allergenicIndicator')
  PrimitiveElement? get allergenicIndicatorElement;
  @override
  @JsonKey(ignore: true)
  _$$DeviceDefinitionMaterialImplCopyWith<_$DeviceDefinitionMaterialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
