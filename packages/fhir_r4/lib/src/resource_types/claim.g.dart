// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'claim.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ClaimCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    CodeableConcept? subType,
    Use? use,
    Reference? patient,
    Period? billablePeriod,
    FhirDateTime? created,
    Reference? enterer,
    Reference? insurer,
    Reference? provider,
    CodeableConcept? priority,
    CodeableConcept? fundsReserve,
    List<ClaimRelated>? related,
    Reference? prescription,
    Reference? originalPrescription,
    ClaimPayee? payee,
    Reference? referral,
    Reference? facility,
    List<ClaimCareTeam>? careTeam,
    List<ClaimSupportingInfo>? supportingInfo,
    List<ClaimDiagnosis>? diagnosis,
    List<ClaimProcedure>? procedure,
    List<ClaimInsurance>? insurance,
    ClaimAccident? accident,
    List<ClaimItem>? item,
    Money? total,
    bool? disallowExtensions,
  });
}

class _$ClaimCopyWithImpl<T> implements $ClaimCopyWith<T> {
  final Claim _value;
  final T Function(Claim) _then;

  _$ClaimCopyWithImpl(this._value, this._then);

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
    Object? subType = fhirSentinel,
    Object? use = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? billablePeriod = fhirSentinel,
    Object? created = fhirSentinel,
    Object? enterer = fhirSentinel,
    Object? insurer = fhirSentinel,
    Object? provider = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? fundsReserve = fhirSentinel,
    Object? related = fhirSentinel,
    Object? prescription = fhirSentinel,
    Object? originalPrescription = fhirSentinel,
    Object? payee = fhirSentinel,
    Object? referral = fhirSentinel,
    Object? facility = fhirSentinel,
    Object? careTeam = fhirSentinel,
    Object? supportingInfo = fhirSentinel,
    Object? diagnosis = fhirSentinel,
    Object? procedure = fhirSentinel,
    Object? insurance = fhirSentinel,
    Object? accident = fhirSentinel,
    Object? item = fhirSentinel,
    Object? total = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Claim(
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
        type: type as CodeableConcept? ?? _value.type,
        subType: identical(subType, fhirSentinel)
            ? _value.subType
            : subType as CodeableConcept?,
        use: use as Use? ?? _value.use,
        patient: patient as Reference? ?? _value.patient,
        billablePeriod: identical(billablePeriod, fhirSentinel)
            ? _value.billablePeriod
            : billablePeriod as Period?,
        created: created as FhirDateTime? ?? _value.created,
        enterer: identical(enterer, fhirSentinel)
            ? _value.enterer
            : enterer as Reference?,
        insurer: identical(insurer, fhirSentinel)
            ? _value.insurer
            : insurer as Reference?,
        provider: provider as Reference? ?? _value.provider,
        priority: priority as CodeableConcept? ?? _value.priority,
        fundsReserve: identical(fundsReserve, fhirSentinel)
            ? _value.fundsReserve
            : fundsReserve as CodeableConcept?,
        related: identical(related, fhirSentinel)
            ? _value.related
            : related as List<ClaimRelated>?,
        prescription: identical(prescription, fhirSentinel)
            ? _value.prescription
            : prescription as Reference?,
        originalPrescription: identical(originalPrescription, fhirSentinel)
            ? _value.originalPrescription
            : originalPrescription as Reference?,
        payee: identical(payee, fhirSentinel)
            ? _value.payee
            : payee as ClaimPayee?,
        referral: identical(referral, fhirSentinel)
            ? _value.referral
            : referral as Reference?,
        facility: identical(facility, fhirSentinel)
            ? _value.facility
            : facility as Reference?,
        careTeam: identical(careTeam, fhirSentinel)
            ? _value.careTeam
            : careTeam as List<ClaimCareTeam>?,
        supportingInfo: identical(supportingInfo, fhirSentinel)
            ? _value.supportingInfo
            : supportingInfo as List<ClaimSupportingInfo>?,
        diagnosis: identical(diagnosis, fhirSentinel)
            ? _value.diagnosis
            : diagnosis as List<ClaimDiagnosis>?,
        procedure: identical(procedure, fhirSentinel)
            ? _value.procedure
            : procedure as List<ClaimProcedure>?,
        insurance: insurance as List<ClaimInsurance>? ?? _value.insurance,
        accident: identical(accident, fhirSentinel)
            ? _value.accident
            : accident as ClaimAccident?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : item as List<ClaimItem>?,
        total: identical(total, fhirSentinel) ? _value.total : total as Money?,
      ),
    );
  }
}

