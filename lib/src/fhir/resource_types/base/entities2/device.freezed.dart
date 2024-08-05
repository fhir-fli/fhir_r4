// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Device _$DeviceFromJson(Map<String, dynamic> json) {
  return _Device.fromJson(json);
}

/// @nodoc
mixin _$Device {
  @JsonKey(unknownEnumValue: R4ResourceType.Device)
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

  /// [identifier] Unique instance identifiers assigned to a device by
  ///  manufacturers other organizations or owners.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [definition] The reference to the definition for the device.
  Reference? get definition => throw _privateConstructorUsedError;

  /// [udiCarrier] Unique device identifier (UDI) assigned to device label or
  /// package.  Note that the Device may include multiple udiCarriers as it
  /// either may include just the udiCarrier for the jurisdiction it is sold, or
  ///  for multiple jurisdictions it could have been sold.
  List<DeviceUdiCarrier>? get udiCarrier => throw _privateConstructorUsedError;

  /// [status] Status of the Device availability.
  DeviceStatus? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [statusReason] Reason for the dtatus of the Device availability.
  List<CodeableConcept>? get statusReason => throw _privateConstructorUsedError;

  /// [distinctIdentifier] The distinct identification string as required by
  /// regulation for a human cell, tissue, or cellular and tissue-based
  ///  product.
  String? get distinctIdentifier => throw _privateConstructorUsedError;

  /// [distinctIdentifierElement] Extensions for distinctIdentifier
  @JsonKey(name: '_distinctIdentifier')
  PrimitiveElement? get distinctIdentifierElement =>
      throw _privateConstructorUsedError;

  /// [manufacturer] A name of the manufacturer.
  String? get manufacturer => throw _privateConstructorUsedError;

  /// [manufacturerElement] Extensions for manufacturer
  @JsonKey(name: '_manufacturer')
  PrimitiveElement? get manufacturerElement =>
      throw _privateConstructorUsedError;

  /// [manufactureDate] The date and time when the device was manufactured.
  FhirDateTime? get manufactureDate => throw _privateConstructorUsedError;

  /// [manufactureDateElement] Extensions for manufactureDate
  @JsonKey(name: '_manufactureDate')
  PrimitiveElement? get manufactureDateElement =>
      throw _privateConstructorUsedError;

  /// [expirationDate] The date and time beyond which this device is no longer
  ///  valid or should not be used (if applicable).
  FhirDateTime? get expirationDate => throw _privateConstructorUsedError;

  /// [expirationDateElement] Extensions for expirationDate
  @JsonKey(name: '_expirationDate')
  PrimitiveElement? get expirationDateElement =>
      throw _privateConstructorUsedError;

  /// [lotNumber] Lot number assigned by the manufacturer.
  String? get lotNumber => throw _privateConstructorUsedError;

  /// [lotNumberElement] Extensions for lotNumber
  @JsonKey(name: '_lotNumber')
  PrimitiveElement? get lotNumberElement => throw _privateConstructorUsedError;

  /// [serialNumber] The serial number assigned by the organization when the
  ///  device was manufactured.
  String? get serialNumber => throw _privateConstructorUsedError;

  /// [serialNumberElement] Extensions for serialNumber
  @JsonKey(name: '_serialNumber')
  PrimitiveElement? get serialNumberElement =>
      throw _privateConstructorUsedError;

  /// [deviceName] This represents the manufacturer's name of the device as
  /// provided by the device, from a UDI label, or by a person describing the
  /// Device.  This typically would be used when a person provides the name(s)
  /// or when the device represents one of the names available from
  ///  DeviceDefinition.
  List<DeviceDeviceName>? get deviceName => throw _privateConstructorUsedError;

  /// [modelNumber] The model number for the device.
  String? get modelNumber => throw _privateConstructorUsedError;

  /// [modelNumberElement] Extensions for modelNumber
  @JsonKey(name: '_modelNumber')
  PrimitiveElement? get modelNumberElement =>
      throw _privateConstructorUsedError;

  /// [partNumber] The part number of the device.
  String? get partNumber => throw _privateConstructorUsedError;

  /// [partNumberElement] Extensions for partNumber
  @JsonKey(name: '_partNumber')
  PrimitiveElement? get partNumberElement => throw _privateConstructorUsedError;

  /// [type] The kind or type of device.
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [specialization] The capabilities supported on a  device, the standards
  /// to which the device conforms for a particular purpose, and used for the
  ///  communication.
  List<DeviceSpecialization>? get specialization =>
      throw _privateConstructorUsedError;

  /// [version] The actual design of the device or software version running on
  ///  the device.
  List<DeviceVersion>? get version => throw _privateConstructorUsedError;

  /// [property] The actual configuration settings of a device as it actually
  ///  operates, e.g., regulation status, time properties.
  List<DeviceProperty>? get property => throw _privateConstructorUsedError;

  /// [patient] Patient information, If the device is affixed to a person.
  Reference? get patient => throw _privateConstructorUsedError;

  /// [owner] An organization that is responsible for the provision and ongoing
  ///  maintenance of the device.
  Reference? get owner => throw _privateConstructorUsedError;

  /// [contact] Contact details for an organization or a particular human that
  ///  is responsible for the device.
  List<ContactPoint>? get contact => throw _privateConstructorUsedError;

  /// [location] The place where the device can be found.
  Reference? get location => throw _privateConstructorUsedError;

  /// [url] A network address on which the device may be contacted directly.
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [note] Descriptive information, usage information or implantation
  ///  information that is not captured in an existing element.
  List<Annotation>? get note => throw _privateConstructorUsedError;

  /// [safety] Provides additional safety characteristics about a medical
  ///  device.  For example devices containing latex.
  List<CodeableConcept>? get safety => throw _privateConstructorUsedError;

  /// [parent] The parent device.
  Reference? get parent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceCopyWith<Device> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceCopyWith<$Res> {
  factory $DeviceCopyWith(Device value, $Res Function(Device) then) =
      _$DeviceCopyWithImpl<$Res, Device>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Device)
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
      Reference? definition,
      List<DeviceUdiCarrier>? udiCarrier,
      DeviceStatus? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      List<CodeableConcept>? statusReason,
      String? distinctIdentifier,
      @JsonKey(name: '_distinctIdentifier')
      PrimitiveElement? distinctIdentifierElement,
      String? manufacturer,
      @JsonKey(name: '_manufacturer') PrimitiveElement? manufacturerElement,
      FhirDateTime? manufactureDate,
      @JsonKey(name: '_manufactureDate')
      PrimitiveElement? manufactureDateElement,
      FhirDateTime? expirationDate,
      @JsonKey(name: '_expirationDate') PrimitiveElement? expirationDateElement,
      String? lotNumber,
      @JsonKey(name: '_lotNumber') PrimitiveElement? lotNumberElement,
      String? serialNumber,
      @JsonKey(name: '_serialNumber') PrimitiveElement? serialNumberElement,
      List<DeviceDeviceName>? deviceName,
      String? modelNumber,
      @JsonKey(name: '_modelNumber') PrimitiveElement? modelNumberElement,
      String? partNumber,
      @JsonKey(name: '_partNumber') PrimitiveElement? partNumberElement,
      CodeableConcept? type,
      List<DeviceSpecialization>? specialization,
      List<DeviceVersion>? version,
      List<DeviceProperty>? property,
      Reference? patient,
      Reference? owner,
      List<ContactPoint>? contact,
      Reference? location,
      FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      List<Annotation>? note,
      List<CodeableConcept>? safety,
      Reference? parent});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $ReferenceCopyWith<$Res>? get definition;
  $CodeableConceptCopyWith<$Res>? get type;
  $ReferenceCopyWith<$Res>? get patient;
  $ReferenceCopyWith<$Res>? get owner;
  $ReferenceCopyWith<$Res>? get location;
  $ReferenceCopyWith<$Res>? get parent;
}

