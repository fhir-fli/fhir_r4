// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'allergy_intolerance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllergyIntolerance _$AllergyIntoleranceFromJson(Map<String, dynamic> json) {
  return _AllergyIntolerance.fromJson(json);
}

/// @nodoc
mixin _$AllergyIntolerance {
  @JsonKey(unknownEnumValue: R4ResourceType.AllergyIntolerance)
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
  List<Identifier>? get identifier => throw _privateConstructorUsedError;
  CodeableConcept? get clinicalStatus => throw _privateConstructorUsedError;
  CodeableConcept? get verificationStatus => throw _privateConstructorUsedError;
  FhirCode? get type => throw _privateConstructorUsedError;
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;
  List<FhirCode>? get category => throw _privateConstructorUsedError;
  @JsonKey(name: '_category')
  List<PrimitiveElement>? get categoryElement =>
      throw _privateConstructorUsedError;
  FhirCode? get criticality => throw _privateConstructorUsedError;
  @JsonKey(name: '_criticality')
  PrimitiveElement? get criticalityElement =>
      throw _privateConstructorUsedError;
  CodeableConcept? get code => throw _privateConstructorUsedError;
  Reference get patient => throw _privateConstructorUsedError;
  Reference? get encounter => throw _privateConstructorUsedError;
  FhirDateTime? get onsetDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: '_onsetDateTime')
  PrimitiveElement? get onsetDateTimeElement =>
      throw _privateConstructorUsedError;
  Age? get onsetAge => throw _privateConstructorUsedError;
  Period? get onsetPeriod => throw _privateConstructorUsedError;
  Range? get onsetRange => throw _privateConstructorUsedError;
  String? get onsetString => throw _privateConstructorUsedError;
  @JsonKey(name: '_onsetString')
  PrimitiveElement? get onsetStringElement =>
      throw _privateConstructorUsedError;
  FhirDateTime? get recordedDate => throw _privateConstructorUsedError;
  @JsonKey(name: '_recordedDate')
  PrimitiveElement? get recordedDateElement =>
      throw _privateConstructorUsedError;
  Reference? get recorder => throw _privateConstructorUsedError;
  Reference? get asserter => throw _privateConstructorUsedError;
  FhirDateTime? get lastOccurrence => throw _privateConstructorUsedError;
  @JsonKey(name: '_lastOccurrence')
  PrimitiveElement? get lastOccurrenceElement =>
      throw _privateConstructorUsedError;
  List<Annotation>? get note => throw _privateConstructorUsedError;
  List<AllergyIntoleranceReaction>? get reaction =>
      throw _privateConstructorUsedError;

  /// Serializes this AllergyIntolerance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllergyIntolerance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllergyIntoleranceCopyWith<AllergyIntolerance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllergyIntoleranceCopyWith<$Res> {
  factory $AllergyIntoleranceCopyWith(
          AllergyIntolerance value, $Res Function(AllergyIntolerance) then) =
      _$AllergyIntoleranceCopyWithImpl<$Res, AllergyIntolerance>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.AllergyIntolerance)
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
      List<Identifier>? identifier,
      CodeableConcept? clinicalStatus,
      CodeableConcept? verificationStatus,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      List<FhirCode>? category,
      @JsonKey(name: '_category') List<PrimitiveElement>? categoryElement,
      FhirCode? criticality,
      @JsonKey(name: '_criticality') PrimitiveElement? criticalityElement,
      CodeableConcept? code,
      Reference patient,
      Reference? encounter,
      FhirDateTime? onsetDateTime,
      @JsonKey(name: '_onsetDateTime') PrimitiveElement? onsetDateTimeElement,
      Age? onsetAge,
      Period? onsetPeriod,
      Range? onsetRange,
      String? onsetString,
      @JsonKey(name: '_onsetString') PrimitiveElement? onsetStringElement,
      FhirDateTime? recordedDate,
      @JsonKey(name: '_recordedDate') PrimitiveElement? recordedDateElement,
      Reference? recorder,
      Reference? asserter,
      FhirDateTime? lastOccurrence,
      @JsonKey(name: '_lastOccurrence') PrimitiveElement? lastOccurrenceElement,
      List<Annotation>? note,
      List<AllergyIntoleranceReaction>? reaction});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res>? get clinicalStatus;
  $CodeableConceptCopyWith<$Res>? get verificationStatus;
  $CodeableConceptCopyWith<$Res>? get code;
  $ReferenceCopyWith<$Res> get patient;
  $ReferenceCopyWith<$Res>? get encounter;
  $AgeCopyWith<$Res>? get onsetAge;
  $PeriodCopyWith<$Res>? get onsetPeriod;
  $RangeCopyWith<$Res>? get onsetRange;
  $ReferenceCopyWith<$Res>? get recorder;
  $ReferenceCopyWith<$Res>? get asserter;
}