extension ClaimCopyWithExtension on Claim {
  $ClaimCopyWith<Claim> get copyWith => _$ClaimCopyWithImpl<Claim>(
        this,
        (value) => value,
      );
}

abstract class $ClaimRelatedCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? claim,
    CodeableConcept? relationship,
    Identifier? reference,
    bool? disallowExtensions,
  });
}

class _$ClaimRelatedCopyWithImpl<T> implements $ClaimRelatedCopyWith<T> {
  final ClaimRelated _value;
  final T Function(ClaimRelated) _then;

  _$ClaimRelatedCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? claim = fhirSentinel,
    Object? relationship = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimRelated(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        claim:
            identical(claim, fhirSentinel) ? _value.claim : claim as Reference?,
        relationship: identical(relationship, fhirSentinel)
            ? _value.relationship
            : relationship as CodeableConcept?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : reference as Identifier?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimRelatedCopyWithExtension on ClaimRelated {
  $ClaimRelatedCopyWith<ClaimRelated> get copyWith =>
      _$ClaimRelatedCopyWithImpl<ClaimRelated>(
        this,
        (value) => value,
      );
}

abstract class $ClaimPayeeCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Reference? party,
    bool? disallowExtensions,
  });
}

class _$ClaimPayeeCopyWithImpl<T> implements $ClaimPayeeCopyWith<T> {
  final ClaimPayee _value;
  final T Function(ClaimPayee) _then;

  _$ClaimPayeeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? party = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimPayee(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: type as CodeableConcept? ?? _value.type,
        party:
            identical(party, fhirSentinel) ? _value.party : party as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimPayeeCopyWithExtension on ClaimPayee {
  $ClaimPayeeCopyWith<ClaimPayee> get copyWith =>
      _$ClaimPayeeCopyWithImpl<ClaimPayee>(
        this,
        (value) => value,
      );
}

abstract class $ClaimCareTeamCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Reference? provider,
    FhirBoolean? responsible,
    CodeableConcept? role,
    CodeableConcept? qualification,
    bool? disallowExtensions,
  });
}

class _$ClaimCareTeamCopyWithImpl<T> implements $ClaimCareTeamCopyWith<T> {
  final ClaimCareTeam _value;
  final T Function(ClaimCareTeam) _then;

  _$ClaimCareTeamCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? provider = fhirSentinel,
    Object? responsible = fhirSentinel,
    Object? role = fhirSentinel,
    Object? qualification = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimCareTeam(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: sequence as FhirPositiveInt? ?? _value.sequence,
        provider: provider as Reference? ?? _value.provider,
        responsible: identical(responsible, fhirSentinel)
            ? _value.responsible
            : responsible as FhirBoolean?,
        role: identical(role, fhirSentinel)
            ? _value.role
            : role as CodeableConcept?,
        qualification: identical(qualification, fhirSentinel)
            ? _value.qualification
            : qualification as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimCareTeamCopyWithExtension on ClaimCareTeam {
  $ClaimCareTeamCopyWith<ClaimCareTeam> get copyWith =>
      _$ClaimCareTeamCopyWithImpl<ClaimCareTeam>(
        this,
        (value) => value,
      );
}

abstract class $ClaimSupportingInfoCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    CodeableConcept? category,
    CodeableConcept? code,
    FhirDate? timingX,
    FhirBoolean? valueX,
    CodeableConcept? reason,
    bool? disallowExtensions,
  });
}

