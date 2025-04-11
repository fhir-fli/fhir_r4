// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'explanation_of_benefit.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ExplanationOfBenefitCopyWith<T>
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
    ExplanationOfBenefitStatus? status,
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
    CodeableConcept? fundsReserveRequested,
    CodeableConcept? fundsReserve,
    List<ExplanationOfBenefitRelated>? related,
    Reference? prescription,
    Reference? originalPrescription,
    ExplanationOfBenefitPayee? payee,
    Reference? referral,
    Reference? facility,
    Reference? claim,
    Reference? claimResponse,
    RemittanceOutcome? outcome,
    FhirString? disposition,
    List<FhirString>? preAuthRef,
    List<Period>? preAuthRefPeriod,
    List<ExplanationOfBenefitCareTeam>? careTeam,
    List<ExplanationOfBenefitSupportingInfo>? supportingInfo,
    List<ExplanationOfBenefitDiagnosis>? diagnosis,
    List<ExplanationOfBenefitProcedure>? procedure,
    FhirPositiveInt? precedence,
    List<ExplanationOfBenefitInsurance>? insurance,
    ExplanationOfBenefitAccident? accident,
    List<ExplanationOfBenefitItem>? item,
    List<ExplanationOfBenefitAddItem>? addItem,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitTotal>? total,
    ExplanationOfBenefitPayment? payment,
    CodeableConcept? formCode,
    Attachment? form,
    List<ExplanationOfBenefitProcessNote>? processNote,
    Period? benefitPeriod,
    List<ExplanationOfBenefitBenefitBalance>? benefitBalance,
    bool? disallowExtensions,
  });
}