/// @nodoc
class _$AllergyIntoleranceCopyWithImpl<$Res, $Val extends AllergyIntolerance>
    implements $AllergyIntoleranceCopyWith<$Res> {
  _$AllergyIntoleranceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllergyIntolerance
  /// with the given fields replaced by the non-null parameter values.
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
    Object? clinicalStatus = freezed,
    Object? verificationStatus = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? category = freezed,
    Object? categoryElement = freezed,
    Object? criticality = freezed,
    Object? criticalityElement = freezed,
    Object? code = freezed,
    Object? patient = null,
    Object? encounter = freezed,
    Object? onsetDateTime = freezed,
    Object? onsetDateTimeElement = freezed,
    Object? onsetAge = freezed,
    Object? onsetPeriod = freezed,
    Object? onsetRange = freezed,
    Object? onsetString = freezed,
    Object? onsetStringElement = freezed,
    Object? recordedDate = freezed,
    Object? recordedDateElement = freezed,
    Object? recorder = freezed,
    Object? asserter = freezed,
    Object? lastOccurrence = freezed,
    Object? lastOccurrenceElement = freezed,
    Object? note = freezed,
    Object? reaction = freezed,
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
              as List<Identifier>?,
      clinicalStatus: freezed == clinicalStatus
          ? _value.clinicalStatus
          : clinicalStatus // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      verificationStatus: freezed == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      categoryElement: freezed == categoryElement
          ? _value.categoryElement
          : categoryElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      criticality: freezed == criticality
          ? _value.criticality
          : criticality // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      criticalityElement: freezed == criticalityElement
          ? _value.criticalityElement
          : criticalityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference,
      encounter: freezed == encounter
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      onsetDateTime: freezed == onsetDateTime
          ? _value.onsetDateTime
          : onsetDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      onsetDateTimeElement: freezed == onsetDateTimeElement
          ? _value.onsetDateTimeElement
          : onsetDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      onsetAge: freezed == onsetAge
          ? _value.onsetAge
          : onsetAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      onsetPeriod: freezed == onsetPeriod
          ? _value.onsetPeriod
          : onsetPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      onsetRange: freezed == onsetRange
          ? _value.onsetRange
          : onsetRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      onsetString: freezed == onsetString
          ? _value.onsetString
          : onsetString // ignore: cast_nullable_to_non_nullable
              as String?,
      onsetStringElement: freezed == onsetStringElement
          ? _value.onsetStringElement
          : onsetStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      recordedDate: freezed == recordedDate
          ? _value.recordedDate
          : recordedDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      recordedDateElement: freezed == recordedDateElement
          ? _value.recordedDateElement
          : recordedDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      recorder: freezed == recorder
          ? _value.recorder
          : recorder // ignore: cast_nullable_to_non_nullable
              as Reference?,
      asserter: freezed == asserter
          ? _value.asserter
          : asserter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      lastOccurrence: freezed == lastOccurrence
          ? _value.lastOccurrence
          : lastOccurrence // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      lastOccurrenceElement: freezed == lastOccurrenceElement
          ? _value.lastOccurrenceElement
          : lastOccurrenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      reaction: freezed == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as List<AllergyIntoleranceReaction>?,
    ) as $Val);
  }

  /// Create a copy of AllergyIntolerance
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of AllergyIntolerance
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of AllergyIntolerance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get clinicalStatus {
    if (_value.clinicalStatus == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.clinicalStatus!, (value) {
      return _then(_value.copyWith(clinicalStatus: value) as $Val);
    });
  }

  /// Create a copy of AllergyIntolerance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get verificationStatus {
    if (_value.verificationStatus == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.verificationStatus!, (value) {
      return _then(_value.copyWith(verificationStatus: value) as $Val);
    });
  }

  /// Create a copy of AllergyIntolerance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get code {
    if (_value.code == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.code!, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }

  /// Create a copy of AllergyIntolerance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get patient {
    return $ReferenceCopyWith<$Res>(_value.patient, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }

  /// Create a copy of AllergyIntolerance
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of AllergyIntolerance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res>? get onsetAge {
    if (_value.onsetAge == null) {
      return null;
    }

    return $AgeCopyWith<$Res>(_value.onsetAge!, (value) {
      return _then(_value.copyWith(onsetAge: value) as $Val);
    });
  }

  /// Create a copy of AllergyIntolerance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get onsetPeriod {
    if (_value.onsetPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.onsetPeriod!, (value) {
      return _then(_value.copyWith(onsetPeriod: value) as $Val);
    });
  }

  /// Create a copy of AllergyIntolerance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get onsetRange {
    if (_value.onsetRange == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.onsetRange!, (value) {
      return _then(_value.copyWith(onsetRange: value) as $Val);
    });
  }

  /// Create a copy of AllergyIntolerance
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of AllergyIntolerance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get asserter {
    if (_value.asserter == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.asserter!, (value) {
      return _then(_value.copyWith(asserter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllergyIntoleranceImplCopyWith<$Res>
    implements $AllergyIntoleranceCopyWith<$Res> {
  factory _$$AllergyIntoleranceImplCopyWith(_$AllergyIntoleranceImpl value,
          $Res Function(_$AllergyIntoleranceImpl) then) =
      __$$AllergyIntoleranceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.AllergyIntolerance)
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
      List<Identifier>? identifier,
      CodeableConcept? clinicalStatus,
      CodeableConcept? verificationStatus,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      List<FhirCode>? category,
      @JsonKey(name: '_category') List<PrimitiveElement>? categoryElement,
      FhirCode? criticality,
      @JsonKey(name: '_criticality') PrimitiveElement? criticalityElement,
      CodeableConcept? code,
      Reference patient,
      Reference? encounter,
      FhirDateTime? onsetDateTime,
      @JsonKey(name: '_onsetDateTime') PrimitiveElement? onsetDateTimeElement,
      Age? onsetAge,
      Period? onsetPeriod,
      Range? onsetRange,
      String? onsetString,
      @JsonKey(name: '_onsetString') PrimitiveElement? onsetStringElement,
      FhirDateTime? recordedDate,
      @JsonKey(name: '_recordedDate') PrimitiveElement? recordedDateElement,
      Reference? recorder,
      Reference? asserter,
      FhirDateTime? lastOccurrence,
      @JsonKey(name: '_lastOccurrence') PrimitiveElement? lastOccurrenceElement,
      List<Annotation>? note,
      List<AllergyIntoleranceReaction>? reaction});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res>? get clinicalStatus;
  @override
  $CodeableConceptCopyWith<$Res>? get verificationStatus;
  @override
  $CodeableConceptCopyWith<$Res>? get code;
  @override
  $ReferenceCopyWith<$Res> get patient;
  @override
  $ReferenceCopyWith<$Res>? get encounter;
  @override
  $AgeCopyWith<$Res>? get onsetAge;
  @override
  $PeriodCopyWith<$Res>? get onsetPeriod;
  @override
  $RangeCopyWith<$Res>? get onsetRange;
  @override
  $ReferenceCopyWith<$Res>? get recorder;
  @override
  $ReferenceCopyWith<$Res>? get asserter;
}

/// @nodoc
class __$$AllergyIntoleranceImplCopyWithImpl<$Res>
    extends _$AllergyIntoleranceCopyWithImpl<$Res, _$AllergyIntoleranceImpl>
    implements _$$AllergyIntoleranceImplCopyWith<$Res> {
  __$$AllergyIntoleranceImplCopyWithImpl(_$AllergyIntoleranceImpl _value,
      $Res Function(_$AllergyIntoleranceImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllergyIntolerance
  /// with the given fields replaced by the non-null parameter values.
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
    Object? clinicalStatus = freezed,
    Object? verificationStatus = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? category = freezed,
    Object? categoryElement = freezed,
    Object? criticality = freezed,
    Object? criticalityElement = freezed,
    Object? code = freezed,
    Object? patient = null,
    Object? encounter = freezed,
    Object? onsetDateTime = freezed,
    Object? onsetDateTimeElement = freezed,
    Object? onsetAge = freezed,
    Object? onsetPeriod = freezed,
    Object? onsetRange = freezed,
    Object? onsetString = freezed,
    Object? onsetStringElement = freezed,
    Object? recordedDate = freezed,
    Object? recordedDateElement = freezed,
    Object? recorder = freezed,
    Object? asserter = freezed,
    Object? lastOccurrence = freezed,
    Object? lastOccurrenceElement = freezed,
    Object? note = freezed,
    Object? reaction = freezed,
  }) {
    return _then(_$AllergyIntoleranceImpl(
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
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      clinicalStatus: freezed == clinicalStatus
          ? _value.clinicalStatus
          : clinicalStatus // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      verificationStatus: freezed == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      categoryElement: freezed == categoryElement
          ? _value._categoryElement
          : categoryElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      criticality: freezed == criticality
          ? _value.criticality
          : criticality // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      criticalityElement: freezed == criticalityElement
          ? _value.criticalityElement
          : criticalityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference,
      encounter: freezed == encounter
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      onsetDateTime: freezed == onsetDateTime
          ? _value.onsetDateTime
          : onsetDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      onsetDateTimeElement: freezed == onsetDateTimeElement
          ? _value.onsetDateTimeElement
          : onsetDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      onsetAge: freezed == onsetAge
          ? _value.onsetAge
          : onsetAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      onsetPeriod: freezed == onsetPeriod
          ? _value.onsetPeriod
          : onsetPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      onsetRange: freezed == onsetRange
          ? _value.onsetRange
          : onsetRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      onsetString: freezed == onsetString
          ? _value.onsetString
          : onsetString // ignore: cast_nullable_to_non_nullable
              as String?,
      onsetStringElement: freezed == onsetStringElement
          ? _value.onsetStringElement
          : onsetStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      recordedDate: freezed == recordedDate
          ? _value.recordedDate
          : recordedDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      recordedDateElement: freezed == recordedDateElement
          ? _value.recordedDateElement
          : recordedDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      recorder: freezed == recorder
          ? _value.recorder
          : recorder // ignore: cast_nullable_to_non_nullable
              as Reference?,
      asserter: freezed == asserter
          ? _value.asserter
          : asserter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      lastOccurrence: freezed == lastOccurrence
          ? _value.lastOccurrence
          : lastOccurrence // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      lastOccurrenceElement: freezed == lastOccurrenceElement
          ? _value.lastOccurrenceElement
          : lastOccurrenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      reaction: freezed == reaction
          ? _value._reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as List<AllergyIntoleranceReaction>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllergyIntoleranceImpl extends _AllergyIntolerance {
  const _$AllergyIntoleranceImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.AllergyIntolerance)
      this.resourceType = R4ResourceType.AllergyIntolerance,
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
      final List<Identifier>? identifier,
      this.clinicalStatus,
      this.verificationStatus,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      final List<FhirCode>? category,
      @JsonKey(name: '_category') final List<PrimitiveElement>? categoryElement,
      this.criticality,
      @JsonKey(name: '_criticality') this.criticalityElement,
      this.code,
      required this.patient,
      this.encounter,
      this.onsetDateTime,
      @JsonKey(name: '_onsetDateTime') this.onsetDateTimeElement,
      this.onsetAge,
      this.onsetPeriod,
      this.onsetRange,
      this.onsetString,
      @JsonKey(name: '_onsetString') this.onsetStringElement,
      this.recordedDate,
      @JsonKey(name: '_recordedDate') this.recordedDateElement,
      this.recorder,
      this.asserter,
      this.lastOccurrence,
      @JsonKey(name: '_lastOccurrence') this.lastOccurrenceElement,
      final List<Annotation>? note,
      final List<AllergyIntoleranceReaction>? reaction})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _category = category,
        _categoryElement = categoryElement,
        _note = note,
        _reaction = reaction,
        super._();

  factory _$AllergyIntoleranceImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllergyIntoleranceImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.AllergyIntolerance)
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

  final List<Identifier>? _identifier;
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CodeableConcept? clinicalStatus;
  @override
  final CodeableConcept? verificationStatus;
  @override
  final FhirCode? type;
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;
  final List<FhirCode>? _category;
  @override
  List<FhirCode>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PrimitiveElement>? _categoryElement;
  @override
  @JsonKey(name: '_category')
  List<PrimitiveElement>? get categoryElement {
    final value = _categoryElement;
    if (value == null) return null;
    if (_categoryElement is EqualUnmodifiableListView) return _categoryElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FhirCode? criticality;
  @override
  @JsonKey(name: '_criticality')
  final PrimitiveElement? criticalityElement;
  @override
  final CodeableConcept? code;
  @override
  final Reference patient;
  @override
  final Reference? encounter;
  @override
  final FhirDateTime? onsetDateTime;
  @override
  @JsonKey(name: '_onsetDateTime')
  final PrimitiveElement? onsetDateTimeElement;
  @override
  final Age? onsetAge;
  @override
  final Period? onsetPeriod;
  @override
  final Range? onsetRange;
  @override
  final String? onsetString;
  @override
  @JsonKey(name: '_onsetString')
  final PrimitiveElement? onsetStringElement;
  @override
  final FhirDateTime? recordedDate;
  @override
  @JsonKey(name: '_recordedDate')
  final PrimitiveElement? recordedDateElement;
  @override
  final Reference? recorder;
  @override
  final Reference? asserter;
  @override
  final FhirDateTime? lastOccurrence;
  @override
  @JsonKey(name: '_lastOccurrence')
  final PrimitiveElement? lastOccurrenceElement;
  final List<Annotation>? _note;
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AllergyIntoleranceReaction>? _reaction;
  @override
  List<AllergyIntoleranceReaction>? get reaction {
    final value = _reaction;
    if (value == null) return null;
    if (_reaction is EqualUnmodifiableListView) return _reaction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllergyIntolerance(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, clinicalStatus: $clinicalStatus, verificationStatus: $verificationStatus, type: $type, typeElement: $typeElement, category: $category, categoryElement: $categoryElement, criticality: $criticality, criticalityElement: $criticalityElement, code: $code, patient: $patient, encounter: $encounter, onsetDateTime: $onsetDateTime, onsetDateTimeElement: $onsetDateTimeElement, onsetAge: $onsetAge, onsetPeriod: $onsetPeriod, onsetRange: $onsetRange, onsetString: $onsetString, onsetStringElement: $onsetStringElement, recordedDate: $recordedDate, recordedDateElement: $recordedDateElement, recorder: $recorder, asserter: $asserter, lastOccurrence: $lastOccurrence, lastOccurrenceElement: $lastOccurrenceElement, note: $note, reaction: $reaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllergyIntoleranceImpl &&
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
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.clinicalStatus, clinicalStatus) ||
                other.clinicalStatus == clinicalStatus) &&
            (identical(other.verificationStatus, verificationStatus) ||
                other.verificationStatus == verificationStatus) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality()
                .equals(other._categoryElement, _categoryElement) &&
            (identical(other.criticality, criticality) ||
                other.criticality == criticality) &&
            (identical(other.criticalityElement, criticalityElement) ||
                other.criticalityElement == criticalityElement) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.encounter, encounter) ||
                other.encounter == encounter) &&
            (identical(other.onsetDateTime, onsetDateTime) ||
                other.onsetDateTime == onsetDateTime) &&
            (identical(other.onsetDateTimeElement, onsetDateTimeElement) ||
                other.onsetDateTimeElement == onsetDateTimeElement) &&
            (identical(other.onsetAge, onsetAge) ||
                other.onsetAge == onsetAge) &&
            (identical(other.onsetPeriod, onsetPeriod) ||
                other.onsetPeriod == onsetPeriod) &&
            (identical(other.onsetRange, onsetRange) ||
                other.onsetRange == onsetRange) &&
            (identical(other.onsetString, onsetString) ||
                other.onsetString == onsetString) &&
            (identical(other.onsetStringElement, onsetStringElement) ||
                other.onsetStringElement == onsetStringElement) &&
            (identical(other.recordedDate, recordedDate) ||
                other.recordedDate == recordedDate) &&
            (identical(other.recordedDateElement, recordedDateElement) ||
                other.recordedDateElement == recordedDateElement) &&
            (identical(other.recorder, recorder) ||
                other.recorder == recorder) &&
            (identical(other.asserter, asserter) ||
                other.asserter == asserter) &&
            (identical(other.lastOccurrence, lastOccurrence) ||
                other.lastOccurrence == lastOccurrence) &&
            (identical(other.lastOccurrenceElement, lastOccurrenceElement) ||
                other.lastOccurrenceElement == lastOccurrenceElement) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            const DeepCollectionEquality().equals(other._reaction, _reaction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
        const DeepCollectionEquality().hash(_identifier),
        clinicalStatus,
        verificationStatus,
        type,
        typeElement,
        const DeepCollectionEquality().hash(_category),
        const DeepCollectionEquality().hash(_categoryElement),
        criticality,
        criticalityElement,
        code,
        patient,
        encounter,
        onsetDateTime,
        onsetDateTimeElement,
        onsetAge,
        onsetPeriod,
        onsetRange,
        onsetString,
        onsetStringElement,
        recordedDate,
        recordedDateElement,
        recorder,
        asserter,
        lastOccurrence,
        lastOccurrenceElement,
        const DeepCollectionEquality().hash(_note),
        const DeepCollectionEquality().hash(_reaction)
      ]);

  /// Create a copy of AllergyIntolerance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllergyIntoleranceImplCopyWith<_$AllergyIntoleranceImpl> get copyWith =>
      __$$AllergyIntoleranceImplCopyWithImpl<_$AllergyIntoleranceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllergyIntoleranceImplToJson(
      this,
    );
  }
}