/// @nodoc
class _$DeviceCopyWithImpl<$Res, $Val extends Device>
    implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._value, this._then);

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
    Object? definition = freezed,
    Object? udiCarrier = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? statusReason = freezed,
    Object? distinctIdentifier = freezed,
    Object? distinctIdentifierElement = freezed,
    Object? manufacturer = freezed,
    Object? manufacturerElement = freezed,
    Object? manufactureDate = freezed,
    Object? manufactureDateElement = freezed,
    Object? expirationDate = freezed,
    Object? expirationDateElement = freezed,
    Object? lotNumber = freezed,
    Object? lotNumberElement = freezed,
    Object? serialNumber = freezed,
    Object? serialNumberElement = freezed,
    Object? deviceName = freezed,
    Object? modelNumber = freezed,
    Object? modelNumberElement = freezed,
    Object? partNumber = freezed,
    Object? partNumberElement = freezed,
    Object? type = freezed,
    Object? specialization = freezed,
    Object? version = freezed,
    Object? property = freezed,
    Object? patient = freezed,
    Object? owner = freezed,
    Object? contact = freezed,
    Object? location = freezed,
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? note = freezed,
    Object? safety = freezed,
    Object? parent = freezed,
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
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as Reference?,
      udiCarrier: freezed == udiCarrier
          ? _value.udiCarrier
          : udiCarrier // ignore: cast_nullable_to_non_nullable
              as List<DeviceUdiCarrier>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeviceStatus?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      statusReason: freezed == statusReason
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      distinctIdentifier: freezed == distinctIdentifier
          ? _value.distinctIdentifier
          : distinctIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      distinctIdentifierElement: freezed == distinctIdentifierElement
          ? _value.distinctIdentifierElement
          : distinctIdentifierElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturerElement: freezed == manufacturerElement
          ? _value.manufacturerElement
          : manufacturerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      manufactureDate: freezed == manufactureDate
          ? _value.manufactureDate
          : manufactureDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      manufactureDateElement: freezed == manufactureDateElement
          ? _value.manufactureDateElement
          : manufactureDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      expirationDateElement: freezed == expirationDateElement
          ? _value.expirationDateElement
          : expirationDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumberElement: freezed == lotNumberElement
          ? _value.lotNumberElement
          : lotNumberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumberElement: freezed == serialNumberElement
          ? _value.serialNumberElement
          : serialNumberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as List<DeviceDeviceName>?,
      modelNumber: freezed == modelNumber
          ? _value.modelNumber
          : modelNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      modelNumberElement: freezed == modelNumberElement
          ? _value.modelNumberElement
          : modelNumberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      partNumber: freezed == partNumber
          ? _value.partNumber
          : partNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      partNumberElement: freezed == partNumberElement
          ? _value.partNumberElement
          : partNumberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as List<DeviceSpecialization>?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as List<DeviceVersion>?,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as List<DeviceProperty>?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Reference?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Reference?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      safety: freezed == safety
          ? _value.safety
          : safety // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Reference?,
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
  $ReferenceCopyWith<$Res>? get definition {
    if (_value.definition == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.definition!, (value) {
      return _then(_value.copyWith(definition: value) as $Val);
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
  $ReferenceCopyWith<$Res>? get patient {
    if (_value.patient == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.patient!, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
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
  $ReferenceCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeviceImplCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$$DeviceImplCopyWith(
          _$DeviceImpl value, $Res Function(_$DeviceImpl) then) =
      __$$DeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Device)
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
      Reference? definition,
      List<DeviceUdiCarrier>? udiCarrier,
      DeviceStatus? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      List<CodeableConcept>? statusReason,
      String? distinctIdentifier,
      @JsonKey(name: '_distinctIdentifier')
      PrimitiveElement? distinctIdentifierElement,
      String? manufacturer,
      @JsonKey(name: '_manufacturer') PrimitiveElement? manufacturerElement,
      FhirDateTime? manufactureDate,
      @JsonKey(name: '_manufactureDate')
      PrimitiveElement? manufactureDateElement,
      FhirDateTime? expirationDate,
      @JsonKey(name: '_expirationDate') PrimitiveElement? expirationDateElement,
      String? lotNumber,
      @JsonKey(name: '_lotNumber') PrimitiveElement? lotNumberElement,
      String? serialNumber,
      @JsonKey(name: '_serialNumber') PrimitiveElement? serialNumberElement,
      List<DeviceDeviceName>? deviceName,
      String? modelNumber,
      @JsonKey(name: '_modelNumber') PrimitiveElement? modelNumberElement,
      String? partNumber,
      @JsonKey(name: '_partNumber') PrimitiveElement? partNumberElement,
      CodeableConcept? type,
      List<DeviceSpecialization>? specialization,
      List<DeviceVersion>? version,
      List<DeviceProperty>? property,
      Reference? patient,
      Reference? owner,
      List<ContactPoint>? contact,
      Reference? location,
      FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      List<Annotation>? note,
      List<CodeableConcept>? safety,
      Reference? parent});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ReferenceCopyWith<$Res>? get definition;
  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $ReferenceCopyWith<$Res>? get patient;
  @override
  $ReferenceCopyWith<$Res>? get owner;
  @override
  $ReferenceCopyWith<$Res>? get location;
  @override
  $ReferenceCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$DeviceImplCopyWithImpl<$Res>
    extends _$DeviceCopyWithImpl<$Res, _$DeviceImpl>
    implements _$$DeviceImplCopyWith<$Res> {
  __$$DeviceImplCopyWithImpl(
      _$DeviceImpl _value, $Res Function(_$DeviceImpl) _then)
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
    Object? definition = freezed,
    Object? udiCarrier = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? statusReason = freezed,
    Object? distinctIdentifier = freezed,
    Object? distinctIdentifierElement = freezed,
    Object? manufacturer = freezed,
    Object? manufacturerElement = freezed,
    Object? manufactureDate = freezed,
    Object? manufactureDateElement = freezed,
    Object? expirationDate = freezed,
    Object? expirationDateElement = freezed,
    Object? lotNumber = freezed,
    Object? lotNumberElement = freezed,
    Object? serialNumber = freezed,
    Object? serialNumberElement = freezed,
    Object? deviceName = freezed,
    Object? modelNumber = freezed,
    Object? modelNumberElement = freezed,
    Object? partNumber = freezed,
    Object? partNumberElement = freezed,
    Object? type = freezed,
    Object? specialization = freezed,
    Object? version = freezed,
    Object? property = freezed,
    Object? patient = freezed,
    Object? owner = freezed,
    Object? contact = freezed,
    Object? location = freezed,
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? note = freezed,
    Object? safety = freezed,
    Object? parent = freezed,
  }) {
    return _then(_$DeviceImpl(
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
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as Reference?,
      udiCarrier: freezed == udiCarrier
          ? _value._udiCarrier
          : udiCarrier // ignore: cast_nullable_to_non_nullable
              as List<DeviceUdiCarrier>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeviceStatus?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      statusReason: freezed == statusReason
          ? _value._statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      distinctIdentifier: freezed == distinctIdentifier
          ? _value.distinctIdentifier
          : distinctIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      distinctIdentifierElement: freezed == distinctIdentifierElement
          ? _value.distinctIdentifierElement
          : distinctIdentifierElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturerElement: freezed == manufacturerElement
          ? _value.manufacturerElement
          : manufacturerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      manufactureDate: freezed == manufactureDate
          ? _value.manufactureDate
          : manufactureDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      manufactureDateElement: freezed == manufactureDateElement
          ? _value.manufactureDateElement
          : manufactureDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      expirationDateElement: freezed == expirationDateElement
          ? _value.expirationDateElement
          : expirationDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumberElement: freezed == lotNumberElement
          ? _value.lotNumberElement
          : lotNumberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumberElement: freezed == serialNumberElement
          ? _value.serialNumberElement
          : serialNumberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      deviceName: freezed == deviceName
          ? _value._deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as List<DeviceDeviceName>?,
      modelNumber: freezed == modelNumber
          ? _value.modelNumber
          : modelNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      modelNumberElement: freezed == modelNumberElement
          ? _value.modelNumberElement
          : modelNumberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      partNumber: freezed == partNumber
          ? _value.partNumber
          : partNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      partNumberElement: freezed == partNumberElement
          ? _value.partNumberElement
          : partNumberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      specialization: freezed == specialization
          ? _value._specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as List<DeviceSpecialization>?,
      version: freezed == version
          ? _value._version
          : version // ignore: cast_nullable_to_non_nullable
              as List<DeviceVersion>?,
      property: freezed == property
          ? _value._property
          : property // ignore: cast_nullable_to_non_nullable
              as List<DeviceProperty>?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Reference?,
      contact: freezed == contact
          ? _value._contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Reference?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      safety: freezed == safety
          ? _value._safety
          : safety // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceImpl extends _Device {
  const _$DeviceImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.Device)
      this.resourceType = R4ResourceType.Device,
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
      this.definition,
      final List<DeviceUdiCarrier>? udiCarrier,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      final List<CodeableConcept>? statusReason,
      this.distinctIdentifier,
      @JsonKey(name: '_distinctIdentifier') this.distinctIdentifierElement,
      this.manufacturer,
      @JsonKey(name: '_manufacturer') this.manufacturerElement,
      this.manufactureDate,
      @JsonKey(name: '_manufactureDate') this.manufactureDateElement,
      this.expirationDate,
      @JsonKey(name: '_expirationDate') this.expirationDateElement,
      this.lotNumber,
      @JsonKey(name: '_lotNumber') this.lotNumberElement,
      this.serialNumber,
      @JsonKey(name: '_serialNumber') this.serialNumberElement,
      final List<DeviceDeviceName>? deviceName,
      this.modelNumber,
      @JsonKey(name: '_modelNumber') this.modelNumberElement,
      this.partNumber,
      @JsonKey(name: '_partNumber') this.partNumberElement,
      this.type,
      final List<DeviceSpecialization>? specialization,
      final List<DeviceVersion>? version,
      final List<DeviceProperty>? property,
      this.patient,
      this.owner,
      final List<ContactPoint>? contact,
      this.location,
      this.url,
      @JsonKey(name: '_url') this.urlElement,
      final List<Annotation>? note,
      final List<CodeableConcept>? safety,
      this.parent})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _udiCarrier = udiCarrier,
        _statusReason = statusReason,
        _deviceName = deviceName,
        _specialization = specialization,
        _version = version,
        _property = property,
        _contact = contact,
        _note = note,
        _safety = safety,
        super._();

  factory _$DeviceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Device)
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

  /// [identifier] Unique instance identifiers assigned to a device by
  ///  manufacturers other organizations or owners.
  final List<Identifier>? _identifier;

  /// [identifier] Unique instance identifiers assigned to a device by
  ///  manufacturers other organizations or owners.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [definition] The reference to the definition for the device.
  @override
  final Reference? definition;

  /// [udiCarrier] Unique device identifier (UDI) assigned to device label or
  /// package.  Note that the Device may include multiple udiCarriers as it
  /// either may include just the udiCarrier for the jurisdiction it is sold, or
  ///  for multiple jurisdictions it could have been sold.
  final List<DeviceUdiCarrier>? _udiCarrier;

  /// [udiCarrier] Unique device identifier (UDI) assigned to device label or
  /// package.  Note that the Device may include multiple udiCarriers as it
  /// either may include just the udiCarrier for the jurisdiction it is sold, or
  ///  for multiple jurisdictions it could have been sold.
  @override
  List<DeviceUdiCarrier>? get udiCarrier {
    final value = _udiCarrier;
    if (value == null) return null;
    if (_udiCarrier is EqualUnmodifiableListView) return _udiCarrier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] Status of the Device availability.
  @override
  final DeviceStatus? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [statusReason] Reason for the dtatus of the Device availability.
  final List<CodeableConcept>? _statusReason;

  /// [statusReason] Reason for the dtatus of the Device availability.
  @override
  List<CodeableConcept>? get statusReason {
    final value = _statusReason;
    if (value == null) return null;
    if (_statusReason is EqualUnmodifiableListView) return _statusReason;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [distinctIdentifier] The distinct identification string as required by
  /// regulation for a human cell, tissue, or cellular and tissue-based
  ///  product.
  @override
  final String? distinctIdentifier;

  /// [distinctIdentifierElement] Extensions for distinctIdentifier
  @override
  @JsonKey(name: '_distinctIdentifier')
  final PrimitiveElement? distinctIdentifierElement;

  /// [manufacturer] A name of the manufacturer.
  @override
  final String? manufacturer;

  /// [manufacturerElement] Extensions for manufacturer
  @override
  @JsonKey(name: '_manufacturer')
  final PrimitiveElement? manufacturerElement;

  /// [manufactureDate] The date and time when the device was manufactured.
  @override
  final FhirDateTime? manufactureDate;

  /// [manufactureDateElement] Extensions for manufactureDate
  @override
  @JsonKey(name: '_manufactureDate')
  final PrimitiveElement? manufactureDateElement;

  /// [expirationDate] The date and time beyond which this device is no longer
  ///  valid or should not be used (if applicable).
  @override
  final FhirDateTime? expirationDate;

  /// [expirationDateElement] Extensions for expirationDate
  @override
  @JsonKey(name: '_expirationDate')
  final PrimitiveElement? expirationDateElement;

  /// [lotNumber] Lot number assigned by the manufacturer.
  @override
  final String? lotNumber;

  /// [lotNumberElement] Extensions for lotNumber
  @override
  @JsonKey(name: '_lotNumber')
  final PrimitiveElement? lotNumberElement;

  /// [serialNumber] The serial number assigned by the organization when the
  ///  device was manufactured.
  @override
  final String? serialNumber;

  /// [serialNumberElement] Extensions for serialNumber
  @override
  @JsonKey(name: '_serialNumber')
  final PrimitiveElement? serialNumberElement;

  /// [deviceName] This represents the manufacturer's name of the device as
  /// provided by the device, from a UDI label, or by a person describing the
  /// Device.  This typically would be used when a person provides the name(s)
  /// or when the device represents one of the names available from
  ///  DeviceDefinition.
  final List<DeviceDeviceName>? _deviceName;

  /// [deviceName] This represents the manufacturer's name of the device as
  /// provided by the device, from a UDI label, or by a person describing the
  /// Device.  This typically would be used when a person provides the name(s)
  /// or when the device represents one of the names available from
  ///  DeviceDefinition.
  @override
  List<DeviceDeviceName>? get deviceName {
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

  /// [partNumber] The part number of the device.
  @override
  final String? partNumber;

  /// [partNumberElement] Extensions for partNumber
  @override
  @JsonKey(name: '_partNumber')
  final PrimitiveElement? partNumberElement;

  /// [type] The kind or type of device.
  @override
  final CodeableConcept? type;

  /// [specialization] The capabilities supported on a  device, the standards
  /// to which the device conforms for a particular purpose, and used for the
  ///  communication.
  final List<DeviceSpecialization>? _specialization;

  /// [specialization] The capabilities supported on a  device, the standards
  /// to which the device conforms for a particular purpose, and used for the
  ///  communication.
  @override
  List<DeviceSpecialization>? get specialization {
    final value = _specialization;
    if (value == null) return null;
    if (_specialization is EqualUnmodifiableListView) return _specialization;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [version] The actual design of the device or software version running on
  ///  the device.
  final List<DeviceVersion>? _version;

  /// [version] The actual design of the device or software version running on
  ///  the device.
  @override
  List<DeviceVersion>? get version {
    final value = _version;
    if (value == null) return null;
    if (_version is EqualUnmodifiableListView) return _version;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [property] The actual configuration settings of a device as it actually
  ///  operates, e.g., regulation status, time properties.
  final List<DeviceProperty>? _property;

  /// [property] The actual configuration settings of a device as it actually
  ///  operates, e.g., regulation status, time properties.
  @override
  List<DeviceProperty>? get property {
    final value = _property;
    if (value == null) return null;
    if (_property is EqualUnmodifiableListView) return _property;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [patient] Patient information, If the device is affixed to a person.
  @override
  final Reference? patient;

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

  /// [location] The place where the device can be found.
  @override
  final Reference? location;

  /// [url] A network address on which the device may be contacted directly.
  @override
  final FhirUri? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

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

  /// [safety] Provides additional safety characteristics about a medical
  ///  device.  For example devices containing latex.
  final List<CodeableConcept>? _safety;

  /// [safety] Provides additional safety characteristics about a medical
  ///  device.  For example devices containing latex.
  @override
  List<CodeableConcept>? get safety {
    final value = _safety;
    if (value == null) return null;
    if (_safety is EqualUnmodifiableListView) return _safety;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [parent] The parent device.
  @override
  final Reference? parent;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceImpl &&
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
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            const DeepCollectionEquality()
                .equals(other._udiCarrier, _udiCarrier) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            const DeepCollectionEquality()
                .equals(other._statusReason, _statusReason) &&
            (identical(other.distinctIdentifier, distinctIdentifier) ||
                other.distinctIdentifier == distinctIdentifier) &&
            (identical(other.distinctIdentifierElement,
                    distinctIdentifierElement) ||
                other.distinctIdentifierElement == distinctIdentifierElement) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.manufacturerElement, manufacturerElement) ||
                other.manufacturerElement == manufacturerElement) &&
            (identical(other.manufactureDate, manufactureDate) ||
                other.manufactureDate == manufactureDate) &&
            (identical(other.manufactureDateElement, manufactureDateElement) ||
                other.manufactureDateElement == manufactureDateElement) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.expirationDateElement, expirationDateElement) ||
                other.expirationDateElement == expirationDateElement) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.lotNumberElement, lotNumberElement) ||
                other.lotNumberElement == lotNumberElement) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.serialNumberElement, serialNumberElement) ||
                other.serialNumberElement == serialNumberElement) &&
            const DeepCollectionEquality()
                .equals(other._deviceName, _deviceName) &&
            (identical(other.modelNumber, modelNumber) ||
                other.modelNumber == modelNumber) &&
            (identical(other.modelNumberElement, modelNumberElement) ||
                other.modelNumberElement == modelNumberElement) &&
            (identical(other.partNumber, partNumber) ||
                other.partNumber == partNumber) &&
            (identical(other.partNumberElement, partNumberElement) ||
                other.partNumberElement == partNumberElement) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._specialization, _specialization) &&
            const DeepCollectionEquality().equals(other._version, _version) &&
            const DeepCollectionEquality().equals(other._property, _property) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            const DeepCollectionEquality().equals(other._contact, _contact) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlElement, urlElement) ||
                other.urlElement == urlElement) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            const DeepCollectionEquality().equals(other._safety, _safety) &&
            (identical(other.parent, parent) || other.parent == parent));
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
        definition,
        const DeepCollectionEquality().hash(_udiCarrier),
        status,
        statusElement,
        const DeepCollectionEquality().hash(_statusReason),
        distinctIdentifier,
        distinctIdentifierElement,
        manufacturer,
        manufacturerElement,
        manufactureDate,
        manufactureDateElement,
        expirationDate,
        expirationDateElement,
        lotNumber,
        lotNumberElement,
        serialNumber,
        serialNumberElement,
        const DeepCollectionEquality().hash(_deviceName),
        modelNumber,
        modelNumberElement,
        partNumber,
        partNumberElement,
        type,
        const DeepCollectionEquality().hash(_specialization),
        const DeepCollectionEquality().hash(_version),
        const DeepCollectionEquality().hash(_property),
        patient,
        owner,
        const DeepCollectionEquality().hash(_contact),
        location,
        url,
        urlElement,
        const DeepCollectionEquality().hash(_note),
        const DeepCollectionEquality().hash(_safety),
        parent
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceImplCopyWith<_$DeviceImpl> get copyWith =>
      __$$DeviceImplCopyWithImpl<_$DeviceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceImplToJson(
      this,
    );
  }
}

