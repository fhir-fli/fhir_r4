// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'organization_affiliation.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $OrganizationAffiliationCopyWith<T>
    extends $DomainResourceCopyWith<T> {
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
    Period? period,
    Reference? organization,
    Reference? participatingOrganization,
    List<Reference>? network,
    List<CodeableConcept>? code,
    List<CodeableConcept>? specialty,
    List<Reference>? location,
    List<Reference>? healthcareService,
    List<ContactPoint>? telecom,
    List<Reference>? endpoint,
    bool? disallowExtensions,
  });
}

class _$OrganizationAffiliationCopyWithImpl<T>
    implements $OrganizationAffiliationCopyWith<T> {
  final OrganizationAffiliation _value;
  final T Function(OrganizationAffiliation) _then;

  _$OrganizationAffiliationCopyWithImpl(this._value, this._then);

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
    Object? period = fhirSentinel,
    Object? organization = fhirSentinel,
    Object? participatingOrganization = fhirSentinel,
    Object? network = fhirSentinel,
    Object? code = fhirSentinel,
    Object? specialty = fhirSentinel,
    Object? location = fhirSentinel,
    Object? healthcareService = fhirSentinel,
    Object? telecom = fhirSentinel,
    Object? endpoint = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      OrganizationAffiliation(
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
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        organization: identical(organization, fhirSentinel)
            ? _value.organization
            : organization as Reference?,
        participatingOrganization:
            identical(participatingOrganization, fhirSentinel)
                ? _value.participatingOrganization
                : participatingOrganization as Reference?,
        network: identical(network, fhirSentinel)
            ? _value.network
            : network as List<Reference>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as List<CodeableConcept>?,
        specialty: identical(specialty, fhirSentinel)
            ? _value.specialty
            : specialty as List<CodeableConcept>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as List<Reference>?,
        healthcareService: identical(healthcareService, fhirSentinel)
            ? _value.healthcareService
            : healthcareService as List<Reference>?,
        telecom: identical(telecom, fhirSentinel)
            ? _value.telecom
            : telecom as List<ContactPoint>?,
        endpoint: identical(endpoint, fhirSentinel)
            ? _value.endpoint
            : endpoint as List<Reference>?,
      ),
    );
  }
}

extension OrganizationAffiliationCopyWithExtension on OrganizationAffiliation {
  $OrganizationAffiliationCopyWith<OrganizationAffiliation> get copyWith =>
      _$OrganizationAffiliationCopyWithImpl<OrganizationAffiliation>(
        this,
        (value) => value,
      );
}