abstract class _AllergyIntolerance extends AllergyIntolerance {
  const factory _AllergyIntolerance(
      {@JsonKey(unknownEnumValue: R4ResourceType.AllergyIntolerance)
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
      final List<Identifier>? identifier,
      final CodeableConcept? clinicalStatus,
      final CodeableConcept? verificationStatus,
      final FhirCode? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      final List<FhirCode>? category,
      @JsonKey(name: '_category') final List<PrimitiveElement>? categoryElement,
      final FhirCode? criticality,
      @JsonKey(name: '_criticality') final PrimitiveElement? criticalityElement,
      final CodeableConcept? code,
      required final Reference patient,
      final Reference? encounter,
      final FhirDateTime? onsetDateTime,
      @JsonKey(name: '_onsetDateTime')
      final PrimitiveElement? onsetDateTimeElement,
      final Age? onsetAge,
      final Period? onsetPeriod,
      final Range? onsetRange,
      final String? onsetString,
      @JsonKey(name: '_onsetString') final PrimitiveElement? onsetStringElement,
      final FhirDateTime? recordedDate,
      @JsonKey(name: '_recordedDate')
      final PrimitiveElement? recordedDateElement,
      final Reference? recorder,
      final Reference? asserter,
      final FhirDateTime? lastOccurrence,
      @JsonKey(name: '_lastOccurrence')
      final PrimitiveElement? lastOccurrenceElement,
      final List<Annotation>? note,
      final List<AllergyIntoleranceReaction>?
          reaction}) = _$AllergyIntoleranceImpl;
  const _AllergyIntolerance._() : super._();