abstract class _Device extends Device {
  factory _Device(
      {@JsonKey(unknownEnumValue: R4ResourceType.Device)
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
      final Reference? definition,
      final List<DeviceUdiCarrier>? udiCarrier,
      final DeviceStatus? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final List<CodeableConcept>? statusReason,
      final String? distinctIdentifier,
      @JsonKey(name: '_distinctIdentifier')
      final PrimitiveElement? distinctIdentifierElement,
      final String? manufacturer,
      @JsonKey(name: '_manufacturer')
      final PrimitiveElement? manufacturerElement,
      final FhirDateTime? manufactureDate,
      @JsonKey(name: '_manufactureDate')
      final PrimitiveElement? manufactureDateElement,
      final FhirDateTime? expirationDate,
      @JsonKey(name: '_expirationDate')
      final PrimitiveElement? expirationDateElement,
      final String? lotNumber,
      @JsonKey(name: '_lotNumber') final PrimitiveElement? lotNumberElement,
      final String? serialNumber,
      @JsonKey(name: '_serialNumber')
      final PrimitiveElement? serialNumberElement,
      final List<DeviceDeviceName>? deviceName,
      final String? modelNumber,
      @JsonKey(name: '_modelNumber') final PrimitiveElement? modelNumberElement,
      final String? partNumber,
      @JsonKey(name: '_partNumber') final PrimitiveElement? partNumberElement,
      final CodeableConcept? type,
      final List<DeviceSpecialization>? specialization,
      final List<DeviceVersion>? version,
      final List<DeviceProperty>? property,
      final Reference? patient,
      final Reference? owner,
      final List<ContactPoint>? contact,
      final Reference? location,
      final FhirUri? url,
      @JsonKey(name: '_url') final PrimitiveElement? urlElement,
      final List<Annotation>? note,
      final List<CodeableConcept>? safety,
      final Reference? parent}) = _$DeviceImpl;
  const _Device._() : super._();

