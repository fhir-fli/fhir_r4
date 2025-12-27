// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'coverage_eligibility_request.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $CoverageEligibilityRequestCopyWith<T>
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
    CodeableConcept? priority,
    List<EligibilityRequestPurpose>? purpose,
    Reference? patient,
    ServicedXCoverageEligibilityRequest? servicedX,
    FhirDateTime? created,
    Reference? enterer,
    Reference? provider,
    Reference? insurer,
    Reference? facility,
    List<CoverageEligibilityRequestSupportingInfo>? supportingInfo,
    List<CoverageEligibilityRequestInsurance>? insurance,
    List<CoverageEligibilityRequestItem>? item,
    bool? disallowExtensions,
  });
}

class _$CoverageEligibilityRequestCopyWithImpl<T>
    implements $CoverageEligibilityRequestCopyWith<T> {
  final CoverageEligibilityRequest _value;
  final T Function(CoverageEligibilityRequest) _then;

  _$CoverageEligibilityRequestCopyWithImpl(this._value, this._then);

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
    Object? priority = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? servicedX = fhirSentinel,
    Object? created = fhirSentinel,
    Object? enterer = fhirSentinel,
    Object? provider = fhirSentinel,
    Object? insurer = fhirSentinel,
    Object? facility = fhirSentinel,
    Object? supportingInfo = fhirSentinel,
    Object? insurance = fhirSentinel,
    Object? item = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CoverageEligibilityRequest(
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
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as CodeableConcept?,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : (purpose as List<EligibilityRequestPurpose>?) ?? _value.purpose,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : (patient as Reference?) ?? _value.patient,
        servicedX: identical(servicedX, fhirSentinel)
            ? _value.servicedX
            : servicedX as ServicedXCoverageEligibilityRequest?,
        created: identical(created, fhirSentinel)
            ? _value.created
            : (created as FhirDateTime?) ?? _value.created,
        enterer: identical(enterer, fhirSentinel)
            ? _value.enterer
            : enterer as Reference?,
        provider: identical(provider, fhirSentinel)
            ? _value.provider
            : provider as Reference?,
        insurer: identical(insurer, fhirSentinel)
            ? _value.insurer
            : (insurer as Reference?) ?? _value.insurer,
        facility: identical(facility, fhirSentinel)
            ? _value.facility
            : facility as Reference?,
        supportingInfo: identical(supportingInfo, fhirSentinel)
            ? _value.supportingInfo
            : supportingInfo as List<CoverageEligibilityRequestSupportingInfo>?,
        insurance: identical(insurance, fhirSentinel)
            ? _value.insurance
            : insurance as List<CoverageEligibilityRequestInsurance>?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : item as List<CoverageEligibilityRequestItem>?,
      ),
    );
  }
}

extension CoverageEligibilityRequestCopyWithExtension
    on CoverageEligibilityRequest {
  $CoverageEligibilityRequestCopyWith<CoverageEligibilityRequest>
      get copyWith =>
          _$CoverageEligibilityRequestCopyWithImpl<CoverageEligibilityRequest>(
            this,
            (value) => value,
          );
}

abstract class $CoverageEligibilityRequestSupportingInfoCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Reference? information,
    FhirBoolean? appliesToAll,
    bool? disallowExtensions,
  });
}

class _$CoverageEligibilityRequestSupportingInfoCopyWithImpl<T>
    implements $CoverageEligibilityRequestSupportingInfoCopyWith<T> {
  final CoverageEligibilityRequestSupportingInfo _value;
  final T Function(CoverageEligibilityRequestSupportingInfo) _then;

  _$CoverageEligibilityRequestSupportingInfoCopyWithImpl(
      this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? information = fhirSentinel,
    Object? appliesToAll = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CoverageEligibilityRequestSupportingInfo(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: identical(sequence, fhirSentinel)
            ? _value.sequence
            : (sequence as FhirPositiveInt?) ?? _value.sequence,
        information: identical(information, fhirSentinel)
            ? _value.information
            : (information as Reference?) ?? _value.information,
        appliesToAll: identical(appliesToAll, fhirSentinel)
            ? _value.appliesToAll
            : appliesToAll as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CoverageEligibilityRequestSupportingInfoCopyWithExtension
    on CoverageEligibilityRequestSupportingInfo {
  $CoverageEligibilityRequestSupportingInfoCopyWith<
          CoverageEligibilityRequestSupportingInfo>
      get copyWith => _$CoverageEligibilityRequestSupportingInfoCopyWithImpl<
              CoverageEligibilityRequestSupportingInfo>(
            this,
            (value) => value,
          );
}

abstract class $CoverageEligibilityRequestInsuranceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? focal,
    Reference? coverage,
    FhirString? businessArrangement,
    bool? disallowExtensions,
  });
}