class _$ClaimSupportingInfoCopyWithImpl<T>
    implements $ClaimSupportingInfoCopyWith<T> {
  final ClaimSupportingInfo _value;
  final T Function(ClaimSupportingInfo) _then;

  _$ClaimSupportingInfoCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? category = fhirSentinel,
    Object? code = fhirSentinel,
    Object? timingX = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimSupportingInfo(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: sequence as FhirPositiveInt? ?? _value.sequence,
        category: category as CodeableConcept? ?? _value.category,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        timingX: identical(timingX, fhirSentinel)
            ? _value.timingX
            : timingX as FhirDate?,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as FhirBoolean?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimSupportingInfoCopyWithExtension on ClaimSupportingInfo {
  $ClaimSupportingInfoCopyWith<ClaimSupportingInfo> get copyWith =>
      _$ClaimSupportingInfoCopyWithImpl<ClaimSupportingInfo>(
        this,
        (value) => value,
      );
}

abstract class $ClaimDiagnosisCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    CodeableConcept? diagnosisX,
    List<CodeableConcept>? type,
    CodeableConcept? onAdmission,
    CodeableConcept? packageCode,
    bool? disallowExtensions,
  });
}

class _$ClaimDiagnosisCopyWithImpl<T> implements $ClaimDiagnosisCopyWith<T> {
  final ClaimDiagnosis _value;
  final T Function(ClaimDiagnosis) _then;

  _$ClaimDiagnosisCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? diagnosisX = fhirSentinel,
    Object? type = fhirSentinel,
    Object? onAdmission = fhirSentinel,
    Object? packageCode = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimDiagnosis(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: sequence as FhirPositiveInt? ?? _value.sequence,
        diagnosisX: diagnosisX as CodeableConcept? ?? _value.diagnosisX,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        onAdmission: identical(onAdmission, fhirSentinel)
            ? _value.onAdmission
            : onAdmission as CodeableConcept?,
        packageCode: identical(packageCode, fhirSentinel)
            ? _value.packageCode
            : packageCode as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimDiagnosisCopyWithExtension on ClaimDiagnosis {
  $ClaimDiagnosisCopyWith<ClaimDiagnosis> get copyWith =>
      _$ClaimDiagnosisCopyWithImpl<ClaimDiagnosis>(
        this,
        (value) => value,
      );
}

abstract class $ClaimProcedureCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    List<CodeableConcept>? type,
    FhirDateTime? date,
    CodeableConcept? procedureX,
    List<Reference>? udi,
    bool? disallowExtensions,
  });
}

class _$ClaimProcedureCopyWithImpl<T> implements $ClaimProcedureCopyWith<T> {
  final ClaimProcedure _value;
  final T Function(ClaimProcedure) _then;

  _$ClaimProcedureCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? type = fhirSentinel,
    Object? date = fhirSentinel,
    Object? procedureX = fhirSentinel,
    Object? udi = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimProcedure(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: sequence as FhirPositiveInt? ?? _value.sequence,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        procedureX: procedureX as CodeableConcept? ?? _value.procedureX,
        udi:
            identical(udi, fhirSentinel) ? _value.udi : udi as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimProcedureCopyWithExtension on ClaimProcedure {
  $ClaimProcedureCopyWith<ClaimProcedure> get copyWith =>
      _$ClaimProcedureCopyWithImpl<ClaimProcedure>(
        this,
        (value) => value,
      );
}

abstract class $ClaimInsuranceCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    FhirBoolean? focal,
    Identifier? identifier,
    Reference? coverage,
    FhirString? businessArrangement,
    List<FhirString>? preAuthRef,
    Reference? claimResponse,
    bool? disallowExtensions,
  });
}

class _$ClaimInsuranceCopyWithImpl<T> implements $ClaimInsuranceCopyWith<T> {
  final ClaimInsurance _value;
  final T Function(ClaimInsurance) _then;

  _$ClaimInsuranceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? focal = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? coverage = fhirSentinel,
    Object? businessArrangement = fhirSentinel,
    Object? preAuthRef = fhirSentinel,
    Object? claimResponse = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimInsurance(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: sequence as FhirPositiveInt? ?? _value.sequence,
        focal: focal as FhirBoolean? ?? _value.focal,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
        coverage: coverage as Reference? ?? _value.coverage,
        businessArrangement: identical(businessArrangement, fhirSentinel)
            ? _value.businessArrangement
            : businessArrangement as FhirString?,
        preAuthRef: identical(preAuthRef, fhirSentinel)
            ? _value.preAuthRef
            : preAuthRef as List<FhirString>?,
        claimResponse: identical(claimResponse, fhirSentinel)
            ? _value.claimResponse
            : claimResponse as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimInsuranceCopyWithExtension on ClaimInsurance {
  $ClaimInsuranceCopyWith<ClaimInsurance> get copyWith =>
      _$ClaimInsuranceCopyWithImpl<ClaimInsurance>(
        this,
        (value) => value,
      );
}

abstract class $ClaimAccidentCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDate? date,
    CodeableConcept? type,
    Address? locationX,
    bool? disallowExtensions,
  });
}

