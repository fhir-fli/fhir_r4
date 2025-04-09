// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'device.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DeviceCopyWith<T> extends $DomainResourceCopyWith<T> {
  @override
  T call({
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
    bool? disallowExtensions,
  });
}

class _$DeviceCopyWithImpl<T> implements $DeviceCopyWith<T> {
  final Device _value;
  final T Function(Device) _then;

  _$DeviceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? contained = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? udiCarrier = fhirSentinel,
    Object? status = fhirSentinel,
    Object? statusReason = fhirSentinel,
    Object? distinctIdentifier = fhirSentinel,
    Object? manufacturer = fhirSentinel,
    Object? manufactureDate = fhirSentinel,
    Object? expirationDate = fhirSentinel,
    Object? lotNumber = fhirSentinel,
    Object? serialNumber = fhirSentinel,
    Object? deviceName = fhirSentinel,
    Object? modelNumber = fhirSentinel,
    Object? partNumber = fhirSentinel,
    Object? type = fhirSentinel,
    Object? specialization = fhirSentinel,
    Object? version = fhirSentinel,
    Object? property = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? owner = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? location = fhirSentinel,
    Object? url = fhirSentinel,
    Object? note = fhirSentinel,
    Object? safety = fhirSentinel,
    Object? parent = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Device(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        contained: identical(contained, fhirSentinel)
            ? _value.contained
            : contained as List<Resource>?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : definition as Reference?,
        udiCarrier: identical(udiCarrier, fhirSentinel)
            ? _value.udiCarrier
            : udiCarrier as List<DeviceUdiCarrier>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as FHIRDeviceStatus?,
        statusReason: identical(statusReason, fhirSentinel)
            ? _value.statusReason
            : statusReason as List<CodeableConcept>?,
        distinctIdentifier: identical(distinctIdentifier, fhirSentinel)
            ? _value.distinctIdentifier
            : distinctIdentifier as FhirString?,
        manufacturer: identical(manufacturer, fhirSentinel)
            ? _value.manufacturer
            : manufacturer as FhirString?,
        manufactureDate: identical(manufactureDate, fhirSentinel)
            ? _value.manufactureDate
            : manufactureDate as FhirDateTime?,
        expirationDate: identical(expirationDate, fhirSentinel)
            ? _value.expirationDate
            : expirationDate as FhirDateTime?,
        lotNumber: identical(lotNumber, fhirSentinel)
            ? _value.lotNumber
            : lotNumber as FhirString?,
        serialNumber: identical(serialNumber, fhirSentinel)
            ? _value.serialNumber
            : serialNumber as FhirString?,
        deviceName: identical(deviceName, fhirSentinel)
            ? _value.deviceName
            : deviceName as List<DeviceDeviceName>?,
        modelNumber: identical(modelNumber, fhirSentinel)
            ? _value.modelNumber
            : modelNumber as FhirString?,
        partNumber: identical(partNumber, fhirSentinel)
            ? _value.partNumber
            : partNumber as FhirString?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        specialization: identical(specialization, fhirSentinel)
            ? _value.specialization
            : specialization as List<DeviceSpecialization>?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as List<DeviceVersion>?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<DeviceProperty>?,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : patient as Reference?,
        owner:
            identical(owner, fhirSentinel) ? _value.owner : owner as Reference?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactPoint>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        url: identical(url, fhirSentinel) ? _value.url : url as FhirUri?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        safety: identical(safety, fhirSentinel)
            ? _value.safety
            : safety as List<CodeableConcept>?,
        parent: identical(parent, fhirSentinel)
            ? _value.parent
            : parent as Reference?,
      ),
    );
  }
}

extension DeviceCopyWithExtension on Device {
  $DeviceCopyWith<Device> get copyWith => _$DeviceCopyWithImpl<Device>(
        this,
        (value) => value,
      );
}

abstract class $DeviceUdiCarrierCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? deviceIdentifier,
    FhirUri? issuer,
    FhirUri? jurisdiction,
    FhirBase64Binary? carrierAIDC,
    FhirString? carrierHRF,
    UDIEntryType? entryType,
    bool? disallowExtensions,
  });
}