  factory _Device.fromJson(Map<String, dynamic> json) = _$DeviceImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Device)
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

  /// [identifier] Unique instance identifiers assigned to a device by
  ///  manufacturers other organizations or owners.
  List<Identifier>? get identifier;
  @override

  /// [definition] The reference to the definition for the device.
  Reference? get definition;
  @override

  /// [udiCarrier] Unique device identifier (UDI) assigned to device label or
  /// package.  Note that the Device may include multiple udiCarriers as it
  /// either may include just the udiCarrier for the jurisdiction it is sold, or
  ///  for multiple jurisdictions it could have been sold.
  List<DeviceUdiCarrier>? get udiCarrier;
  @override

  /// [status] Status of the Device availability.
  DeviceStatus? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [statusReason] Reason for the dtatus of the Device availability.
  List<CodeableConcept>? get statusReason;
  @override

  /// [distinctIdentifier] The distinct identification string as required by
  /// regulation for a human cell, tissue, or cellular and tissue-based
  ///  product.
  String? get distinctIdentifier;
  @override

  /// [distinctIdentifierElement] Extensions for distinctIdentifier
  @JsonKey(name: '_distinctIdentifier')
  PrimitiveElement? get distinctIdentifierElement;
  @override

  /// [manufacturer] A name of the manufacturer.
  String? get manufacturer;
  @override

  /// [manufacturerElement] Extensions for manufacturer
  @JsonKey(name: '_manufacturer')
  PrimitiveElement? get manufacturerElement;
  @override

  /// [manufactureDate] The date and time when the device was manufactured.
  FhirDateTime? get manufactureDate;
  @override

  /// [manufactureDateElement] Extensions for manufactureDate
  @JsonKey(name: '_manufactureDate')
  PrimitiveElement? get manufactureDateElement;
  @override

  /// [expirationDate] The date and time beyond which this device is no longer
  ///  valid or should not be used (if applicable).
  FhirDateTime? get expirationDate;
  @override

  /// [expirationDateElement] Extensions for expirationDate
  @JsonKey(name: '_expirationDate')
  PrimitiveElement? get expirationDateElement;
  @override

  /// [lotNumber] Lot number assigned by the manufacturer.
  String? get lotNumber;
  @override

  /// [lotNumberElement] Extensions for lotNumber
  @JsonKey(name: '_lotNumber')
  PrimitiveElement? get lotNumberElement;
  @override

  /// [serialNumber] The serial number assigned by the organization when the
  ///  device was manufactured.
  String? get serialNumber;
  @override

  /// [serialNumberElement] Extensions for serialNumber
  @JsonKey(name: '_serialNumber')
  PrimitiveElement? get serialNumberElement;
  @override

  /// [deviceName] This represents the manufacturer's name of the device as
  /// provided by the device, from a UDI label, or by a person describing the
  /// Device.  This typically would be used when a person provides the name(s)
  /// or when the device represents one of the names available from
  ///  DeviceDefinition.
  List<DeviceDeviceName>? get deviceName;
  @override

  /// [modelNumber] The model number for the device.
  String? get modelNumber;
  @override

  /// [modelNumberElement] Extensions for modelNumber
  @JsonKey(name: '_modelNumber')
  PrimitiveElement? get modelNumberElement;
  @override

  /// [partNumber] The part number of the device.
  String? get partNumber;
  @override

  /// [partNumberElement] Extensions for partNumber
  @JsonKey(name: '_partNumber')
  PrimitiveElement? get partNumberElement;
  @override

  /// [type] The kind or type of device.
  CodeableConcept? get type;
  @override

  /// [specialization] The capabilities supported on a  device, the standards
  /// to which the device conforms for a particular purpose, and used for the
  ///  communication.
  List<DeviceSpecialization>? get specialization;
  @override

  /// [version] The actual design of the device or software version running on
  ///  the device.
  List<DeviceVersion>? get version;
  @override

  /// [property] The actual configuration settings of a device as it actually
  ///  operates, e.g., regulation status, time properties.
  List<DeviceProperty>? get property;
  @override

  /// [patient] Patient information, If the device is affixed to a person.
  Reference? get patient;
  @override

  /// [owner] An organization that is responsible for the provision and ongoing
  ///  maintenance of the device.
  Reference? get owner;
  @override

  /// [contact] Contact details for an organization or a particular human that
  ///  is responsible for the device.
  List<ContactPoint>? get contact;
  @override

  /// [location] The place where the device can be found.
  Reference? get location;
  @override

  /// [url] A network address on which the device may be contacted directly.
  FhirUri? get url;
  @override

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override

  /// [note] Descriptive information, usage information or implantation
  ///  information that is not captured in an existing element.
  List<Annotation>? get note;
  @override

  /// [safety] Provides additional safety characteristics about a medical
  ///  device.  For example devices containing latex.
  List<CodeableConcept>? get safety;
  @override

  /// [parent] The parent device.
  Reference? get parent;
  @override
  @JsonKey(ignore: true)
  _$$DeviceImplCopyWith<_$DeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceUdiCarrier _$DeviceUdiCarrierFromJson(Map<String, dynamic> json) {
  return _DeviceUdiCarrier.fromJson(json);
}

