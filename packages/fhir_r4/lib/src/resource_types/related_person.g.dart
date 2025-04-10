// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'related_person.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $RelatedPersonCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    Reference? patient,
    List<CodeableConcept>? relationship,
    List<HumanName>? name,
    List<ContactPoint>? telecom,
    AdministrativeGender? gender,
    FhirDate? birthDate,
    List<Address>? address,
    List<Attachment>? photo,
    Period? period,
    List<RelatedPersonCommunication>? communication,
    bool? disallowExtensions,
  });
}

class _$RelatedPersonCopyWithImpl<T> implements $RelatedPersonCopyWith<T> {
  final RelatedPerson _value;
  final T Function(RelatedPerson) _then;

  _$RelatedPersonCopyWithImpl(this._value, this._then);

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
    Object? patient = fhirSentinel,
    Object? relationship = fhirSentinel,
    Object? name = fhirSentinel,
    Object? telecom = fhirSentinel,
    Object? gender = fhirSentinel,
    Object? birthDate = fhirSentinel,
    Object? address = fhirSentinel,
    Object? photo = fhirSentinel,
    Object? period = fhirSentinel,
    Object? communication = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RelatedPerson(
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
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : (patient as Reference?) ?? _value.patient,
        relationship: identical(relationship, fhirSentinel)
            ? _value.relationship
            : relationship as List<CodeableConcept>?,
        name: identical(name, fhirSentinel)
            ? _value.name
            : name as List<HumanName>?,
        telecom: identical(telecom, fhirSentinel)
            ? _value.telecom
            : telecom as List<ContactPoint>?,
        gender: identical(gender, fhirSentinel)
            ? _value.gender
            : gender as AdministrativeGender?,
        birthDate: identical(birthDate, fhirSentinel)
            ? _value.birthDate
            : birthDate as FhirDate?,
        address: identical(address, fhirSentinel)
            ? _value.address
            : address as List<Address>?,
        photo: identical(photo, fhirSentinel)
            ? _value.photo
            : photo as List<Attachment>?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        communication: identical(communication, fhirSentinel)
            ? _value.communication
            : communication as List<RelatedPersonCommunication>?,
      ),
    );
  }
}

extension RelatedPersonCopyWithExtension on RelatedPerson {
  $RelatedPersonCopyWith<RelatedPerson> get copyWith =>
      _$RelatedPersonCopyWithImpl<RelatedPerson>(
        this,
        (value) => value,
      );
}

abstract class $RelatedPersonCommunicationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? language,
    FhirBoolean? preferred,
    bool? disallowExtensions,
  });
}

class _$RelatedPersonCommunicationCopyWithImpl<T>
    implements $RelatedPersonCommunicationCopyWith<T> {
  final RelatedPersonCommunication _value;
  final T Function(RelatedPersonCommunication) _then;

  _$RelatedPersonCommunicationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? language = fhirSentinel,
    Object? preferred = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RelatedPersonCommunication(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : (language as CodeableConcept?) ?? _value.language,
        preferred: identical(preferred, fhirSentinel)
            ? _value.preferred
            : preferred as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RelatedPersonCommunicationCopyWithExtension
    on RelatedPersonCommunication {
  $RelatedPersonCommunicationCopyWith<RelatedPersonCommunication>
      get copyWith =>
          _$RelatedPersonCommunicationCopyWithImpl<RelatedPersonCommunication>(
            this,
            (value) => value,
          );
}