class _$DeviceUdiCarrierCopyWithImpl<T>
    implements $DeviceUdiCarrierCopyWith<T> {
  final DeviceUdiCarrier _value;
  final T Function(DeviceUdiCarrier) _then;

  _$DeviceUdiCarrierCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? deviceIdentifier = fhirSentinel,
    Object? issuer = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? carrierAIDC = fhirSentinel,
    Object? carrierHRF = fhirSentinel,
    Object? entryType = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceUdiCarrier(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        deviceIdentifier: identical(deviceIdentifier, fhirSentinel)
            ? _value.deviceIdentifier
            : deviceIdentifier as FhirString?,
        issuer: identical(issuer, fhirSentinel)
            ? _value.issuer
            : issuer as FhirUri?,
        jurisdiction: identical(jurisdiction, fhirSentinel)
            ? _value.jurisdiction
            : jurisdiction as FhirUri?,
        carrierAIDC: identical(carrierAIDC, fhirSentinel)
            ? _value.carrierAIDC
            : carrierAIDC as FhirBase64Binary?,
        carrierHRF: identical(carrierHRF, fhirSentinel)
            ? _value.carrierHRF
            : carrierHRF as FhirString?,
        entryType: identical(entryType, fhirSentinel)
            ? _value.entryType
            : entryType as UDIEntryType?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceUdiCarrierCopyWithExtension on DeviceUdiCarrier {
  $DeviceUdiCarrierCopyWith<DeviceUdiCarrier> get copyWith =>
      _$DeviceUdiCarrierCopyWithImpl<DeviceUdiCarrier>(
        this,
        (value) => value,
      );
}

abstract class $DeviceDeviceNameCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    DeviceNameType? type,
    bool? disallowExtensions,
  });
}

class _$DeviceDeviceNameCopyWithImpl<T>
    implements $DeviceDeviceNameCopyWith<T> {
  final DeviceDeviceName _value;
  final T Function(DeviceDeviceName) _then;

  _$DeviceDeviceNameCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? type = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDeviceName(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: name as FhirString? ?? _value.name,
        type: type as DeviceNameType? ?? _value.type,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDeviceNameCopyWithExtension on DeviceDeviceName {
  $DeviceDeviceNameCopyWith<DeviceDeviceName> get copyWith =>
      _$DeviceDeviceNameCopyWithImpl<DeviceDeviceName>(
        this,
        (value) => value,
      );
}

abstract class $DeviceSpecializationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? systemType,
    FhirString? version,
    bool? disallowExtensions,
  });
}

class _$DeviceSpecializationCopyWithImpl<T>
    implements $DeviceSpecializationCopyWith<T> {
  final DeviceSpecialization _value;
  final T Function(DeviceSpecialization) _then;

  _$DeviceSpecializationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? systemType = fhirSentinel,
    Object? version = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceSpecialization(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        systemType: systemType as CodeableConcept? ?? _value.systemType,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceSpecializationCopyWithExtension on DeviceSpecialization {
  $DeviceSpecializationCopyWith<DeviceSpecialization> get copyWith =>
      _$DeviceSpecializationCopyWithImpl<DeviceSpecialization>(
        this,
        (value) => value,
      );
}

abstract class $DeviceVersionCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Identifier? component,
    FhirString? value,
    bool? disallowExtensions,
  });
}

class _$DeviceVersionCopyWithImpl<T> implements $DeviceVersionCopyWith<T> {
  final DeviceVersion _value;
  final T Function(DeviceVersion) _then;

  _$DeviceVersionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? component = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceVersion(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        component: identical(component, fhirSentinel)
            ? _value.component
            : component as Identifier?,
        value: value as FhirString? ?? _value.value,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceVersionCopyWithExtension on DeviceVersion {
  $DeviceVersionCopyWith<DeviceVersion> get copyWith =>
      _$DeviceVersionCopyWithImpl<DeviceVersion>(
        this,
        (value) => value,
      );
}

abstract class $DevicePropertyCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Quantity>? valueQuantity,
    List<CodeableConcept>? valueCode,
    bool? disallowExtensions,
  });
}

class _$DevicePropertyCopyWithImpl<T> implements $DevicePropertyCopyWith<T> {
  final DeviceProperty _value;
  final T Function(DeviceProperty) _then;

  _$DevicePropertyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? valueQuantity = fhirSentinel,
    Object? valueCode = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceProperty(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: type as CodeableConcept? ?? _value.type,
        valueQuantity: identical(valueQuantity, fhirSentinel)
            ? _value.valueQuantity
            : valueQuantity as List<Quantity>?,
        valueCode: identical(valueCode, fhirSentinel)
            ? _value.valueCode
            : valueCode as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DevicePropertyCopyWithExtension on DeviceProperty {
  $DevicePropertyCopyWith<DeviceProperty> get copyWith =>
      _$DevicePropertyCopyWithImpl<DeviceProperty>(
        this,
        (value) => value,
      );
}
