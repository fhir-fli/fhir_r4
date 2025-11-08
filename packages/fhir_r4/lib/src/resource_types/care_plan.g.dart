// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'care_plan.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $CarePlanCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<Reference>? basedOn,
    List<Reference>? replaces,
    List<Reference>? partOf,
    RequestStatus? status,
    CarePlanIntent? intent,
    List<CodeableConcept>? category,
    FhirString? title,
    FhirString? description,
    Reference? subject,
    Reference? encounter,
    Period? period,
    FhirDateTime? created,
    Reference? author,
    List<Reference>? contributor,
    List<Reference>? careTeam,
    List<Reference>? addresses,
    List<Reference>? supportingInfo,
    List<Reference>? goal,
    List<CarePlanActivity>? activity,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$CarePlanCopyWithImpl<T> implements $CarePlanCopyWith<T> {
  final CarePlan _value;
  final T Function(CarePlan) _then;

  _$CarePlanCopyWithImpl(this._value, this._then);

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
    Object? instantiatesCanonical = fhirSentinel,
    Object? instantiatesUri = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? replaces = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? status = fhirSentinel,
    Object? intent = fhirSentinel,
    Object? category = fhirSentinel,
    Object? title = fhirSentinel,
    Object? description = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? period = fhirSentinel,
    Object? created = fhirSentinel,
    Object? author = fhirSentinel,
    Object? contributor = fhirSentinel,
    Object? careTeam = fhirSentinel,
    Object? addresses = fhirSentinel,
    Object? supportingInfo = fhirSentinel,
    Object? goal = fhirSentinel,
    Object? activity = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CarePlan(
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
        instantiatesCanonical: identical(instantiatesCanonical, fhirSentinel)
            ? _value.instantiatesCanonical
            : instantiatesCanonical as List<FhirCanonical>?,
        instantiatesUri: identical(instantiatesUri, fhirSentinel)
            ? _value.instantiatesUri
            : instantiatesUri as List<FhirUri>?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        replaces: identical(replaces, fhirSentinel)
            ? _value.replaces
            : replaces as List<Reference>?,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as List<Reference>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as RequestStatus?) ?? _value.status,
        intent: identical(intent, fhirSentinel)
            ? _value.intent
            : (intent as CarePlanIntent?) ?? _value.intent,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        created: identical(created, fhirSentinel)
            ? _value.created
            : created as FhirDateTime?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as Reference?,
        contributor: identical(contributor, fhirSentinel)
            ? _value.contributor
            : contributor as List<Reference>?,
        careTeam: identical(careTeam, fhirSentinel)
            ? _value.careTeam
            : careTeam as List<Reference>?,
        addresses: identical(addresses, fhirSentinel)
            ? _value.addresses
            : addresses as List<Reference>?,
        supportingInfo: identical(supportingInfo, fhirSentinel)
            ? _value.supportingInfo
            : supportingInfo as List<Reference>?,
        goal: identical(goal, fhirSentinel)
            ? _value.goal
            : goal as List<Reference>?,
        activity: identical(activity, fhirSentinel)
            ? _value.activity
            : activity as List<CarePlanActivity>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension CarePlanCopyWithExtension on CarePlan {
  $CarePlanCopyWith<CarePlan> get copyWith => _$CarePlanCopyWithImpl<CarePlan>(
        this,
        (value) => value,
      );
}

abstract class $CarePlanActivityCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? outcomeCodeableConcept,
    List<Reference>? outcomeReference,
    List<Annotation>? progress,
    Reference? reference,
    CarePlanDetail? detail,
    bool? disallowExtensions,
  });
}