  factory _AllergyIntolerance.fromJson(Map<String, dynamic> json) =
      _$AllergyIntoleranceImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.AllergyIntolerance)
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
  List<Identifier>? get identifier;
  @override
  CodeableConcept? get clinicalStatus;
  @override
  CodeableConcept? get verificationStatus;
  @override
  FhirCode? get type;
  @override
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override
  List<FhirCode>? get category;
  @override
  @JsonKey(name: '_category')
  List<PrimitiveElement>? get categoryElement;
  @override
  FhirCode? get criticality;
  @override
  @JsonKey(name: '_criticality')
  PrimitiveElement? get criticalityElement;
  @override
  CodeableConcept? get code;
  @override
  Reference get patient;
  @override
  Reference? get encounter;
  @override
  FhirDateTime? get onsetDateTime;
  @override
  @JsonKey(name: '_onsetDateTime')
  PrimitiveElement? get onsetDateTimeElement;
  @override
  Age? get onsetAge;
  @override
  Period? get onsetPeriod;
  @override
  Range? get onsetRange;
  @override
  String? get onsetString;
  @override
  @JsonKey(name: '_onsetString')
  PrimitiveElement? get onsetStringElement;
  @override
  FhirDateTime? get recordedDate;
  @override
  @JsonKey(name: '_recordedDate')
  PrimitiveElement? get recordedDateElement;
  @override
  Reference? get recorder;
  @override
  Reference? get asserter;
  @override
  FhirDateTime? get lastOccurrence;
  @override
  @JsonKey(name: '_lastOccurrence')
  PrimitiveElement? get lastOccurrenceElement;
  @override
  List<Annotation>? get note;
  @override
  List<AllergyIntoleranceReaction>? get reaction;

  /// Create a copy of AllergyIntolerance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllergyIntoleranceImplCopyWith<_$AllergyIntoleranceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AllergyIntoleranceReaction _$AllergyIntoleranceReactionFromJson(
    Map<String, dynamic> json) {
  return _AllergyIntoleranceReaction.fromJson(json);
}

