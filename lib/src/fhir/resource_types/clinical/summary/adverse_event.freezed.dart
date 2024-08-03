// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adverse_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdverseEvent _$AdverseEventFromJson(Map<String, dynamic> json) {
  return _AdverseEvent.fromJson(json);
}

/// @nodoc
mixin _$AdverseEvent {
  @JsonKey(unknownEnumValue: R4ResourceType.AdverseEvent)
  R4ResourceType get resourceType => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  FhirMeta? get meta => throw _privateConstructorUsedError;
  FhirUri? get implicitRules => throw _privateConstructorUsedError;
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;
  FhirCode? get language => throw _privateConstructorUsedError;
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;
  Narrative? get text => throw _privateConstructorUsedError;
  List<Resource>? get contained => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  Identifier? get identifier => throw _privateConstructorUsedError;
  FhirCode? get actuality => throw _privateConstructorUsedError;
  @JsonKey(name: '_actuality')
  PrimitiveElement? get actualityElement => throw _privateConstructorUsedError;
  List<CodeableConcept>? get category => throw _privateConstructorUsedError;
  CodeableConcept? get event => throw _privateConstructorUsedError;
  Reference get subject => throw _privateConstructorUsedError;
  Reference? get encounter => throw _privateConstructorUsedError;
  FhirDateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;
  FhirDateTime? get detected => throw _privateConstructorUsedError;
  @JsonKey(name: '_detected')
  PrimitiveElement? get detectedElement => throw _privateConstructorUsedError;
  FhirDateTime? get recordedDate => throw _privateConstructorUsedError;
  @JsonKey(name: '_recordedDate')
  PrimitiveElement? get recordedDateElement =>
      throw _privateConstructorUsedError;
  List<Reference>? get resultingCondition => throw _privateConstructorUsedError;
  Reference? get location => throw _privateConstructorUsedError;
  CodeableConcept? get seriousness => throw _privateConstructorUsedError;
  CodeableConcept? get severity => throw _privateConstructorUsedError;
  CodeableConcept? get outcome => throw _privateConstructorUsedError;
  Reference? get recorder => throw _privateConstructorUsedError;
  List<Reference>? get contributor => throw _privateConstructorUsedError;
  List<AdverseEventSuspectEntity>? get suspectEntity =>
      throw _privateConstructorUsedError;
  List<Reference>? get subjectMedicalHistory =>
      throw _privateConstructorUsedError;
  List<Reference>? get referenceDocument => throw _privateConstructorUsedError;
  List<Reference>? get study => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdverseEventCopyWith<AdverseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdverseEventCopyWith<$Res> {
  factory $AdverseEventCopyWith(
          AdverseEvent value, $Res Function(AdverseEvent) then) =
      _$AdverseEventCopyWithImpl<$Res, AdverseEvent>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.AdverseEvent)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Identifier? identifier,
      FhirCode? actuality,
      @JsonKey(name: '_actuality') PrimitiveElement? actualityElement,
      List<CodeableConcept>? category,
      CodeableConcept? event,
      Reference subject,
      Reference? encounter,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      FhirDateTime? detected,
      @JsonKey(name: '_detected') PrimitiveElement? detectedElement,
      FhirDateTime? recordedDate,
      @JsonKey(name: '_recordedDate') PrimitiveElement? recordedDateElement,
      List<Reference>? resultingCondition,
      Reference? location,
      CodeableConcept? seriousness,
      CodeableConcept? severity,
      CodeableConcept? outcome,
      Reference? recorder,
      List<Reference>? contributor,
      List<AdverseEventSuspectEntity>? suspectEntity,
      List<Reference>? subjectMedicalHistory,
      List<Reference>? referenceDocument,
      List<Reference>? study});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $IdentifierCopyWith<$Res>? get identifier;
  $CodeableConceptCopyWith<$Res>? get event;
  $ReferenceCopyWith<$Res> get subject;
  $ReferenceCopyWith<$Res>? get encounter;
  $ReferenceCopyWith<$Res>? get location;
  $CodeableConceptCopyWith<$Res>? get seriousness;
  $CodeableConceptCopyWith<$Res>? get severity;
  $CodeableConceptCopyWith<$Res>? get outcome;
  $ReferenceCopyWith<$Res>? get recorder;
}

