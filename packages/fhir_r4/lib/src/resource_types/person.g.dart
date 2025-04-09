// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'person.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $PersonCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<HumanName>? name,
    List<ContactPoint>? telecom,
    AdministrativeGender? gender,
    FhirDate? birthDate,
    List<Address>? address,
    Attachment? photo,
    Reference? managingOrganization,
    FhirBoolean? active,
    List<PersonLink>? link,
    bool? disallowExtensions,
  });
}

class _$PersonCopyWithImpl<T> implements $PersonCopyWith<T> {
  final Person _value;
  final T Function(Person) _then;

  _$PersonCopyWithImpl(this._value, this._then);

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
    Object? name = fhirSentinel,
    Object? telecom = fhirSentinel,
    Object? gender = fhirSentinel,
    Object? birthDate = fhirSentinel,
    Object? address = fhirSentinel,
    Object? photo = fhirSentinel,
    Object? managingOrganization = fhirSentinel,
    Object? active = fhirSentinel,
    Object? link = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Person(
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
            : photo as Attachment?,
        managingOrganization: identical(managingOrganization, fhirSentinel)
            ? _value.managingOrganization
            : managingOrganization as Reference?,
        active: identical(active, fhirSentinel)
            ? _value.active
            : active as FhirBoolean?,
        link: identical(link, fhirSentinel)
            ? _value.link
            : link as List<PersonLink>?,
      ),
    );
  }
}

extension PersonCopyWithExtension on Person {
  $PersonCopyWith<Person> get copyWith => _$PersonCopyWithImpl<Person>(
        this,
        (value) => value,
      );
}

abstract class $PersonLinkCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? target,
    IdentityAssuranceLevel? assurance,
    bool? disallowExtensions,
  });
}

class _$PersonLinkCopyWithImpl<T> implements $PersonLinkCopyWith<T> {
  final PersonLink _value;
  final T Function(PersonLink) _then;

  _$PersonLinkCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? target = fhirSentinel,
    Object? assurance = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PersonLink(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        target: target as Reference? ?? _value.target,
        assurance: identical(assurance, fhirSentinel)
            ? _value.assurance
            : assurance as IdentityAssuranceLevel?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PersonLinkCopyWithExtension on PersonLink {
  $PersonLinkCopyWith<PersonLink> get copyWith =>
      _$PersonLinkCopyWithImpl<PersonLink>(
        this,
        (value) => value,
      );
}