/// @nodoc
mixin _$AllergyIntoleranceReaction {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept? get substance => throw _privateConstructorUsedError;
  List<CodeableConcept> get manifestation => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;
  FhirDateTime? get onset => throw _privateConstructorUsedError;
  @JsonKey(name: '_onset')
  PrimitiveElement? get onsetElement => throw _privateConstructorUsedError;
  FhirCode? get severity => throw _privateConstructorUsedError;
  @JsonKey(name: '_severity')
  PrimitiveElement? get severityElement => throw _privateConstructorUsedError;
  CodeableConcept? get exposureRoute => throw _privateConstructorUsedError;
  List<Annotation>? get note => throw _privateConstructorUsedError;

  /// Serializes this AllergyIntoleranceReaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllergyIntoleranceReaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllergyIntoleranceReactionCopyWith<AllergyIntoleranceReaction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllergyIntoleranceReactionCopyWith<$Res> {
  factory $AllergyIntoleranceReactionCopyWith(AllergyIntoleranceReaction value,
          $Res Function(AllergyIntoleranceReaction) then) =
      _$AllergyIntoleranceReactionCopyWithImpl<$Res,
          AllergyIntoleranceReaction>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? substance,
      List<CodeableConcept> manifestation,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirDateTime? onset,
      @JsonKey(name: '_onset') PrimitiveElement? onsetElement,
      FhirCode? severity,
      @JsonKey(name: '_severity') PrimitiveElement? severityElement,
      CodeableConcept? exposureRoute,
      List<Annotation>? note});

  $CodeableConceptCopyWith<$Res>? get substance;
  $CodeableConceptCopyWith<$Res>? get exposureRoute;
}