/// @nodoc
mixin _$DeviceUdiCarrier {
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

  /// [deviceIdentifier] The device identifier (DI) is a mandatory, fixed
  /// portion of a UDI that identifies the labeler and the specific version or
  ///  model of a device.
  String? get deviceIdentifier => throw _privateConstructorUsedError;

  /// [deviceIdentifierElement] Extensions for deviceIdentifier
  @JsonKey(name: '_deviceIdentifier')
  PrimitiveElement? get deviceIdentifierElement =>
      throw _privateConstructorUsedError;

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
  FhirUri? get issuer => throw _privateConstructorUsedError;

  /// [issuerElement] Extensions for issuer
  @JsonKey(name: '_issuer')
  PrimitiveElement? get issuerElement => throw _privateConstructorUsedError;

  /// [jurisdiction] The identity of the authoritative source for UDI
  /// generation within a  jurisdiction.  All UDIs are globally unique within a
  /// single namespace with the appropriate repository uri as the system.  For
  /// example,  UDIs of devices managed in the U.S. by the FDA, the value is
  ///  http://hl7.org/fhir/NamingSystem/fda-udi.
  FhirUri? get jurisdiction => throw _privateConstructorUsedError;

  /// [jurisdictionElement] Extensions for jurisdiction
  @JsonKey(name: '_jurisdiction')
  PrimitiveElement? get jurisdictionElement =>
      throw _privateConstructorUsedError;

  /// [carrierAIDC] The full UDI carrier of the Automatic Identification and
  /// Data Capture (AIDC) technology representation of the barcode string as
  /// printed on the packaging of the device - e.g., a barcode or RFID.
  /// Because of limitations on character sets in XML and the need to round-trip
  ///  JSON data through XML, AIDC Formats *SHALL* be base64 encoded.
  FhirBase64Binary? get carrierAIDC => throw _privateConstructorUsedError;

  /// [carrierAIDCElement] Extensions for carrierAIDC
  @JsonKey(name: '_carrierAIDC')
  PrimitiveElement? get carrierAIDCElement =>
      throw _privateConstructorUsedError;

  /// [carrierHRF] The full UDI carrier as the human readable form (HRF)
  /// representation of the barcode string as printed on the packaging of the
  ///  device.
  String? get carrierHRF => throw _privateConstructorUsedError;

  /// [carrierHRFElement] Extensions for carrierHRF
  @JsonKey(name: '_carrierHRF')
  PrimitiveElement? get carrierHRFElement => throw _privateConstructorUsedError;

  /// [entryType] A coded entry to indicate how the data was entered.
  DeviceUdiCarrierEntryType? get entryType =>
      throw _privateConstructorUsedError;

  /// [entryTypeElement] Extensions for entryType
  @JsonKey(name: '_entryType')
  PrimitiveElement? get entryTypeElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceUdiCarrierCopyWith<DeviceUdiCarrier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceUdiCarrierCopyWith<$Res> {
  factory $DeviceUdiCarrierCopyWith(
          DeviceUdiCarrier value, $Res Function(DeviceUdiCarrier) then) =
      _$DeviceUdiCarrierCopyWithImpl<$Res, DeviceUdiCarrier>;
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
      @JsonKey(name: '_jurisdiction') PrimitiveElement? jurisdictionElement,
      FhirBase64Binary? carrierAIDC,
      @JsonKey(name: '_carrierAIDC') PrimitiveElement? carrierAIDCElement,
      String? carrierHRF,
      @JsonKey(name: '_carrierHRF') PrimitiveElement? carrierHRFElement,
      DeviceUdiCarrierEntryType? entryType,
      @JsonKey(name: '_entryType') PrimitiveElement? entryTypeElement});
}

