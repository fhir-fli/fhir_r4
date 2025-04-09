// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'insurance_plan.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $InsurancePlanCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    PublicationStatus? status,
    List<CodeableConcept>? type,
    FhirString? name,
    List<FhirString>? alias,
    Period? period,
    Reference? ownedBy,
    Reference? administeredBy,
    List<Reference>? coverageArea,
    List<InsurancePlanContact>? contact,
    List<Reference>? endpoint,
    List<Reference>? network,
    List<InsurancePlanCoverage>? coverage,
    List<InsurancePlanPlan>? plan,
    bool? disallowExtensions,
  });
}

class _$InsurancePlanCopyWithImpl<T> implements $InsurancePlanCopyWith<T> {
  final InsurancePlan _value;
  final T Function(InsurancePlan) _then;

  _$InsurancePlanCopyWithImpl(this._value, this._then);

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
    Object? alias = fhirSentinel,
    Object? period = fhirSentinel,
    Object? ownedBy = fhirSentinel,
    Object? administeredBy = fhirSentinel,
    Object? coverageArea = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? endpoint = fhirSentinel,
    Object? network = fhirSentinel,
    Object? coverage = fhirSentinel,
    Object? plan = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsurancePlan(
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
            : status as PublicationStatus?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        alias: identical(alias, fhirSentinel)
            ? _value.alias
            : alias as List<FhirString>?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        ownedBy: identical(ownedBy, fhirSentinel)
            ? _value.ownedBy
            : ownedBy as Reference?,
        administeredBy: identical(administeredBy, fhirSentinel)
            ? _value.administeredBy
            : administeredBy as Reference?,
        coverageArea: identical(coverageArea, fhirSentinel)
            ? _value.coverageArea
            : coverageArea as List<Reference>?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<InsurancePlanContact>?,
        endpoint: identical(endpoint, fhirSentinel)
            ? _value.endpoint
            : endpoint as List<Reference>?,
        network: identical(network, fhirSentinel)
            ? _value.network
            : network as List<Reference>?,
        coverage: identical(coverage, fhirSentinel)
            ? _value.coverage
            : coverage as List<InsurancePlanCoverage>?,
        plan: identical(plan, fhirSentinel)
            ? _value.plan
            : plan as List<InsurancePlanPlan>?,
      ),
    );
  }
}

extension InsurancePlanCopyWithExtension on InsurancePlan {
  $InsurancePlanCopyWith<InsurancePlan> get copyWith =>
      _$InsurancePlanCopyWithImpl<InsurancePlan>(
        this,
        (value) => value,
      );
}

abstract class $InsurancePlanContactCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? purpose,
    HumanName? name,
    List<ContactPoint>? telecom,
    Address? address,
    bool? disallowExtensions,
  });
}

class _$InsurancePlanContactCopyWithImpl<T>
    implements $InsurancePlanContactCopyWith<T> {
  final InsurancePlanContact _value;
  final T Function(InsurancePlanContact) _then;

  _$InsurancePlanContactCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? name = fhirSentinel,
    Object? telecom = fhirSentinel,
    Object? address = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsurancePlanContact(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : purpose as CodeableConcept?,
        name: identical(name, fhirSentinel) ? _value.name : name as HumanName?,
        telecom: identical(telecom, fhirSentinel)
            ? _value.telecom
            : telecom as List<ContactPoint>?,
        address: identical(address, fhirSentinel)
            ? _value.address
            : address as Address?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InsurancePlanContactCopyWithExtension on InsurancePlanContact {
  $InsurancePlanContactCopyWith<InsurancePlanContact> get copyWith =>
      _$InsurancePlanContactCopyWithImpl<InsurancePlanContact>(
        this,
        (value) => value,
      );
}

abstract class $InsurancePlanCoverageCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Reference>? network,
    List<InsurancePlanBenefit>? benefit,
    bool? disallowExtensions,
  });
}

