// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'account.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $AccountCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    AccountStatus? status,
    CodeableConcept? type,
    FhirString? name,
    List<Reference>? subject,
    Period? servicePeriod,
    List<AccountCoverage>? coverage,
    Reference? owner,
    FhirString? description,
    List<AccountGuarantor>? guarantor,
    Reference? partOf,
    bool? disallowExtensions,
  });
}

class _$AccountCopyWithImpl<T> implements $AccountCopyWith<T> {
  final Account _value;
  final T Function(Account) _then;

  _$AccountCopyWithImpl(this._value, this._then);

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
    Object? status = fhirSentinel,
    Object? type = fhirSentinel,
    Object? name = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? servicePeriod = fhirSentinel,
    Object? coverage = fhirSentinel,
    Object? owner = fhirSentinel,
    Object? description = fhirSentinel,
    Object? guarantor = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Account(
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
        status: status as AccountStatus? ?? _value.status,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as List<Reference>?,
        servicePeriod: identical(servicePeriod, fhirSentinel)
            ? _value.servicePeriod
            : servicePeriod as Period?,
        coverage: identical(coverage, fhirSentinel)
            ? _value.coverage
            : coverage as List<AccountCoverage>?,
        owner:
            identical(owner, fhirSentinel) ? _value.owner : owner as Reference?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        guarantor: identical(guarantor, fhirSentinel)
            ? _value.guarantor
            : guarantor as List<AccountGuarantor>?,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as Reference?,
      ),
    );
  }
}

extension AccountCopyWithExtension on Account {
  $AccountCopyWith<Account> get copyWith => _$AccountCopyWithImpl<Account>(
        this,
        (value) => value,
      );
}

abstract class $AccountCoverageCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? coverage,
    FhirPositiveInt? priority,
    bool? disallowExtensions,
  });
}

class _$AccountCoverageCopyWithImpl<T> implements $AccountCoverageCopyWith<T> {
  final AccountCoverage _value;
  final T Function(AccountCoverage) _then;

  _$AccountCoverageCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? coverage = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AccountCoverage(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        coverage: coverage as Reference? ?? _value.coverage,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as FhirPositiveInt?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AccountCoverageCopyWithExtension on AccountCoverage {
  $AccountCoverageCopyWith<AccountCoverage> get copyWith =>
      _$AccountCoverageCopyWithImpl<AccountCoverage>(
        this,
        (value) => value,
      );
}

abstract class $AccountGuarantorCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? party,
    FhirBoolean? onHold,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$AccountGuarantorCopyWithImpl<T>
    implements $AccountGuarantorCopyWith<T> {
  final AccountGuarantor _value;
  final T Function(AccountGuarantor) _then;

  _$AccountGuarantorCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? party = fhirSentinel,
    Object? onHold = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AccountGuarantor(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        party: party as Reference? ?? _value.party,
        onHold: identical(onHold, fhirSentinel)
            ? _value.onHold
            : onHold as FhirBoolean?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AccountGuarantorCopyWithExtension on AccountGuarantor {
  $AccountGuarantorCopyWith<AccountGuarantor> get copyWith =>
      _$AccountGuarantorCopyWithImpl<AccountGuarantor>(
        this,
        (value) => value,
      );
}