/// @nodoc
class _$DeviceUdiCarrierCopyWithImpl<$Res, $Val extends DeviceUdiCarrier>
    implements $DeviceUdiCarrierCopyWith<$Res> {
  _$DeviceUdiCarrierCopyWithImpl(this._value, this._then);

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
    Object? carrierAIDC = freezed,
    Object? carrierAIDCElement = freezed,
    Object? carrierHRF = freezed,
    Object? carrierHRFElement = freezed,
    Object? entryType = freezed,
    Object? entryTypeElement = freezed,
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
      carrierAIDC: freezed == carrierAIDC
          ? _value.carrierAIDC
          : carrierAIDC // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      carrierAIDCElement: freezed == carrierAIDCElement
          ? _value.carrierAIDCElement
          : carrierAIDCElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      carrierHRF: freezed == carrierHRF
          ? _value.carrierHRF
          : carrierHRF // ignore: cast_nullable_to_non_nullable
              as String?,
      carrierHRFElement: freezed == carrierHRFElement
          ? _value.carrierHRFElement
          : carrierHRFElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      entryType: freezed == entryType
          ? _value.entryType
          : entryType // ignore: cast_nullable_to_non_nullable
              as DeviceUdiCarrierEntryType?,
      entryTypeElement: freezed == entryTypeElement
          ? _value.entryTypeElement
          : entryTypeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceUdiCarrierImplCopyWith<$Res>
    implements $DeviceUdiCarrierCopyWith<$Res> {
  factory _$$DeviceUdiCarrierImplCopyWith(_$DeviceUdiCarrierImpl value,
          $Res Function(_$DeviceUdiCarrierImpl) then) =
      __$$DeviceUdiCarrierImplCopyWithImpl<$Res>;
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
      @JsonKey(name: '_jurisdiction') PrimitiveElement? jurisdictionElement,
      FhirBase64Binary? carrierAIDC,
      @JsonKey(name: '_carrierAIDC') PrimitiveElement? carrierAIDCElement,
      String? carrierHRF,
      @JsonKey(name: '_carrierHRF') PrimitiveElement? carrierHRFElement,
      DeviceUdiCarrierEntryType? entryType,
      @JsonKey(name: '_entryType') PrimitiveElement? entryTypeElement});
}

/// @nodoc
class __$$DeviceUdiCarrierImplCopyWithImpl<$Res>
    extends _$DeviceUdiCarrierCopyWithImpl<$Res, _$DeviceUdiCarrierImpl>
    implements _$$DeviceUdiCarrierImplCopyWith<$Res> {
  __$$DeviceUdiCarrierImplCopyWithImpl(_$DeviceUdiCarrierImpl _value,
      $Res Function(_$DeviceUdiCarrierImpl) _then)
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
    Object? carrierAIDC = freezed,
    Object? carrierAIDCElement = freezed,
    Object? carrierHRF = freezed,
    Object? carrierHRFElement = freezed,
    Object? entryType = freezed,
    Object? entryTypeElement = freezed,
  }) {
    return _then(_$DeviceUdiCarrierImpl(
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
      carrierAIDC: freezed == carrierAIDC
          ? _value.carrierAIDC
          : carrierAIDC // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      carrierAIDCElement: freezed == carrierAIDCElement
          ? _value.carrierAIDCElement
          : carrierAIDCElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      carrierHRF: freezed == carrierHRF
          ? _value.carrierHRF
          : carrierHRF // ignore: cast_nullable_to_non_nullable
              as String?,
      carrierHRFElement: freezed == carrierHRFElement
          ? _value.carrierHRFElement
          : carrierHRFElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      entryType: freezed == entryType
          ? _value.entryType
          : entryType // ignore: cast_nullable_to_non_nullable
              as DeviceUdiCarrierEntryType?,
      entryTypeElement: freezed == entryTypeElement
          ? _value.entryTypeElement
          : entryTypeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceUdiCarrierImpl extends _DeviceUdiCarrier {
  const _$DeviceUdiCarrierImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.deviceIdentifier,
      @JsonKey(name: '_deviceIdentifier') this.deviceIdentifierElement,
      this.issuer,
      @JsonKey(name: '_issuer') this.issuerElement,
      this.jurisdiction,
      @JsonKey(name: '_jurisdiction') this.jurisdictionElement,
      this.carrierAIDC,
      @JsonKey(name: '_carrierAIDC') this.carrierAIDCElement,
      this.carrierHRF,
      @JsonKey(name: '_carrierHRF') this.carrierHRFElement,
      this.entryType,
      @JsonKey(name: '_entryType') this.entryTypeElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$DeviceUdiCarrierImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceUdiCarrierImplFromJson(json);

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

  /// [deviceIdentifier] The device identifier (DI) is a mandatory, fixed
  /// portion of a UDI that identifies the labeler and the specific version or
  ///  model of a device.
  @override
  final String? deviceIdentifier;

  /// [deviceIdentifierElement] Extensions for deviceIdentifier
  @override
  @JsonKey(name: '_deviceIdentifier')
  final PrimitiveElement? deviceIdentifierElement;

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
  @override
  final FhirUri? issuer;

  /// [issuerElement] Extensions for issuer
  @override
  @JsonKey(name: '_issuer')
  final PrimitiveElement? issuerElement;

  /// [jurisdiction] The identity of the authoritative source for UDI
  /// generation within a  jurisdiction.  All UDIs are globally unique within a
  /// single namespace with the appropriate repository uri as the system.  For
  /// example,  UDIs of devices managed in the U.S. by the FDA, the value is
  ///  http://hl7.org/fhir/NamingSystem/fda-udi.
  @override
  final FhirUri? jurisdiction;

  /// [jurisdictionElement] Extensions for jurisdiction
  @override
  @JsonKey(name: '_jurisdiction')
  final PrimitiveElement? jurisdictionElement;

  /// [carrierAIDC] The full UDI carrier of the Automatic Identification and
  /// Data Capture (AIDC) technology representation of the barcode string as
  /// printed on the packaging of the device - e.g., a barcode or RFID.
  /// Because of limitations on character sets in XML and the need to round-trip
  ///  JSON data through XML, AIDC Formats *SHALL* be base64 encoded.
  @override
  final FhirBase64Binary? carrierAIDC;

  /// [carrierAIDCElement] Extensions for carrierAIDC
  @override
  @JsonKey(name: '_carrierAIDC')
  final PrimitiveElement? carrierAIDCElement;

  /// [carrierHRF] The full UDI carrier as the human readable form (HRF)
  /// representation of the barcode string as printed on the packaging of the
  ///  device.
  @override
  final String? carrierHRF;

  /// [carrierHRFElement] Extensions for carrierHRF
  @override
  @JsonKey(name: '_carrierHRF')
  final PrimitiveElement? carrierHRFElement;

  /// [entryType] A coded entry to indicate how the data was entered.
  @override
  final DeviceUdiCarrierEntryType? entryType;

  /// [entryTypeElement] Extensions for entryType
  @override
  @JsonKey(name: '_entryType')
  final PrimitiveElement? entryTypeElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceUdiCarrierImpl &&
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
                other.jurisdictionElement == jurisdictionElement) &&
            (identical(other.carrierAIDC, carrierAIDC) ||
                other.carrierAIDC == carrierAIDC) &&
            (identical(other.carrierAIDCElement, carrierAIDCElement) ||
                other.carrierAIDCElement == carrierAIDCElement) &&
            (identical(other.carrierHRF, carrierHRF) ||
                other.carrierHRF == carrierHRF) &&
            (identical(other.carrierHRFElement, carrierHRFElement) ||
                other.carrierHRFElement == carrierHRFElement) &&
            (identical(other.entryType, entryType) ||
                other.entryType == entryType) &&
            (identical(other.entryTypeElement, entryTypeElement) ||
                other.entryTypeElement == entryTypeElement));
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
      jurisdictionElement,
      carrierAIDC,
      carrierAIDCElement,
      carrierHRF,
      carrierHRFElement,
      entryType,
      entryTypeElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceUdiCarrierImplCopyWith<_$DeviceUdiCarrierImpl> get copyWith =>
      __$$DeviceUdiCarrierImplCopyWithImpl<_$DeviceUdiCarrierImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceUdiCarrierImplToJson(
      this,
    );
  }
}