/// @nodoc
class _$AllergyIntoleranceReactionCopyWithImpl<$Res,
        $Val extends AllergyIntoleranceReaction>
    implements $AllergyIntoleranceReactionCopyWith<$Res> {
  _$AllergyIntoleranceReactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllergyIntoleranceReaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? substance = freezed,
    Object? manifestation = null,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? onset = freezed,
    Object? onsetElement = freezed,
    Object? severity = freezed,
    Object? severityElement = freezed,
    Object? exposureRoute = freezed,
    Object? note = freezed,
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
      substance: freezed == substance
          ? _value.substance
          : substance // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      manifestation: null == manifestation
          ? _value.manifestation
          : manifestation // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      onset: freezed == onset
          ? _value.onset
          : onset // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      onsetElement: freezed == onsetElement
          ? _value.onsetElement
          : onsetElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      severityElement: freezed == severityElement
          ? _value.severityElement
          : severityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      exposureRoute: freezed == exposureRoute
          ? _value.exposureRoute
          : exposureRoute // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
    ) as $Val);
  }

  /// Create a copy of AllergyIntoleranceReaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get substance {
    if (_value.substance == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.substance!, (value) {
      return _then(_value.copyWith(substance: value) as $Val);
    });
  }

  /// Create a copy of AllergyIntoleranceReaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get exposureRoute {
    if (_value.exposureRoute == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.exposureRoute!, (value) {
      return _then(_value.copyWith(exposureRoute: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllergyIntoleranceReactionImplCopyWith<$Res>
    implements $AllergyIntoleranceReactionCopyWith<$Res> {
  factory _$$AllergyIntoleranceReactionImplCopyWith(
          _$AllergyIntoleranceReactionImpl value,
          $Res Function(_$AllergyIntoleranceReactionImpl) then) =
      __$$AllergyIntoleranceReactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? substance,
      List<CodeableConcept> manifestation,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirDateTime? onset,
      @JsonKey(name: '_onset') PrimitiveElement? onsetElement,
      FhirCode? severity,
      @JsonKey(name: '_severity') PrimitiveElement? severityElement,
      CodeableConcept? exposureRoute,
      List<Annotation>? note});

  @override
  $CodeableConceptCopyWith<$Res>? get substance;
  @override
  $CodeableConceptCopyWith<$Res>? get exposureRoute;
}

/// @nodoc
class __$$AllergyIntoleranceReactionImplCopyWithImpl<$Res>
    extends _$AllergyIntoleranceReactionCopyWithImpl<$Res,
        _$AllergyIntoleranceReactionImpl>
    implements _$$AllergyIntoleranceReactionImplCopyWith<$Res> {
  __$$AllergyIntoleranceReactionImplCopyWithImpl(
      _$AllergyIntoleranceReactionImpl _value,
      $Res Function(_$AllergyIntoleranceReactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllergyIntoleranceReaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? substance = freezed,
    Object? manifestation = null,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? onset = freezed,
    Object? onsetElement = freezed,
    Object? severity = freezed,
    Object? severityElement = freezed,
    Object? exposureRoute = freezed,
    Object? note = freezed,
  }) {
    return _then(_$AllergyIntoleranceReactionImpl(
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
      substance: freezed == substance
          ? _value.substance
          : substance // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      manifestation: null == manifestation
          ? _value._manifestation
          : manifestation // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      onset: freezed == onset
          ? _value.onset
          : onset // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      onsetElement: freezed == onsetElement
          ? _value.onsetElement
          : onsetElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      severityElement: freezed == severityElement
          ? _value.severityElement
          : severityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      exposureRoute: freezed == exposureRoute
          ? _value.exposureRoute
          : exposureRoute // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllergyIntoleranceReactionImpl extends _AllergyIntoleranceReaction {
  const _$AllergyIntoleranceReactionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.substance,
      required final List<CodeableConcept> manifestation,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.onset,
      @JsonKey(name: '_onset') this.onsetElement,
      this.severity,
      @JsonKey(name: '_severity') this.severityElement,
      this.exposureRoute,
      final List<Annotation>? note})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _manifestation = manifestation,
        _note = note,
        super._();

  factory _$AllergyIntoleranceReactionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AllergyIntoleranceReactionImplFromJson(json);

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
  final CodeableConcept? substance;
  final List<CodeableConcept> _manifestation;
  @override
  List<CodeableConcept> get manifestation {
    if (_manifestation is EqualUnmodifiableListView) return _manifestation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_manifestation);
  }

  @override
  final String? description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;
  @override
  final FhirDateTime? onset;
  @override
  @JsonKey(name: '_onset')
  final PrimitiveElement? onsetElement;
  @override
  final FhirCode? severity;
  @override
  @JsonKey(name: '_severity')
  final PrimitiveElement? severityElement;
  @override
  final CodeableConcept? exposureRoute;
  final List<Annotation>? _note;
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllergyIntoleranceReaction(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, substance: $substance, manifestation: $manifestation, description: $description, descriptionElement: $descriptionElement, onset: $onset, onsetElement: $onsetElement, severity: $severity, severityElement: $severityElement, exposureRoute: $exposureRoute, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllergyIntoleranceReactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.substance, substance) ||
                other.substance == substance) &&
            const DeepCollectionEquality()
                .equals(other._manifestation, _manifestation) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.onset, onset) || other.onset == onset) &&
            (identical(other.onsetElement, onsetElement) ||
                other.onsetElement == onsetElement) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.severityElement, severityElement) ||
                other.severityElement == severityElement) &&
            (identical(other.exposureRoute, exposureRoute) ||
                other.exposureRoute == exposureRoute) &&
            const DeepCollectionEquality().equals(other._note, _note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      substance,
      const DeepCollectionEquality().hash(_manifestation),
      description,
      descriptionElement,
      onset,
      onsetElement,
      severity,
      severityElement,
      exposureRoute,
      const DeepCollectionEquality().hash(_note));

  /// Create a copy of AllergyIntoleranceReaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllergyIntoleranceReactionImplCopyWith<_$AllergyIntoleranceReactionImpl>
      get copyWith => __$$AllergyIntoleranceReactionImplCopyWithImpl<
          _$AllergyIntoleranceReactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllergyIntoleranceReactionImplToJson(
      this,
    );
  }
}

