// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'coverage_eligibility_response.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $CoverageEligibilityResponseCopyWith<T>
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
    FinancialResourceStatusCodes? status,
    List<EligibilityResponsePurpose>? purpose,
    Reference? patient,
    ServicedXCoverageEligibilityResponse? servicedX,
    FhirDateTime? created,
    Reference? requestor,
    Reference? request,
    RemittanceOutcome? outcome,
    FhirString? disposition,
    Reference? insurer,
    List<CoverageEligibilityResponseInsurance>? insurance,
    FhirString? preAuthRef,
    CodeableConcept? form,
    List<CoverageEligibilityResponseError>? error,
    bool? disallowExtensions,
  });
}

class _$CoverageEligibilityResponseCopyWithImpl<T>
    implements $CoverageEligibilityResponseCopyWith<T> {
  final CoverageEligibilityResponse _value;
  final T Function(CoverageEligibilityResponse) _then;

  _$CoverageEligibilityResponseCopyWithImpl(this._value, this._then);

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
    Object? purpose = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? servicedX = fhirSentinel,
    Object? created = fhirSentinel,
    Object? requestor = fhirSentinel,
    Object? request = fhirSentinel,
    Object? outcome = fhirSentinel,
    Object? disposition = fhirSentinel,
    Object? insurer = fhirSentinel,
    Object? insurance = fhirSentinel,
    Object? preAuthRef = fhirSentinel,
    Object? form = fhirSentinel,
    Object? error = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CoverageEligibilityResponse(
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
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as FinancialResourceStatusCodes?) ?? _value.status,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : (purpose as List<EligibilityResponsePurpose>?) ?? _value.purpose,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : (patient as Reference?) ?? _value.patient,
        servicedX: identical(servicedX, fhirSentinel)
            ? _value.servicedX
            : servicedX as ServicedXCoverageEligibilityResponse?,
        created: identical(created, fhirSentinel)
            ? _value.created
            : (created as FhirDateTime?) ?? _value.created,
        requestor: identical(requestor, fhirSentinel)
            ? _value.requestor
            : requestor as Reference?,
        request: identical(request, fhirSentinel)
            ? _value.request
            : (request as Reference?) ?? _value.request,
        outcome: identical(outcome, fhirSentinel)
            ? _value.outcome
            : (outcome as RemittanceOutcome?) ?? _value.outcome,
        disposition: identical(disposition, fhirSentinel)
            ? _value.disposition
            : disposition as FhirString?,
        insurer: identical(insurer, fhirSentinel)
            ? _value.insurer
            : (insurer as Reference?) ?? _value.insurer,
        insurance: identical(insurance, fhirSentinel)
            ? _value.insurance
            : insurance as List<CoverageEligibilityResponseInsurance>?,
        preAuthRef: identical(preAuthRef, fhirSentinel)
            ? _value.preAuthRef
            : preAuthRef as FhirString?,
        form: identical(form, fhirSentinel)
            ? _value.form
            : form as CodeableConcept?,
        error: identical(error, fhirSentinel)
            ? _value.error
            : error as List<CoverageEligibilityResponseError>?,
      ),
    );
  }
}

extension CoverageEligibilityResponseCopyWithExtension
    on CoverageEligibilityResponse {
  $CoverageEligibilityResponseCopyWith<CoverageEligibilityResponse>
      get copyWith => _$CoverageEligibilityResponseCopyWithImpl<
              CoverageEligibilityResponse>(
            this,
            (value) => value,
          );
}

abstract class $CoverageEligibilityResponseInsuranceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? coverage,
    FhirBoolean? inforce,
    Period? benefitPeriod,
    List<CoverageEligibilityResponseItem>? item,
    bool? disallowExtensions,
  });
}

class _$CoverageEligibilityResponseInsuranceCopyWithImpl<T>
    implements $CoverageEligibilityResponseInsuranceCopyWith<T> {
  final CoverageEligibilityResponseInsurance _value;
  final T Function(CoverageEligibilityResponseInsurance) _then;

  _$CoverageEligibilityResponseInsuranceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? coverage = fhirSentinel,
    Object? inforce = fhirSentinel,
    Object? benefitPeriod = fhirSentinel,
    Object? item = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CoverageEligibilityResponseInsurance(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        coverage: identical(coverage, fhirSentinel)
            ? _value.coverage
            : (coverage as Reference?) ?? _value.coverage,
        inforce: identical(inforce, fhirSentinel)
            ? _value.inforce
            : inforce as FhirBoolean?,
        benefitPeriod: identical(benefitPeriod, fhirSentinel)
            ? _value.benefitPeriod
            : benefitPeriod as Period?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : item as List<CoverageEligibilityResponseItem>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CoverageEligibilityResponseInsuranceCopyWithExtension
    on CoverageEligibilityResponseInsurance {
  $CoverageEligibilityResponseInsuranceCopyWith<
          CoverageEligibilityResponseInsurance>
      get copyWith => _$CoverageEligibilityResponseInsuranceCopyWithImpl<
              CoverageEligibilityResponseInsurance>(
            this,
            (value) => value,
          );
}

abstract class $CoverageEligibilityResponseItemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    Reference? provider,
    FhirBoolean? excluded,
    FhirString? name,
    FhirString? description,
    CodeableConcept? network,
    CodeableConcept? unit,
    CodeableConcept? term,
    List<CoverageEligibilityResponseBenefit>? benefit,
    FhirBoolean? authorizationRequired,
    List<CodeableConcept>? authorizationSupporting,
    FhirUri? authorizationUrl,
    bool? disallowExtensions,
  });
}

