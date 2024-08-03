// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family_member_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FamilyMemberHistory _$FamilyMemberHistoryFromJson(Map<String, dynamic> json) {
  return _FamilyMemberHistory.fromJson(json);
}

/// @nodoc
mixin _$FamilyMemberHistory {
  @JsonKey(unknownEnumValue: R4ResourceType.FamilyMemberHistory)
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
  List<FhirCanonical>? get instantiatesCanonical =>
      throw _privateConstructorUsedError;
  List<FhirUri>? get instantiatesUri => throw _privateConstructorUsedError;
  @JsonKey(name: '_instantiatesUri')
  List<PrimitiveElement>? get instantiatesUriElement =>
      throw _privateConstructorUsedError;
  FhirCode? get status => throw _privateConstructorUsedError;
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;
  CodeableConcept? get dataAbsentReason => throw _privateConstructorUsedError;
  Reference get patient => throw _privateConstructorUsedError;
  FhirDateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;
  CodeableConcept get relationship => throw _privateConstructorUsedError;
  CodeableConcept? get sex => throw _privateConstructorUsedError;
  Period? get bornPeriod => throw _privateConstructorUsedError;
  FhirDate? get bornDate => throw _privateConstructorUsedError;
  @JsonKey(name: '_bornDate')
  PrimitiveElement? get bornDateElement => throw _privateConstructorUsedError;
  String? get bornString => throw _privateConstructorUsedError;
  @JsonKey(name: '_bornString')
  PrimitiveElement? get bornStringElement => throw _privateConstructorUsedError;
  Age? get ageAge => throw _privateConstructorUsedError;
  Range? get ageRange => throw _privateConstructorUsedError;
  String? get ageString => throw _privateConstructorUsedError;
  @JsonKey(name: '_ageString')
  PrimitiveElement? get ageStringElement => throw _privateConstructorUsedError;
  FhirBoolean? get estimatedAge => throw _privateConstructorUsedError;
  @JsonKey(name: '_estimatedAge')
  PrimitiveElement? get estimatedAgeElement =>
      throw _privateConstructorUsedError;
  FhirBoolean? get deceasedBoolean => throw _privateConstructorUsedError;
  @JsonKey(name: '_deceasedBoolean')
  PrimitiveElement? get deceasedBooleanElement =>
      throw _privateConstructorUsedError;
  Age? get deceasedAge => throw _privateConstructorUsedError;
  Range? get deceasedRange => throw _privateConstructorUsedError;
  FhirDate? get deceasedDate => throw _privateConstructorUsedError;
  @JsonKey(name: '_deceasedDate')
  PrimitiveElement? get deceasedDateElement =>
      throw _privateConstructorUsedError;
  String? get deceasedString => throw _privateConstructorUsedError;
  @JsonKey(name: '_deceasedString')
  PrimitiveElement? get deceasedStringElement =>
      throw _privateConstructorUsedError;
  List<CodeableConcept>? get reasonCode => throw _privateConstructorUsedError;
  List<Reference>? get reasonReference => throw _privateConstructorUsedError;
  List<Annotation>? get note => throw _privateConstructorUsedError;
  List<FamilyMemberHistoryCondition>? get condition =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyMemberHistoryCopyWith<FamilyMemberHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyMemberHistoryCopyWith<$Res> {
  factory $FamilyMemberHistoryCopyWith(
          FamilyMemberHistory value, $Res Function(FamilyMemberHistory) then) =
      _$FamilyMemberHistoryCopyWithImpl<$Res, FamilyMemberHistory>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.FamilyMemberHistory)
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
      List<FhirCanonical>? instantiatesCanonical,
      List<FhirUri>? instantiatesUri,
      @JsonKey(name: '_instantiatesUri')
      List<PrimitiveElement>? instantiatesUriElement,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      CodeableConcept? dataAbsentReason,
      Reference patient,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      CodeableConcept relationship,
      CodeableConcept? sex,
      Period? bornPeriod,
      FhirDate? bornDate,
      @JsonKey(name: '_bornDate') PrimitiveElement? bornDateElement,
      String? bornString,
      @JsonKey(name: '_bornString') PrimitiveElement? bornStringElement,
      Age? ageAge,
      Range? ageRange,
      String? ageString,
      @JsonKey(name: '_ageString') PrimitiveElement? ageStringElement,
      FhirBoolean? estimatedAge,
      @JsonKey(name: '_estimatedAge') PrimitiveElement? estimatedAgeElement,
      FhirBoolean? deceasedBoolean,
      @JsonKey(name: '_deceasedBoolean')
      PrimitiveElement? deceasedBooleanElement,
      Age? deceasedAge,
      Range? deceasedRange,
      FhirDate? deceasedDate,
      @JsonKey(name: '_deceasedDate') PrimitiveElement? deceasedDateElement,
      String? deceasedString,
      @JsonKey(name: '_deceasedString') PrimitiveElement? deceasedStringElement,
      List<CodeableConcept>? reasonCode,
      List<Reference>? reasonReference,
      List<Annotation>? note,
      List<FamilyMemberHistoryCondition>? condition});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res>? get dataAbsentReason;
  $ReferenceCopyWith<$Res> get patient;
  $CodeableConceptCopyWith<$Res> get relationship;
  $CodeableConceptCopyWith<$Res>? get sex;
  $PeriodCopyWith<$Res>? get bornPeriod;
  $AgeCopyWith<$Res>? get ageAge;
  $RangeCopyWith<$Res>? get ageRange;
  $AgeCopyWith<$Res>? get deceasedAge;
  $RangeCopyWith<$Res>? get deceasedRange;
}