class _$CarePlanActivityCopyWithImpl<T>
    implements $CarePlanActivityCopyWith<T> {
  final CarePlanActivity _value;
  final T Function(CarePlanActivity) _then;

  _$CarePlanActivityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? outcomeCodeableConcept = fhirSentinel,
    Object? outcomeReference = fhirSentinel,
    Object? progress = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CarePlanActivity(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        outcomeCodeableConcept: identical(outcomeCodeableConcept, fhirSentinel)
            ? _value.outcomeCodeableConcept
            : outcomeCodeableConcept as List<CodeableConcept>?,
        outcomeReference: identical(outcomeReference, fhirSentinel)
            ? _value.outcomeReference
            : outcomeReference as List<Reference>?,
        progress: identical(progress, fhirSentinel)
            ? _value.progress
            : progress as List<Annotation>?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : reference as Reference?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as CarePlanDetail?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CarePlanActivityCopyWithExtension on CarePlanActivity {
  $CarePlanActivityCopyWith<CarePlanActivity> get copyWith =>
      _$CarePlanActivityCopyWithImpl<CarePlanActivity>(
        this,
        (value) => value,
      );
}

abstract class $CarePlanDetailCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CarePlanActivityKind? kind,
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    CodeableConcept? code,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? goal,
    CarePlanActivityStatus? status,
    CodeableConcept? statusReason,
    FhirBoolean? doNotPerform,
    ScheduledXCarePlanDetail? scheduledX,
    Reference? location,
    List<Reference>? performer,
    ProductXCarePlanDetail? productX,
    Quantity? dailyAmount,
    Quantity? quantity,
    FhirString? description,
    bool? disallowExtensions,
  });
}

class _$CarePlanDetailCopyWithImpl<T> implements $CarePlanDetailCopyWith<T> {
  final CarePlanDetail _value;
  final T Function(CarePlanDetail) _then;

  _$CarePlanDetailCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? kind = fhirSentinel,
    Object? instantiatesCanonical = fhirSentinel,
    Object? instantiatesUri = fhirSentinel,
    Object? code = fhirSentinel,
    Object? reasonCode = fhirSentinel,
    Object? reasonReference = fhirSentinel,
    Object? goal = fhirSentinel,
    Object? status = fhirSentinel,
    Object? statusReason = fhirSentinel,
    Object? doNotPerform = fhirSentinel,
    Object? scheduledX = fhirSentinel,
    Object? location = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? productX = fhirSentinel,
    Object? dailyAmount = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? description = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CarePlanDetail(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        kind: identical(kind, fhirSentinel)
            ? _value.kind
            : kind as CarePlanActivityKind?,
        instantiatesCanonical: identical(instantiatesCanonical, fhirSentinel)
            ? _value.instantiatesCanonical
            : instantiatesCanonical as List<FhirCanonical>?,
        instantiatesUri: identical(instantiatesUri, fhirSentinel)
            ? _value.instantiatesUri
            : instantiatesUri as List<FhirUri>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        reasonCode: identical(reasonCode, fhirSentinel)
            ? _value.reasonCode
            : reasonCode as List<CodeableConcept>?,
        reasonReference: identical(reasonReference, fhirSentinel)
            ? _value.reasonReference
            : reasonReference as List<Reference>?,
        goal: identical(goal, fhirSentinel)
            ? _value.goal
            : goal as List<Reference>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as CarePlanActivityStatus?) ?? _value.status,
        statusReason: identical(statusReason, fhirSentinel)
            ? _value.statusReason
            : statusReason as CodeableConcept?,
        doNotPerform: identical(doNotPerform, fhirSentinel)
            ? _value.doNotPerform
            : doNotPerform as FhirBoolean?,
        scheduledX: identical(scheduledX, fhirSentinel)
            ? _value.scheduledX
            : scheduledX as ScheduledXCarePlanDetail?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<Reference>?,
        productX: identical(productX, fhirSentinel)
            ? _value.productX
            : productX as ProductXCarePlanDetail?,
        dailyAmount: identical(dailyAmount, fhirSentinel)
            ? _value.dailyAmount
            : dailyAmount as Quantity?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CarePlanDetailCopyWithExtension on CarePlanDetail {
  $CarePlanDetailCopyWith<CarePlanDetail> get copyWith =>
      _$CarePlanDetailCopyWithImpl<CarePlanDetail>(
        this,
        (value) => value,
      );
}