class _$ClaimAccidentCopyWithImpl<T> implements $ClaimAccidentCopyWith<T> {
  final ClaimAccident _value;
  final T Function(ClaimAccident) _then;

  _$ClaimAccidentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? date = fhirSentinel,
    Object? type = fhirSentinel,
    Object? locationX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimAccident(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        date: date as FhirDate? ?? _value.date,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        locationX: identical(locationX, fhirSentinel)
            ? _value.locationX
            : locationX as Address?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimAccidentCopyWithExtension on ClaimAccident {
  $ClaimAccidentCopyWith<ClaimAccident> get copyWith =>
      _$ClaimAccidentCopyWithImpl<ClaimAccident>(
        this,
        (value) => value,
      );
}

abstract class $ClaimItemCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    List<FhirPositiveInt>? careTeamSequence,
    List<FhirPositiveInt>? diagnosisSequence,
    List<FhirPositiveInt>? procedureSequence,
    List<FhirPositiveInt>? informationSequence,
    CodeableConcept? revenue,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    FhirDate? servicedX,
    CodeableConcept? locationX,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? net,
    List<Reference>? udi,
    CodeableConcept? bodySite,
    List<CodeableConcept>? subSite,
    List<Reference>? encounter,
    List<ClaimDetail>? detail,
    bool? disallowExtensions,
  });
}

class _$ClaimItemCopyWithImpl<T> implements $ClaimItemCopyWith<T> {
  final ClaimItem _value;
  final T Function(ClaimItem) _then;

  _$ClaimItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? careTeamSequence = fhirSentinel,
    Object? diagnosisSequence = fhirSentinel,
    Object? procedureSequence = fhirSentinel,
    Object? informationSequence = fhirSentinel,
    Object? revenue = fhirSentinel,
    Object? category = fhirSentinel,
    Object? productOrService = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? programCode = fhirSentinel,
    Object? servicedX = fhirSentinel,
    Object? locationX = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? unitPrice = fhirSentinel,
    Object? factor = fhirSentinel,
    Object? net = fhirSentinel,
    Object? udi = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? subSite = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: sequence as FhirPositiveInt? ?? _value.sequence,
        careTeamSequence: identical(careTeamSequence, fhirSentinel)
            ? _value.careTeamSequence
            : careTeamSequence as List<FhirPositiveInt>?,
        diagnosisSequence: identical(diagnosisSequence, fhirSentinel)
            ? _value.diagnosisSequence
            : diagnosisSequence as List<FhirPositiveInt>?,
        procedureSequence: identical(procedureSequence, fhirSentinel)
            ? _value.procedureSequence
            : procedureSequence as List<FhirPositiveInt>?,
        informationSequence: identical(informationSequence, fhirSentinel)
            ? _value.informationSequence
            : informationSequence as List<FhirPositiveInt>?,
        revenue: identical(revenue, fhirSentinel)
            ? _value.revenue
            : revenue as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        productOrService:
            productOrService as CodeableConcept? ?? _value.productOrService,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as List<CodeableConcept>?,
        programCode: identical(programCode, fhirSentinel)
            ? _value.programCode
            : programCode as List<CodeableConcept>?,
        servicedX: identical(servicedX, fhirSentinel)
            ? _value.servicedX
            : servicedX as FhirDate?,
        locationX: identical(locationX, fhirSentinel)
            ? _value.locationX
            : locationX as CodeableConcept?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        unitPrice: identical(unitPrice, fhirSentinel)
            ? _value.unitPrice
            : unitPrice as Money?,
        factor: identical(factor, fhirSentinel)
            ? _value.factor
            : factor as FhirDecimal?,
        net: identical(net, fhirSentinel) ? _value.net : net as Money?,
        udi:
            identical(udi, fhirSentinel) ? _value.udi : udi as List<Reference>?,
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as CodeableConcept?,
        subSite: identical(subSite, fhirSentinel)
            ? _value.subSite
            : subSite as List<CodeableConcept>?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as List<Reference>?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as List<ClaimDetail>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimItemCopyWithExtension on ClaimItem {
  $ClaimItemCopyWith<ClaimItem> get copyWith =>
      _$ClaimItemCopyWithImpl<ClaimItem>(
        this,
        (value) => value,
      );
}

abstract class $ClaimDetailCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    CodeableConcept? revenue,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? net,
    List<Reference>? udi,
    List<ClaimSubDetail>? subDetail,
    bool? disallowExtensions,
  });
}