class _$ExplanationOfBenefitCopyWithImpl<T>
    implements $ExplanationOfBenefitCopyWith<T> {
  final ExplanationOfBenefit _value;
  final T Function(ExplanationOfBenefit) _then;

  _$ExplanationOfBenefitCopyWithImpl(this._value, this._then);

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
    Object? fundsReserveRequested = fhirSentinel,
    Object? fundsReserve = fhirSentinel,
    Object? related = fhirSentinel,
    Object? prescription = fhirSentinel,
    Object? originalPrescription = fhirSentinel,
    Object? payee = fhirSentinel,
    Object? referral = fhirSentinel,
    Object? facility = fhirSentinel,
    Object? claim = fhirSentinel,
    Object? claimResponse = fhirSentinel,
    Object? outcome = fhirSentinel,
    Object? disposition = fhirSentinel,
    Object? preAuthRef = fhirSentinel,
    Object? preAuthRefPeriod = fhirSentinel,
    Object? careTeam = fhirSentinel,
    Object? supportingInfo = fhirSentinel,
    Object? diagnosis = fhirSentinel,
    Object? procedure = fhirSentinel,
    Object? precedence = fhirSentinel,
    Object? insurance = fhirSentinel,
    Object? accident = fhirSentinel,
    Object? item = fhirSentinel,
    Object? addItem = fhirSentinel,
    Object? adjudication = fhirSentinel,
    Object? total = fhirSentinel,
    Object? payment = fhirSentinel,
    Object? formCode = fhirSentinel,
    Object? form = fhirSentinel,
    Object? processNote = fhirSentinel,
    Object? benefitPeriod = fhirSentinel,
    Object? benefitBalance = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExplanationOfBenefit(
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
            : (status as ExplanationOfBenefitStatus?) ?? _value.status,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        subType: identical(subType, fhirSentinel)
            ? _value.subType
            : subType as CodeableConcept?,
        use: identical(use, fhirSentinel)
            ? _value.use
            : (use as Use?) ?? _value.use,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : (patient as Reference?) ?? _value.patient,
        billablePeriod: identical(billablePeriod, fhirSentinel)
            ? _value.billablePeriod
            : billablePeriod as Period?,
        created: identical(created, fhirSentinel)
            ? _value.created
            : (created as FhirDateTime?) ?? _value.created,
        enterer: identical(enterer, fhirSentinel)
            ? _value.enterer
            : enterer as Reference?,
        insurer: identical(insurer, fhirSentinel)
            ? _value.insurer
            : (insurer as Reference?) ?? _value.insurer,
        provider: identical(provider, fhirSentinel)
            ? _value.provider
            : (provider as Reference?) ?? _value.provider,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as CodeableConcept?,
        fundsReserveRequested: identical(fundsReserveRequested, fhirSentinel)
            ? _value.fundsReserveRequested
            : fundsReserveRequested as CodeableConcept?,
        fundsReserve: identical(fundsReserve, fhirSentinel)
            ? _value.fundsReserve
            : fundsReserve as CodeableConcept?,
        related: identical(related, fhirSentinel)
            ? _value.related
            : related as List<ExplanationOfBenefitRelated>?,
        prescription: identical(prescription, fhirSentinel)
            ? _value.prescription
            : prescription as Reference?,
        originalPrescription: identical(originalPrescription, fhirSentinel)
            ? _value.originalPrescription
            : originalPrescription as Reference?,
        payee: identical(payee, fhirSentinel)
            ? _value.payee
            : payee as ExplanationOfBenefitPayee?,
        referral: identical(referral, fhirSentinel)
            ? _value.referral
            : referral as Reference?,
        facility: identical(facility, fhirSentinel)
            ? _value.facility
            : facility as Reference?,
        claim:
            identical(claim, fhirSentinel) ? _value.claim : claim as Reference?,
        claimResponse: identical(claimResponse, fhirSentinel)
            ? _value.claimResponse
            : claimResponse as Reference?,
        outcome: identical(outcome, fhirSentinel)
            ? _value.outcome
            : (outcome as RemittanceOutcome?) ?? _value.outcome,
        disposition: identical(disposition, fhirSentinel)
            ? _value.disposition
            : disposition as FhirString?,
        preAuthRef: identical(preAuthRef, fhirSentinel)
            ? _value.preAuthRef
            : preAuthRef as List<FhirString>?,
        preAuthRefPeriod: identical(preAuthRefPeriod, fhirSentinel)
            ? _value.preAuthRefPeriod
            : preAuthRefPeriod as List<Period>?,
        careTeam: identical(careTeam, fhirSentinel)
            ? _value.careTeam
            : careTeam as List<ExplanationOfBenefitCareTeam>?,
        supportingInfo: identical(supportingInfo, fhirSentinel)
            ? _value.supportingInfo
            : supportingInfo as List<ExplanationOfBenefitSupportingInfo>?,
        diagnosis: identical(diagnosis, fhirSentinel)
            ? _value.diagnosis
            : diagnosis as List<ExplanationOfBenefitDiagnosis>?,
        procedure: identical(procedure, fhirSentinel)
            ? _value.procedure
            : procedure as List<ExplanationOfBenefitProcedure>?,
        precedence: identical(precedence, fhirSentinel)
            ? _value.precedence
            : precedence as FhirPositiveInt?,
        insurance: identical(insurance, fhirSentinel)
            ? _value.insurance
            : (insurance as List<ExplanationOfBenefitInsurance>?) ??
                _value.insurance,
        accident: identical(accident, fhirSentinel)
            ? _value.accident
            : accident as ExplanationOfBenefitAccident?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : item as List<ExplanationOfBenefitItem>?,
        addItem: identical(addItem, fhirSentinel)
            ? _value.addItem
            : addItem as List<ExplanationOfBenefitAddItem>?,
        adjudication: identical(adjudication, fhirSentinel)
            ? _value.adjudication
            : adjudication as List<ExplanationOfBenefitAdjudication>?,
        total: identical(total, fhirSentinel)
            ? _value.total
            : total as List<ExplanationOfBenefitTotal>?,
        payment: identical(payment, fhirSentinel)
            ? _value.payment
            : payment as ExplanationOfBenefitPayment?,
        formCode: identical(formCode, fhirSentinel)
            ? _value.formCode
            : formCode as CodeableConcept?,
        form: identical(form, fhirSentinel) ? _value.form : form as Attachment?,
        processNote: identical(processNote, fhirSentinel)
            ? _value.processNote
            : processNote as List<ExplanationOfBenefitProcessNote>?,
        benefitPeriod: identical(benefitPeriod, fhirSentinel)
            ? _value.benefitPeriod
            : benefitPeriod as Period?,
        benefitBalance: identical(benefitBalance, fhirSentinel)
            ? _value.benefitBalance
            : benefitBalance as List<ExplanationOfBenefitBenefitBalance>?,
      ),
    );
  }
}

extension ExplanationOfBenefitCopyWithExtension on ExplanationOfBenefit {
  $ExplanationOfBenefitCopyWith<ExplanationOfBenefit> get copyWith =>
      _$ExplanationOfBenefitCopyWithImpl<ExplanationOfBenefit>(
        this,
        (value) => value,
      );
}

