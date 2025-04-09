// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'device_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DeviceDefinitionCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier,
    FhirString? manufacturerX,
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
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionCopyWithImpl<T>
    implements $DeviceDefinitionCopyWith<T> {
  final DeviceDefinition _value;
  final T Function(DeviceDefinition) _then;

  _$DeviceDefinitionCopyWithImpl(this._value, this._then);

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
    Object? udiDeviceIdentifier = fhirSentinel,
    Object? manufacturerX = fhirSentinel,
    Object? deviceName = fhirSentinel,
    Object? modelNumber = fhirSentinel,
    Object? type = fhirSentinel,
    Object? specialization = fhirSentinel,
    Object? version = fhirSentinel,
    Object? safety = fhirSentinel,
    Object? shelfLifeStorage = fhirSentinel,
    Object? physicalCharacteristics = fhirSentinel,
    Object? languageCode = fhirSentinel,
    Object? capability = fhirSentinel,
    Object? property = fhirSentinel,
    Object? owner = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? url = fhirSentinel,
    Object? onlineInformation = fhirSentinel,
    Object? note = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? parentDevice = fhirSentinel,
    Object? material = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinition(
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
        udiDeviceIdentifier: identical(udiDeviceIdentifier, fhirSentinel)
            ? _value.udiDeviceIdentifier
            : udiDeviceIdentifier as List<DeviceDefinitionUdiDeviceIdentifier>?,
        manufacturerX: identical(manufacturerX, fhirSentinel)
            ? _value.manufacturerX
            : manufacturerX as FhirString?,
        deviceName: identical(deviceName, fhirSentinel)
            ? _value.deviceName
            : deviceName as List<DeviceDefinitionDeviceName>?,
        modelNumber: identical(modelNumber, fhirSentinel)
            ? _value.modelNumber
            : modelNumber as FhirString?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        specialization: identical(specialization, fhirSentinel)
            ? _value.specialization
            : specialization as List<DeviceDefinitionSpecialization>?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as List<FhirString>?,
        safety: identical(safety, fhirSentinel)
            ? _value.safety
            : safety as List<CodeableConcept>?,
        shelfLifeStorage: identical(shelfLifeStorage, fhirSentinel)
            ? _value.shelfLifeStorage
            : shelfLifeStorage as List<ProductShelfLife>?,
        physicalCharacteristics:
            identical(physicalCharacteristics, fhirSentinel)
                ? _value.physicalCharacteristics
                : physicalCharacteristics as ProdCharacteristic?,
        languageCode: identical(languageCode, fhirSentinel)
            ? _value.languageCode
            : languageCode as List<CodeableConcept>?,
        capability: identical(capability, fhirSentinel)
            ? _value.capability
            : capability as List<DeviceDefinitionCapability>?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<DeviceDefinitionProperty>?,
        owner:
            identical(owner, fhirSentinel) ? _value.owner : owner as Reference?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactPoint>?,
        url: identical(url, fhirSentinel) ? _value.url : url as FhirUri?,
        onlineInformation: identical(onlineInformation, fhirSentinel)
            ? _value.onlineInformation
            : onlineInformation as FhirUri?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        parentDevice: identical(parentDevice, fhirSentinel)
            ? _value.parentDevice
            : parentDevice as Reference?,
        material: identical(material, fhirSentinel)
            ? _value.material
            : material as List<DeviceDefinitionMaterial>?,
      ),
    );
  }
}

extension DeviceDefinitionCopyWithExtension on DeviceDefinition {
  $DeviceDefinitionCopyWith<DeviceDefinition> get copyWith =>
      _$DeviceDefinitionCopyWithImpl<DeviceDefinition>(
        this,
        (value) => value,
      );
}