class _$CoverageEligibilityResponseItemCopyWithImpl<T>
    implements $CoverageEligibilityResponseItemCopyWith<T> {
  final CoverageEligibilityResponseItem _value;
  final T Function(CoverageEligibilityResponseItem) _then;

  _$CoverageEligibilityResponseItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? category = fhirSentinel,
    Object? productOrService = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? provider = fhirSentinel,
    Object? excluded = fhirSentinel,
    Object? name = fhirSentinel,
    Object? description = fhirSentinel,
    Object? network = fhirSentinel,
    Object? unit = fhirSentinel,
    Object? term = fhirSentinel,
    Object? benefit = fhirSentinel,
    Object? authorizationRequired = fhirSentinel,
    Object? authorizationSupporting = fhirSentinel,
    Object? authorizationUrl = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CoverageEligibilityResponseItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        productOrService: identical(productOrService, fhirSentinel)
            ? _value.productOrService
            : productOrService as CodeableConcept?,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as List<CodeableConcept>?,
        provider: identical(provider, fhirSentinel)
            ? _value.provider
            : provider as Reference?,
        excluded: identical(excluded, fhirSentinel)
            ? _value.excluded
            : excluded as FhirBoolean?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        network: identical(network, fhirSentinel)
            ? _value.network
            : network as CodeableConcept?,
        unit: identical(unit, fhirSentinel)
            ? _value.unit
            : unit as CodeableConcept?,
        term: identical(term, fhirSentinel)
            ? _value.term
            : term as CodeableConcept?,
        benefit: identical(benefit, fhirSentinel)
            ? _value.benefit
            : benefit as List<CoverageEligibilityResponseBenefit>?,
        authorizationRequired: identical(authorizationRequired, fhirSentinel)
            ? _value.authorizationRequired
            : authorizationRequired as FhirBoolean?,
        authorizationSupporting:
            identical(authorizationSupporting, fhirSentinel)
                ? _value.authorizationSupporting
                : authorizationSupporting as List<CodeableConcept>?,
        authorizationUrl: identical(authorizationUrl, fhirSentinel)
            ? _value.authorizationUrl
            : authorizationUrl as FhirUri?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CoverageEligibilityResponseItemCopyWithExtension
    on CoverageEligibilityResponseItem {
  $CoverageEligibilityResponseItemCopyWith<CoverageEligibilityResponseItem>
      get copyWith => _$CoverageEligibilityResponseItemCopyWithImpl<
              CoverageEligibilityResponseItem>(
            this,
            (value) => value,
          );
}

abstract class $CoverageEligibilityResponseBenefitCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    AllowedXCoverageEligibilityResponseBenefit? allowedX,
    UsedXCoverageEligibilityResponseBenefit? usedX,
    bool? disallowExtensions,
  });
}

class _$CoverageEligibilityResponseBenefitCopyWithImpl<T>
    implements $CoverageEligibilityResponseBenefitCopyWith<T> {
  final CoverageEligibilityResponseBenefit _value;
  final T Function(CoverageEligibilityResponseBenefit) _then;

  _$CoverageEligibilityResponseBenefitCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? allowedX = fhirSentinel,
    Object? usedX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CoverageEligibilityResponseBenefit(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        allowedX: identical(allowedX, fhirSentinel)
            ? _value.allowedX
            : allowedX as AllowedXCoverageEligibilityResponseBenefit?,
        usedX: identical(usedX, fhirSentinel)
            ? _value.usedX
            : usedX as UsedXCoverageEligibilityResponseBenefit?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CoverageEligibilityResponseBenefitCopyWithExtension
    on CoverageEligibilityResponseBenefit {
  $CoverageEligibilityResponseBenefitCopyWith<
          CoverageEligibilityResponseBenefit>
      get copyWith => _$CoverageEligibilityResponseBenefitCopyWithImpl<
              CoverageEligibilityResponseBenefit>(
            this,
            (value) => value,
          );
}

abstract class $CoverageEligibilityResponseErrorCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    bool? disallowExtensions,
  });
}

class _$CoverageEligibilityResponseErrorCopyWithImpl<T>
    implements $CoverageEligibilityResponseErrorCopyWith<T> {
  final CoverageEligibilityResponseError _value;
  final T Function(CoverageEligibilityResponseError) _then;

  _$CoverageEligibilityResponseErrorCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CoverageEligibilityResponseError(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CoverageEligibilityResponseErrorCopyWithExtension
    on CoverageEligibilityResponseError {
  $CoverageEligibilityResponseErrorCopyWith<CoverageEligibilityResponseError>
      get copyWith => _$CoverageEligibilityResponseErrorCopyWithImpl<
              CoverageEligibilityResponseError>(
            this,
            (value) => value,
          );
}