abstract class _AllergyIntoleranceReaction extends AllergyIntoleranceReaction {
  const factory _AllergyIntoleranceReaction(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? substance,
      required final List<CodeableConcept> manifestation,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final FhirDateTime? onset,
      @JsonKey(name: '_onset') final PrimitiveElement? onsetElement,
      final FhirCode? severity,
      @JsonKey(name: '_severity') final PrimitiveElement? severityElement,
      final CodeableConcept? exposureRoute,
      final List<Annotation>? note}) = _$AllergyIntoleranceReactionImpl;
  const _AllergyIntoleranceReaction._() : super._();

  factory _AllergyIntoleranceReaction.fromJson(Map<String, dynamic> json) =
      _$AllergyIntoleranceReactionImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept? get substance;
  @override
  List<CodeableConcept> get manifestation;
  @override
  String? get description;
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override
  FhirDateTime? get onset;
  @override
  @JsonKey(name: '_onset')
  PrimitiveElement? get onsetElement;
  @override
  FhirCode? get severity;
  @override
  @JsonKey(name: '_severity')
  PrimitiveElement? get severityElement;
  @override
  CodeableConcept? get exposureRoute;
  @override
  List<Annotation>? get note;

  /// Create a copy of AllergyIntoleranceReaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllergyIntoleranceReactionImplCopyWith<_$AllergyIntoleranceReactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
