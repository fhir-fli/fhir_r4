// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clinical_impression.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClinicalImpression _$ClinicalImpressionFromJson(Map<String, dynamic> json) {
  return _ClinicalImpression.fromJson(json);
}

/// @nodoc
mixin _$ClinicalImpression {
  @JsonKey(unknownEnumValue: R4ResourceType.ClinicalImpression)
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
  FhirCode? get status => throw _privateConstructorUsedError;
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;
  CodeableConcept? get statusReason => throw _privateConstructorUsedError;
  CodeableConcept? get code => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;
  Reference get subject => throw _privateConstructorUsedError;
  Reference? get encounter => throw _privateConstructorUsedError;
  FhirDateTime? get effectiveDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: '_effectiveDateTime')
  PrimitiveElement? get effectiveDateTimeElement =>
      throw _privateConstructorUsedError;
  Period? get effectivePeriod => throw _privateConstructorUsedError;
  FhirDateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;
  Reference? get assessor => throw _privateConstructorUsedError;
  Reference? get previous => throw _privateConstructorUsedError;
  List<Reference>? get problem => throw _privateConstructorUsedError;
  List<ClinicalImpressionInvestigation>? get investigation =>
      throw _privateConstructorUsedError;
  List<FhirUri>? get protocol => throw _privateConstructorUsedError;
  @JsonKey(name: '_protocol')
  List<PrimitiveElement>? get protocolElement =>
      throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  @JsonKey(name: '_summary')
  PrimitiveElement? get summaryElement => throw _privateConstructorUsedError;
  List<ClinicalImpressionFinding>? get finding =>
      throw _privateConstructorUsedError;
  List<CodeableConcept>? get prognosisCodeableConcept =>
      throw _privateConstructorUsedError;
  List<Reference>? get prognosisReference => throw _privateConstructorUsedError;
  List<Reference>? get supportingInfo => throw _privateConstructorUsedError;
  List<Annotation>? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicalImpressionCopyWith<ClinicalImpression> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicalImpressionCopyWith<$Res> {
  factory $ClinicalImpressionCopyWith(
          ClinicalImpression value, $Res Function(ClinicalImpression) then) =
      _$ClinicalImpressionCopyWithImpl<$Res, ClinicalImpression>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ClinicalImpression)
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
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      CodeableConcept? statusReason,
      CodeableConcept? code,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      Reference subject,
      Reference? encounter,
      FhirDateTime? effectiveDateTime,
      @JsonKey(name: '_effectiveDateTime')
      PrimitiveElement? effectiveDateTimeElement,
      Period? effectivePeriod,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      Reference? assessor,
      Reference? previous,
      List<Reference>? problem,
      List<ClinicalImpressionInvestigation>? investigation,
      List<FhirUri>? protocol,
      @JsonKey(name: '_protocol') List<PrimitiveElement>? protocolElement,
      String? summary,
      @JsonKey(name: '_summary') PrimitiveElement? summaryElement,
      List<ClinicalImpressionFinding>? finding,
      List<CodeableConcept>? prognosisCodeableConcept,
      List<Reference>? prognosisReference,
      List<Reference>? supportingInfo,
      List<Annotation>? note});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res>? get statusReason;
  $CodeableConceptCopyWith<$Res>? get code;
  $ReferenceCopyWith<$Res> get subject;
  $ReferenceCopyWith<$Res>? get encounter;
  $PeriodCopyWith<$Res>? get effectivePeriod;
  $ReferenceCopyWith<$Res>? get assessor;
  $ReferenceCopyWith<$Res>? get previous;
}

