// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'immunization_evaluation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImmunizationEvaluation _$ImmunizationEvaluationFromJson(
    Map<String, dynamic> json) {
  return _ImmunizationEvaluation.fromJson(json);
}

/// @nodoc
mixin _$ImmunizationEvaluation {
  @JsonKey(unknownEnumValue: R4ResourceType.ImmunizationEvaluation)
  R4ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] A unique identifier assigned to this immunization evaluation
  ///  record.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [status] Indicates the current status of the evaluation of the
  ///  vaccination administration event.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [patient] The individual for whom the evaluation is being done.
  Reference get patient => throw _privateConstructorUsedError;

  /// [date] The date the evaluation of the vaccine administration event was
  ///  performed.
  FhirDateTime? get date => throw _privateConstructorUsedError;

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [authority] Indicates the authority who published the protocol (e.g.
  ///  ACIP).
  Reference? get authority => throw _privateConstructorUsedError;

  /// [targetDisease] The vaccine preventable disease the dose is being
  ///  evaluated against.
  CodeableConcept get targetDisease => throw _privateConstructorUsedError;

  /// [immunizationEvent] The vaccine administration event being evaluated.
  Reference get immunizationEvent => throw _privateConstructorUsedError;

  /// [doseStatus] Indicates if the dose is valid or not valid with respect to
  ///  the published recommendations.
  CodeableConcept get doseStatus => throw _privateConstructorUsedError;

  /// [doseStatusReason] Provides an explanation as to why the vaccine
  /// administration event is valid or not relative to the published
  ///  recommendations.
  List<CodeableConcept>? get doseStatusReason =>
      throw _privateConstructorUsedError;

  /// [description] Additional information about the evaluation.
  String? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [series] One possible path to achieve presumed immunity against a disease
  ///  - within the context of an authority.
  String? get series => throw _privateConstructorUsedError;

  /// [seriesElement] Extensions for series
  @JsonKey(name: '_series')
  PrimitiveElement? get seriesElement => throw _privateConstructorUsedError;

  /// [doseNumberPositiveInt] Nominal position in a series.
  FhirPositiveInt? get doseNumberPositiveInt =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_doseNumberPositiveInt')
  PrimitiveElement? get doseNumberPositiveIntElement =>
      throw _privateConstructorUsedError;

  /// [doseNumberString] Nominal position in a series.
  String? get doseNumberString => throw _privateConstructorUsedError;

  /// [doseNumberStringElement] Extensions for doseNumberString
  @JsonKey(name: '_doseNumberString')
  PrimitiveElement? get doseNumberStringElement =>
      throw _privateConstructorUsedError;

  /// [seriesDosesPositiveInt] The recommended number of doses to achieve
  ///  immunity.
  FhirPositiveInt? get seriesDosesPositiveInt =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_seriesDosesPositiveInt')
  PrimitiveElement? get seriesDosesPositiveIntElement =>
      throw _privateConstructorUsedError;

  /// [seriesDosesString] The recommended number of doses to achieve immunity.
  String? get seriesDosesString => throw _privateConstructorUsedError;

  /// [seriesDosesStringElement] Extensions for seriesDosesString
  @JsonKey(name: '_seriesDosesString')
  PrimitiveElement? get seriesDosesStringElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImmunizationEvaluationCopyWith<ImmunizationEvaluation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImmunizationEvaluationCopyWith<$Res> {
  factory $ImmunizationEvaluationCopyWith(ImmunizationEvaluation value,
          $Res Function(ImmunizationEvaluation) then) =
      _$ImmunizationEvaluationCopyWithImpl<$Res, ImmunizationEvaluation>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ImmunizationEvaluation)
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
      Reference patient,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      Reference? authority,
      CodeableConcept targetDisease,
      Reference immunizationEvent,
      CodeableConcept doseStatus,
      List<CodeableConcept>? doseStatusReason,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      String? series,
      @JsonKey(name: '_series') PrimitiveElement? seriesElement,
      FhirPositiveInt? doseNumberPositiveInt,
      @JsonKey(name: '_doseNumberPositiveInt')
      PrimitiveElement? doseNumberPositiveIntElement,
      String? doseNumberString,
      @JsonKey(name: '_doseNumberString')
      PrimitiveElement? doseNumberStringElement,
      FhirPositiveInt? seriesDosesPositiveInt,
      @JsonKey(name: '_seriesDosesPositiveInt')
      PrimitiveElement? seriesDosesPositiveIntElement,
      String? seriesDosesString,
      @JsonKey(name: '_seriesDosesString')
      PrimitiveElement? seriesDosesStringElement});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $ReferenceCopyWith<$Res> get patient;
  $ReferenceCopyWith<$Res>? get authority;
  $CodeableConceptCopyWith<$Res> get targetDisease;
  $ReferenceCopyWith<$Res> get immunizationEvent;
  $CodeableConceptCopyWith<$Res> get doseStatus;
}