abstract class _DeviceUdiCarrier extends DeviceUdiCarrier {
  factory _DeviceUdiCarrier(
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
      final PrimitiveElement? jurisdictionElement,
      final FhirBase64Binary? carrierAIDC,
      @JsonKey(name: '_carrierAIDC') final PrimitiveElement? carrierAIDCElement,
      final String? carrierHRF,
      @JsonKey(name: '_carrierHRF') final PrimitiveElement? carrierHRFElement,
      final DeviceUdiCarrierEntryType? entryType,
      @JsonKey(name: '_entryType')
      final PrimitiveElement? entryTypeElement}) = _$DeviceUdiCarrierImpl;
  const _DeviceUdiCarrier._() : super._();

  factory _DeviceUdiCarrier.fromJson(Map<String, dynamic> json) =
      _$DeviceUdiCarrierImpl.fromJson;

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

  /// [deviceIdentifier] The device identifier (DI) is a mandatory, fixed
  /// portion of a UDI that identifies the labeler and the specific version or
  ///  model of a device.
  String? get deviceIdentifier;
  @override

  /// [deviceIdentifierElement] Extensions for deviceIdentifier
  @JsonKey(name: '_deviceIdentifier')
  PrimitiveElement? get deviceIdentifierElement;
  @override

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
  FhirUri? get issuer;
  @override

  /// [issuerElement] Extensions for issuer
  @JsonKey(name: '_issuer')
  PrimitiveElement? get issuerElement;
  @override

  /// [jurisdiction] The identity of the authoritative source for UDI
  /// generation within a  jurisdiction.  All UDIs are globally unique within a
  /// single namespace with the appropriate repository uri as the system.  For
  /// example,  UDIs of devices managed in the U.S. by the FDA, the value is
  ///  http://hl7.org/fhir/NamingSystem/fda-udi.
  FhirUri? get jurisdiction;
  @override

  /// [jurisdictionElement] Extensions for jurisdiction
  @JsonKey(name: '_jurisdiction')
  PrimitiveElement? get jurisdictionElement;
  @override

  /// [carrierAIDC] The full UDI carrier of the Automatic Identification and
  /// Data Capture (AIDC) technology representation of the barcode string as
  /// printed on the packaging of the device - e.g., a barcode or RFID.
  /// Because of limitations on character sets in XML and the need to round-trip
  ///  JSON data through XML, AIDC Formats *SHALL* be base64 encoded.
  FhirBase64Binary? get carrierAIDC;
  @override

  /// [carrierAIDCElement] Extensions for carrierAIDC
  @JsonKey(name: '_carrierAIDC')
  PrimitiveElement? get carrierAIDCElement;
  @override

  /// [carrierHRF] The full UDI carrier as the human readable form (HRF)
  /// representation of the barcode string as printed on the packaging of the
  ///  device.
  String? get carrierHRF;
  @override

  /// [carrierHRFElement] Extensions for carrierHRF
  @JsonKey(name: '_carrierHRF')
  PrimitiveElement? get carrierHRFElement;
  @override

  /// [entryType] A coded entry to indicate how the data was entered.
  DeviceUdiCarrierEntryType? get entryType;
  @override

  /// [entryTypeElement] Extensions for entryType
  @JsonKey(name: '_entryType')
  PrimitiveElement? get entryTypeElement;
  @override
  @JsonKey(ignore: true)
  _$$DeviceUdiCarrierImplCopyWith<_$DeviceUdiCarrierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceDeviceName _$DeviceDeviceNameFromJson(Map<String, dynamic> json) {
  return _DeviceDeviceName.fromJson(json);
}

/// @nodoc
mixin _$DeviceDeviceName {
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
  DeviceDeviceNameType? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceDeviceNameCopyWith<DeviceDeviceName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDeviceNameCopyWith<$Res> {
  factory $DeviceDeviceNameCopyWith(
          DeviceDeviceName value, $Res Function(DeviceDeviceName) then) =
      _$DeviceDeviceNameCopyWithImpl<$Res, DeviceDeviceName>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      DeviceDeviceNameType? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement});
}

/// @nodoc
class _$DeviceDeviceNameCopyWithImpl<$Res, $Val extends DeviceDeviceName>
    implements $DeviceDeviceNameCopyWith<$Res> {
  _$DeviceDeviceNameCopyWithImpl(this._value, this._then);

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
              as DeviceDeviceNameType?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceDeviceNameImplCopyWith<$Res>
    implements $DeviceDeviceNameCopyWith<$Res> {
  factory _$$DeviceDeviceNameImplCopyWith(_$DeviceDeviceNameImpl value,
          $Res Function(_$DeviceDeviceNameImpl) then) =
      __$$DeviceDeviceNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      DeviceDeviceNameType? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement});
}