/// @nodoc
class _$ClinicalImpressionCopyWithImpl<$Res, $Val extends ClinicalImpression>
    implements $ClinicalImpressionCopyWith<$Res> {
  _$ClinicalImpressionCopyWithImpl(this._value, this._then);

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
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? statusReason = freezed,
    Object? code = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? subject = null,
    Object? encounter = freezed,
    Object? effectiveDateTime = freezed,
    Object? effectiveDateTimeElement = freezed,
    Object? effectivePeriod = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? assessor = freezed,
    Object? previous = freezed,
    Object? problem = freezed,
    Object? investigation = freezed,
    Object? protocol = freezed,
    Object? protocolElement = freezed,
    Object? summary = freezed,
    Object? summaryElement = freezed,
    Object? finding = freezed,
    Object? prognosisCodeableConcept = freezed,
    Object? prognosisReference = freezed,
    Object? supportingInfo = freezed,
    Object? note = freezed,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      statusReason: freezed == statusReason
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Reference,
      encounter: freezed == encounter
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      effectiveDateTime: freezed == effectiveDateTime
          ? _value.effectiveDateTime
          : effectiveDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      effectiveDateTimeElement: freezed == effectiveDateTimeElement
          ? _value.effectiveDateTimeElement
          : effectiveDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      effectivePeriod: freezed == effectivePeriod
          ? _value.effectivePeriod
          : effectivePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      assessor: freezed == assessor
          ? _value.assessor
          : assessor // ignore: cast_nullable_to_non_nullable
              as Reference?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as Reference?,
      problem: freezed == problem
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      investigation: freezed == investigation
          ? _value.investigation
          : investigation // ignore: cast_nullable_to_non_nullable
              as List<ClinicalImpressionInvestigation>?,
      protocol: freezed == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as List<FhirUri>?,
      protocolElement: freezed == protocolElement
          ? _value.protocolElement
          : protocolElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      summaryElement: freezed == summaryElement
          ? _value.summaryElement
          : summaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      finding: freezed == finding
          ? _value.finding
          : finding // ignore: cast_nullable_to_non_nullable
              as List<ClinicalImpressionFinding>?,
      prognosisCodeableConcept: freezed == prognosisCodeableConcept
          ? _value.prognosisCodeableConcept
          : prognosisCodeableConcept // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      prognosisReference: freezed == prognosisReference
          ? _value.prognosisReference
          : prognosisReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      supportingInfo: freezed == supportingInfo
          ? _value.supportingInfo
          : supportingInfo // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
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
  $CodeableConceptCopyWith<$Res>? get statusReason {
    if (_value.statusReason == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.statusReason!, (value) {
      return _then(_value.copyWith(statusReason: value) as $Val);
    });
  }

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
  $PeriodCopyWith<$Res>? get effectivePeriod {
    if (_value.effectivePeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.effectivePeriod!, (value) {
      return _then(_value.copyWith(effectivePeriod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get assessor {
    if (_value.assessor == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.assessor!, (value) {
      return _then(_value.copyWith(assessor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get previous {
    if (_value.previous == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.previous!, (value) {
      return _then(_value.copyWith(previous: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClinicalImpressionImplCopyWith<$Res>
    implements $ClinicalImpressionCopyWith<$Res> {
  factory _$$ClinicalImpressionImplCopyWith(_$ClinicalImpressionImpl value,
          $Res Function(_$ClinicalImpressionImpl) then) =
      __$$ClinicalImpressionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ClinicalImpression)
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
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      CodeableConcept? statusReason,
      CodeableConcept? code,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      Reference subject,
      Reference? encounter,
      FhirDateTime? effectiveDateTime,
      @JsonKey(name: '_effectiveDateTime')
      PrimitiveElement? effectiveDateTimeElement,
      Period? effectivePeriod,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      Reference? assessor,
      Reference? previous,
      List<Reference>? problem,
      List<ClinicalImpressionInvestigation>? investigation,
      List<FhirUri>? protocol,
      @JsonKey(name: '_protocol') List<PrimitiveElement>? protocolElement,
      String? summary,
      @JsonKey(name: '_summary') PrimitiveElement? summaryElement,
      List<ClinicalImpressionFinding>? finding,
      List<CodeableConcept>? prognosisCodeableConcept,
      List<Reference>? prognosisReference,
      List<Reference>? supportingInfo,
      List<Annotation>? note});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res>? get statusReason;
  @override
  $CodeableConceptCopyWith<$Res>? get code;
  @override
  $ReferenceCopyWith<$Res> get subject;
  @override
  $ReferenceCopyWith<$Res>? get encounter;
  @override
  $PeriodCopyWith<$Res>? get effectivePeriod;
  @override
  $ReferenceCopyWith<$Res>? get assessor;
  @override
  $ReferenceCopyWith<$Res>? get previous;
}

/// @nodoc
class __$$ClinicalImpressionImplCopyWithImpl<$Res>
    extends _$ClinicalImpressionCopyWithImpl<$Res, _$ClinicalImpressionImpl>
    implements _$$ClinicalImpressionImplCopyWith<$Res> {
  __$$ClinicalImpressionImplCopyWithImpl(_$ClinicalImpressionImpl _value,
      $Res Function(_$ClinicalImpressionImpl) _then)
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
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? statusReason = freezed,
    Object? code = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? subject = null,
    Object? encounter = freezed,
    Object? effectiveDateTime = freezed,
    Object? effectiveDateTimeElement = freezed,
    Object? effectivePeriod = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? assessor = freezed,
    Object? previous = freezed,
    Object? problem = freezed,
    Object? investigation = freezed,
    Object? protocol = freezed,
    Object? protocolElement = freezed,
    Object? summary = freezed,
    Object? summaryElement = freezed,
    Object? finding = freezed,
    Object? prognosisCodeableConcept = freezed,
    Object? prognosisReference = freezed,
    Object? supportingInfo = freezed,
    Object? note = freezed,
  }) {
    return _then(_$ClinicalImpressionImpl(
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      statusReason: freezed == statusReason
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Reference,
      encounter: freezed == encounter
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      effectiveDateTime: freezed == effectiveDateTime
          ? _value.effectiveDateTime
          : effectiveDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      effectiveDateTimeElement: freezed == effectiveDateTimeElement
          ? _value.effectiveDateTimeElement
          : effectiveDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      effectivePeriod: freezed == effectivePeriod
          ? _value.effectivePeriod
          : effectivePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      assessor: freezed == assessor
          ? _value.assessor
          : assessor // ignore: cast_nullable_to_non_nullable
              as Reference?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as Reference?,
      problem: freezed == problem
          ? _value._problem
          : problem // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      investigation: freezed == investigation
          ? _value._investigation
          : investigation // ignore: cast_nullable_to_non_nullable
              as List<ClinicalImpressionInvestigation>?,
      protocol: freezed == protocol
          ? _value._protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as List<FhirUri>?,
      protocolElement: freezed == protocolElement
          ? _value._protocolElement
          : protocolElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      summaryElement: freezed == summaryElement
          ? _value.summaryElement
          : summaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      finding: freezed == finding
          ? _value._finding
          : finding // ignore: cast_nullable_to_non_nullable
              as List<ClinicalImpressionFinding>?,
      prognosisCodeableConcept: freezed == prognosisCodeableConcept
          ? _value._prognosisCodeableConcept
          : prognosisCodeableConcept // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      prognosisReference: freezed == prognosisReference
          ? _value._prognosisReference
          : prognosisReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      supportingInfo: freezed == supportingInfo
          ? _value._supportingInfo
          : supportingInfo // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClinicalImpressionImpl extends _ClinicalImpression {
  const _$ClinicalImpressionImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.ClinicalImpression)
      this.resourceType = R4ResourceType.ClinicalImpression,
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
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.statusReason,
      this.code,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      required this.subject,
      this.encounter,
      this.effectiveDateTime,
      @JsonKey(name: '_effectiveDateTime') this.effectiveDateTimeElement,
      this.effectivePeriod,
      this.date,
      @JsonKey(name: '_date') this.dateElement,
      this.assessor,
      this.previous,
      final List<Reference>? problem,
      final List<ClinicalImpressionInvestigation>? investigation,
      final List<FhirUri>? protocol,
      @JsonKey(name: '_protocol') final List<PrimitiveElement>? protocolElement,
      this.summary,
      @JsonKey(name: '_summary') this.summaryElement,
      final List<ClinicalImpressionFinding>? finding,
      final List<CodeableConcept>? prognosisCodeableConcept,
      final List<Reference>? prognosisReference,
      final List<Reference>? supportingInfo,
      final List<Annotation>? note})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _problem = problem,
        _investigation = investigation,
        _protocol = protocol,
        _protocolElement = protocolElement,
        _finding = finding,
        _prognosisCodeableConcept = prognosisCodeableConcept,
        _prognosisReference = prognosisReference,
        _supportingInfo = supportingInfo,
        _note = note,
        super._();

  factory _$ClinicalImpressionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClinicalImpressionImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ClinicalImpression)
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
  final FhirCode? status;
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;
  @override
  final CodeableConcept? statusReason;
  @override
  final CodeableConcept? code;
  @override
  final String? description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;
  @override
  final Reference subject;
  @override
  final Reference? encounter;
  @override
  final FhirDateTime? effectiveDateTime;
  @override
  @JsonKey(name: '_effectiveDateTime')
  final PrimitiveElement? effectiveDateTimeElement;
  @override
  final Period? effectivePeriod;
  @override
  final FhirDateTime? date;
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;
  @override
  final Reference? assessor;
  @override
  final Reference? previous;
  final List<Reference>? _problem;
  @override
  List<Reference>? get problem {
    final value = _problem;
    if (value == null) return null;
    if (_problem is EqualUnmodifiableListView) return _problem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ClinicalImpressionInvestigation>? _investigation;
  @override
  List<ClinicalImpressionInvestigation>? get investigation {
    final value = _investigation;
    if (value == null) return null;
    if (_investigation is EqualUnmodifiableListView) return _investigation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirUri>? _protocol;
  @override
  List<FhirUri>? get protocol {
    final value = _protocol;
    if (value == null) return null;
    if (_protocol is EqualUnmodifiableListView) return _protocol;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PrimitiveElement>? _protocolElement;
  @override
  @JsonKey(name: '_protocol')
  List<PrimitiveElement>? get protocolElement {
    final value = _protocolElement;
    if (value == null) return null;
    if (_protocolElement is EqualUnmodifiableListView) return _protocolElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? summary;
  @override
  @JsonKey(name: '_summary')
  final PrimitiveElement? summaryElement;
  final List<ClinicalImpressionFinding>? _finding;
  @override
  List<ClinicalImpressionFinding>? get finding {
    final value = _finding;
    if (value == null) return null;
    if (_finding is EqualUnmodifiableListView) return _finding;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CodeableConcept>? _prognosisCodeableConcept;
  @override
  List<CodeableConcept>? get prognosisCodeableConcept {
    final value = _prognosisCodeableConcept;
    if (value == null) return null;
    if (_prognosisCodeableConcept is EqualUnmodifiableListView)
      return _prognosisCodeableConcept;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reference>? _prognosisReference;
  @override
  List<Reference>? get prognosisReference {
    final value = _prognosisReference;
    if (value == null) return null;
    if (_prognosisReference is EqualUnmodifiableListView)
      return _prognosisReference;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reference>? _supportingInfo;
  @override
  List<Reference>? get supportingInfo {
    final value = _supportingInfo;
    if (value == null) return null;
    if (_supportingInfo is EqualUnmodifiableListView) return _supportingInfo;
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

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicalImpressionImpl &&
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
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.statusReason, statusReason) ||
                other.statusReason == statusReason) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.encounter, encounter) ||
                other.encounter == encounter) &&
            (identical(other.effectiveDateTime, effectiveDateTime) ||
                other.effectiveDateTime == effectiveDateTime) &&
            (identical(
                    other.effectiveDateTimeElement, effectiveDateTimeElement) ||
                other.effectiveDateTimeElement == effectiveDateTimeElement) &&
            (identical(other.effectivePeriod, effectivePeriod) ||
                other.effectivePeriod == effectivePeriod) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateElement, dateElement) ||
                other.dateElement == dateElement) &&
            (identical(other.assessor, assessor) ||
                other.assessor == assessor) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._problem, _problem) &&
            const DeepCollectionEquality()
                .equals(other._investigation, _investigation) &&
            const DeepCollectionEquality().equals(other._protocol, _protocol) &&
            const DeepCollectionEquality()
                .equals(other._protocolElement, _protocolElement) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.summaryElement, summaryElement) ||
                other.summaryElement == summaryElement) &&
            const DeepCollectionEquality().equals(other._finding, _finding) &&
            const DeepCollectionEquality().equals(
                other._prognosisCodeableConcept, _prognosisCodeableConcept) &&
            const DeepCollectionEquality()
                .equals(other._prognosisReference, _prognosisReference) &&
            const DeepCollectionEquality()
                .equals(other._supportingInfo, _supportingInfo) &&
            const DeepCollectionEquality().equals(other._note, _note));
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
        status,
        statusElement,
        statusReason,
        code,
        description,
        descriptionElement,
        subject,
        encounter,
        effectiveDateTime,
        effectiveDateTimeElement,
        effectivePeriod,
        date,
        dateElement,
        assessor,
        previous,
        const DeepCollectionEquality().hash(_problem),
        const DeepCollectionEquality().hash(_investigation),
        const DeepCollectionEquality().hash(_protocol),
        const DeepCollectionEquality().hash(_protocolElement),
        summary,
        summaryElement,
        const DeepCollectionEquality().hash(_finding),
        const DeepCollectionEquality().hash(_prognosisCodeableConcept),
        const DeepCollectionEquality().hash(_prognosisReference),
        const DeepCollectionEquality().hash(_supportingInfo),
        const DeepCollectionEquality().hash(_note)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicalImpressionImplCopyWith<_$ClinicalImpressionImpl> get copyWith =>
      __$$ClinicalImpressionImplCopyWithImpl<_$ClinicalImpressionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClinicalImpressionImplToJson(
      this,
    );
  }
}

abstract class _ClinicalImpression extends ClinicalImpression {
  const factory _ClinicalImpression(
      {@JsonKey(unknownEnumValue: R4ResourceType.ClinicalImpression)
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
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final CodeableConcept? statusReason,
      final CodeableConcept? code,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      required final Reference subject,
      final Reference? encounter,
      final FhirDateTime? effectiveDateTime,
      @JsonKey(name: '_effectiveDateTime')
      final PrimitiveElement? effectiveDateTimeElement,
      final Period? effectivePeriod,
      final FhirDateTime? date,
      @JsonKey(name: '_date') final PrimitiveElement? dateElement,
      final Reference? assessor,
      final Reference? previous,
      final List<Reference>? problem,
      final List<ClinicalImpressionInvestigation>? investigation,
      final List<FhirUri>? protocol,
      @JsonKey(name: '_protocol') final List<PrimitiveElement>? protocolElement,
      final String? summary,
      @JsonKey(name: '_summary') final PrimitiveElement? summaryElement,
      final List<ClinicalImpressionFinding>? finding,
      final List<CodeableConcept>? prognosisCodeableConcept,
      final List<Reference>? prognosisReference,
      final List<Reference>? supportingInfo,
      final List<Annotation>? note}) = _$ClinicalImpressionImpl;
  const _ClinicalImpression._() : super._();

  factory _ClinicalImpression.fromJson(Map<String, dynamic> json) =
      _$ClinicalImpressionImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ClinicalImpression)
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
  FhirCode? get status;
  @override
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override
  CodeableConcept? get statusReason;
  @override
  CodeableConcept? get code;
  @override
  String? get description;
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override
  Reference get subject;
  @override
  Reference? get encounter;
  @override
  FhirDateTime? get effectiveDateTime;
  @override
  @JsonKey(name: '_effectiveDateTime')
  PrimitiveElement? get effectiveDateTimeElement;
  @override
  Period? get effectivePeriod;
  @override
  FhirDateTime? get date;
  @override
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override
  Reference? get assessor;
  @override
  Reference? get previous;
  @override
  List<Reference>? get problem;
  @override
  List<ClinicalImpressionInvestigation>? get investigation;
  @override
  List<FhirUri>? get protocol;
  @override
  @JsonKey(name: '_protocol')
  List<PrimitiveElement>? get protocolElement;
  @override
  String? get summary;
  @override
  @JsonKey(name: '_summary')
  PrimitiveElement? get summaryElement;
  @override
  List<ClinicalImpressionFinding>? get finding;
  @override
  List<CodeableConcept>? get prognosisCodeableConcept;
  @override
  List<Reference>? get prognosisReference;
  @override
  List<Reference>? get supportingInfo;
  @override
  List<Annotation>? get note;
  @override
  @JsonKey(ignore: true)
  _$$ClinicalImpressionImplCopyWith<_$ClinicalImpressionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClinicalImpressionInvestigation _$ClinicalImpressionInvestigationFromJson(
    Map<String, dynamic> json) {
  return _ClinicalImpressionInvestigation.fromJson(json);
}

/// @nodoc
mixin _$ClinicalImpressionInvestigation {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept get code => throw _privateConstructorUsedError;
  List<Reference>? get item => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicalImpressionInvestigationCopyWith<ClinicalImpressionInvestigation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicalImpressionInvestigationCopyWith<$Res> {
  factory $ClinicalImpressionInvestigationCopyWith(
          ClinicalImpressionInvestigation value,
          $Res Function(ClinicalImpressionInvestigation) then) =
      _$ClinicalImpressionInvestigationCopyWithImpl<$Res,
          ClinicalImpressionInvestigation>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept code,
      List<Reference>? item});

  $CodeableConceptCopyWith<$Res> get code;
}

/// @nodoc
class _$ClinicalImpressionInvestigationCopyWithImpl<$Res,
        $Val extends ClinicalImpressionInvestigation>
    implements $ClinicalImpressionInvestigationCopyWith<$Res> {
  _$ClinicalImpressionInvestigationCopyWithImpl(this._value, this._then);

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
    Object? item = freezed,
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
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get code {
    return $CodeableConceptCopyWith<$Res>(_value.code, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClinicalImpressionInvestigationImplCopyWith<$Res>
    implements $ClinicalImpressionInvestigationCopyWith<$Res> {
  factory _$$ClinicalImpressionInvestigationImplCopyWith(
          _$ClinicalImpressionInvestigationImpl value,
          $Res Function(_$ClinicalImpressionInvestigationImpl) then) =
      __$$ClinicalImpressionInvestigationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept code,
      List<Reference>? item});

  @override
  $CodeableConceptCopyWith<$Res> get code;
}

/// @nodoc
class __$$ClinicalImpressionInvestigationImplCopyWithImpl<$Res>
    extends _$ClinicalImpressionInvestigationCopyWithImpl<$Res,
        _$ClinicalImpressionInvestigationImpl>
    implements _$$ClinicalImpressionInvestigationImplCopyWith<$Res> {
  __$$ClinicalImpressionInvestigationImplCopyWithImpl(
      _$ClinicalImpressionInvestigationImpl _value,
      $Res Function(_$ClinicalImpressionInvestigationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = null,
    Object? item = freezed,
  }) {
    return _then(_$ClinicalImpressionInvestigationImpl(
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
      item: freezed == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClinicalImpressionInvestigationImpl
    extends _ClinicalImpressionInvestigation {
  const _$ClinicalImpressionInvestigationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.code,
      final List<Reference>? item})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _item = item,
        super._();

  factory _$ClinicalImpressionInvestigationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClinicalImpressionInvestigationImplFromJson(json);

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
  final List<Reference>? _item;
  @override
  List<Reference>? get item {
    final value = _item;
    if (value == null) return null;
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicalImpressionInvestigationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._item, _item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      code,
      const DeepCollectionEquality().hash(_item));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicalImpressionInvestigationImplCopyWith<
          _$ClinicalImpressionInvestigationImpl>
      get copyWith => __$$ClinicalImpressionInvestigationImplCopyWithImpl<
          _$ClinicalImpressionInvestigationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClinicalImpressionInvestigationImplToJson(
      this,
    );
  }
}

abstract class _ClinicalImpressionInvestigation
    extends ClinicalImpressionInvestigation {
  const factory _ClinicalImpressionInvestigation(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept code,
      final List<Reference>? item}) = _$ClinicalImpressionInvestigationImpl;
  const _ClinicalImpressionInvestigation._() : super._();

  factory _ClinicalImpressionInvestigation.fromJson(Map<String, dynamic> json) =
      _$ClinicalImpressionInvestigationImpl.fromJson;

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
  List<Reference>? get item;
  @override
  @JsonKey(ignore: true)
  _$$ClinicalImpressionInvestigationImplCopyWith<
          _$ClinicalImpressionInvestigationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClinicalImpressionFinding _$ClinicalImpressionFindingFromJson(
    Map<String, dynamic> json) {
  return _ClinicalImpressionFinding.fromJson(json);
}

/// @nodoc
mixin _$ClinicalImpressionFinding {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept? get itemCodeableConcept =>
      throw _privateConstructorUsedError;
  Reference? get itemReference => throw _privateConstructorUsedError;
  String? get basis => throw _privateConstructorUsedError;
  @JsonKey(name: '_basis')
  PrimitiveElement? get basisElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicalImpressionFindingCopyWith<ClinicalImpressionFinding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicalImpressionFindingCopyWith<$Res> {
  factory $ClinicalImpressionFindingCopyWith(ClinicalImpressionFinding value,
          $Res Function(ClinicalImpressionFinding) then) =
      _$ClinicalImpressionFindingCopyWithImpl<$Res, ClinicalImpressionFinding>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? itemCodeableConcept,
      Reference? itemReference,
      String? basis,
      @JsonKey(name: '_basis') PrimitiveElement? basisElement});

  $CodeableConceptCopyWith<$Res>? get itemCodeableConcept;
  $ReferenceCopyWith<$Res>? get itemReference;
}

/// @nodoc
class _$ClinicalImpressionFindingCopyWithImpl<$Res,
        $Val extends ClinicalImpressionFinding>
    implements $ClinicalImpressionFindingCopyWith<$Res> {
  _$ClinicalImpressionFindingCopyWithImpl(this._value, this._then);

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
    Object? itemCodeableConcept = freezed,
    Object? itemReference = freezed,
    Object? basis = freezed,
    Object? basisElement = freezed,
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
      itemCodeableConcept: freezed == itemCodeableConcept
          ? _value.itemCodeableConcept
          : itemCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      itemReference: freezed == itemReference
          ? _value.itemReference
          : itemReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      basis: freezed == basis
          ? _value.basis
          : basis // ignore: cast_nullable_to_non_nullable
              as String?,
      basisElement: freezed == basisElement
          ? _value.basisElement
          : basisElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get itemCodeableConcept {
    if (_value.itemCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.itemCodeableConcept!, (value) {
      return _then(_value.copyWith(itemCodeableConcept: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get itemReference {
    if (_value.itemReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.itemReference!, (value) {
      return _then(_value.copyWith(itemReference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClinicalImpressionFindingImplCopyWith<$Res>
    implements $ClinicalImpressionFindingCopyWith<$Res> {
  factory _$$ClinicalImpressionFindingImplCopyWith(
          _$ClinicalImpressionFindingImpl value,
          $Res Function(_$ClinicalImpressionFindingImpl) then) =
      __$$ClinicalImpressionFindingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? itemCodeableConcept,
      Reference? itemReference,
      String? basis,
      @JsonKey(name: '_basis') PrimitiveElement? basisElement});

  @override
  $CodeableConceptCopyWith<$Res>? get itemCodeableConcept;
  @override
  $ReferenceCopyWith<$Res>? get itemReference;
}

/// @nodoc
class __$$ClinicalImpressionFindingImplCopyWithImpl<$Res>
    extends _$ClinicalImpressionFindingCopyWithImpl<$Res,
        _$ClinicalImpressionFindingImpl>
    implements _$$ClinicalImpressionFindingImplCopyWith<$Res> {
  __$$ClinicalImpressionFindingImplCopyWithImpl(
      _$ClinicalImpressionFindingImpl _value,
      $Res Function(_$ClinicalImpressionFindingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? itemCodeableConcept = freezed,
    Object? itemReference = freezed,
    Object? basis = freezed,
    Object? basisElement = freezed,
  }) {
    return _then(_$ClinicalImpressionFindingImpl(
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
      itemCodeableConcept: freezed == itemCodeableConcept
          ? _value.itemCodeableConcept
          : itemCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      itemReference: freezed == itemReference
          ? _value.itemReference
          : itemReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      basis: freezed == basis
          ? _value.basis
          : basis // ignore: cast_nullable_to_non_nullable
              as String?,
      basisElement: freezed == basisElement
          ? _value.basisElement
          : basisElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClinicalImpressionFindingImpl extends _ClinicalImpressionFinding {
  const _$ClinicalImpressionFindingImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.itemCodeableConcept,
      this.itemReference,
      this.basis,
      @JsonKey(name: '_basis') this.basisElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ClinicalImpressionFindingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClinicalImpressionFindingImplFromJson(json);

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
  final CodeableConcept? itemCodeableConcept;
  @override
  final Reference? itemReference;
  @override
  final String? basis;
  @override
  @JsonKey(name: '_basis')
  final PrimitiveElement? basisElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicalImpressionFindingImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.itemCodeableConcept, itemCodeableConcept) ||
                other.itemCodeableConcept == itemCodeableConcept) &&
            (identical(other.itemReference, itemReference) ||
                other.itemReference == itemReference) &&
            (identical(other.basis, basis) || other.basis == basis) &&
            (identical(other.basisElement, basisElement) ||
                other.basisElement == basisElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      itemCodeableConcept,
      itemReference,
      basis,
      basisElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicalImpressionFindingImplCopyWith<_$ClinicalImpressionFindingImpl>
      get copyWith => __$$ClinicalImpressionFindingImplCopyWithImpl<
          _$ClinicalImpressionFindingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClinicalImpressionFindingImplToJson(
      this,
    );
  }
}

abstract class _ClinicalImpressionFinding extends ClinicalImpressionFinding {
  const factory _ClinicalImpressionFinding(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? itemCodeableConcept,
          final Reference? itemReference,
          final String? basis,
          @JsonKey(name: '_basis') final PrimitiveElement? basisElement}) =
      _$ClinicalImpressionFindingImpl;
  const _ClinicalImpressionFinding._() : super._();

  factory _ClinicalImpressionFinding.fromJson(Map<String, dynamic> json) =
      _$ClinicalImpressionFindingImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept? get itemCodeableConcept;
  @override
  Reference? get itemReference;
  @override
  String? get basis;
  @override
  @JsonKey(name: '_basis')
  PrimitiveElement? get basisElement;
  @override
  @JsonKey(ignore: true)
  _$$ClinicalImpressionFindingImplCopyWith<_$ClinicalImpressionFindingImpl>
      get copyWith => throw _privateConstructorUsedError;
}
