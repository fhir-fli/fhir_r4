// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'goal.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $GoalCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    GoalLifecycleStatus? lifecycleStatus,
    CodeableConcept? achievementStatus,
    List<CodeableConcept>? category,
    CodeableConcept? priority,
    CodeableConcept? description,
    Reference? subject,
    StartXGoal? startX,
    List<GoalTarget>? target,
    FhirDate? statusDate,
    FhirString? statusReason,
    Reference? expressedBy,
    List<Reference>? addresses,
    List<Annotation>? note,
    List<CodeableConcept>? outcomeCode,
    List<Reference>? outcomeReference,
    bool? disallowExtensions,
  });
}

class _$GoalCopyWithImpl<T> implements $GoalCopyWith<T> {
  final Goal _value;
  final T Function(Goal) _then;

  _$GoalCopyWithImpl(this._value, this._then);

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
    Object? lifecycleStatus = fhirSentinel,
    Object? achievementStatus = fhirSentinel,
    Object? category = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? description = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? startX = fhirSentinel,
    Object? target = fhirSentinel,
    Object? statusDate = fhirSentinel,
    Object? statusReason = fhirSentinel,
    Object? expressedBy = fhirSentinel,
    Object? addresses = fhirSentinel,
    Object? note = fhirSentinel,
    Object? outcomeCode = fhirSentinel,
    Object? outcomeReference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Goal(
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
        lifecycleStatus: identical(lifecycleStatus, fhirSentinel)
            ? _value.lifecycleStatus
            : (lifecycleStatus as GoalLifecycleStatus?) ??
                _value.lifecycleStatus,
        achievementStatus: identical(achievementStatus, fhirSentinel)
            ? _value.achievementStatus
            : achievementStatus as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : (description as CodeableConcept?) ?? _value.description,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        startX: identical(startX, fhirSentinel)
            ? _value.startX
            : startX as StartXGoal?,
        target: identical(target, fhirSentinel)
            ? _value.target
            : target as List<GoalTarget>?,
        statusDate: identical(statusDate, fhirSentinel)
            ? _value.statusDate
            : statusDate as FhirDate?,
        statusReason: identical(statusReason, fhirSentinel)
            ? _value.statusReason
            : statusReason as FhirString?,
        expressedBy: identical(expressedBy, fhirSentinel)
            ? _value.expressedBy
            : expressedBy as Reference?,
        addresses: identical(addresses, fhirSentinel)
            ? _value.addresses
            : addresses as List<Reference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        outcomeCode: identical(outcomeCode, fhirSentinel)
            ? _value.outcomeCode
            : outcomeCode as List<CodeableConcept>?,
        outcomeReference: identical(outcomeReference, fhirSentinel)
            ? _value.outcomeReference
            : outcomeReference as List<Reference>?,
      ),
    );
  }
}

extension GoalCopyWithExtension on Goal {
  $GoalCopyWith<Goal> get copyWith => _$GoalCopyWithImpl<Goal>(
        this,
        (value) => value,
      );
}

abstract class $GoalTargetCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? measure,
    DetailXGoalTarget? detailX,
    DueXGoalTarget? dueX,
    bool? disallowExtensions,
  });
}

class _$GoalTargetCopyWithImpl<T> implements $GoalTargetCopyWith<T> {
  final GoalTarget _value;
  final T Function(GoalTarget) _then;

  _$GoalTargetCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? measure = fhirSentinel,
    Object? detailX = fhirSentinel,
    Object? dueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      GoalTarget(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        measure: identical(measure, fhirSentinel)
            ? _value.measure
            : measure as CodeableConcept?,
        detailX: identical(detailX, fhirSentinel)
            ? _value.detailX
            : detailX as DetailXGoalTarget?,
        dueX: identical(dueX, fhirSentinel)
            ? _value.dueX
            : dueX as DueXGoalTarget?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension GoalTargetCopyWithExtension on GoalTarget {
  $GoalTargetCopyWith<GoalTarget> get copyWith =>
      _$GoalTargetCopyWithImpl<GoalTarget>(
        this,
        (value) => value,
      );
}