class _$InsurancePlanCoverageCopyWithImpl<T>
    implements $InsurancePlanCoverageCopyWith<T> {
  final InsurancePlanCoverage _value;
  final T Function(InsurancePlanCoverage) _then;

  _$InsurancePlanCoverageCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? network = fhirSentinel,
    Object? benefit = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsurancePlanCoverage(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: type as CodeableConcept? ?? _value.type,
        network: identical(network, fhirSentinel)
            ? _value.network
            : network as List<Reference>?,
        benefit: benefit as List<InsurancePlanBenefit>? ?? _value.benefit,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InsurancePlanCoverageCopyWithExtension on InsurancePlanCoverage {
  $InsurancePlanCoverageCopyWith<InsurancePlanCoverage> get copyWith =>
      _$InsurancePlanCoverageCopyWithImpl<InsurancePlanCoverage>(
        this,
        (value) => value,
      );
}

abstract class $InsurancePlanBenefitCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? requirement,
    List<InsurancePlanLimit>? limit,
    bool? disallowExtensions,
  });
}

class _$InsurancePlanBenefitCopyWithImpl<T>
    implements $InsurancePlanBenefitCopyWith<T> {
  final InsurancePlanBenefit _value;
  final T Function(InsurancePlanBenefit) _then;

  _$InsurancePlanBenefitCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? requirement = fhirSentinel,
    Object? limit = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsurancePlanBenefit(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: type as CodeableConcept? ?? _value.type,
        requirement: identical(requirement, fhirSentinel)
            ? _value.requirement
            : requirement as FhirString?,
        limit: identical(limit, fhirSentinel)
            ? _value.limit
            : limit as List<InsurancePlanLimit>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InsurancePlanBenefitCopyWithExtension on InsurancePlanBenefit {
  $InsurancePlanBenefitCopyWith<InsurancePlanBenefit> get copyWith =>
      _$InsurancePlanBenefitCopyWithImpl<InsurancePlanBenefit>(
        this,
        (value) => value,
      );
}

abstract class $InsurancePlanLimitCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? value,
    CodeableConcept? code,
    bool? disallowExtensions,
  });
}

class _$InsurancePlanLimitCopyWithImpl<T>
    implements $InsurancePlanLimitCopyWith<T> {
  final InsurancePlanLimit _value;
  final T Function(InsurancePlanLimit) _then;

  _$InsurancePlanLimitCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? value = fhirSentinel,
    Object? code = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsurancePlanLimit(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        value:
            identical(value, fhirSentinel) ? _value.value : value as Quantity?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InsurancePlanLimitCopyWithExtension on InsurancePlanLimit {
  $InsurancePlanLimitCopyWith<InsurancePlanLimit> get copyWith =>
      _$InsurancePlanLimitCopyWithImpl<InsurancePlanLimit>(
        this,
        (value) => value,
      );
}

abstract class $InsurancePlanPlanCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? type,
    List<Reference>? coverageArea,
    List<Reference>? network,
    List<InsurancePlanGeneralCost>? generalCost,
    List<InsurancePlanSpecificCost>? specificCost,
    bool? disallowExtensions,
  });
}

class _$InsurancePlanPlanCopyWithImpl<T>
    implements $InsurancePlanPlanCopyWith<T> {
  final InsurancePlanPlan _value;
  final T Function(InsurancePlanPlan) _then;

  _$InsurancePlanPlanCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? type = fhirSentinel,
    Object? coverageArea = fhirSentinel,
    Object? network = fhirSentinel,
    Object? generalCost = fhirSentinel,
    Object? specificCost = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsurancePlanPlan(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        coverageArea: identical(coverageArea, fhirSentinel)
            ? _value.coverageArea
            : coverageArea as List<Reference>?,
        network: identical(network, fhirSentinel)
            ? _value.network
            : network as List<Reference>?,
        generalCost: identical(generalCost, fhirSentinel)
            ? _value.generalCost
            : generalCost as List<InsurancePlanGeneralCost>?,
        specificCost: identical(specificCost, fhirSentinel)
            ? _value.specificCost
            : specificCost as List<InsurancePlanSpecificCost>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InsurancePlanPlanCopyWithExtension on InsurancePlanPlan {
  $InsurancePlanPlanCopyWith<InsurancePlanPlan> get copyWith =>
      _$InsurancePlanPlanCopyWithImpl<InsurancePlanPlan>(
        this,
        (value) => value,
      );
}

abstract class $InsurancePlanGeneralCostCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirPositiveInt? groupSize,
    Money? cost,
    FhirString? comment,
    bool? disallowExtensions,
  });
}