class _$CoverageEligibilityRequestInsuranceCopyWithImpl<T>
    implements $CoverageEligibilityRequestInsuranceCopyWith<T> {
  final CoverageEligibilityRequestInsurance _value;
  final T Function(CoverageEligibilityRequestInsurance) _then;

  _$CoverageEligibilityRequestInsuranceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? focal = fhirSentinel,
    Object? coverage = fhirSentinel,
    Object? businessArrangement = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CoverageEligibilityRequestInsurance(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        focal: identical(focal, fhirSentinel)
            ? _value.focal
            : focal as FhirBoolean?,
        coverage: identical(coverage, fhirSentinel)
            ? _value.coverage
            : (coverage as Reference?) ?? _value.coverage,
        businessArrangement: identical(businessArrangement, fhirSentinel)
            ? _value.businessArrangement
            : businessArrangement as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CoverageEligibilityRequestInsuranceCopyWithExtension
    on CoverageEligibilityRequestInsurance {
  $CoverageEligibilityRequestInsuranceCopyWith<
          CoverageEligibilityRequestInsurance>
      get copyWith => _$CoverageEligibilityRequestInsuranceCopyWithImpl<
              CoverageEligibilityRequestInsurance>(
            this,
            (value) => value,
          );
}

abstract class $CoverageEligibilityRequestItemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirPositiveInt>? supportingInfoSequence,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    Reference? provider,
    Quantity? quantity,
    Money? unitPrice,
    Reference? facility,
    List<CoverageEligibilityRequestDiagnosis>? diagnosis,
    List<Reference>? detail,
    bool? disallowExtensions,
  });
}

class _$CoverageEligibilityRequestItemCopyWithImpl<T>
    implements $CoverageEligibilityRequestItemCopyWith<T> {
  final CoverageEligibilityRequestItem _value;
  final T Function(CoverageEligibilityRequestItem) _then;

  _$CoverageEligibilityRequestItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? supportingInfoSequence = fhirSentinel,
    Object? category = fhirSentinel,
    Object? productOrService = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? provider = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? unitPrice = fhirSentinel,
    Object? facility = fhirSentinel,
    Object? diagnosis = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CoverageEligibilityRequestItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        supportingInfoSequence: identical(supportingInfoSequence, fhirSentinel)
            ? _value.supportingInfoSequence
            : supportingInfoSequence as List<FhirPositiveInt>?,
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
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        unitPrice: identical(unitPrice, fhirSentinel)
            ? _value.unitPrice
            : unitPrice as Money?,
        facility: identical(facility, fhirSentinel)
            ? _value.facility
            : facility as Reference?,
        diagnosis: identical(diagnosis, fhirSentinel)
            ? _value.diagnosis
            : diagnosis as List<CoverageEligibilityRequestDiagnosis>?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CoverageEligibilityRequestItemCopyWithExtension
    on CoverageEligibilityRequestItem {
  $CoverageEligibilityRequestItemCopyWith<CoverageEligibilityRequestItem>
      get copyWith => _$CoverageEligibilityRequestItemCopyWithImpl<
              CoverageEligibilityRequestItem>(
            this,
            (value) => value,
          );
}

abstract class $CoverageEligibilityRequestDiagnosisCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DiagnosisXCoverageEligibilityRequestDiagnosis? diagnosisX,
    bool? disallowExtensions,
  });
}

class _$CoverageEligibilityRequestDiagnosisCopyWithImpl<T>
    implements $CoverageEligibilityRequestDiagnosisCopyWith<T> {
  final CoverageEligibilityRequestDiagnosis _value;
  final T Function(CoverageEligibilityRequestDiagnosis) _then;

  _$CoverageEligibilityRequestDiagnosisCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? diagnosisX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CoverageEligibilityRequestDiagnosis(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        diagnosisX: identical(diagnosisX, fhirSentinel)
            ? _value.diagnosisX
            : diagnosisX as DiagnosisXCoverageEligibilityRequestDiagnosis?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CoverageEligibilityRequestDiagnosisCopyWithExtension
    on CoverageEligibilityRequestDiagnosis {
  $CoverageEligibilityRequestDiagnosisCopyWith<
          CoverageEligibilityRequestDiagnosis>
      get copyWith => _$CoverageEligibilityRequestDiagnosisCopyWithImpl<
              CoverageEligibilityRequestDiagnosis>(
            this,
            (value) => value,
          );
}
