// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'group.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $FhirGroupCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    FhirBoolean? active,
    GroupType? type,
    FhirBoolean? actual,
    CodeableConcept? code,
    FhirString? name,
    FhirUnsignedInt? quantity,
    Reference? managingEntity,
    List<GroupCharacteristic>? characteristic,
    List<GroupMember>? member,
    bool? disallowExtensions,
  });
}

class _$FhirGroupCopyWithImpl<T> implements $FhirGroupCopyWith<T> {
  final FhirGroup _value;
  final T Function(FhirGroup) _then;

  _$FhirGroupCopyWithImpl(this._value, this._then);

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
    Object? active = fhirSentinel,
    Object? type = fhirSentinel,
    Object? actual = fhirSentinel,
    Object? code = fhirSentinel,
    Object? name = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? managingEntity = fhirSentinel,
    Object? characteristic = fhirSentinel,
    Object? member = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirGroup(
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
        active: identical(active, fhirSentinel)
            ? _value.active
            : active as FhirBoolean?,
        type: type as GroupType? ?? _value.type,
        actual: actual as FhirBoolean? ?? _value.actual,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as FhirUnsignedInt?,
        managingEntity: identical(managingEntity, fhirSentinel)
            ? _value.managingEntity
            : managingEntity as Reference?,
        characteristic: identical(characteristic, fhirSentinel)
            ? _value.characteristic
            : characteristic as List<GroupCharacteristic>?,
        member: identical(member, fhirSentinel)
            ? _value.member
            : member as List<GroupMember>?,
      ),
    );
  }
}

extension FhirGroupCopyWithExtension on FhirGroup {
  $FhirGroupCopyWith<FhirGroup> get copyWith =>
      _$FhirGroupCopyWithImpl<FhirGroup>(
        this,
        (value) => value,
      );
}

abstract class $GroupCharacteristicCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? valueX,
    FhirBoolean? exclude,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$GroupCharacteristicCopyWithImpl<T>
    implements $GroupCharacteristicCopyWith<T> {
  final GroupCharacteristic _value;
  final T Function(GroupCharacteristic) _then;

  _$GroupCharacteristicCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? exclude = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      GroupCharacteristic(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: code as CodeableConcept? ?? _value.code,
        valueX: valueX as CodeableConcept? ?? _value.valueX,
        exclude: exclude as FhirBoolean? ?? _value.exclude,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension GroupCharacteristicCopyWithExtension on GroupCharacteristic {
  $GroupCharacteristicCopyWith<GroupCharacteristic> get copyWith =>
      _$GroupCharacteristicCopyWithImpl<GroupCharacteristic>(
        this,
        (value) => value,
      );
}

abstract class $GroupMemberCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? entity,
    Period? period,
    FhirBoolean? inactive,
    bool? disallowExtensions,
  });
}

class _$GroupMemberCopyWithImpl<T> implements $GroupMemberCopyWith<T> {
  final GroupMember _value;
  final T Function(GroupMember) _then;

  _$GroupMemberCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? entity = fhirSentinel,
    Object? period = fhirSentinel,
    Object? inactive = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      GroupMember(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        entity: entity as Reference? ?? _value.entity,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        inactive: identical(inactive, fhirSentinel)
            ? _value.inactive
            : inactive as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension GroupMemberCopyWithExtension on GroupMember {
  $GroupMemberCopyWith<GroupMember> get copyWith =>
      _$GroupMemberCopyWithImpl<GroupMember>(
        this,
        (value) => value,
      );
}