/// @nodoc
class _$ImmunizationEvaluationCopyWithImpl<$Res,
        $Val extends ImmunizationEvaluation>
    implements $ImmunizationEvaluationCopyWith<$Res> {
  _$ImmunizationEvaluationCopyWithImpl(this._value, this._then);

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
    Object? patient = null,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? authority = freezed,
    Object? targetDisease = null,
    Object? immunizationEvent = null,
    Object? doseStatus = null,
    Object? doseStatusReason = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? series = freezed,
    Object? seriesElement = freezed,
    Object? doseNumberPositiveInt = freezed,
    Object? doseNumberPositiveIntElement = freezed,
    Object? doseNumberString = freezed,
    Object? doseNumberStringElement = freezed,
    Object? seriesDosesPositiveInt = freezed,
    Object? seriesDosesPositiveIntElement = freezed,
    Object? seriesDosesString = freezed,
    Object? seriesDosesStringElement = freezed,
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
      authority: freezed == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as Reference?,
      targetDisease: null == targetDisease
          ? _value.targetDisease
          : targetDisease // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      immunizationEvent: null == immunizationEvent
          ? _value.immunizationEvent
          : immunizationEvent // ignore: cast_nullable_to_non_nullable
              as Reference,
      doseStatus: null == doseStatus
          ? _value.doseStatus
          : doseStatus // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      doseStatusReason: freezed == doseStatusReason
          ? _value.doseStatusReason
          : doseStatusReason // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesElement: freezed == seriesElement
          ? _value.seriesElement
          : seriesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      doseNumberPositiveInt: freezed == doseNumberPositiveInt
          ? _value.doseNumberPositiveInt
          : doseNumberPositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      doseNumberPositiveIntElement: freezed == doseNumberPositiveIntElement
          ? _value.doseNumberPositiveIntElement
          : doseNumberPositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      doseNumberString: freezed == doseNumberString
          ? _value.doseNumberString
          : doseNumberString // ignore: cast_nullable_to_non_nullable
              as String?,
      doseNumberStringElement: freezed == doseNumberStringElement
          ? _value.doseNumberStringElement
          : doseNumberStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      seriesDosesPositiveInt: freezed == seriesDosesPositiveInt
          ? _value.seriesDosesPositiveInt
          : seriesDosesPositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      seriesDosesPositiveIntElement: freezed == seriesDosesPositiveIntElement
          ? _value.seriesDosesPositiveIntElement
          : seriesDosesPositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      seriesDosesString: freezed == seriesDosesString
          ? _value.seriesDosesString
          : seriesDosesString // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesDosesStringElement: freezed == seriesDosesStringElement
          ? _value.seriesDosesStringElement
          : seriesDosesStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
  $ReferenceCopyWith<$Res> get patient {
    return $ReferenceCopyWith<$Res>(_value.patient, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get authority {
    if (_value.authority == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.authority!, (value) {
      return _then(_value.copyWith(authority: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get targetDisease {
    return $CodeableConceptCopyWith<$Res>(_value.targetDisease, (value) {
      return _then(_value.copyWith(targetDisease: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get immunizationEvent {
    return $ReferenceCopyWith<$Res>(_value.immunizationEvent, (value) {
      return _then(_value.copyWith(immunizationEvent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get doseStatus {
    return $CodeableConceptCopyWith<$Res>(_value.doseStatus, (value) {
      return _then(_value.copyWith(doseStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImmunizationEvaluationImplCopyWith<$Res>
    implements $ImmunizationEvaluationCopyWith<$Res> {
  factory _$$ImmunizationEvaluationImplCopyWith(
          _$ImmunizationEvaluationImpl value,
          $Res Function(_$ImmunizationEvaluationImpl) then) =
      __$$ImmunizationEvaluationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ImmunizationEvaluation)
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
      Reference patient,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      Reference? authority,
      CodeableConcept targetDisease,
      Reference immunizationEvent,
      CodeableConcept doseStatus,
      List<CodeableConcept>? doseStatusReason,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      String? series,
      @JsonKey(name: '_series') PrimitiveElement? seriesElement,
      FhirPositiveInt? doseNumberPositiveInt,
      @JsonKey(name: '_doseNumberPositiveInt')
      PrimitiveElement? doseNumberPositiveIntElement,
      String? doseNumberString,
      @JsonKey(name: '_doseNumberString')
      PrimitiveElement? doseNumberStringElement,
      FhirPositiveInt? seriesDosesPositiveInt,
      @JsonKey(name: '_seriesDosesPositiveInt')
      PrimitiveElement? seriesDosesPositiveIntElement,
      String? seriesDosesString,
      @JsonKey(name: '_seriesDosesString')
      PrimitiveElement? seriesDosesStringElement});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ReferenceCopyWith<$Res> get patient;
  @override
  $ReferenceCopyWith<$Res>? get authority;
  @override
  $CodeableConceptCopyWith<$Res> get targetDisease;
  @override
  $ReferenceCopyWith<$Res> get immunizationEvent;
  @override
  $CodeableConceptCopyWith<$Res> get doseStatus;
}

/// @nodoc
class __$$ImmunizationEvaluationImplCopyWithImpl<$Res>
    extends _$ImmunizationEvaluationCopyWithImpl<$Res,
        _$ImmunizationEvaluationImpl>
    implements _$$ImmunizationEvaluationImplCopyWith<$Res> {
  __$$ImmunizationEvaluationImplCopyWithImpl(
      _$ImmunizationEvaluationImpl _value,
      $Res Function(_$ImmunizationEvaluationImpl) _then)
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
    Object? patient = null,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? authority = freezed,
    Object? targetDisease = null,
    Object? immunizationEvent = null,
    Object? doseStatus = null,
    Object? doseStatusReason = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? series = freezed,
    Object? seriesElement = freezed,
    Object? doseNumberPositiveInt = freezed,
    Object? doseNumberPositiveIntElement = freezed,
    Object? doseNumberString = freezed,
    Object? doseNumberStringElement = freezed,
    Object? seriesDosesPositiveInt = freezed,
    Object? seriesDosesPositiveIntElement = freezed,
    Object? seriesDosesString = freezed,
    Object? seriesDosesStringElement = freezed,
  }) {
    return _then(_$ImmunizationEvaluationImpl(
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
      authority: freezed == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as Reference?,
      targetDisease: null == targetDisease
          ? _value.targetDisease
          : targetDisease // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      immunizationEvent: null == immunizationEvent
          ? _value.immunizationEvent
          : immunizationEvent // ignore: cast_nullable_to_non_nullable
              as Reference,
      doseStatus: null == doseStatus
          ? _value.doseStatus
          : doseStatus // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      doseStatusReason: freezed == doseStatusReason
          ? _value._doseStatusReason
          : doseStatusReason // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesElement: freezed == seriesElement
          ? _value.seriesElement
          : seriesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      doseNumberPositiveInt: freezed == doseNumberPositiveInt
          ? _value.doseNumberPositiveInt
          : doseNumberPositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      doseNumberPositiveIntElement: freezed == doseNumberPositiveIntElement
          ? _value.doseNumberPositiveIntElement
          : doseNumberPositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      doseNumberString: freezed == doseNumberString
          ? _value.doseNumberString
          : doseNumberString // ignore: cast_nullable_to_non_nullable
              as String?,
      doseNumberStringElement: freezed == doseNumberStringElement
          ? _value.doseNumberStringElement
          : doseNumberStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      seriesDosesPositiveInt: freezed == seriesDosesPositiveInt
          ? _value.seriesDosesPositiveInt
          : seriesDosesPositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      seriesDosesPositiveIntElement: freezed == seriesDosesPositiveIntElement
          ? _value.seriesDosesPositiveIntElement
          : seriesDosesPositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      seriesDosesString: freezed == seriesDosesString
          ? _value.seriesDosesString
          : seriesDosesString // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesDosesStringElement: freezed == seriesDosesStringElement
          ? _value.seriesDosesStringElement
          : seriesDosesStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImmunizationEvaluationImpl extends _ImmunizationEvaluation {
  const _$ImmunizationEvaluationImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.ImmunizationEvaluation)
      this.resourceType = R4ResourceType.ImmunizationEvaluation,
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
      required this.patient,
      this.date,
      @JsonKey(name: '_date') this.dateElement,
      this.authority,
      required this.targetDisease,
      required this.immunizationEvent,
      required this.doseStatus,
      final List<CodeableConcept>? doseStatusReason,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.series,
      @JsonKey(name: '_series') this.seriesElement,
      this.doseNumberPositiveInt,
      @JsonKey(name: '_doseNumberPositiveInt')
      this.doseNumberPositiveIntElement,
      this.doseNumberString,
      @JsonKey(name: '_doseNumberString') this.doseNumberStringElement,
      this.seriesDosesPositiveInt,
      @JsonKey(name: '_seriesDosesPositiveInt')
      this.seriesDosesPositiveIntElement,
      this.seriesDosesString,
      @JsonKey(name: '_seriesDosesString') this.seriesDosesStringElement})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _doseStatusReason = doseStatusReason,
        super._();

  factory _$ImmunizationEvaluationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImmunizationEvaluationImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ImmunizationEvaluation)
  final R4ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  @override
  final String? id;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  final FhirCode? language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] A unique identifier assigned to this immunization evaluation
  ///  record.
  final List<Identifier>? _identifier;

  /// [identifier] A unique identifier assigned to this immunization evaluation
  ///  record.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] Indicates the current status of the evaluation of the
  ///  vaccination administration event.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [patient] The individual for whom the evaluation is being done.
  @override
  final Reference patient;

  /// [date] The date the evaluation of the vaccine administration event was
  ///  performed.
  @override
  final FhirDateTime? date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [authority] Indicates the authority who published the protocol (e.g.
  ///  ACIP).
  @override
  final Reference? authority;

  /// [targetDisease] The vaccine preventable disease the dose is being
  ///  evaluated against.
  @override
  final CodeableConcept targetDisease;

  /// [immunizationEvent] The vaccine administration event being evaluated.
  @override
  final Reference immunizationEvent;

  /// [doseStatus] Indicates if the dose is valid or not valid with respect to
  ///  the published recommendations.
  @override
  final CodeableConcept doseStatus;

  /// [doseStatusReason] Provides an explanation as to why the vaccine
  /// administration event is valid or not relative to the published
  ///  recommendations.
  final List<CodeableConcept>? _doseStatusReason;

  /// [doseStatusReason] Provides an explanation as to why the vaccine
  /// administration event is valid or not relative to the published
  ///  recommendations.
  @override
  List<CodeableConcept>? get doseStatusReason {
    final value = _doseStatusReason;
    if (value == null) return null;
    if (_doseStatusReason is EqualUnmodifiableListView)
      return _doseStatusReason;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [description] Additional information about the evaluation.
  @override
  final String? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [series] One possible path to achieve presumed immunity against a disease
  ///  - within the context of an authority.
  @override
  final String? series;

  /// [seriesElement] Extensions for series
  @override
  @JsonKey(name: '_series')
  final PrimitiveElement? seriesElement;

  /// [doseNumberPositiveInt] Nominal position in a series.
  @override
  final FhirPositiveInt? doseNumberPositiveInt;
  @override
  @JsonKey(name: '_doseNumberPositiveInt')
  final PrimitiveElement? doseNumberPositiveIntElement;

  /// [doseNumberString] Nominal position in a series.
  @override
  final String? doseNumberString;

  /// [doseNumberStringElement] Extensions for doseNumberString
  @override
  @JsonKey(name: '_doseNumberString')
  final PrimitiveElement? doseNumberStringElement;

  /// [seriesDosesPositiveInt] The recommended number of doses to achieve
  ///  immunity.
  @override
  final FhirPositiveInt? seriesDosesPositiveInt;
  @override
  @JsonKey(name: '_seriesDosesPositiveInt')
  final PrimitiveElement? seriesDosesPositiveIntElement;

  /// [seriesDosesString] The recommended number of doses to achieve immunity.
  @override
  final String? seriesDosesString;

  /// [seriesDosesStringElement] Extensions for seriesDosesString
  @override
  @JsonKey(name: '_seriesDosesString')
  final PrimitiveElement? seriesDosesStringElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImmunizationEvaluationImpl &&
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
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateElement, dateElement) ||
                other.dateElement == dateElement) &&
            (identical(other.authority, authority) ||
                other.authority == authority) &&
            (identical(other.targetDisease, targetDisease) ||
                other.targetDisease == targetDisease) &&
            (identical(other.immunizationEvent, immunizationEvent) ||
                other.immunizationEvent == immunizationEvent) &&
            (identical(other.doseStatus, doseStatus) ||
                other.doseStatus == doseStatus) &&
            const DeepCollectionEquality()
                .equals(other._doseStatusReason, _doseStatusReason) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.seriesElement, seriesElement) ||
                other.seriesElement == seriesElement) &&
            (identical(other.doseNumberPositiveInt, doseNumberPositiveInt) ||
                other.doseNumberPositiveInt == doseNumberPositiveInt) &&
            (identical(other.doseNumberPositiveIntElement,
                    doseNumberPositiveIntElement) ||
                other.doseNumberPositiveIntElement ==
                    doseNumberPositiveIntElement) &&
            (identical(other.doseNumberString, doseNumberString) ||
                other.doseNumberString == doseNumberString) &&
            (identical(
                    other.doseNumberStringElement, doseNumberStringElement) ||
                other.doseNumberStringElement == doseNumberStringElement) &&
            (identical(other.seriesDosesPositiveInt, seriesDosesPositiveInt) ||
                other.seriesDosesPositiveInt == seriesDosesPositiveInt) &&
            (identical(other.seriesDosesPositiveIntElement,
                    seriesDosesPositiveIntElement) ||
                other.seriesDosesPositiveIntElement ==
                    seriesDosesPositiveIntElement) &&
            (identical(other.seriesDosesString, seriesDosesString) ||
                other.seriesDosesString == seriesDosesString) &&
            (identical(
                    other.seriesDosesStringElement, seriesDosesStringElement) ||
                other.seriesDosesStringElement == seriesDosesStringElement));
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
        patient,
        date,
        dateElement,
        authority,
        targetDisease,
        immunizationEvent,
        doseStatus,
        const DeepCollectionEquality().hash(_doseStatusReason),
        description,
        descriptionElement,
        series,
        seriesElement,
        doseNumberPositiveInt,
        doseNumberPositiveIntElement,
        doseNumberString,
        doseNumberStringElement,
        seriesDosesPositiveInt,
        seriesDosesPositiveIntElement,
        seriesDosesString,
        seriesDosesStringElement
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImmunizationEvaluationImplCopyWith<_$ImmunizationEvaluationImpl>
      get copyWith => __$$ImmunizationEvaluationImplCopyWithImpl<
          _$ImmunizationEvaluationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImmunizationEvaluationImplToJson(
      this,
    );
  }
}

abstract class _ImmunizationEvaluation extends ImmunizationEvaluation {
  factory _ImmunizationEvaluation(
      {@JsonKey(unknownEnumValue: R4ResourceType.ImmunizationEvaluation)
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
      required final Reference patient,
      final FhirDateTime? date,
      @JsonKey(name: '_date') final PrimitiveElement? dateElement,
      final Reference? authority,
      required final CodeableConcept targetDisease,
      required final Reference immunizationEvent,
      required final CodeableConcept doseStatus,
      final List<CodeableConcept>? doseStatusReason,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final String? series,
      @JsonKey(name: '_series') final PrimitiveElement? seriesElement,
      final FhirPositiveInt? doseNumberPositiveInt,
      @JsonKey(name: '_doseNumberPositiveInt')
      final PrimitiveElement? doseNumberPositiveIntElement,
      final String? doseNumberString,
      @JsonKey(name: '_doseNumberString')
      final PrimitiveElement? doseNumberStringElement,
      final FhirPositiveInt? seriesDosesPositiveInt,
      @JsonKey(name: '_seriesDosesPositiveInt')
      final PrimitiveElement? seriesDosesPositiveIntElement,
      final String? seriesDosesString,
      @JsonKey(name: '_seriesDosesString')
      final PrimitiveElement?
          seriesDosesStringElement}) = _$ImmunizationEvaluationImpl;
  const _ImmunizationEvaluation._() : super._();

  factory _ImmunizationEvaluation.fromJson(Map<String, dynamic> json) =
      _$ImmunizationEvaluationImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ImmunizationEvaluation)
  R4ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.
  FhirCode? get language;
  @override

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] A unique identifier assigned to this immunization evaluation
  ///  record.
  List<Identifier>? get identifier;
  @override

  /// [status] Indicates the current status of the evaluation of the
  ///  vaccination administration event.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [patient] The individual for whom the evaluation is being done.
  Reference get patient;
  @override

  /// [date] The date the evaluation of the vaccine administration event was
  ///  performed.
  FhirDateTime? get date;
  @override

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override

  /// [authority] Indicates the authority who published the protocol (e.g.
  ///  ACIP).
  Reference? get authority;
  @override

  /// [targetDisease] The vaccine preventable disease the dose is being
  ///  evaluated against.
  CodeableConcept get targetDisease;
  @override

  /// [immunizationEvent] The vaccine administration event being evaluated.
  Reference get immunizationEvent;
  @override

  /// [doseStatus] Indicates if the dose is valid or not valid with respect to
  ///  the published recommendations.
  CodeableConcept get doseStatus;
  @override

  /// [doseStatusReason] Provides an explanation as to why the vaccine
  /// administration event is valid or not relative to the published
  ///  recommendations.
  List<CodeableConcept>? get doseStatusReason;
  @override

  /// [description] Additional information about the evaluation.
  String? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [series] One possible path to achieve presumed immunity against a disease
  ///  - within the context of an authority.
  String? get series;
  @override

  /// [seriesElement] Extensions for series
  @JsonKey(name: '_series')
  PrimitiveElement? get seriesElement;
  @override

  /// [doseNumberPositiveInt] Nominal position in a series.
  FhirPositiveInt? get doseNumberPositiveInt;
  @override
  @JsonKey(name: '_doseNumberPositiveInt')
  PrimitiveElement? get doseNumberPositiveIntElement;
  @override

  /// [doseNumberString] Nominal position in a series.
  String? get doseNumberString;
  @override

  /// [doseNumberStringElement] Extensions for doseNumberString
  @JsonKey(name: '_doseNumberString')
  PrimitiveElement? get doseNumberStringElement;
  @override

  /// [seriesDosesPositiveInt] The recommended number of doses to achieve
  ///  immunity.
  FhirPositiveInt? get seriesDosesPositiveInt;
  @override
  @JsonKey(name: '_seriesDosesPositiveInt')
  PrimitiveElement? get seriesDosesPositiveIntElement;
  @override

  /// [seriesDosesString] The recommended number of doses to achieve immunity.
  String? get seriesDosesString;
  @override

  /// [seriesDosesStringElement] Extensions for seriesDosesString
  @JsonKey(name: '_seriesDosesString')
  PrimitiveElement? get seriesDosesStringElement;
  @override
  @JsonKey(ignore: true)
  _$$ImmunizationEvaluationImplCopyWith<_$ImmunizationEvaluationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
