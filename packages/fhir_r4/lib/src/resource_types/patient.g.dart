// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'patient.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $PatientCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<HumanName>? name,
    List<ContactPoint>? telecom,
    AdministrativeGender? gender,
    FhirDate? birthDate,
    DeceasedXPatient? deceasedX,
    List<Address>? address,
    CodeableConcept? maritalStatus,
    MultipleBirthXPatient? multipleBirthX,
    List<Attachment>? photo,
    List<PatientContact>? contact,
    List<PatientCommunication>? communication,
    List<Reference>? generalPractitioner,
    Reference? managingOrganization,
    List<PatientLink>? link,
    bool? disallowExtensions,
  });
}

class _$PatientCopyWithImpl<T> implements $PatientCopyWith<T> {
  final Patient _value;
  final T Function(Patient) _then;

  _$PatientCopyWithImpl(this._value, this._then);

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
    Object? name = fhirSentinel,
    Object? telecom = fhirSentinel,
    Object? gender = fhirSentinel,
    Object? birthDate = fhirSentinel,
    Object? deceasedX = fhirSentinel,
    Object? address = fhirSentinel,
    Object? maritalStatus = fhirSentinel,
    Object? multipleBirthX = fhirSentinel,
    Object? photo = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? communication = fhirSentinel,
    Object? generalPractitioner = fhirSentinel,
    Object? managingOrganization = fhirSentinel,
    Object? link = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Patient(
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
        deceasedX: identical(deceasedX, fhirSentinel)
            ? _value.deceasedX
            : deceasedX as DeceasedXPatient?,
        address: identical(address, fhirSentinel)
            ? _value.address
            : address as List<Address>?,
        maritalStatus: identical(maritalStatus, fhirSentinel)
            ? _value.maritalStatus
            : maritalStatus as CodeableConcept?,
        multipleBirthX: identical(multipleBirthX, fhirSentinel)
            ? _value.multipleBirthX
            : multipleBirthX as MultipleBirthXPatient?,
        photo: identical(photo, fhirSentinel)
            ? _value.photo
            : photo as List<Attachment>?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<PatientContact>?,
        communication: identical(communication, fhirSentinel)
            ? _value.communication
            : communication as List<PatientCommunication>?,
        generalPractitioner: identical(generalPractitioner, fhirSentinel)
            ? _value.generalPractitioner
            : generalPractitioner as List<Reference>?,
        managingOrganization: identical(managingOrganization, fhirSentinel)
            ? _value.managingOrganization
            : managingOrganization as Reference?,
        link: identical(link, fhirSentinel)
            ? _value.link
            : link as List<PatientLink>?,
      ),
    );
  }
}

extension PatientCopyWithExtension on Patient {
  $PatientCopyWith<Patient> get copyWith => _$PatientCopyWithImpl<Patient>(
        this,
        (value) => value,
      );
}

abstract class $PatientContactCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? relationship,
    HumanName? name,
    List<ContactPoint>? telecom,
    Address? address,
    AdministrativeGender? gender,
    Reference? organization,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$PatientContactCopyWithImpl<T> implements $PatientContactCopyWith<T> {
  final PatientContact _value;
  final T Function(PatientContact) _then;

  _$PatientContactCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? relationship = fhirSentinel,
    Object? name = fhirSentinel,
    Object? telecom = fhirSentinel,
    Object? address = fhirSentinel,
    Object? gender = fhirSentinel,
    Object? organization = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PatientContact(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        relationship: identical(relationship, fhirSentinel)
            ? _value.relationship
            : relationship as List<CodeableConcept>?,
        name: identical(name, fhirSentinel) ? _value.name : name as HumanName?,
        telecom: identical(telecom, fhirSentinel)
            ? _value.telecom
            : telecom as List<ContactPoint>?,
        address: identical(address, fhirSentinel)
            ? _value.address
            : address as Address?,
        gender: identical(gender, fhirSentinel)
            ? _value.gender
            : gender as AdministrativeGender?,
        organization: identical(organization, fhirSentinel)
            ? _value.organization
            : organization as Reference?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PatientContactCopyWithExtension on PatientContact {
  $PatientContactCopyWith<PatientContact> get copyWith =>
      _$PatientContactCopyWithImpl<PatientContact>(
        this,
        (value) => value,
      );
}

abstract class $PatientCommunicationCopyWith<T>
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

class _$PatientCommunicationCopyWithImpl<T>
    implements $PatientCommunicationCopyWith<T> {
  final PatientCommunication _value;
  final T Function(PatientCommunication) _then;

  _$PatientCommunicationCopyWithImpl(this._value, this._then);

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
      PatientCommunication(
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

extension PatientCommunicationCopyWithExtension on PatientCommunication {
  $PatientCommunicationCopyWith<PatientCommunication> get copyWith =>
      _$PatientCommunicationCopyWithImpl<PatientCommunication>(
        this,
        (value) => value,
      );
}

abstract class $PatientLinkCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? other,
    LinkType? type,
    bool? disallowExtensions,
  });
}

class _$PatientLinkCopyWithImpl<T> implements $PatientLinkCopyWith<T> {
  final PatientLink _value;
  final T Function(PatientLink) _then;

  _$PatientLinkCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? other = fhirSentinel,
    Object? type = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PatientLink(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        other: identical(other, fhirSentinel)
            ? _value.other
            : (other as Reference?) ?? _value.other,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as LinkType?) ?? _value.type,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PatientLinkCopyWithExtension on PatientLink {
  $PatientLinkCopyWith<PatientLink> get copyWith =>
      _$PatientLinkCopyWithImpl<PatientLink>(
        this,
        (value) => value,
      );
}