abstract class $ExplanationOfBenefitRelatedCopyWith<T>
    extends $BackboneElementCopyWith<T> {
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

class _$ExplanationOfBenefitRelatedCopyWithImpl<T>
    implements $ExplanationOfBenefitRelatedCopyWith<T> {
  final ExplanationOfBenefitRelated _value;
  final T Function(ExplanationOfBenefitRelated) _then;

  _$ExplanationOfBenefitRelatedCopyWithImpl(this._value, this._then);

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
      ExplanationOfBenefitRelated(
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

extension ExplanationOfBenefitRelatedCopyWithExtension
    on ExplanationOfBenefitRelated {
  $ExplanationOfBenefitRelatedCopyWith<ExplanationOfBenefitRelated>
      get copyWith => _$ExplanationOfBenefitRelatedCopyWithImpl<
              ExplanationOfBenefitRelated>(
            this,
            (value) => value,
          );
}

abstract class $ExplanationOfBenefitPayeeCopyWith<T>
    extends $BackboneElementCopyWith<T> {
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

class _$ExplanationOfBenefitPayeeCopyWithImpl<T>
    implements $ExplanationOfBenefitPayeeCopyWith<T> {
  final ExplanationOfBenefitPayee _value;
  final T Function(ExplanationOfBenefitPayee) _then;

  _$ExplanationOfBenefitPayeeCopyWithImpl(this._value, this._then);

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
      ExplanationOfBenefitPayee(
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
        party:
            identical(party, fhirSentinel) ? _value.party : party as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExplanationOfBenefitPayeeCopyWithExtension
    on ExplanationOfBenefitPayee {
  $ExplanationOfBenefitPayeeCopyWith<ExplanationOfBenefitPayee> get copyWith =>
      _$ExplanationOfBenefitPayeeCopyWithImpl<ExplanationOfBenefitPayee>(
        this,
        (value) => value,
      );
}

abstract class $ExplanationOfBenefitCareTeamCopyWith<T>
    extends $BackboneElementCopyWith<T> {
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

class _$ExplanationOfBenefitCareTeamCopyWithImpl<T>
    implements $ExplanationOfBenefitCareTeamCopyWith<T> {
  final ExplanationOfBenefitCareTeam _value;
  final T Function(ExplanationOfBenefitCareTeam) _then;

  _$ExplanationOfBenefitCareTeamCopyWithImpl(this._value, this._then);

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
      ExplanationOfBenefitCareTeam(
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
        provider: identical(provider, fhirSentinel)
            ? _value.provider
            : (provider as Reference?) ?? _value.provider,
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

extension ExplanationOfBenefitCareTeamCopyWithExtension
    on ExplanationOfBenefitCareTeam {
  $ExplanationOfBenefitCareTeamCopyWith<ExplanationOfBenefitCareTeam>
      get copyWith => _$ExplanationOfBenefitCareTeamCopyWithImpl<
              ExplanationOfBenefitCareTeam>(
            this,
            (value) => value,
          );
}

abstract class $ExplanationOfBenefitSupportingInfoCopyWith<T>
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
    Coding? reason,
    bool? disallowExtensions,
  });
}

class _$ExplanationOfBenefitSupportingInfoCopyWithImpl<T>
    implements $ExplanationOfBenefitSupportingInfoCopyWith<T> {
  final ExplanationOfBenefitSupportingInfo _value;
  final T Function(ExplanationOfBenefitSupportingInfo) _then;

  _$ExplanationOfBenefitSupportingInfoCopyWithImpl(this._value, this._then);

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
      ExplanationOfBenefitSupportingInfo(
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
        category: identical(category, fhirSentinel)
            ? _value.category
            : (category as CodeableConcept?) ?? _value.category,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        timingX: identical(timingX, fhirSentinel)
            ? _value.timingX
            : timingX as FhirDate?,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as FhirBoolean?,
        reason:
            identical(reason, fhirSentinel) ? _value.reason : reason as Coding?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExplanationOfBenefitSupportingInfoCopyWithExtension
    on ExplanationOfBenefitSupportingInfo {
  $ExplanationOfBenefitSupportingInfoCopyWith<
          ExplanationOfBenefitSupportingInfo>
      get copyWith => _$ExplanationOfBenefitSupportingInfoCopyWithImpl<
              ExplanationOfBenefitSupportingInfo>(
            this,
            (value) => value,
          );
}

abstract class $ExplanationOfBenefitDiagnosisCopyWith<T>
    extends $BackboneElementCopyWith<T> {
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

class _$ExplanationOfBenefitDiagnosisCopyWithImpl<T>
    implements $ExplanationOfBenefitDiagnosisCopyWith<T> {
  final ExplanationOfBenefitDiagnosis _value;
  final T Function(ExplanationOfBenefitDiagnosis) _then;

  _$ExplanationOfBenefitDiagnosisCopyWithImpl(this._value, this._then);

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
      ExplanationOfBenefitDiagnosis(
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
        diagnosisX: identical(diagnosisX, fhirSentinel)
            ? _value.diagnosisX
            : (diagnosisX as CodeableConcept?) ?? _value.diagnosisX,
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

extension ExplanationOfBenefitDiagnosisCopyWithExtension
    on ExplanationOfBenefitDiagnosis {
  $ExplanationOfBenefitDiagnosisCopyWith<ExplanationOfBenefitDiagnosis>
      get copyWith => _$ExplanationOfBenefitDiagnosisCopyWithImpl<
              ExplanationOfBenefitDiagnosis>(
            this,
            (value) => value,
          );
}

abstract class $ExplanationOfBenefitProcedureCopyWith<T>
    extends $BackboneElementCopyWith<T> {
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

class _$ExplanationOfBenefitProcedureCopyWithImpl<T>
    implements $ExplanationOfBenefitProcedureCopyWith<T> {
  final ExplanationOfBenefitProcedure _value;
  final T Function(ExplanationOfBenefitProcedure) _then;

  _$ExplanationOfBenefitProcedureCopyWithImpl(this._value, this._then);

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
      ExplanationOfBenefitProcedure(
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
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        procedureX: identical(procedureX, fhirSentinel)
            ? _value.procedureX
            : (procedureX as CodeableConcept?) ?? _value.procedureX,
        udi:
            identical(udi, fhirSentinel) ? _value.udi : udi as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExplanationOfBenefitProcedureCopyWithExtension
    on ExplanationOfBenefitProcedure {
  $ExplanationOfBenefitProcedureCopyWith<ExplanationOfBenefitProcedure>
      get copyWith => _$ExplanationOfBenefitProcedureCopyWithImpl<
              ExplanationOfBenefitProcedure>(
            this,
            (value) => value,
          );
}

abstract class $ExplanationOfBenefitInsuranceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? focal,
    Reference? coverage,
    List<FhirString>? preAuthRef,
    bool? disallowExtensions,
  });
}

class _$ExplanationOfBenefitInsuranceCopyWithImpl<T>
    implements $ExplanationOfBenefitInsuranceCopyWith<T> {
  final ExplanationOfBenefitInsurance _value;
  final T Function(ExplanationOfBenefitInsurance) _then;

  _$ExplanationOfBenefitInsuranceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? focal = fhirSentinel,
    Object? coverage = fhirSentinel,
    Object? preAuthRef = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExplanationOfBenefitInsurance(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        focal: identical(focal, fhirSentinel)
            ? _value.focal
            : (focal as FhirBoolean?) ?? _value.focal,
        coverage: identical(coverage, fhirSentinel)
            ? _value.coverage
            : (coverage as Reference?) ?? _value.coverage,
        preAuthRef: identical(preAuthRef, fhirSentinel)
            ? _value.preAuthRef
            : preAuthRef as List<FhirString>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExplanationOfBenefitInsuranceCopyWithExtension
    on ExplanationOfBenefitInsurance {
  $ExplanationOfBenefitInsuranceCopyWith<ExplanationOfBenefitInsurance>
      get copyWith => _$ExplanationOfBenefitInsuranceCopyWithImpl<
              ExplanationOfBenefitInsurance>(
            this,
            (value) => value,
          );
}

abstract class $ExplanationOfBenefitAccidentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
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

class _$ExplanationOfBenefitAccidentCopyWithImpl<T>
    implements $ExplanationOfBenefitAccidentCopyWith<T> {
  final ExplanationOfBenefitAccident _value;
  final T Function(ExplanationOfBenefitAccident) _then;

  _$ExplanationOfBenefitAccidentCopyWithImpl(this._value, this._then);

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
      ExplanationOfBenefitAccident(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        date: identical(date, fhirSentinel) ? _value.date : date as FhirDate?,
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

extension ExplanationOfBenefitAccidentCopyWithExtension
    on ExplanationOfBenefitAccident {
  $ExplanationOfBenefitAccidentCopyWith<ExplanationOfBenefitAccident>
      get copyWith => _$ExplanationOfBenefitAccidentCopyWithImpl<
              ExplanationOfBenefitAccident>(
            this,
            (value) => value,
          );
}

abstract class $ExplanationOfBenefitItemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
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
    List<FhirPositiveInt>? noteNumber,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitDetail>? detail,
    bool? disallowExtensions,
  });
}

class _$ExplanationOfBenefitItemCopyWithImpl<T>
    implements $ExplanationOfBenefitItemCopyWith<T> {
  final ExplanationOfBenefitItem _value;
  final T Function(ExplanationOfBenefitItem) _then;

  _$ExplanationOfBenefitItemCopyWithImpl(this._value, this._then);

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
    Object? noteNumber = fhirSentinel,
    Object? adjudication = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExplanationOfBenefitItem(
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
        productOrService: identical(productOrService, fhirSentinel)
            ? _value.productOrService
            : (productOrService as CodeableConcept?) ?? _value.productOrService,
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
        noteNumber: identical(noteNumber, fhirSentinel)
            ? _value.noteNumber
            : noteNumber as List<FhirPositiveInt>?,
        adjudication: identical(adjudication, fhirSentinel)
            ? _value.adjudication
            : adjudication as List<ExplanationOfBenefitAdjudication>?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as List<ExplanationOfBenefitDetail>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExplanationOfBenefitItemCopyWithExtension
    on ExplanationOfBenefitItem {
  $ExplanationOfBenefitItemCopyWith<ExplanationOfBenefitItem> get copyWith =>
      _$ExplanationOfBenefitItemCopyWithImpl<ExplanationOfBenefitItem>(
        this,
        (value) => value,
      );
}

abstract class $ExplanationOfBenefitAdjudicationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    CodeableConcept? reason,
    Money? amount,
    FhirDecimal? value,
    bool? disallowExtensions,
  });
}

class _$ExplanationOfBenefitAdjudicationCopyWithImpl<T>
    implements $ExplanationOfBenefitAdjudicationCopyWith<T> {
  final ExplanationOfBenefitAdjudication _value;
  final T Function(ExplanationOfBenefitAdjudication) _then;

  _$ExplanationOfBenefitAdjudicationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? category = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExplanationOfBenefitAdjudication(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : (category as CodeableConcept?) ?? _value.category,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as CodeableConcept?,
        amount:
            identical(amount, fhirSentinel) ? _value.amount : amount as Money?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : value as FhirDecimal?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExplanationOfBenefitAdjudicationCopyWithExtension
    on ExplanationOfBenefitAdjudication {
  $ExplanationOfBenefitAdjudicationCopyWith<ExplanationOfBenefitAdjudication>
      get copyWith => _$ExplanationOfBenefitAdjudicationCopyWithImpl<
              ExplanationOfBenefitAdjudication>(
            this,
            (value) => value,
          );
}

abstract class $ExplanationOfBenefitDetailCopyWith<T>
    extends $BackboneElementCopyWith<T> {
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
    List<FhirPositiveInt>? noteNumber,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitSubDetail>? subDetail,
    bool? disallowExtensions,
  });
}

class _$ExplanationOfBenefitDetailCopyWithImpl<T>
    implements $ExplanationOfBenefitDetailCopyWith<T> {
  final ExplanationOfBenefitDetail _value;
  final T Function(ExplanationOfBenefitDetail) _then;

  _$ExplanationOfBenefitDetailCopyWithImpl(this._value, this._then);

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
    Object? noteNumber = fhirSentinel,
    Object? adjudication = fhirSentinel,
    Object? subDetail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExplanationOfBenefitDetail(
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
        revenue: identical(revenue, fhirSentinel)
            ? _value.revenue
            : revenue as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        productOrService: identical(productOrService, fhirSentinel)
            ? _value.productOrService
            : (productOrService as CodeableConcept?) ?? _value.productOrService,
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
        noteNumber: identical(noteNumber, fhirSentinel)
            ? _value.noteNumber
            : noteNumber as List<FhirPositiveInt>?,
        adjudication: identical(adjudication, fhirSentinel)
            ? _value.adjudication
            : adjudication as List<ExplanationOfBenefitAdjudication>?,
        subDetail: identical(subDetail, fhirSentinel)
            ? _value.subDetail
            : subDetail as List<ExplanationOfBenefitSubDetail>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExplanationOfBenefitDetailCopyWithExtension
    on ExplanationOfBenefitDetail {
  $ExplanationOfBenefitDetailCopyWith<ExplanationOfBenefitDetail>
      get copyWith =>
          _$ExplanationOfBenefitDetailCopyWithImpl<ExplanationOfBenefitDetail>(
            this,
            (value) => value,
          );
}

abstract class $ExplanationOfBenefitSubDetailCopyWith<T>
    extends $BackboneElementCopyWith<T> {
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
    List<FhirPositiveInt>? noteNumber,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    bool? disallowExtensions,
  });
}

class _$ExplanationOfBenefitSubDetailCopyWithImpl<T>
    implements $ExplanationOfBenefitSubDetailCopyWith<T> {
  final ExplanationOfBenefitSubDetail _value;
  final T Function(ExplanationOfBenefitSubDetail) _then;

  _$ExplanationOfBenefitSubDetailCopyWithImpl(this._value, this._then);

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
    Object? noteNumber = fhirSentinel,
    Object? adjudication = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExplanationOfBenefitSubDetail(
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
        revenue: identical(revenue, fhirSentinel)
            ? _value.revenue
            : revenue as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        productOrService: identical(productOrService, fhirSentinel)
            ? _value.productOrService
            : (productOrService as CodeableConcept?) ?? _value.productOrService,
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
        noteNumber: identical(noteNumber, fhirSentinel)
            ? _value.noteNumber
            : noteNumber as List<FhirPositiveInt>?,
        adjudication: identical(adjudication, fhirSentinel)
            ? _value.adjudication
            : adjudication as List<ExplanationOfBenefitAdjudication>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExplanationOfBenefitSubDetailCopyWithExtension
    on ExplanationOfBenefitSubDetail {
  $ExplanationOfBenefitSubDetailCopyWith<ExplanationOfBenefitSubDetail>
      get copyWith => _$ExplanationOfBenefitSubDetailCopyWithImpl<
              ExplanationOfBenefitSubDetail>(
            this,
            (value) => value,
          );
}

abstract class $ExplanationOfBenefitAddItemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirPositiveInt>? itemSequence,
    List<FhirPositiveInt>? detailSequence,
    List<FhirPositiveInt>? subDetailSequence,
    List<Reference>? provider,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    FhirDate? servicedX,
    CodeableConcept? locationX,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? net,
    CodeableConcept? bodySite,
    List<CodeableConcept>? subSite,
    List<FhirPositiveInt>? noteNumber,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitDetail>? detail,
    bool? disallowExtensions,
  });
}

class _$ExplanationOfBenefitAddItemCopyWithImpl<T>
    implements $ExplanationOfBenefitAddItemCopyWith<T> {
  final ExplanationOfBenefitAddItem _value;
  final T Function(ExplanationOfBenefitAddItem) _then;

  _$ExplanationOfBenefitAddItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? itemSequence = fhirSentinel,
    Object? detailSequence = fhirSentinel,
    Object? subDetailSequence = fhirSentinel,
    Object? provider = fhirSentinel,
    Object? productOrService = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? programCode = fhirSentinel,
    Object? servicedX = fhirSentinel,
    Object? locationX = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? unitPrice = fhirSentinel,
    Object? factor = fhirSentinel,
    Object? net = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? subSite = fhirSentinel,
    Object? noteNumber = fhirSentinel,
    Object? adjudication = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExplanationOfBenefitAddItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        itemSequence: identical(itemSequence, fhirSentinel)
            ? _value.itemSequence
            : itemSequence as List<FhirPositiveInt>?,
        detailSequence: identical(detailSequence, fhirSentinel)
            ? _value.detailSequence
            : detailSequence as List<FhirPositiveInt>?,
        subDetailSequence: identical(subDetailSequence, fhirSentinel)
            ? _value.subDetailSequence
            : subDetailSequence as List<FhirPositiveInt>?,
        provider: identical(provider, fhirSentinel)
            ? _value.provider
            : provider as List<Reference>?,
        productOrService: identical(productOrService, fhirSentinel)
            ? _value.productOrService
            : (productOrService as CodeableConcept?) ?? _value.productOrService,
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
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as CodeableConcept?,
        subSite: identical(subSite, fhirSentinel)
            ? _value.subSite
            : subSite as List<CodeableConcept>?,
        noteNumber: identical(noteNumber, fhirSentinel)
            ? _value.noteNumber
            : noteNumber as List<FhirPositiveInt>?,
        adjudication: identical(adjudication, fhirSentinel)
            ? _value.adjudication
            : adjudication as List<ExplanationOfBenefitAdjudication>?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as List<ExplanationOfBenefitDetail>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExplanationOfBenefitAddItemCopyWithExtension
    on ExplanationOfBenefitAddItem {
  $ExplanationOfBenefitAddItemCopyWith<ExplanationOfBenefitAddItem>
      get copyWith => _$ExplanationOfBenefitAddItemCopyWithImpl<
              ExplanationOfBenefitAddItem>(
            this,
            (value) => value,
          );
}

abstract class $ExplanationOfBenefitDetail1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? net,
    List<FhirPositiveInt>? noteNumber,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitSubDetail>? subDetail,
    bool? disallowExtensions,
  });
}

class _$ExplanationOfBenefitDetail1CopyWithImpl<T>
    implements $ExplanationOfBenefitDetail1CopyWith<T> {
  final ExplanationOfBenefitDetail1 _value;
  final T Function(ExplanationOfBenefitDetail1) _then;

  _$ExplanationOfBenefitDetail1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? productOrService = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? unitPrice = fhirSentinel,
    Object? factor = fhirSentinel,
    Object? net = fhirSentinel,
    Object? noteNumber = fhirSentinel,
    Object? adjudication = fhirSentinel,
    Object? subDetail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExplanationOfBenefitDetail1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        productOrService: identical(productOrService, fhirSentinel)
            ? _value.productOrService
            : (productOrService as CodeableConcept?) ?? _value.productOrService,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as List<CodeableConcept>?,
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
        noteNumber: identical(noteNumber, fhirSentinel)
            ? _value.noteNumber
            : noteNumber as List<FhirPositiveInt>?,
        adjudication: identical(adjudication, fhirSentinel)
            ? _value.adjudication
            : adjudication as List<ExplanationOfBenefitAdjudication>?,
        subDetail: identical(subDetail, fhirSentinel)
            ? _value.subDetail
            : subDetail as List<ExplanationOfBenefitSubDetail>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExplanationOfBenefitDetail1CopyWithExtension
    on ExplanationOfBenefitDetail1 {
  $ExplanationOfBenefitDetail1CopyWith<ExplanationOfBenefitDetail1>
      get copyWith => _$ExplanationOfBenefitDetail1CopyWithImpl<
              ExplanationOfBenefitDetail1>(
            this,
            (value) => value,
          );
}

abstract class $ExplanationOfBenefitSubDetail1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? net,
    List<FhirPositiveInt>? noteNumber,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    bool? disallowExtensions,
  });
}

class _$ExplanationOfBenefitSubDetail1CopyWithImpl<T>
    implements $ExplanationOfBenefitSubDetail1CopyWith<T> {
  final ExplanationOfBenefitSubDetail1 _value;
  final T Function(ExplanationOfBenefitSubDetail1) _then;

  _$ExplanationOfBenefitSubDetail1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? productOrService = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? unitPrice = fhirSentinel,
    Object? factor = fhirSentinel,
    Object? net = fhirSentinel,
    Object? noteNumber = fhirSentinel,
    Object? adjudication = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExplanationOfBenefitSubDetail1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        productOrService: identical(productOrService, fhirSentinel)
            ? _value.productOrService
            : (productOrService as CodeableConcept?) ?? _value.productOrService,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as List<CodeableConcept>?,
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
        noteNumber: identical(noteNumber, fhirSentinel)
            ? _value.noteNumber
            : noteNumber as List<FhirPositiveInt>?,
        adjudication: identical(adjudication, fhirSentinel)
            ? _value.adjudication
            : adjudication as List<ExplanationOfBenefitAdjudication>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExplanationOfBenefitSubDetail1CopyWithExtension
    on ExplanationOfBenefitSubDetail1 {
  $ExplanationOfBenefitSubDetail1CopyWith<ExplanationOfBenefitSubDetail1>
      get copyWith => _$ExplanationOfBenefitSubDetail1CopyWithImpl<
              ExplanationOfBenefitSubDetail1>(
            this,
            (value) => value,
          );
}

abstract class $ExplanationOfBenefitTotalCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    Money? amount,
    bool? disallowExtensions,
  });
}

class _$ExplanationOfBenefitTotalCopyWithImpl<T>
    implements $ExplanationOfBenefitTotalCopyWith<T> {
  final ExplanationOfBenefitTotal _value;
  final T Function(ExplanationOfBenefitTotal) _then;

  _$ExplanationOfBenefitTotalCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? category = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExplanationOfBenefitTotal(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : (category as CodeableConcept?) ?? _value.category,
        amount: identical(amount, fhirSentinel)
            ? _value.amount
            : (amount as Money?) ?? _value.amount,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExplanationOfBenefitTotalCopyWithExtension
    on ExplanationOfBenefitTotal {
  $ExplanationOfBenefitTotalCopyWith<ExplanationOfBenefitTotal> get copyWith =>
      _$ExplanationOfBenefitTotalCopyWithImpl<ExplanationOfBenefitTotal>(
        this,
        (value) => value,
      );
}

abstract class $ExplanationOfBenefitPaymentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Money? adjustment,
    CodeableConcept? adjustmentReason,
    FhirDate? date,
    Money? amount,
    Identifier? identifier,
    bool? disallowExtensions,
  });
}

class _$ExplanationOfBenefitPaymentCopyWithImpl<T>
    implements $ExplanationOfBenefitPaymentCopyWith<T> {
  final ExplanationOfBenefitPayment _value;
  final T Function(ExplanationOfBenefitPayment) _then;

  _$ExplanationOfBenefitPaymentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? adjustment = fhirSentinel,
    Object? adjustmentReason = fhirSentinel,
    Object? date = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExplanationOfBenefitPayment(
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
        adjustment: identical(adjustment, fhirSentinel)
            ? _value.adjustment
            : adjustment as Money?,
        adjustmentReason: identical(adjustmentReason, fhirSentinel)
            ? _value.adjustmentReason
            : adjustmentReason as CodeableConcept?,
        date: identical(date, fhirSentinel) ? _value.date : date as FhirDate?,
        amount:
            identical(amount, fhirSentinel) ? _value.amount : amount as Money?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExplanationOfBenefitPaymentCopyWithExtension
    on ExplanationOfBenefitPayment {
  $ExplanationOfBenefitPaymentCopyWith<ExplanationOfBenefitPayment>
      get copyWith => _$ExplanationOfBenefitPaymentCopyWithImpl<
              ExplanationOfBenefitPayment>(
            this,
            (value) => value,
          );
}

abstract class $ExplanationOfBenefitProcessNoteCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? number,
    NoteType? type,
    FhirString? text,
    CodeableConcept? language,
    bool? disallowExtensions,
  });
}

class _$ExplanationOfBenefitProcessNoteCopyWithImpl<T>
    implements $ExplanationOfBenefitProcessNoteCopyWith<T> {
  final ExplanationOfBenefitProcessNote _value;
  final T Function(ExplanationOfBenefitProcessNote) _then;

  _$ExplanationOfBenefitProcessNoteCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? number = fhirSentinel,
    Object? type = fhirSentinel,
    Object? text = fhirSentinel,
    Object? language = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExplanationOfBenefitProcessNote(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        number: identical(number, fhirSentinel)
            ? _value.number
            : number as FhirPositiveInt?,
        type: identical(type, fhirSentinel) ? _value.type : type as NoteType?,
        text: identical(text, fhirSentinel) ? _value.text : text as FhirString?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExplanationOfBenefitProcessNoteCopyWithExtension
    on ExplanationOfBenefitProcessNote {
  $ExplanationOfBenefitProcessNoteCopyWith<ExplanationOfBenefitProcessNote>
      get copyWith => _$ExplanationOfBenefitProcessNoteCopyWithImpl<
              ExplanationOfBenefitProcessNote>(
            this,
            (value) => value,
          );
}

abstract class $ExplanationOfBenefitBenefitBalanceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    FhirBoolean? excluded,
    FhirString? name,
    FhirString? description,
    CodeableConcept? network,
    CodeableConcept? unit,
    CodeableConcept? term,
    List<ExplanationOfBenefitFinancial>? financial,
    bool? disallowExtensions,
  });
}

class _$ExplanationOfBenefitBenefitBalanceCopyWithImpl<T>
    implements $ExplanationOfBenefitBenefitBalanceCopyWith<T> {
  final ExplanationOfBenefitBenefitBalance _value;
  final T Function(ExplanationOfBenefitBenefitBalance) _then;

  _$ExplanationOfBenefitBenefitBalanceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? category = fhirSentinel,
    Object? excluded = fhirSentinel,
    Object? name = fhirSentinel,
    Object? description = fhirSentinel,
    Object? network = fhirSentinel,
    Object? unit = fhirSentinel,
    Object? term = fhirSentinel,
    Object? financial = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExplanationOfBenefitBenefitBalance(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : (category as CodeableConcept?) ?? _value.category,
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
        financial: identical(financial, fhirSentinel)
            ? _value.financial
            : financial as List<ExplanationOfBenefitFinancial>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExplanationOfBenefitBenefitBalanceCopyWithExtension
    on ExplanationOfBenefitBenefitBalance {
  $ExplanationOfBenefitBenefitBalanceCopyWith<
          ExplanationOfBenefitBenefitBalance>
      get copyWith => _$ExplanationOfBenefitBenefitBalanceCopyWithImpl<
              ExplanationOfBenefitBenefitBalance>(
            this,
            (value) => value,
          );
}

abstract class $ExplanationOfBenefitFinancialCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirUnsignedInt? allowedX,
    FhirUnsignedInt? usedX,
    bool? disallowExtensions,
  });
}

class _$ExplanationOfBenefitFinancialCopyWithImpl<T>
    implements $ExplanationOfBenefitFinancialCopyWith<T> {
  final ExplanationOfBenefitFinancial _value;
  final T Function(ExplanationOfBenefitFinancial) _then;

  _$ExplanationOfBenefitFinancialCopyWithImpl(this._value, this._then);

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
      ExplanationOfBenefitFinancial(
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
            : allowedX as FhirUnsignedInt?,
        usedX: identical(usedX, fhirSentinel)
            ? _value.usedX
            : usedX as FhirUnsignedInt?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExplanationOfBenefitFinancialCopyWithExtension
    on ExplanationOfBenefitFinancial {
  $ExplanationOfBenefitFinancialCopyWith<ExplanationOfBenefitFinancial>
      get copyWith => _$ExplanationOfBenefitFinancialCopyWithImpl<
              ExplanationOfBenefitFinancial>(
            this,
            (value) => value,
          );
}