class _$InsurancePlanGeneralCostCopyWithImpl<T>
    implements $InsurancePlanGeneralCostCopyWith<T> {
  final InsurancePlanGeneralCost _value;
  final T Function(InsurancePlanGeneralCost) _then;

  _$InsurancePlanGeneralCostCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? groupSize = fhirSentinel,
    Object? cost = fhirSentinel,
    Object? comment = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsurancePlanGeneralCost(
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
        groupSize: identical(groupSize, fhirSentinel)
            ? _value.groupSize
            : groupSize as FhirPositiveInt?,
        cost: identical(cost, fhirSentinel) ? _value.cost : cost as Money?,
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InsurancePlanGeneralCostCopyWithExtension
    on InsurancePlanGeneralCost {
  $InsurancePlanGeneralCostCopyWith<InsurancePlanGeneralCost> get copyWith =>
      _$InsurancePlanGeneralCostCopyWithImpl<InsurancePlanGeneralCost>(
        this,
        (value) => value,
      );
}

abstract class $InsurancePlanSpecificCostCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    List<InsurancePlanBenefit>? benefit,
    bool? disallowExtensions,
  });
}

class _$InsurancePlanSpecificCostCopyWithImpl<T>
    implements $InsurancePlanSpecificCostCopyWith<T> {
  final InsurancePlanSpecificCost _value;
  final T Function(InsurancePlanSpecificCost) _then;

  _$InsurancePlanSpecificCostCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? category = fhirSentinel,
    Object? benefit = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsurancePlanSpecificCost(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        category: category as CodeableConcept? ?? _value.category,
        benefit: identical(benefit, fhirSentinel)
            ? _value.benefit
            : benefit as List<InsurancePlanBenefit>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InsurancePlanSpecificCostCopyWithExtension
    on InsurancePlanSpecificCost {
  $InsurancePlanSpecificCostCopyWith<InsurancePlanSpecificCost> get copyWith =>
      _$InsurancePlanSpecificCostCopyWithImpl<InsurancePlanSpecificCost>(
        this,
        (value) => value,
      );
}

abstract class $InsurancePlanBenefit1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<InsurancePlanCost>? cost,
    bool? disallowExtensions,
  });
}

class _$InsurancePlanBenefit1CopyWithImpl<T>
    implements $InsurancePlanBenefit1CopyWith<T> {
  final InsurancePlanBenefit1 _value;
  final T Function(InsurancePlanBenefit1) _then;

  _$InsurancePlanBenefit1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? cost = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsurancePlanBenefit1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: type as CodeableConcept? ?? _value.type,
        cost: identical(cost, fhirSentinel)
            ? _value.cost
            : cost as List<InsurancePlanCost>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InsurancePlanBenefit1CopyWithExtension on InsurancePlanBenefit1 {
  $InsurancePlanBenefit1CopyWith<InsurancePlanBenefit1> get copyWith =>
      _$InsurancePlanBenefit1CopyWithImpl<InsurancePlanBenefit1>(
        this,
        (value) => value,
      );
}

abstract class $InsurancePlanCostCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? applicability,
    List<CodeableConcept>? qualifiers,
    Quantity? value,
    bool? disallowExtensions,
  });
}

class _$InsurancePlanCostCopyWithImpl<T>
    implements $InsurancePlanCostCopyWith<T> {
  final InsurancePlanCost _value;
  final T Function(InsurancePlanCost) _then;

  _$InsurancePlanCostCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? applicability = fhirSentinel,
    Object? qualifiers = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InsurancePlanCost(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: type as CodeableConcept? ?? _value.type,
        applicability: identical(applicability, fhirSentinel)
            ? _value.applicability
            : applicability as CodeableConcept?,
        qualifiers: identical(qualifiers, fhirSentinel)
            ? _value.qualifiers
            : qualifiers as List<CodeableConcept>?,
        value:
            identical(value, fhirSentinel) ? _value.value : value as Quantity?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InsurancePlanCostCopyWithExtension on InsurancePlanCost {
  $InsurancePlanCostCopyWith<InsurancePlanCost> get copyWith =>
      _$InsurancePlanCostCopyWithImpl<InsurancePlanCost>(
        this,
        (value) => value,
      );
}