/// @nodoc
class _$AdverseEventCopyWithImpl<$Res, $Val extends AdverseEvent>
    implements $AdverseEventCopyWith<$Res> {
  _$AdverseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? actuality = freezed,
    Object? actualityElement = freezed,
    Object? category = freezed,
    Object? event = freezed,
    Object? subject = null,
    Object? encounter = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? detected = freezed,
    Object? detectedElement = freezed,
    Object? recordedDate = freezed,
    Object? recordedDateElement = freezed,
    Object? resultingCondition = freezed,
    Object? location = freezed,
    Object? seriousness = freezed,
    Object? severity = freezed,
    Object? outcome = freezed,
    Object? recorder = freezed,
    Object? contributor = freezed,
    Object? suspectEntity = freezed,
    Object? subjectMedicalHistory = freezed,
    Object? referenceDocument = freezed,
    Object? study = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      actuality: freezed == actuality
          ? _value.actuality
          : actuality // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      actualityElement: freezed == actualityElement
          ? _value.actualityElement
          : actualityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Reference,
      encounter: freezed == encounter
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      detected: freezed == detected
          ? _value.detected
          : detected // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      detectedElement: freezed == detectedElement
          ? _value.detectedElement
          : detectedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      recordedDate: freezed == recordedDate
          ? _value.recordedDate
          : recordedDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      recordedDateElement: freezed == recordedDateElement
          ? _value.recordedDateElement
          : recordedDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      resultingCondition: freezed == resultingCondition
          ? _value.resultingCondition
          : resultingCondition // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Reference?,
      seriousness: freezed == seriousness
          ? _value.seriousness
          : seriousness // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      outcome: freezed == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      recorder: freezed == recorder
          ? _value.recorder
          : recorder // ignore: cast_nullable_to_non_nullable
              as Reference?,
      contributor: freezed == contributor
          ? _value.contributor
          : contributor // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      suspectEntity: freezed == suspectEntity
          ? _value.suspectEntity
          : suspectEntity // ignore: cast_nullable_to_non_nullable
              as List<AdverseEventSuspectEntity>?,
      subjectMedicalHistory: freezed == subjectMedicalHistory
          ? _value.subjectMedicalHistory
          : subjectMedicalHistory // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      referenceDocument: freezed == referenceDocument
          ? _value.referenceDocument
          : referenceDocument // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      study: freezed == study
          ? _value.study
          : study // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdentifierCopyWith<$Res>? get identifier {
    if (_value.identifier == null) {
      return null;
    }

    return $IdentifierCopyWith<$Res>(_value.identifier!, (value) {
      return _then(_value.copyWith(identifier: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get event {
    if (_value.event == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.event!, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get subject {
    return $ReferenceCopyWith<$Res>(_value.subject, (value) {
      return _then(_value.copyWith(subject: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get encounter {
    if (_value.encounter == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.encounter!, (value) {
      return _then(_value.copyWith(encounter: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get seriousness {
    if (_value.seriousness == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.seriousness!, (value) {
      return _then(_value.copyWith(seriousness: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get severity {
    if (_value.severity == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.severity!, (value) {
      return _then(_value.copyWith(severity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get outcome {
    if (_value.outcome == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.outcome!, (value) {
      return _then(_value.copyWith(outcome: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get recorder {
    if (_value.recorder == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.recorder!, (value) {
      return _then(_value.copyWith(recorder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdverseEventImplCopyWith<$Res>
    implements $AdverseEventCopyWith<$Res> {
  factory _$$AdverseEventImplCopyWith(
          _$AdverseEventImpl value, $Res Function(_$AdverseEventImpl) then) =
      __$$AdverseEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.AdverseEvent)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Identifier? identifier,
      FhirCode? actuality,
      @JsonKey(name: '_actuality') PrimitiveElement? actualityElement,
      List<CodeableConcept>? category,
      CodeableConcept? event,
      Reference subject,
      Reference? encounter,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      FhirDateTime? detected,
      @JsonKey(name: '_detected') PrimitiveElement? detectedElement,
      FhirDateTime? recordedDate,
      @JsonKey(name: '_recordedDate') PrimitiveElement? recordedDateElement,
      List<Reference>? resultingCondition,
      Reference? location,
      CodeableConcept? seriousness,
      CodeableConcept? severity,
      CodeableConcept? outcome,
      Reference? recorder,
      List<Reference>? contributor,
      List<AdverseEventSuspectEntity>? suspectEntity,
      List<Reference>? subjectMedicalHistory,
      List<Reference>? referenceDocument,
      List<Reference>? study});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $IdentifierCopyWith<$Res>? get identifier;
  @override
  $CodeableConceptCopyWith<$Res>? get event;
  @override
  $ReferenceCopyWith<$Res> get subject;
  @override
  $ReferenceCopyWith<$Res>? get encounter;
  @override
  $ReferenceCopyWith<$Res>? get location;
  @override
  $CodeableConceptCopyWith<$Res>? get seriousness;
  @override
  $CodeableConceptCopyWith<$Res>? get severity;
  @override
  $CodeableConceptCopyWith<$Res>? get outcome;
  @override
  $ReferenceCopyWith<$Res>? get recorder;
}

/// @nodoc
class __$$AdverseEventImplCopyWithImpl<$Res>
    extends _$AdverseEventCopyWithImpl<$Res, _$AdverseEventImpl>
    implements _$$AdverseEventImplCopyWith<$Res> {
  __$$AdverseEventImplCopyWithImpl(
      _$AdverseEventImpl _value, $Res Function(_$AdverseEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? actuality = freezed,
    Object? actualityElement = freezed,
    Object? category = freezed,
    Object? event = freezed,
    Object? subject = null,
    Object? encounter = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? detected = freezed,
    Object? detectedElement = freezed,
    Object? recordedDate = freezed,
    Object? recordedDateElement = freezed,
    Object? resultingCondition = freezed,
    Object? location = freezed,
    Object? seriousness = freezed,
    Object? severity = freezed,
    Object? outcome = freezed,
    Object? recorder = freezed,
    Object? contributor = freezed,
    Object? suspectEntity = freezed,
    Object? subjectMedicalHistory = freezed,
    Object? referenceDocument = freezed,
    Object? study = freezed,
  }) {
    return _then(_$AdverseEventImpl(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      actuality: freezed == actuality
          ? _value.actuality
          : actuality // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      actualityElement: freezed == actualityElement
          ? _value.actualityElement
          : actualityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Reference,
      encounter: freezed == encounter
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      detected: freezed == detected
          ? _value.detected
          : detected // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      detectedElement: freezed == detectedElement
          ? _value.detectedElement
          : detectedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      recordedDate: freezed == recordedDate
          ? _value.recordedDate
          : recordedDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      recordedDateElement: freezed == recordedDateElement
          ? _value.recordedDateElement
          : recordedDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      resultingCondition: freezed == resultingCondition
          ? _value._resultingCondition
          : resultingCondition // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Reference?,
      seriousness: freezed == seriousness
          ? _value.seriousness
          : seriousness // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      outcome: freezed == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      recorder: freezed == recorder
          ? _value.recorder
          : recorder // ignore: cast_nullable_to_non_nullable
              as Reference?,
      contributor: freezed == contributor
          ? _value._contributor
          : contributor // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      suspectEntity: freezed == suspectEntity
          ? _value._suspectEntity
          : suspectEntity // ignore: cast_nullable_to_non_nullable
              as List<AdverseEventSuspectEntity>?,
      subjectMedicalHistory: freezed == subjectMedicalHistory
          ? _value._subjectMedicalHistory
          : subjectMedicalHistory // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      referenceDocument: freezed == referenceDocument
          ? _value._referenceDocument
          : referenceDocument // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      study: freezed == study
          ? _value._study
          : study // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdverseEventImpl extends _AdverseEvent {
  const _$AdverseEventImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.AdverseEvent)
      this.resourceType = R4ResourceType.AdverseEvent,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules') this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.identifier,
      this.actuality,
      @JsonKey(name: '_actuality') this.actualityElement,
      final List<CodeableConcept>? category,
      this.event,
      required this.subject,
      this.encounter,
      this.date,
      @JsonKey(name: '_date') this.dateElement,
      this.detected,
      @JsonKey(name: '_detected') this.detectedElement,
      this.recordedDate,
      @JsonKey(name: '_recordedDate') this.recordedDateElement,
      final List<Reference>? resultingCondition,
      this.location,
      this.seriousness,
      this.severity,
      this.outcome,
      this.recorder,
      final List<Reference>? contributor,
      final List<AdverseEventSuspectEntity>? suspectEntity,
      final List<Reference>? subjectMedicalHistory,
      final List<Reference>? referenceDocument,
      final List<Reference>? study})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _category = category,
        _resultingCondition = resultingCondition,
        _contributor = contributor,
        _suspectEntity = suspectEntity,
        _subjectMedicalHistory = subjectMedicalHistory,
        _referenceDocument = referenceDocument,
        _study = study,
        super._();

  factory _$AdverseEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdverseEventImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.AdverseEvent)
  final R4ResourceType resourceType;
  @override
  final String? id;
  @override
  final FhirMeta? meta;
  @override
  final FhirUri? implicitRules;
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;
  @override
  final FhirCode? language;
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;
  @override
  final Narrative? text;
  final List<Resource>? _contained;
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _extension_;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _modifierExtension;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Identifier? identifier;
  @override
  final FhirCode? actuality;
  @override
  @JsonKey(name: '_actuality')
  final PrimitiveElement? actualityElement;
  final List<CodeableConcept>? _category;
  @override
  List<CodeableConcept>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CodeableConcept? event;
  @override
  final Reference subject;
  @override
  final Reference? encounter;
  @override
  final FhirDateTime? date;
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;
  @override
  final FhirDateTime? detected;
  @override
  @JsonKey(name: '_detected')
  final PrimitiveElement? detectedElement;
  @override
  final FhirDateTime? recordedDate;
  @override
  @JsonKey(name: '_recordedDate')
  final PrimitiveElement? recordedDateElement;
  final List<Reference>? _resultingCondition;
  @override
  List<Reference>? get resultingCondition {
    final value = _resultingCondition;
    if (value == null) return null;
    if (_resultingCondition is EqualUnmodifiableListView)
      return _resultingCondition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Reference? location;
  @override
  final CodeableConcept? seriousness;
  @override
  final CodeableConcept? severity;
  @override
  final CodeableConcept? outcome;
  @override
  final Reference? recorder;
  final List<Reference>? _contributor;
  @override
  List<Reference>? get contributor {
    final value = _contributor;
    if (value == null) return null;
    if (_contributor is EqualUnmodifiableListView) return _contributor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AdverseEventSuspectEntity>? _suspectEntity;
  @override
  List<AdverseEventSuspectEntity>? get suspectEntity {
    final value = _suspectEntity;
    if (value == null) return null;
    if (_suspectEntity is EqualUnmodifiableListView) return _suspectEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reference>? _subjectMedicalHistory;
  @override
  List<Reference>? get subjectMedicalHistory {
    final value = _subjectMedicalHistory;
    if (value == null) return null;
    if (_subjectMedicalHistory is EqualUnmodifiableListView)
      return _subjectMedicalHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reference>? _referenceDocument;
  @override
  List<Reference>? get referenceDocument {
    final value = _referenceDocument;
    if (value == null) return null;
    if (_referenceDocument is EqualUnmodifiableListView)
      return _referenceDocument;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reference>? _study;
  @override
  List<Reference>? get study {
    final value = _study;
    if (value == null) return null;
    if (_study is EqualUnmodifiableListView) return _study;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdverseEventImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.actuality, actuality) ||
                other.actuality == actuality) &&
            (identical(other.actualityElement, actualityElement) ||
                other.actualityElement == actualityElement) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.encounter, encounter) ||
                other.encounter == encounter) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateElement, dateElement) ||
                other.dateElement == dateElement) &&
            (identical(other.detected, detected) ||
                other.detected == detected) &&
            (identical(other.detectedElement, detectedElement) ||
                other.detectedElement == detectedElement) &&
            (identical(other.recordedDate, recordedDate) ||
                other.recordedDate == recordedDate) &&
            (identical(other.recordedDateElement, recordedDateElement) ||
                other.recordedDateElement == recordedDateElement) &&
            const DeepCollectionEquality()
                .equals(other._resultingCondition, _resultingCondition) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.seriousness, seriousness) ||
                other.seriousness == seriousness) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.outcome, outcome) || other.outcome == outcome) &&
            (identical(other.recorder, recorder) ||
                other.recorder == recorder) &&
            const DeepCollectionEquality()
                .equals(other._contributor, _contributor) &&
            const DeepCollectionEquality()
                .equals(other._suspectEntity, _suspectEntity) &&
            const DeepCollectionEquality()
                .equals(other._subjectMedicalHistory, _subjectMedicalHistory) &&
            const DeepCollectionEquality()
                .equals(other._referenceDocument, _referenceDocument) &&
            const DeepCollectionEquality().equals(other._study, _study));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        meta,
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        text,
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        identifier,
        actuality,
        actualityElement,
        const DeepCollectionEquality().hash(_category),
        event,
        subject,
        encounter,
        date,
        dateElement,
        detected,
        detectedElement,
        recordedDate,
        recordedDateElement,
        const DeepCollectionEquality().hash(_resultingCondition),
        location,
        seriousness,
        severity,
        outcome,
        recorder,
        const DeepCollectionEquality().hash(_contributor),
        const DeepCollectionEquality().hash(_suspectEntity),
        const DeepCollectionEquality().hash(_subjectMedicalHistory),
        const DeepCollectionEquality().hash(_referenceDocument),
        const DeepCollectionEquality().hash(_study)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdverseEventImplCopyWith<_$AdverseEventImpl> get copyWith =>
      __$$AdverseEventImplCopyWithImpl<_$AdverseEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdverseEventImplToJson(
      this,
    );
  }
}

abstract class _AdverseEvent extends AdverseEvent {
  const factory _AdverseEvent(
      {@JsonKey(unknownEnumValue: R4ResourceType.AdverseEvent)
      final R4ResourceType resourceType,
      final String? id,
      final FhirMeta? meta,
      final FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules')
      final PrimitiveElement? implicitRulesElement,
      final FhirCode? language,
      @JsonKey(name: '_language') final PrimitiveElement? languageElement,
      final Narrative? text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final Identifier? identifier,
      final FhirCode? actuality,
      @JsonKey(name: '_actuality') final PrimitiveElement? actualityElement,
      final List<CodeableConcept>? category,
      final CodeableConcept? event,
      required final Reference subject,
      final Reference? encounter,
      final FhirDateTime? date,
      @JsonKey(name: '_date') final PrimitiveElement? dateElement,
      final FhirDateTime? detected,
      @JsonKey(name: '_detected') final PrimitiveElement? detectedElement,
      final FhirDateTime? recordedDate,
      @JsonKey(name: '_recordedDate')
      final PrimitiveElement? recordedDateElement,
      final List<Reference>? resultingCondition,
      final Reference? location,
      final CodeableConcept? seriousness,
      final CodeableConcept? severity,
      final CodeableConcept? outcome,
      final Reference? recorder,
      final List<Reference>? contributor,
      final List<AdverseEventSuspectEntity>? suspectEntity,
      final List<Reference>? subjectMedicalHistory,
      final List<Reference>? referenceDocument,
      final List<Reference>? study}) = _$AdverseEventImpl;
  const _AdverseEvent._() : super._();

  factory _AdverseEvent.fromJson(Map<String, dynamic> json) =
      _$AdverseEventImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.AdverseEvent)
  R4ResourceType get resourceType;
  @override
  String? get id;
  @override
  FhirMeta? get meta;
  @override
  FhirUri? get implicitRules;
  @override
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;
  @override
  FhirCode? get language;
  @override
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override
  Narrative? get text;
  @override
  List<Resource>? get contained;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  Identifier? get identifier;
  @override
  FhirCode? get actuality;
  @override
  @JsonKey(name: '_actuality')
  PrimitiveElement? get actualityElement;
  @override
  List<CodeableConcept>? get category;
  @override
  CodeableConcept? get event;
  @override
  Reference get subject;
  @override
  Reference? get encounter;
  @override
  FhirDateTime? get date;
  @override
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override
  FhirDateTime? get detected;
  @override
  @JsonKey(name: '_detected')
  PrimitiveElement? get detectedElement;
  @override
  FhirDateTime? get recordedDate;
  @override
  @JsonKey(name: '_recordedDate')
  PrimitiveElement? get recordedDateElement;
  @override
  List<Reference>? get resultingCondition;
  @override
  Reference? get location;
  @override
  CodeableConcept? get seriousness;
  @override
  CodeableConcept? get severity;
  @override
  CodeableConcept? get outcome;
  @override
  Reference? get recorder;
  @override
  List<Reference>? get contributor;
  @override
  List<AdverseEventSuspectEntity>? get suspectEntity;
  @override
  List<Reference>? get subjectMedicalHistory;
  @override
  List<Reference>? get referenceDocument;
  @override
  List<Reference>? get study;
  @override
  @JsonKey(ignore: true)
  _$$AdverseEventImplCopyWith<_$AdverseEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdverseEventSuspectEntity _$AdverseEventSuspectEntityFromJson(
    Map<String, dynamic> json) {
  return _AdverseEventSuspectEntity.fromJson(json);
}

/// @nodoc
mixin _$AdverseEventSuspectEntity {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  Reference get instance => throw _privateConstructorUsedError;
  List<AdverseEventCausality>? get causality =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdverseEventSuspectEntityCopyWith<AdverseEventSuspectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdverseEventSuspectEntityCopyWith<$Res> {
  factory $AdverseEventSuspectEntityCopyWith(AdverseEventSuspectEntity value,
          $Res Function(AdverseEventSuspectEntity) then) =
      _$AdverseEventSuspectEntityCopyWithImpl<$Res, AdverseEventSuspectEntity>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference instance,
      List<AdverseEventCausality>? causality});

  $ReferenceCopyWith<$Res> get instance;
}

/// @nodoc
class _$AdverseEventSuspectEntityCopyWithImpl<$Res,
        $Val extends AdverseEventSuspectEntity>
    implements $AdverseEventSuspectEntityCopyWith<$Res> {
  _$AdverseEventSuspectEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? instance = null,
    Object? causality = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      instance: null == instance
          ? _value.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as Reference,
      causality: freezed == causality
          ? _value.causality
          : causality // ignore: cast_nullable_to_non_nullable
              as List<AdverseEventCausality>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get instance {
    return $ReferenceCopyWith<$Res>(_value.instance, (value) {
      return _then(_value.copyWith(instance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdverseEventSuspectEntityImplCopyWith<$Res>
    implements $AdverseEventSuspectEntityCopyWith<$Res> {
  factory _$$AdverseEventSuspectEntityImplCopyWith(
          _$AdverseEventSuspectEntityImpl value,
          $Res Function(_$AdverseEventSuspectEntityImpl) then) =
      __$$AdverseEventSuspectEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference instance,
      List<AdverseEventCausality>? causality});

  @override
  $ReferenceCopyWith<$Res> get instance;
}

/// @nodoc
class __$$AdverseEventSuspectEntityImplCopyWithImpl<$Res>
    extends _$AdverseEventSuspectEntityCopyWithImpl<$Res,
        _$AdverseEventSuspectEntityImpl>
    implements _$$AdverseEventSuspectEntityImplCopyWith<$Res> {
  __$$AdverseEventSuspectEntityImplCopyWithImpl(
      _$AdverseEventSuspectEntityImpl _value,
      $Res Function(_$AdverseEventSuspectEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? instance = null,
    Object? causality = freezed,
  }) {
    return _then(_$AdverseEventSuspectEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      instance: null == instance
          ? _value.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as Reference,
      causality: freezed == causality
          ? _value._causality
          : causality // ignore: cast_nullable_to_non_nullable
              as List<AdverseEventCausality>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdverseEventSuspectEntityImpl extends _AdverseEventSuspectEntity {
  const _$AdverseEventSuspectEntityImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.instance,
      final List<AdverseEventCausality>? causality})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _causality = causality,
        super._();

  factory _$AdverseEventSuspectEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdverseEventSuspectEntityImplFromJson(json);

  @override
  final String? id;
  final List<FhirExtension>? _extension_;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _modifierExtension;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Reference instance;
  final List<AdverseEventCausality>? _causality;
  @override
  List<AdverseEventCausality>? get causality {
    final value = _causality;
    if (value == null) return null;
    if (_causality is EqualUnmodifiableListView) return _causality;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdverseEventSuspectEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.instance, instance) ||
                other.instance == instance) &&
            const DeepCollectionEquality()
                .equals(other._causality, _causality));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      instance,
      const DeepCollectionEquality().hash(_causality));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdverseEventSuspectEntityImplCopyWith<_$AdverseEventSuspectEntityImpl>
      get copyWith => __$$AdverseEventSuspectEntityImplCopyWithImpl<
          _$AdverseEventSuspectEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdverseEventSuspectEntityImplToJson(
      this,
    );
  }
}

abstract class _AdverseEventSuspectEntity extends AdverseEventSuspectEntity {
  const factory _AdverseEventSuspectEntity(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final Reference instance,
          final List<AdverseEventCausality>? causality}) =
      _$AdverseEventSuspectEntityImpl;
  const _AdverseEventSuspectEntity._() : super._();

  factory _AdverseEventSuspectEntity.fromJson(Map<String, dynamic> json) =
      _$AdverseEventSuspectEntityImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  Reference get instance;
  @override
  List<AdverseEventCausality>? get causality;
  @override
  @JsonKey(ignore: true)
  _$$AdverseEventSuspectEntityImplCopyWith<_$AdverseEventSuspectEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdverseEventCausality _$AdverseEventCausalityFromJson(
    Map<String, dynamic> json) {
  return _AdverseEventCausality.fromJson(json);
}

/// @nodoc
mixin _$AdverseEventCausality {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept? get assessment => throw _privateConstructorUsedError;
  String? get productRelatedness => throw _privateConstructorUsedError;
  @JsonKey(name: '_productRelatedness')
  PrimitiveElement? get productRelatednessElement =>
      throw _privateConstructorUsedError;
  Reference? get author => throw _privateConstructorUsedError;
  CodeableConcept? get method => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdverseEventCausalityCopyWith<AdverseEventCausality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdverseEventCausalityCopyWith<$Res> {
  factory $AdverseEventCausalityCopyWith(AdverseEventCausality value,
          $Res Function(AdverseEventCausality) then) =
      _$AdverseEventCausalityCopyWithImpl<$Res, AdverseEventCausality>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? assessment,
      String? productRelatedness,
      @JsonKey(name: '_productRelatedness')
      PrimitiveElement? productRelatednessElement,
      Reference? author,
      CodeableConcept? method});

  $CodeableConceptCopyWith<$Res>? get assessment;
  $ReferenceCopyWith<$Res>? get author;
  $CodeableConceptCopyWith<$Res>? get method;
}

/// @nodoc
class _$AdverseEventCausalityCopyWithImpl<$Res,
        $Val extends AdverseEventCausality>
    implements $AdverseEventCausalityCopyWith<$Res> {
  _$AdverseEventCausalityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? assessment = freezed,
    Object? productRelatedness = freezed,
    Object? productRelatednessElement = freezed,
    Object? author = freezed,
    Object? method = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      assessment: freezed == assessment
          ? _value.assessment
          : assessment // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      productRelatedness: freezed == productRelatedness
          ? _value.productRelatedness
          : productRelatedness // ignore: cast_nullable_to_non_nullable
              as String?,
      productRelatednessElement: freezed == productRelatednessElement
          ? _value.productRelatednessElement
          : productRelatednessElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Reference?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get assessment {
    if (_value.assessment == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.assessment!, (value) {
      return _then(_value.copyWith(assessment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get method {
    if (_value.method == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.method!, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdverseEventCausalityImplCopyWith<$Res>
    implements $AdverseEventCausalityCopyWith<$Res> {
  factory _$$AdverseEventCausalityImplCopyWith(
          _$AdverseEventCausalityImpl value,
          $Res Function(_$AdverseEventCausalityImpl) then) =
      __$$AdverseEventCausalityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? assessment,
      String? productRelatedness,
      @JsonKey(name: '_productRelatedness')
      PrimitiveElement? productRelatednessElement,
      Reference? author,
      CodeableConcept? method});

  @override
  $CodeableConceptCopyWith<$Res>? get assessment;
  @override
  $ReferenceCopyWith<$Res>? get author;
  @override
  $CodeableConceptCopyWith<$Res>? get method;
}

/// @nodoc
class __$$AdverseEventCausalityImplCopyWithImpl<$Res>
    extends _$AdverseEventCausalityCopyWithImpl<$Res,
        _$AdverseEventCausalityImpl>
    implements _$$AdverseEventCausalityImplCopyWith<$Res> {
  __$$AdverseEventCausalityImplCopyWithImpl(_$AdverseEventCausalityImpl _value,
      $Res Function(_$AdverseEventCausalityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? assessment = freezed,
    Object? productRelatedness = freezed,
    Object? productRelatednessElement = freezed,
    Object? author = freezed,
    Object? method = freezed,
  }) {
    return _then(_$AdverseEventCausalityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      assessment: freezed == assessment
          ? _value.assessment
          : assessment // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      productRelatedness: freezed == productRelatedness
          ? _value.productRelatedness
          : productRelatedness // ignore: cast_nullable_to_non_nullable
              as String?,
      productRelatednessElement: freezed == productRelatednessElement
          ? _value.productRelatednessElement
          : productRelatednessElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Reference?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdverseEventCausalityImpl extends _AdverseEventCausality {
  const _$AdverseEventCausalityImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.assessment,
      this.productRelatedness,
      @JsonKey(name: '_productRelatedness') this.productRelatednessElement,
      this.author,
      this.method})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$AdverseEventCausalityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdverseEventCausalityImplFromJson(json);

  @override
  final String? id;
  final List<FhirExtension>? _extension_;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _modifierExtension;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CodeableConcept? assessment;
  @override
  final String? productRelatedness;
  @override
  @JsonKey(name: '_productRelatedness')
  final PrimitiveElement? productRelatednessElement;
  @override
  final Reference? author;
  @override
  final CodeableConcept? method;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdverseEventCausalityImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.assessment, assessment) ||
                other.assessment == assessment) &&
            (identical(other.productRelatedness, productRelatedness) ||
                other.productRelatedness == productRelatedness) &&
            (identical(other.productRelatednessElement,
                    productRelatednessElement) ||
                other.productRelatednessElement == productRelatednessElement) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.method, method) || other.method == method));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      assessment,
      productRelatedness,
      productRelatednessElement,
      author,
      method);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdverseEventCausalityImplCopyWith<_$AdverseEventCausalityImpl>
      get copyWith => __$$AdverseEventCausalityImplCopyWithImpl<
          _$AdverseEventCausalityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdverseEventCausalityImplToJson(
      this,
    );
  }
}

abstract class _AdverseEventCausality extends AdverseEventCausality {
  const factory _AdverseEventCausality(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? assessment,
      final String? productRelatedness,
      @JsonKey(name: '_productRelatedness')
      final PrimitiveElement? productRelatednessElement,
      final Reference? author,
      final CodeableConcept? method}) = _$AdverseEventCausalityImpl;
  const _AdverseEventCausality._() : super._();

  factory _AdverseEventCausality.fromJson(Map<String, dynamic> json) =
      _$AdverseEventCausalityImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept? get assessment;
  @override
  String? get productRelatedness;
  @override
  @JsonKey(name: '_productRelatedness')
  PrimitiveElement? get productRelatednessElement;
  @override
  Reference? get author;
  @override
  CodeableConcept? get method;
  @override
  @JsonKey(ignore: true)
  _$$AdverseEventCausalityImplCopyWith<_$AdverseEventCausalityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