abstract class $DeviceDefinitionUdiDeviceIdentifierCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? deviceIdentifier,
    FhirUri? issuer,
    FhirUri? jurisdiction,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionUdiDeviceIdentifierCopyWithImpl<T>
    implements $DeviceDefinitionUdiDeviceIdentifierCopyWith<T> {
  final DeviceDefinitionUdiDeviceIdentifier _value;
  final T Function(DeviceDefinitionUdiDeviceIdentifier) _then;

  _$DeviceDefinitionUdiDeviceIdentifierCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? deviceIdentifier = fhirSentinel,
    Object? issuer = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionUdiDeviceIdentifier(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        deviceIdentifier:
            deviceIdentifier as FhirString? ?? _value.deviceIdentifier,
        issuer: issuer as FhirUri? ?? _value.issuer,
        jurisdiction: jurisdiction as FhirUri? ?? _value.jurisdiction,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionUdiDeviceIdentifierCopyWithExtension
    on DeviceDefinitionUdiDeviceIdentifier {
  $DeviceDefinitionUdiDeviceIdentifierCopyWith<
          DeviceDefinitionUdiDeviceIdentifier>
      get copyWith => _$DeviceDefinitionUdiDeviceIdentifierCopyWithImpl<
              DeviceDefinitionUdiDeviceIdentifier>(
            this,
            (value) => value,
          );
}

abstract class $DeviceDefinitionDeviceNameCopyWith<T>
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

class _$DeviceDefinitionDeviceNameCopyWithImpl<T>
    implements $DeviceDefinitionDeviceNameCopyWith<T> {
  final DeviceDefinitionDeviceName _value;
  final T Function(DeviceDefinitionDeviceName) _then;

  _$DeviceDefinitionDeviceNameCopyWithImpl(this._value, this._then);

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
      DeviceDefinitionDeviceName(
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

extension DeviceDefinitionDeviceNameCopyWithExtension
    on DeviceDefinitionDeviceName {
  $DeviceDefinitionDeviceNameCopyWith<DeviceDefinitionDeviceName>
      get copyWith =>
          _$DeviceDefinitionDeviceNameCopyWithImpl<DeviceDefinitionDeviceName>(
            this,
            (value) => value,
          );
}

abstract class $DeviceDefinitionSpecializationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? systemType,
    FhirString? version,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionSpecializationCopyWithImpl<T>
    implements $DeviceDefinitionSpecializationCopyWith<T> {
  final DeviceDefinitionSpecialization _value;
  final T Function(DeviceDefinitionSpecialization) _then;

  _$DeviceDefinitionSpecializationCopyWithImpl(this._value, this._then);

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
      DeviceDefinitionSpecialization(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        systemType: systemType as FhirString? ?? _value.systemType,
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

extension DeviceDefinitionSpecializationCopyWithExtension
    on DeviceDefinitionSpecialization {
  $DeviceDefinitionSpecializationCopyWith<DeviceDefinitionSpecialization>
      get copyWith => _$DeviceDefinitionSpecializationCopyWithImpl<
              DeviceDefinitionSpecialization>(
            this,
            (value) => value,
          );
}

abstract class $DeviceDefinitionCapabilityCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? description,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionCapabilityCopyWithImpl<T>
    implements $DeviceDefinitionCapabilityCopyWith<T> {
  final DeviceDefinitionCapability _value;
  final T Function(DeviceDefinitionCapability) _then;

  _$DeviceDefinitionCapabilityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? description = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionCapability(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: type as CodeableConcept? ?? _value.type,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionCapabilityCopyWithExtension
    on DeviceDefinitionCapability {
  $DeviceDefinitionCapabilityCopyWith<DeviceDefinitionCapability>
      get copyWith =>
          _$DeviceDefinitionCapabilityCopyWithImpl<DeviceDefinitionCapability>(
            this,
            (value) => value,
          );
}

abstract class $DeviceDefinitionPropertyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
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

class _$DeviceDefinitionPropertyCopyWithImpl<T>
    implements $DeviceDefinitionPropertyCopyWith<T> {
  final DeviceDefinitionProperty _value;
  final T Function(DeviceDefinitionProperty) _then;

  _$DeviceDefinitionPropertyCopyWithImpl(this._value, this._then);

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
      DeviceDefinitionProperty(
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

extension DeviceDefinitionPropertyCopyWithExtension
    on DeviceDefinitionProperty {
  $DeviceDefinitionPropertyCopyWith<DeviceDefinitionProperty> get copyWith =>
      _$DeviceDefinitionPropertyCopyWithImpl<DeviceDefinitionProperty>(
        this,
        (value) => value,
      );
}

abstract class $DeviceDefinitionMaterialCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? substance,
    FhirBoolean? alternate,
    FhirBoolean? allergenicIndicator,
    bool? disallowExtensions,
  });
}

class _$DeviceDefinitionMaterialCopyWithImpl<T>
    implements $DeviceDefinitionMaterialCopyWith<T> {
  final DeviceDefinitionMaterial _value;
  final T Function(DeviceDefinitionMaterial) _then;

  _$DeviceDefinitionMaterialCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? substance = fhirSentinel,
    Object? alternate = fhirSentinel,
    Object? allergenicIndicator = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDefinitionMaterial(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        substance: substance as CodeableConcept? ?? _value.substance,
        alternate: identical(alternate, fhirSentinel)
            ? _value.alternate
            : alternate as FhirBoolean?,
        allergenicIndicator: identical(allergenicIndicator, fhirSentinel)
            ? _value.allergenicIndicator
            : allergenicIndicator as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceDefinitionMaterialCopyWithExtension
    on DeviceDefinitionMaterial {
  $DeviceDefinitionMaterialCopyWith<DeviceDefinitionMaterial> get copyWith =>
      _$DeviceDefinitionMaterialCopyWithImpl<DeviceDefinitionMaterial>(
        this,
        (value) => value,
      );
}