/// @nodoc
class __$$DeviceDeviceNameImplCopyWithImpl<$Res>
    extends _$DeviceDeviceNameCopyWithImpl<$Res, _$DeviceDeviceNameImpl>
    implements _$$DeviceDeviceNameImplCopyWith<$Res> {
  __$$DeviceDeviceNameImplCopyWithImpl(_$DeviceDeviceNameImpl _value,
      $Res Function(_$DeviceDeviceNameImpl) _then)
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
    return _then(_$DeviceDeviceNameImpl(
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
              as DeviceDeviceNameType?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceDeviceNameImpl extends _DeviceDeviceName {
  const _$DeviceDeviceNameImpl(
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

  factory _$DeviceDeviceNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceDeviceNameImplFromJson(json);

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
  final DeviceDeviceNameType? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceDeviceNameImpl &&
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
  _$$DeviceDeviceNameImplCopyWith<_$DeviceDeviceNameImpl> get copyWith =>
      __$$DeviceDeviceNameImplCopyWithImpl<_$DeviceDeviceNameImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceDeviceNameImplToJson(
      this,
    );
  }
}

abstract class _DeviceDeviceName extends DeviceDeviceName {
  factory _DeviceDeviceName(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final String? name,
          @JsonKey(name: '_name') final PrimitiveElement? nameElement,
          final DeviceDeviceNameType? type,
          @JsonKey(name: '_type') final PrimitiveElement? typeElement}) =
      _$DeviceDeviceNameImpl;
  const _DeviceDeviceName._() : super._();

  factory _DeviceDeviceName.fromJson(Map<String, dynamic> json) =
      _$DeviceDeviceNameImpl.fromJson;

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
  DeviceDeviceNameType? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override
  @JsonKey(ignore: true)
  _$$DeviceDeviceNameImplCopyWith<_$DeviceDeviceNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceSpecialization _$DeviceSpecializationFromJson(Map<String, dynamic> json) {
  return _DeviceSpecialization.fromJson(json);
}

/// @nodoc
mixin _$DeviceSpecialization {
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
  CodeableConcept get systemType => throw _privateConstructorUsedError;

  /// [version] The version of the standard that is used to operate and
  ///  communicate.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceSpecializationCopyWith<DeviceSpecialization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceSpecializationCopyWith<$Res> {
  factory $DeviceSpecializationCopyWith(DeviceSpecialization value,
          $Res Function(DeviceSpecialization) then) =
      _$DeviceSpecializationCopyWithImpl<$Res, DeviceSpecialization>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept systemType,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement});

  $CodeableConceptCopyWith<$Res> get systemType;
}

/// @nodoc
class _$DeviceSpecializationCopyWithImpl<$Res,
        $Val extends DeviceSpecialization>
    implements $DeviceSpecializationCopyWith<$Res> {
  _$DeviceSpecializationCopyWithImpl(this._value, this._then);

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
    Object? systemType = null,
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
      systemType: null == systemType
          ? _value.systemType
          : systemType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
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

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get systemType {
    return $CodeableConceptCopyWith<$Res>(_value.systemType, (value) {
      return _then(_value.copyWith(systemType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeviceSpecializationImplCopyWith<$Res>
    implements $DeviceSpecializationCopyWith<$Res> {
  factory _$$DeviceSpecializationImplCopyWith(_$DeviceSpecializationImpl value,
          $Res Function(_$DeviceSpecializationImpl) then) =
      __$$DeviceSpecializationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept systemType,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement});

  @override
  $CodeableConceptCopyWith<$Res> get systemType;
}

/// @nodoc
class __$$DeviceSpecializationImplCopyWithImpl<$Res>
    extends _$DeviceSpecializationCopyWithImpl<$Res, _$DeviceSpecializationImpl>
    implements _$$DeviceSpecializationImplCopyWith<$Res> {
  __$$DeviceSpecializationImplCopyWithImpl(_$DeviceSpecializationImpl _value,
      $Res Function(_$DeviceSpecializationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? systemType = null,
    Object? version = freezed,
    Object? versionElement = freezed,
  }) {
    return _then(_$DeviceSpecializationImpl(
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
      systemType: null == systemType
          ? _value.systemType
          : systemType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
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
class _$DeviceSpecializationImpl extends _DeviceSpecialization {
  const _$DeviceSpecializationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.systemType,
      this.version,
      @JsonKey(name: '_version') this.versionElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$DeviceSpecializationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceSpecializationImplFromJson(json);

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
  final CodeableConcept systemType;

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
            other is _$DeviceSpecializationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.systemType, systemType) ||
                other.systemType == systemType) &&
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
      version,
      versionElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceSpecializationImplCopyWith<_$DeviceSpecializationImpl>
      get copyWith =>
          __$$DeviceSpecializationImplCopyWithImpl<_$DeviceSpecializationImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceSpecializationImplToJson(
      this,
    );
  }
}

abstract class _DeviceSpecialization extends DeviceSpecialization {
  factory _DeviceSpecialization(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept systemType,
          final String? version,
          @JsonKey(name: '_version') final PrimitiveElement? versionElement}) =
      _$DeviceSpecializationImpl;
  const _DeviceSpecialization._() : super._();

  factory _DeviceSpecialization.fromJson(Map<String, dynamic> json) =
      _$DeviceSpecializationImpl.fromJson;

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
  CodeableConcept get systemType;
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
  _$$DeviceSpecializationImplCopyWith<_$DeviceSpecializationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeviceVersion _$DeviceVersionFromJson(Map<String, dynamic> json) {
  return _DeviceVersion.fromJson(json);
}

/// @nodoc
mixin _$DeviceVersion {
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

  /// [type] The type of the device version.
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [component] A single component of the device version.
  Identifier? get component => throw _privateConstructorUsedError;

  /// [value] The version text.
  String? get value => throw _privateConstructorUsedError;

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceVersionCopyWith<DeviceVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceVersionCopyWith<$Res> {
  factory $DeviceVersionCopyWith(
          DeviceVersion value, $Res Function(DeviceVersion) then) =
      _$DeviceVersionCopyWithImpl<$Res, DeviceVersion>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      Identifier? component,
      String? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement});

  $CodeableConceptCopyWith<$Res>? get type;
  $IdentifierCopyWith<$Res>? get component;
}

/// @nodoc
class _$DeviceVersionCopyWithImpl<$Res, $Val extends DeviceVersion>
    implements $DeviceVersionCopyWith<$Res> {
  _$DeviceVersionCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? component = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      component: freezed == component
          ? _value.component
          : component // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
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
  $IdentifierCopyWith<$Res>? get component {
    if (_value.component == null) {
      return null;
    }

    return $IdentifierCopyWith<$Res>(_value.component!, (value) {
      return _then(_value.copyWith(component: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeviceVersionImplCopyWith<$Res>
    implements $DeviceVersionCopyWith<$Res> {
  factory _$$DeviceVersionImplCopyWith(
          _$DeviceVersionImpl value, $Res Function(_$DeviceVersionImpl) then) =
      __$$DeviceVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      Identifier? component,
      String? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $IdentifierCopyWith<$Res>? get component;
}

/// @nodoc
class __$$DeviceVersionImplCopyWithImpl<$Res>
    extends _$DeviceVersionCopyWithImpl<$Res, _$DeviceVersionImpl>
    implements _$$DeviceVersionImplCopyWith<$Res> {
  __$$DeviceVersionImplCopyWithImpl(
      _$DeviceVersionImpl _value, $Res Function(_$DeviceVersionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? component = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
  }) {
    return _then(_$DeviceVersionImpl(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      component: freezed == component
          ? _value.component
          : component // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceVersionImpl extends _DeviceVersion {
  const _$DeviceVersionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      this.component,
      this.value,
      @JsonKey(name: '_value') this.valueElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$DeviceVersionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceVersionImplFromJson(json);

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

  /// [type] The type of the device version.
  @override
  final CodeableConcept? type;

  /// [component] A single component of the device version.
  @override
  final Identifier? component;

  /// [value] The version text.
  @override
  final String? value;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  final PrimitiveElement? valueElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceVersionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.component, component) ||
                other.component == component) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueElement, valueElement) ||
                other.valueElement == valueElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      component,
      value,
      valueElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceVersionImplCopyWith<_$DeviceVersionImpl> get copyWith =>
      __$$DeviceVersionImplCopyWithImpl<_$DeviceVersionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceVersionImplToJson(
      this,
    );
  }
}

abstract class _DeviceVersion extends DeviceVersion {
  factory _DeviceVersion(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? type,
          final Identifier? component,
          final String? value,
          @JsonKey(name: '_value') final PrimitiveElement? valueElement}) =
      _$DeviceVersionImpl;
  const _DeviceVersion._() : super._();

  factory _DeviceVersion.fromJson(Map<String, dynamic> json) =
      _$DeviceVersionImpl.fromJson;

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

  /// [type] The type of the device version.
  CodeableConcept? get type;
  @override

  /// [component] A single component of the device version.
  Identifier? get component;
  @override

  /// [value] The version text.
  String? get value;
  @override

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement;
  @override
  @JsonKey(ignore: true)
  _$$DeviceVersionImplCopyWith<_$DeviceVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceProperty _$DevicePropertyFromJson(Map<String, dynamic> json) {
  return _DeviceProperty.fromJson(json);
}

/// @nodoc
mixin _$DeviceProperty {
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
  $DevicePropertyCopyWith<DeviceProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevicePropertyCopyWith<$Res> {
  factory $DevicePropertyCopyWith(
          DeviceProperty value, $Res Function(DeviceProperty) then) =
      _$DevicePropertyCopyWithImpl<$Res, DeviceProperty>;
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
class _$DevicePropertyCopyWithImpl<$Res, $Val extends DeviceProperty>
    implements $DevicePropertyCopyWith<$Res> {
  _$DevicePropertyCopyWithImpl(this._value, this._then);

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
abstract class _$$DevicePropertyImplCopyWith<$Res>
    implements $DevicePropertyCopyWith<$Res> {
  factory _$$DevicePropertyImplCopyWith(_$DevicePropertyImpl value,
          $Res Function(_$DevicePropertyImpl) then) =
      __$$DevicePropertyImplCopyWithImpl<$Res>;
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
class __$$DevicePropertyImplCopyWithImpl<$Res>
    extends _$DevicePropertyCopyWithImpl<$Res, _$DevicePropertyImpl>
    implements _$$DevicePropertyImplCopyWith<$Res> {
  __$$DevicePropertyImplCopyWithImpl(
      _$DevicePropertyImpl _value, $Res Function(_$DevicePropertyImpl) _then)
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
    return _then(_$DevicePropertyImpl(
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
class _$DevicePropertyImpl extends _DeviceProperty {
  const _$DevicePropertyImpl(
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

  factory _$DevicePropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DevicePropertyImplFromJson(json);

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
            other is _$DevicePropertyImpl &&
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
  _$$DevicePropertyImplCopyWith<_$DevicePropertyImpl> get copyWith =>
      __$$DevicePropertyImplCopyWithImpl<_$DevicePropertyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DevicePropertyImplToJson(
      this,
    );
  }
}

abstract class _DeviceProperty extends DeviceProperty {
  factory _DeviceProperty(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept type,
      final List<Quantity>? valueQuantity,
      final List<CodeableConcept>? valueCode}) = _$DevicePropertyImpl;
  const _DeviceProperty._() : super._();

  factory _DeviceProperty.fromJson(Map<String, dynamic> json) =
      _$DevicePropertyImpl.fromJson;

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
  _$$DevicePropertyImplCopyWith<_$DevicePropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
