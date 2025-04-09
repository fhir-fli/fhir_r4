// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'coverage.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $CoverageCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    FinancialResourceStatusCodes? status,
    CodeableConcept? type,
    Reference? policyHolder,
    Reference? subscriber,
    FhirString? subscriberId,
    Reference? beneficiary,
    FhirString? dependent,
    CodeableConcept? relationship,
    Period? period,
    List<Reference>? payor,
    List<CoverageClass>? class_,
    FhirPositiveInt? order,
    FhirString? network,
    List<CoverageCostToBeneficiary>? costToBeneficiary,
    FhirBoolean? subrogation,
    List<Reference>? contract,
    bool? disallowExtensions,
  });
}

class _$CoverageCopyWithImpl<T> implements $CoverageCopyWith<T> {
  final Coverage _value;
  final T Function(Coverage) _then;

  _$CoverageCopyWithImpl(this._value, this._then);

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
    Object? policyHolder = fhirSentinel,
    Object? subscriber = fhirSentinel,
    Object? subscriberId = fhirSentinel,
    Object? beneficiary = fhirSentinel,
    Object? dependent = fhirSentinel,
    Object? relationship = fhirSentinel,
    Object? period = fhirSentinel,
    Object? payor = fhirSentinel,
    Object? class_ = fhirSentinel,
    Object? order = fhirSentinel,
    Object? network = fhirSentinel,
    Object? costToBeneficiary = fhirSentinel,
    Object? subrogation = fhirSentinel,
    Object? contract = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Coverage(
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
        status: status as FinancialResourceStatusCodes? ?? _value.status,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        policyHolder: identical(policyHolder, fhirSentinel)
            ? _value.policyHolder
            : policyHolder as Reference?,
        subscriber: identical(subscriber, fhirSentinel)
            ? _value.subscriber
            : subscriber as Reference?,
        subscriberId: identical(subscriberId, fhirSentinel)
            ? _value.subscriberId
            : subscriberId as FhirString?,
        beneficiary: beneficiary as Reference? ?? _value.beneficiary,
        dependent: identical(dependent, fhirSentinel)
            ? _value.dependent
            : dependent as FhirString?,
        relationship: identical(relationship, fhirSentinel)
            ? _value.relationship
            : relationship as CodeableConcept?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        payor: payor as List<Reference>? ?? _value.payor,
        class_: identical(class_, fhirSentinel)
            ? _value.class_
            : class_ as List<CoverageClass>?,
        order: identical(order, fhirSentinel)
            ? _value.order
            : order as FhirPositiveInt?,
        network: identical(network, fhirSentinel)
            ? _value.network
            : network as FhirString?,
        costToBeneficiary: identical(costToBeneficiary, fhirSentinel)
            ? _value.costToBeneficiary
            : costToBeneficiary as List<CoverageCostToBeneficiary>?,
        subrogation: identical(subrogation, fhirSentinel)
            ? _value.subrogation
            : subrogation as FhirBoolean?,
        contract: identical(contract, fhirSentinel)
            ? _value.contract
            : contract as List<Reference>?,
      ),
    );
  }
}

extension CoverageCopyWithExtension on Coverage {
  $CoverageCopyWith<Coverage> get copyWith => _$CoverageCopyWithImpl<Coverage>(
        this,
        (value) => value,
      );
}

abstract class $CoverageClassCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? value,
    FhirString? name,
    bool? disallowExtensions,
  });
}

class _$CoverageClassCopyWithImpl<T> implements $CoverageClassCopyWith<T> {
  final CoverageClass _value;
  final T Function(CoverageClass) _then;

  _$CoverageClassCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? value = fhirSentinel,
    Object? name = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CoverageClass(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: type as CodeableConcept? ?? _value.type,
        value: value as FhirString? ?? _value.value,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CoverageClassCopyWithExtension on CoverageClass {
  $CoverageClassCopyWith<CoverageClass> get copyWith =>
      _$CoverageClassCopyWithImpl<CoverageClass>(
        this,
        (value) => value,
      );
}

abstract class $CoverageCostToBeneficiaryCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Quantity? valueX,
    List<CoverageException>? exception,
    bool? disallowExtensions,
  });
}

class _$CoverageCostToBeneficiaryCopyWithImpl<T>
    implements $CoverageCostToBeneficiaryCopyWith<T> {
  final CoverageCostToBeneficiary _value;
  final T Function(CoverageCostToBeneficiary) _then;

  _$CoverageCostToBeneficiaryCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? exception = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CoverageCostToBeneficiary(
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
        valueX: valueX as Quantity? ?? _value.valueX,
        exception: identical(exception, fhirSentinel)
            ? _value.exception
            : exception as List<CoverageException>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CoverageCostToBeneficiaryCopyWithExtension
    on CoverageCostToBeneficiary {
  $CoverageCostToBeneficiaryCopyWith<CoverageCostToBeneficiary> get copyWith =>
      _$CoverageCostToBeneficiaryCopyWithImpl<CoverageCostToBeneficiary>(
        this,
        (value) => value,
      );
}

abstract class $CoverageExceptionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$CoverageExceptionCopyWithImpl<T>
    implements $CoverageExceptionCopyWith<T> {
  final CoverageException _value;
  final T Function(CoverageException) _then;

  _$CoverageExceptionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CoverageException(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: type as CodeableConcept? ?? _value.type,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CoverageExceptionCopyWithExtension on CoverageException {
  $CoverageExceptionCopyWith<CoverageException> get copyWith =>
      _$CoverageExceptionCopyWithImpl<CoverageException>(
        this,
        (value) => value,
      );
}