class _$ClaimDetailCopyWithImpl<T> implements $ClaimDetailCopyWith<T> {
  final ClaimDetail _value;
  final T Function(ClaimDetail) _then;

  _$ClaimDetailCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? revenue = fhirSentinel,
    Object? category = fhirSentinel,
    Object? productOrService = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? programCode = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? unitPrice = fhirSentinel,
    Object? factor = fhirSentinel,
    Object? net = fhirSentinel,
    Object? udi = fhirSentinel,
    Object? subDetail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimDetail(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: sequence as FhirPositiveInt? ?? _value.sequence,
        revenue: identical(revenue, fhirSentinel)
            ? _value.revenue
            : revenue as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        productOrService:
            productOrService as CodeableConcept? ?? _value.productOrService,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as List<CodeableConcept>?,
        programCode: identical(programCode, fhirSentinel)
            ? _value.programCode
            : programCode as List<CodeableConcept>?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        unitPrice: identical(unitPrice, fhirSentinel)
            ? _value.unitPrice
            : unitPrice as Money?,
        factor: identical(factor, fhirSentinel)
            ? _value.factor
            : factor as FhirDecimal?,
        net: identical(net, fhirSentinel) ? _value.net : net as Money?,
        udi:
            identical(udi, fhirSentinel) ? _value.udi : udi as List<Reference>?,
        subDetail: identical(subDetail, fhirSentinel)
            ? _value.subDetail
            : subDetail as List<ClaimSubDetail>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimDetailCopyWithExtension on ClaimDetail {
  $ClaimDetailCopyWith<ClaimDetail> get copyWith =>
      _$ClaimDetailCopyWithImpl<ClaimDetail>(
        this,
        (value) => value,
      );
}

abstract class $ClaimSubDetailCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    CodeableConcept? revenue,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? net,
    List<Reference>? udi,
    bool? disallowExtensions,
  });
}

class _$ClaimSubDetailCopyWithImpl<T> implements $ClaimSubDetailCopyWith<T> {
  final ClaimSubDetail _value;
  final T Function(ClaimSubDetail) _then;

  _$ClaimSubDetailCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? revenue = fhirSentinel,
    Object? category = fhirSentinel,
    Object? productOrService = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? programCode = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? unitPrice = fhirSentinel,
    Object? factor = fhirSentinel,
    Object? net = fhirSentinel,
    Object? udi = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimSubDetail(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: sequence as FhirPositiveInt? ?? _value.sequence,
        revenue: identical(revenue, fhirSentinel)
            ? _value.revenue
            : revenue as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        productOrService:
            productOrService as CodeableConcept? ?? _value.productOrService,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as List<CodeableConcept>?,
        programCode: identical(programCode, fhirSentinel)
            ? _value.programCode
            : programCode as List<CodeableConcept>?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        unitPrice: identical(unitPrice, fhirSentinel)
            ? _value.unitPrice
            : unitPrice as Money?,
        factor: identical(factor, fhirSentinel)
            ? _value.factor
            : factor as FhirDecimal?,
        net: identical(net, fhirSentinel) ? _value.net : net as Money?,
        udi:
            identical(udi, fhirSentinel) ? _value.udi : udi as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimSubDetailCopyWithExtension on ClaimSubDetail {
  $ClaimSubDetailCopyWith<ClaimSubDetail> get copyWith =>
      _$ClaimSubDetailCopyWithImpl<ClaimSubDetail>(
        this,
        (value) => value,
      );
}