/// @nodoc
class _$FamilyMemberHistoryCopyWithImpl<$Res, $Val extends FamilyMemberHistory>
    implements $FamilyMemberHistoryCopyWith<$Res> {
  _$FamilyMemberHistoryCopyWithImpl(this._value, this._then);

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
    Object? instantiatesCanonical = freezed,
    Object? instantiatesUri = freezed,
    Object? instantiatesUriElement = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? dataAbsentReason = freezed,
    Object? patient = null,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? relationship = null,
    Object? sex = freezed,
    Object? bornPeriod = freezed,
    Object? bornDate = freezed,
    Object? bornDateElement = freezed,
    Object? bornString = freezed,
    Object? bornStringElement = freezed,
    Object? ageAge = freezed,
    Object? ageRange = freezed,
    Object? ageString = freezed,
    Object? ageStringElement = freezed,
    Object? estimatedAge = freezed,
    Object? estimatedAgeElement = freezed,
    Object? deceasedBoolean = freezed,
    Object? deceasedBooleanElement = freezed,
    Object? deceasedAge = freezed,
    Object? deceasedRange = freezed,
    Object? deceasedDate = freezed,
    Object? deceasedDateElement = freezed,
    Object? deceasedString = freezed,
    Object? deceasedStringElement = freezed,
    Object? reasonCode = freezed,
    Object? reasonReference = freezed,
    Object? note = freezed,
    Object? condition = freezed,
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
      instantiatesCanonical: freezed == instantiatesCanonical
          ? _value.instantiatesCanonical
          : instantiatesCanonical // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      instantiatesUri: freezed == instantiatesUri
          ? _value.instantiatesUri
          : instantiatesUri // ignore: cast_nullable_to_non_nullable
              as List<FhirUri>?,
      instantiatesUriElement: freezed == instantiatesUriElement
          ? _value.instantiatesUriElement
          : instantiatesUriElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      dataAbsentReason: freezed == dataAbsentReason
          ? _value.dataAbsentReason
          : dataAbsentReason // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      bornPeriod: freezed == bornPeriod
          ? _value.bornPeriod
          : bornPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      bornDate: freezed == bornDate
          ? _value.bornDate
          : bornDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      bornDateElement: freezed == bornDateElement
          ? _value.bornDateElement
          : bornDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      bornString: freezed == bornString
          ? _value.bornString
          : bornString // ignore: cast_nullable_to_non_nullable
              as String?,
      bornStringElement: freezed == bornStringElement
          ? _value.bornStringElement
          : bornStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      ageAge: freezed == ageAge
          ? _value.ageAge
          : ageAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      ageRange: freezed == ageRange
          ? _value.ageRange
          : ageRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      ageString: freezed == ageString
          ? _value.ageString
          : ageString // ignore: cast_nullable_to_non_nullable
              as String?,
      ageStringElement: freezed == ageStringElement
          ? _value.ageStringElement
          : ageStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      estimatedAge: freezed == estimatedAge
          ? _value.estimatedAge
          : estimatedAge // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      estimatedAgeElement: freezed == estimatedAgeElement
          ? _value.estimatedAgeElement
          : estimatedAgeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      deceasedBoolean: freezed == deceasedBoolean
          ? _value.deceasedBoolean
          : deceasedBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      deceasedBooleanElement: freezed == deceasedBooleanElement
          ? _value.deceasedBooleanElement
          : deceasedBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      deceasedAge: freezed == deceasedAge
          ? _value.deceasedAge
          : deceasedAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      deceasedRange: freezed == deceasedRange
          ? _value.deceasedRange
          : deceasedRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      deceasedDate: freezed == deceasedDate
          ? _value.deceasedDate
          : deceasedDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      deceasedDateElement: freezed == deceasedDateElement
          ? _value.deceasedDateElement
          : deceasedDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      deceasedString: freezed == deceasedString
          ? _value.deceasedString
          : deceasedString // ignore: cast_nullable_to_non_nullable
              as String?,
      deceasedStringElement: freezed == deceasedStringElement
          ? _value.deceasedStringElement
          : deceasedStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      reasonCode: freezed == reasonCode
          ? _value.reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      reasonReference: freezed == reasonReference
          ? _value.reasonReference
          : reasonReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as List<FamilyMemberHistoryCondition>?,
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
  $CodeableConceptCopyWith<$Res>? get dataAbsentReason {
    if (_value.dataAbsentReason == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.dataAbsentReason!, (value) {
      return _then(_value.copyWith(dataAbsentReason: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get patient {
    return $ReferenceCopyWith<$Res>(_value.patient, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get relationship {
    return $CodeableConceptCopyWith<$Res>(_value.relationship, (value) {
      return _then(_value.copyWith(relationship: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get sex {
    if (_value.sex == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.sex!, (value) {
      return _then(_value.copyWith(sex: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get bornPeriod {
    if (_value.bornPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.bornPeriod!, (value) {
      return _then(_value.copyWith(bornPeriod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res>? get ageAge {
    if (_value.ageAge == null) {
      return null;
    }

    return $AgeCopyWith<$Res>(_value.ageAge!, (value) {
      return _then(_value.copyWith(ageAge: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get ageRange {
    if (_value.ageRange == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.ageRange!, (value) {
      return _then(_value.copyWith(ageRange: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res>? get deceasedAge {
    if (_value.deceasedAge == null) {
      return null;
    }

    return $AgeCopyWith<$Res>(_value.deceasedAge!, (value) {
      return _then(_value.copyWith(deceasedAge: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get deceasedRange {
    if (_value.deceasedRange == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.deceasedRange!, (value) {
      return _then(_value.copyWith(deceasedRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FamilyMemberHistoryImplCopyWith<$Res>
    implements $FamilyMemberHistoryCopyWith<$Res> {
  factory _$$FamilyMemberHistoryImplCopyWith(_$FamilyMemberHistoryImpl value,
          $Res Function(_$FamilyMemberHistoryImpl) then) =
      __$$FamilyMemberHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.FamilyMemberHistory)
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
      List<FhirCanonical>? instantiatesCanonical,
      List<FhirUri>? instantiatesUri,
      @JsonKey(name: '_instantiatesUri')
      List<PrimitiveElement>? instantiatesUriElement,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      CodeableConcept? dataAbsentReason,
      Reference patient,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      CodeableConcept relationship,
      CodeableConcept? sex,
      Period? bornPeriod,
      FhirDate? bornDate,
      @JsonKey(name: '_bornDate') PrimitiveElement? bornDateElement,
      String? bornString,
      @JsonKey(name: '_bornString') PrimitiveElement? bornStringElement,
      Age? ageAge,
      Range? ageRange,
      String? ageString,
      @JsonKey(name: '_ageString') PrimitiveElement? ageStringElement,
      FhirBoolean? estimatedAge,
      @JsonKey(name: '_estimatedAge') PrimitiveElement? estimatedAgeElement,
      FhirBoolean? deceasedBoolean,
      @JsonKey(name: '_deceasedBoolean')
      PrimitiveElement? deceasedBooleanElement,
      Age? deceasedAge,
      Range? deceasedRange,
      FhirDate? deceasedDate,
      @JsonKey(name: '_deceasedDate') PrimitiveElement? deceasedDateElement,
      String? deceasedString,
      @JsonKey(name: '_deceasedString') PrimitiveElement? deceasedStringElement,
      List<CodeableConcept>? reasonCode,
      List<Reference>? reasonReference,
      List<Annotation>? note,
      List<FamilyMemberHistoryCondition>? condition});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res>? get dataAbsentReason;
  @override
  $ReferenceCopyWith<$Res> get patient;
  @override
  $CodeableConceptCopyWith<$Res> get relationship;
  @override
  $CodeableConceptCopyWith<$Res>? get sex;
  @override
  $PeriodCopyWith<$Res>? get bornPeriod;
  @override
  $AgeCopyWith<$Res>? get ageAge;
  @override
  $RangeCopyWith<$Res>? get ageRange;
  @override
  $AgeCopyWith<$Res>? get deceasedAge;
  @override
  $RangeCopyWith<$Res>? get deceasedRange;
}

/// @nodoc
class __$$FamilyMemberHistoryImplCopyWithImpl<$Res>
    extends _$FamilyMemberHistoryCopyWithImpl<$Res, _$FamilyMemberHistoryImpl>
    implements _$$FamilyMemberHistoryImplCopyWith<$Res> {
  __$$FamilyMemberHistoryImplCopyWithImpl(_$FamilyMemberHistoryImpl _value,
      $Res Function(_$FamilyMemberHistoryImpl) _then)
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
    Object? instantiatesCanonical = freezed,
    Object? instantiatesUri = freezed,
    Object? instantiatesUriElement = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? dataAbsentReason = freezed,
    Object? patient = null,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? relationship = null,
    Object? sex = freezed,
    Object? bornPeriod = freezed,
    Object? bornDate = freezed,
    Object? bornDateElement = freezed,
    Object? bornString = freezed,
    Object? bornStringElement = freezed,
    Object? ageAge = freezed,
    Object? ageRange = freezed,
    Object? ageString = freezed,
    Object? ageStringElement = freezed,
    Object? estimatedAge = freezed,
    Object? estimatedAgeElement = freezed,
    Object? deceasedBoolean = freezed,
    Object? deceasedBooleanElement = freezed,
    Object? deceasedAge = freezed,
    Object? deceasedRange = freezed,
    Object? deceasedDate = freezed,
    Object? deceasedDateElement = freezed,
    Object? deceasedString = freezed,
    Object? deceasedStringElement = freezed,
    Object? reasonCode = freezed,
    Object? reasonReference = freezed,
    Object? note = freezed,
    Object? condition = freezed,
  }) {
    return _then(_$FamilyMemberHistoryImpl(
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
      instantiatesCanonical: freezed == instantiatesCanonical
          ? _value._instantiatesCanonical
          : instantiatesCanonical // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      instantiatesUri: freezed == instantiatesUri
          ? _value._instantiatesUri
          : instantiatesUri // ignore: cast_nullable_to_non_nullable
              as List<FhirUri>?,
      instantiatesUriElement: freezed == instantiatesUriElement
          ? _value._instantiatesUriElement
          : instantiatesUriElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      dataAbsentReason: freezed == dataAbsentReason
          ? _value.dataAbsentReason
          : dataAbsentReason // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      bornPeriod: freezed == bornPeriod
          ? _value.bornPeriod
          : bornPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      bornDate: freezed == bornDate
          ? _value.bornDate
          : bornDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      bornDateElement: freezed == bornDateElement
          ? _value.bornDateElement
          : bornDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      bornString: freezed == bornString
          ? _value.bornString
          : bornString // ignore: cast_nullable_to_non_nullable
              as String?,
      bornStringElement: freezed == bornStringElement
          ? _value.bornStringElement
          : bornStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      ageAge: freezed == ageAge
          ? _value.ageAge
          : ageAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      ageRange: freezed == ageRange
          ? _value.ageRange
          : ageRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      ageString: freezed == ageString
          ? _value.ageString
          : ageString // ignore: cast_nullable_to_non_nullable
              as String?,
      ageStringElement: freezed == ageStringElement
          ? _value.ageStringElement
          : ageStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      estimatedAge: freezed == estimatedAge
          ? _value.estimatedAge
          : estimatedAge // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      estimatedAgeElement: freezed == estimatedAgeElement
          ? _value.estimatedAgeElement
          : estimatedAgeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      deceasedBoolean: freezed == deceasedBoolean
          ? _value.deceasedBoolean
          : deceasedBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      deceasedBooleanElement: freezed == deceasedBooleanElement
          ? _value.deceasedBooleanElement
          : deceasedBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      deceasedAge: freezed == deceasedAge
          ? _value.deceasedAge
          : deceasedAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      deceasedRange: freezed == deceasedRange
          ? _value.deceasedRange
          : deceasedRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      deceasedDate: freezed == deceasedDate
          ? _value.deceasedDate
          : deceasedDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      deceasedDateElement: freezed == deceasedDateElement
          ? _value.deceasedDateElement
          : deceasedDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      deceasedString: freezed == deceasedString
          ? _value.deceasedString
          : deceasedString // ignore: cast_nullable_to_non_nullable
              as String?,
      deceasedStringElement: freezed == deceasedStringElement
          ? _value.deceasedStringElement
          : deceasedStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      reasonCode: freezed == reasonCode
          ? _value._reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      reasonReference: freezed == reasonReference
          ? _value._reasonReference
          : reasonReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      condition: freezed == condition
          ? _value._condition
          : condition // ignore: cast_nullable_to_non_nullable
              as List<FamilyMemberHistoryCondition>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyMemberHistoryImpl extends _FamilyMemberHistory {
  const _$FamilyMemberHistoryImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.FamilyMemberHistory)
      this.resourceType = R4ResourceType.FamilyMemberHistory,
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
      final List<FhirCanonical>? instantiatesCanonical,
      final List<FhirUri>? instantiatesUri,
      @JsonKey(name: '_instantiatesUri')
      final List<PrimitiveElement>? instantiatesUriElement,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.dataAbsentReason,
      required this.patient,
      this.date,
      @JsonKey(name: '_date') this.dateElement,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      required this.relationship,
      this.sex,
      this.bornPeriod,
      this.bornDate,
      @JsonKey(name: '_bornDate') this.bornDateElement,
      this.bornString,
      @JsonKey(name: '_bornString') this.bornStringElement,
      this.ageAge,
      this.ageRange,
      this.ageString,
      @JsonKey(name: '_ageString') this.ageStringElement,
      this.estimatedAge,
      @JsonKey(name: '_estimatedAge') this.estimatedAgeElement,
      this.deceasedBoolean,
      @JsonKey(name: '_deceasedBoolean') this.deceasedBooleanElement,
      this.deceasedAge,
      this.deceasedRange,
      this.deceasedDate,
      @JsonKey(name: '_deceasedDate') this.deceasedDateElement,
      this.deceasedString,
      @JsonKey(name: '_deceasedString') this.deceasedStringElement,
      final List<CodeableConcept>? reasonCode,
      final List<Reference>? reasonReference,
      final List<Annotation>? note,
      final List<FamilyMemberHistoryCondition>? condition})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _instantiatesCanonical = instantiatesCanonical,
        _instantiatesUri = instantiatesUri,
        _instantiatesUriElement = instantiatesUriElement,
        _reasonCode = reasonCode,
        _reasonReference = reasonReference,
        _note = note,
        _condition = condition,
        super._();

  factory _$FamilyMemberHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyMemberHistoryImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.FamilyMemberHistory)
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

  final List<FhirCanonical>? _instantiatesCanonical;
  @override
  List<FhirCanonical>? get instantiatesCanonical {
    final value = _instantiatesCanonical;
    if (value == null) return null;
    if (_instantiatesCanonical is EqualUnmodifiableListView)
      return _instantiatesCanonical;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirUri>? _instantiatesUri;
  @override
  List<FhirUri>? get instantiatesUri {
    final value = _instantiatesUri;
    if (value == null) return null;
    if (_instantiatesUri is EqualUnmodifiableListView) return _instantiatesUri;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PrimitiveElement>? _instantiatesUriElement;
  @override
  @JsonKey(name: '_instantiatesUri')
  List<PrimitiveElement>? get instantiatesUriElement {
    final value = _instantiatesUriElement;
    if (value == null) return null;
    if (_instantiatesUriElement is EqualUnmodifiableListView)
      return _instantiatesUriElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FhirCode? status;
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;
  @override
  final CodeableConcept? dataAbsentReason;
  @override
  final Reference patient;
  @override
  final FhirDateTime? date;
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;
  @override
  final String? name;
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;
  @override
  final CodeableConcept relationship;
  @override
  final CodeableConcept? sex;
  @override
  final Period? bornPeriod;
  @override
  final FhirDate? bornDate;
  @override
  @JsonKey(name: '_bornDate')
  final PrimitiveElement? bornDateElement;
  @override
  final String? bornString;
  @override
  @JsonKey(name: '_bornString')
  final PrimitiveElement? bornStringElement;
  @override
  final Age? ageAge;
  @override
  final Range? ageRange;
  @override
  final String? ageString;
  @override
  @JsonKey(name: '_ageString')
  final PrimitiveElement? ageStringElement;
  @override
  final FhirBoolean? estimatedAge;
  @override
  @JsonKey(name: '_estimatedAge')
  final PrimitiveElement? estimatedAgeElement;
  @override
  final FhirBoolean? deceasedBoolean;
  @override
  @JsonKey(name: '_deceasedBoolean')
  final PrimitiveElement? deceasedBooleanElement;
  @override
  final Age? deceasedAge;
  @override
  final Range? deceasedRange;
  @override
  final FhirDate? deceasedDate;
  @override
  @JsonKey(name: '_deceasedDate')
  final PrimitiveElement? deceasedDateElement;
  @override
  final String? deceasedString;
  @override
  @JsonKey(name: '_deceasedString')
  final PrimitiveElement? deceasedStringElement;
  final List<CodeableConcept>? _reasonCode;
  @override
  List<CodeableConcept>? get reasonCode {
    final value = _reasonCode;
    if (value == null) return null;
    if (_reasonCode is EqualUnmodifiableListView) return _reasonCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reference>? _reasonReference;
  @override
  List<Reference>? get reasonReference {
    final value = _reasonReference;
    if (value == null) return null;
    if (_reasonReference is EqualUnmodifiableListView) return _reasonReference;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Annotation>? _note;
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FamilyMemberHistoryCondition>? _condition;
  @override
  List<FamilyMemberHistoryCondition>? get condition {
    final value = _condition;
    if (value == null) return null;
    if (_condition is EqualUnmodifiableListView) return _condition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyMemberHistoryImpl &&
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
            const DeepCollectionEquality()
                .equals(other._instantiatesCanonical, _instantiatesCanonical) &&
            const DeepCollectionEquality()
                .equals(other._instantiatesUri, _instantiatesUri) &&
            const DeepCollectionEquality().equals(
                other._instantiatesUriElement, _instantiatesUriElement) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.dataAbsentReason, dataAbsentReason) ||
                other.dataAbsentReason == dataAbsentReason) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateElement, dateElement) ||
                other.dateElement == dateElement) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.bornPeriod, bornPeriod) ||
                other.bornPeriod == bornPeriod) &&
            (identical(other.bornDate, bornDate) ||
                other.bornDate == bornDate) &&
            (identical(other.bornDateElement, bornDateElement) ||
                other.bornDateElement == bornDateElement) &&
            (identical(other.bornString, bornString) ||
                other.bornString == bornString) &&
            (identical(other.bornStringElement, bornStringElement) ||
                other.bornStringElement == bornStringElement) &&
            (identical(other.ageAge, ageAge) || other.ageAge == ageAge) &&
            (identical(other.ageRange, ageRange) ||
                other.ageRange == ageRange) &&
            (identical(other.ageString, ageString) ||
                other.ageString == ageString) &&
            (identical(other.ageStringElement, ageStringElement) ||
                other.ageStringElement == ageStringElement) &&
            (identical(other.estimatedAge, estimatedAge) ||
                other.estimatedAge == estimatedAge) &&
            (identical(other.estimatedAgeElement, estimatedAgeElement) ||
                other.estimatedAgeElement == estimatedAgeElement) &&
            (identical(other.deceasedBoolean, deceasedBoolean) ||
                other.deceasedBoolean == deceasedBoolean) &&
            (identical(other.deceasedBooleanElement, deceasedBooleanElement) ||
                other.deceasedBooleanElement == deceasedBooleanElement) &&
            (identical(other.deceasedAge, deceasedAge) ||
                other.deceasedAge == deceasedAge) &&
            (identical(other.deceasedRange, deceasedRange) ||
                other.deceasedRange == deceasedRange) &&
            (identical(other.deceasedDate, deceasedDate) ||
                other.deceasedDate == deceasedDate) &&
            (identical(other.deceasedDateElement, deceasedDateElement) ||
                other.deceasedDateElement == deceasedDateElement) &&
            (identical(other.deceasedString, deceasedString) ||
                other.deceasedString == deceasedString) &&
            (identical(other.deceasedStringElement, deceasedStringElement) ||
                other.deceasedStringElement == deceasedStringElement) &&
            const DeepCollectionEquality()
                .equals(other._reasonCode, _reasonCode) &&
            const DeepCollectionEquality()
                .equals(other._reasonReference, _reasonReference) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            const DeepCollectionEquality()
                .equals(other._condition, _condition));
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
        const DeepCollectionEquality().hash(_identifier),
        const DeepCollectionEquality().hash(_instantiatesCanonical),
        const DeepCollectionEquality().hash(_instantiatesUri),
        const DeepCollectionEquality().hash(_instantiatesUriElement),
        status,
        statusElement,
        dataAbsentReason,
        patient,
        date,
        dateElement,
        name,
        nameElement,
        relationship,
        sex,
        bornPeriod,
        bornDate,
        bornDateElement,
        bornString,
        bornStringElement,
        ageAge,
        ageRange,
        ageString,
        ageStringElement,
        estimatedAge,
        estimatedAgeElement,
        deceasedBoolean,
        deceasedBooleanElement,
        deceasedAge,
        deceasedRange,
        deceasedDate,
        deceasedDateElement,
        deceasedString,
        deceasedStringElement,
        const DeepCollectionEquality().hash(_reasonCode),
        const DeepCollectionEquality().hash(_reasonReference),
        const DeepCollectionEquality().hash(_note),
        const DeepCollectionEquality().hash(_condition)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyMemberHistoryImplCopyWith<_$FamilyMemberHistoryImpl> get copyWith =>
      __$$FamilyMemberHistoryImplCopyWithImpl<_$FamilyMemberHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyMemberHistoryImplToJson(
      this,
    );
  }
}

abstract class _FamilyMemberHistory extends FamilyMemberHistory {
  const factory _FamilyMemberHistory(
      {@JsonKey(unknownEnumValue: R4ResourceType.FamilyMemberHistory)
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
      final List<FhirCanonical>? instantiatesCanonical,
      final List<FhirUri>? instantiatesUri,
      @JsonKey(name: '_instantiatesUri')
      final List<PrimitiveElement>? instantiatesUriElement,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final CodeableConcept? dataAbsentReason,
      required final Reference patient,
      final FhirDateTime? date,
      @JsonKey(name: '_date') final PrimitiveElement? dateElement,
      final String? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      required final CodeableConcept relationship,
      final CodeableConcept? sex,
      final Period? bornPeriod,
      final FhirDate? bornDate,
      @JsonKey(name: '_bornDate') final PrimitiveElement? bornDateElement,
      final String? bornString,
      @JsonKey(name: '_bornString') final PrimitiveElement? bornStringElement,
      final Age? ageAge,
      final Range? ageRange,
      final String? ageString,
      @JsonKey(name: '_ageString') final PrimitiveElement? ageStringElement,
      final FhirBoolean? estimatedAge,
      @JsonKey(name: '_estimatedAge')
      final PrimitiveElement? estimatedAgeElement,
      final FhirBoolean? deceasedBoolean,
      @JsonKey(name: '_deceasedBoolean')
      final PrimitiveElement? deceasedBooleanElement,
      final Age? deceasedAge,
      final Range? deceasedRange,
      final FhirDate? deceasedDate,
      @JsonKey(name: '_deceasedDate')
      final PrimitiveElement? deceasedDateElement,
      final String? deceasedString,
      @JsonKey(name: '_deceasedString')
      final PrimitiveElement? deceasedStringElement,
      final List<CodeableConcept>? reasonCode,
      final List<Reference>? reasonReference,
      final List<Annotation>? note,
      final List<FamilyMemberHistoryCondition>?
          condition}) = _$FamilyMemberHistoryImpl;
  const _FamilyMemberHistory._() : super._();

  factory _FamilyMemberHistory.fromJson(Map<String, dynamic> json) =
      _$FamilyMemberHistoryImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.FamilyMemberHistory)
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
  List<FhirCanonical>? get instantiatesCanonical;
  @override
  List<FhirUri>? get instantiatesUri;
  @override
  @JsonKey(name: '_instantiatesUri')
  List<PrimitiveElement>? get instantiatesUriElement;
  @override
  FhirCode? get status;
  @override
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override
  CodeableConcept? get dataAbsentReason;
  @override
  Reference get patient;
  @override
  FhirDateTime? get date;
  @override
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override
  String? get name;
  @override
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override
  CodeableConcept get relationship;
  @override
  CodeableConcept? get sex;
  @override
  Period? get bornPeriod;
  @override
  FhirDate? get bornDate;
  @override
  @JsonKey(name: '_bornDate')
  PrimitiveElement? get bornDateElement;
  @override
  String? get bornString;
  @override
  @JsonKey(name: '_bornString')
  PrimitiveElement? get bornStringElement;
  @override
  Age? get ageAge;
  @override
  Range? get ageRange;
  @override
  String? get ageString;
  @override
  @JsonKey(name: '_ageString')
  PrimitiveElement? get ageStringElement;
  @override
  FhirBoolean? get estimatedAge;
  @override
  @JsonKey(name: '_estimatedAge')
  PrimitiveElement? get estimatedAgeElement;
  @override
  FhirBoolean? get deceasedBoolean;
  @override
  @JsonKey(name: '_deceasedBoolean')
  PrimitiveElement? get deceasedBooleanElement;
  @override
  Age? get deceasedAge;
  @override
  Range? get deceasedRange;
  @override
  FhirDate? get deceasedDate;
  @override
  @JsonKey(name: '_deceasedDate')
  PrimitiveElement? get deceasedDateElement;
  @override
  String? get deceasedString;
  @override
  @JsonKey(name: '_deceasedString')
  PrimitiveElement? get deceasedStringElement;
  @override
  List<CodeableConcept>? get reasonCode;
  @override
  List<Reference>? get reasonReference;
  @override
  List<Annotation>? get note;
  @override
  List<FamilyMemberHistoryCondition>? get condition;
  @override
  @JsonKey(ignore: true)
  _$$FamilyMemberHistoryImplCopyWith<_$FamilyMemberHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FamilyMemberHistoryCondition _$FamilyMemberHistoryConditionFromJson(
    Map<String, dynamic> json) {
  return _FamilyMemberHistoryCondition.fromJson(json);
}

/// @nodoc
mixin _$FamilyMemberHistoryCondition {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept get code => throw _privateConstructorUsedError;
  CodeableConcept? get outcome => throw _privateConstructorUsedError;
  FhirBoolean? get contributedToDeath => throw _privateConstructorUsedError;
  @JsonKey(name: '_contributedToDeath')
  PrimitiveElement? get contributedToDeathElement =>
      throw _privateConstructorUsedError;
  Age? get onsetAge => throw _privateConstructorUsedError;
  Range? get onsetRange => throw _privateConstructorUsedError;
  Period? get onsetPeriod => throw _privateConstructorUsedError;
  String? get onsetString => throw _privateConstructorUsedError;
  @JsonKey(name: '_onsetString')
  PrimitiveElement? get onsetStringElement =>
      throw _privateConstructorUsedError;
  List<Annotation>? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyMemberHistoryConditionCopyWith<FamilyMemberHistoryCondition>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyMemberHistoryConditionCopyWith<$Res> {
  factory $FamilyMemberHistoryConditionCopyWith(
          FamilyMemberHistoryCondition value,
          $Res Function(FamilyMemberHistoryCondition) then) =
      _$FamilyMemberHistoryConditionCopyWithImpl<$Res,
          FamilyMemberHistoryCondition>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept code,
      CodeableConcept? outcome,
      FhirBoolean? contributedToDeath,
      @JsonKey(name: '_contributedToDeath')
      PrimitiveElement? contributedToDeathElement,
      Age? onsetAge,
      Range? onsetRange,
      Period? onsetPeriod,
      String? onsetString,
      @JsonKey(name: '_onsetString') PrimitiveElement? onsetStringElement,
      List<Annotation>? note});

  $CodeableConceptCopyWith<$Res> get code;
  $CodeableConceptCopyWith<$Res>? get outcome;
  $AgeCopyWith<$Res>? get onsetAge;
  $RangeCopyWith<$Res>? get onsetRange;
  $PeriodCopyWith<$Res>? get onsetPeriod;
}

/// @nodoc
class _$FamilyMemberHistoryConditionCopyWithImpl<$Res,
        $Val extends FamilyMemberHistoryCondition>
    implements $FamilyMemberHistoryConditionCopyWith<$Res> {
  _$FamilyMemberHistoryConditionCopyWithImpl(this._value, this._then);

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
    Object? code = null,
    Object? outcome = freezed,
    Object? contributedToDeath = freezed,
    Object? contributedToDeathElement = freezed,
    Object? onsetAge = freezed,
    Object? onsetRange = freezed,
    Object? onsetPeriod = freezed,
    Object? onsetString = freezed,
    Object? onsetStringElement = freezed,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      outcome: freezed == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      contributedToDeath: freezed == contributedToDeath
          ? _value.contributedToDeath
          : contributedToDeath // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      contributedToDeathElement: freezed == contributedToDeathElement
          ? _value.contributedToDeathElement
          : contributedToDeathElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      onsetAge: freezed == onsetAge
          ? _value.onsetAge
          : onsetAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      onsetRange: freezed == onsetRange
          ? _value.onsetRange
          : onsetRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      onsetPeriod: freezed == onsetPeriod
          ? _value.onsetPeriod
          : onsetPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      onsetString: freezed == onsetString
          ? _value.onsetString
          : onsetString // ignore: cast_nullable_to_non_nullable
              as String?,
      onsetStringElement: freezed == onsetStringElement
          ? _value.onsetStringElement
          : onsetStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get code {
    return $CodeableConceptCopyWith<$Res>(_value.code, (value) {
      return _then(_value.copyWith(code: value) as $Val);
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
  $AgeCopyWith<$Res>? get onsetAge {
    if (_value.onsetAge == null) {
      return null;
    }

    return $AgeCopyWith<$Res>(_value.onsetAge!, (value) {
      return _then(_value.copyWith(onsetAge: value) as $Val);
    });
  }

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
}

/// @nodoc
abstract class _$$FamilyMemberHistoryConditionImplCopyWith<$Res>
    implements $FamilyMemberHistoryConditionCopyWith<$Res> {
  factory _$$FamilyMemberHistoryConditionImplCopyWith(
          _$FamilyMemberHistoryConditionImpl value,
          $Res Function(_$FamilyMemberHistoryConditionImpl) then) =
      __$$FamilyMemberHistoryConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept code,
      CodeableConcept? outcome,
      FhirBoolean? contributedToDeath,
      @JsonKey(name: '_contributedToDeath')
      PrimitiveElement? contributedToDeathElement,
      Age? onsetAge,
      Range? onsetRange,
      Period? onsetPeriod,
      String? onsetString,
      @JsonKey(name: '_onsetString') PrimitiveElement? onsetStringElement,
      List<Annotation>? note});

  @override
  $CodeableConceptCopyWith<$Res> get code;
  @override
  $CodeableConceptCopyWith<$Res>? get outcome;
  @override
  $AgeCopyWith<$Res>? get onsetAge;
  @override
  $RangeCopyWith<$Res>? get onsetRange;
  @override
  $PeriodCopyWith<$Res>? get onsetPeriod;
}

/// @nodoc
class __$$FamilyMemberHistoryConditionImplCopyWithImpl<$Res>
    extends _$FamilyMemberHistoryConditionCopyWithImpl<$Res,
        _$FamilyMemberHistoryConditionImpl>
    implements _$$FamilyMemberHistoryConditionImplCopyWith<$Res> {
  __$$FamilyMemberHistoryConditionImplCopyWithImpl(
      _$FamilyMemberHistoryConditionImpl _value,
      $Res Function(_$FamilyMemberHistoryConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = null,
    Object? outcome = freezed,
    Object? contributedToDeath = freezed,
    Object? contributedToDeathElement = freezed,
    Object? onsetAge = freezed,
    Object? onsetRange = freezed,
    Object? onsetPeriod = freezed,
    Object? onsetString = freezed,
    Object? onsetStringElement = freezed,
    Object? note = freezed,
  }) {
    return _then(_$FamilyMemberHistoryConditionImpl(
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      outcome: freezed == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      contributedToDeath: freezed == contributedToDeath
          ? _value.contributedToDeath
          : contributedToDeath // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      contributedToDeathElement: freezed == contributedToDeathElement
          ? _value.contributedToDeathElement
          : contributedToDeathElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      onsetAge: freezed == onsetAge
          ? _value.onsetAge
          : onsetAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      onsetRange: freezed == onsetRange
          ? _value.onsetRange
          : onsetRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      onsetPeriod: freezed == onsetPeriod
          ? _value.onsetPeriod
          : onsetPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      onsetString: freezed == onsetString
          ? _value.onsetString
          : onsetString // ignore: cast_nullable_to_non_nullable
              as String?,
      onsetStringElement: freezed == onsetStringElement
          ? _value.onsetStringElement
          : onsetStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyMemberHistoryConditionImpl extends _FamilyMemberHistoryCondition {
  const _$FamilyMemberHistoryConditionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.code,
      this.outcome,
      this.contributedToDeath,
      @JsonKey(name: '_contributedToDeath') this.contributedToDeathElement,
      this.onsetAge,
      this.onsetRange,
      this.onsetPeriod,
      this.onsetString,
      @JsonKey(name: '_onsetString') this.onsetStringElement,
      final List<Annotation>? note})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _note = note,
        super._();

  factory _$FamilyMemberHistoryConditionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FamilyMemberHistoryConditionImplFromJson(json);

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
  final CodeableConcept code;
  @override
  final CodeableConcept? outcome;
  @override
  final FhirBoolean? contributedToDeath;
  @override
  @JsonKey(name: '_contributedToDeath')
  final PrimitiveElement? contributedToDeathElement;
  @override
  final Age? onsetAge;
  @override
  final Range? onsetRange;
  @override
  final Period? onsetPeriod;
  @override
  final String? onsetString;
  @override
  @JsonKey(name: '_onsetString')
  final PrimitiveElement? onsetStringElement;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyMemberHistoryConditionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.outcome, outcome) || other.outcome == outcome) &&
            (identical(other.contributedToDeath, contributedToDeath) ||
                other.contributedToDeath == contributedToDeath) &&
            (identical(other.contributedToDeathElement,
                    contributedToDeathElement) ||
                other.contributedToDeathElement == contributedToDeathElement) &&
            (identical(other.onsetAge, onsetAge) ||
                other.onsetAge == onsetAge) &&
            (identical(other.onsetRange, onsetRange) ||
                other.onsetRange == onsetRange) &&
            (identical(other.onsetPeriod, onsetPeriod) ||
                other.onsetPeriod == onsetPeriod) &&
            (identical(other.onsetString, onsetString) ||
                other.onsetString == onsetString) &&
            (identical(other.onsetStringElement, onsetStringElement) ||
                other.onsetStringElement == onsetStringElement) &&
            const DeepCollectionEquality().equals(other._note, _note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      code,
      outcome,
      contributedToDeath,
      contributedToDeathElement,
      onsetAge,
      onsetRange,
      onsetPeriod,
      onsetString,
      onsetStringElement,
      const DeepCollectionEquality().hash(_note));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyMemberHistoryConditionImplCopyWith<
          _$FamilyMemberHistoryConditionImpl>
      get copyWith => __$$FamilyMemberHistoryConditionImplCopyWithImpl<
          _$FamilyMemberHistoryConditionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyMemberHistoryConditionImplToJson(
      this,
    );
  }
}

abstract class _FamilyMemberHistoryCondition
    extends FamilyMemberHistoryCondition {
  const factory _FamilyMemberHistoryCondition(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept code,
      final CodeableConcept? outcome,
      final FhirBoolean? contributedToDeath,
      @JsonKey(name: '_contributedToDeath')
      final PrimitiveElement? contributedToDeathElement,
      final Age? onsetAge,
      final Range? onsetRange,
      final Period? onsetPeriod,
      final String? onsetString,
      @JsonKey(name: '_onsetString') final PrimitiveElement? onsetStringElement,
      final List<Annotation>? note}) = _$FamilyMemberHistoryConditionImpl;
  const _FamilyMemberHistoryCondition._() : super._();

  factory _FamilyMemberHistoryCondition.fromJson(Map<String, dynamic> json) =
      _$FamilyMemberHistoryConditionImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept get code;
  @override
  CodeableConcept? get outcome;
  @override
  FhirBoolean? get contributedToDeath;
  @override
  @JsonKey(name: '_contributedToDeath')
  PrimitiveElement? get contributedToDeathElement;
  @override
  Age? get onsetAge;
  @override
  Range? get onsetRange;
  @override
  Period? get onsetPeriod;
  @override
  String? get onsetString;
  @override
  @JsonKey(name: '_onsetString')
  PrimitiveElement? get onsetStringElement;
  @override
  List<Annotation>? get note;
  @override
  @JsonKey(ignore: true)
  _$$FamilyMemberHistoryConditionImplCopyWith<
          _$FamilyMemberHistoryConditionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
