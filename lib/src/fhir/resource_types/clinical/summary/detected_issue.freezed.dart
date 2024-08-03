// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detected_issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetectedIssue _$DetectedIssueFromJson(Map<String, dynamic> json) {
  return _DetectedIssue.fromJson(json);
}

/// @nodoc
mixin _$DetectedIssue {
  @JsonKey(unknownEnumValue: R4ResourceType.DetectedIssue)
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
  CodeableConcept? get code => throw _privateConstructorUsedError;
  FhirCode? get severity => throw _privateConstructorUsedError;
  @JsonKey(name: '_severity')
  PrimitiveElement? get severityElement => throw _privateConstructorUsedError;
  Reference? get patient => throw _privateConstructorUsedError;
  FhirDateTime? get identifiedDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: '_identifiedDateTime')
  PrimitiveElement? get identifiedDateTimeElement =>
      throw _privateConstructorUsedError;
  Period? get identifiedPeriod => throw _privateConstructorUsedError;
  Reference? get author => throw _privateConstructorUsedError;
  List<Reference>? get implicated => throw _privateConstructorUsedError;
  List<DetectedIssueEvidence>? get evidence =>
      throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  @JsonKey(name: '_detail')
  PrimitiveElement? get detailElement => throw _privateConstructorUsedError;
  FhirUri? get reference => throw _privateConstructorUsedError;
  @JsonKey(name: '_reference')
  PrimitiveElement? get referenceElement => throw _privateConstructorUsedError;
  List<DetectedIssueMitigation>? get mitigation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetectedIssueCopyWith<DetectedIssue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetectedIssueCopyWith<$Res> {
  factory $DetectedIssueCopyWith(
          DetectedIssue value, $Res Function(DetectedIssue) then) =
      _$DetectedIssueCopyWithImpl<$Res, DetectedIssue>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.DetectedIssue)
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
      CodeableConcept? code,
      FhirCode? severity,
      @JsonKey(name: '_severity') PrimitiveElement? severityElement,
      Reference? patient,
      FhirDateTime? identifiedDateTime,
      @JsonKey(name: '_identifiedDateTime')
      PrimitiveElement? identifiedDateTimeElement,
      Period? identifiedPeriod,
      Reference? author,
      List<Reference>? implicated,
      List<DetectedIssueEvidence>? evidence,
      String? detail,
      @JsonKey(name: '_detail') PrimitiveElement? detailElement,
      FhirUri? reference,
      @JsonKey(name: '_reference') PrimitiveElement? referenceElement,
      List<DetectedIssueMitigation>? mitigation});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res>? get code;
  $ReferenceCopyWith<$Res>? get patient;
  $PeriodCopyWith<$Res>? get identifiedPeriod;
  $ReferenceCopyWith<$Res>? get author;
}

/// @nodoc
class _$DetectedIssueCopyWithImpl<$Res, $Val extends DetectedIssue>
    implements $DetectedIssueCopyWith<$Res> {
  _$DetectedIssueCopyWithImpl(this._value, this._then);

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
    Object? code = freezed,
    Object? severity = freezed,
    Object? severityElement = freezed,
    Object? patient = freezed,
    Object? identifiedDateTime = freezed,
    Object? identifiedDateTimeElement = freezed,
    Object? identifiedPeriod = freezed,
    Object? author = freezed,
    Object? implicated = freezed,
    Object? evidence = freezed,
    Object? detail = freezed,
    Object? detailElement = freezed,
    Object? reference = freezed,
    Object? referenceElement = freezed,
    Object? mitigation = freezed,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      severityElement: freezed == severityElement
          ? _value.severityElement
          : severityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference?,
      identifiedDateTime: freezed == identifiedDateTime
          ? _value.identifiedDateTime
          : identifiedDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      identifiedDateTimeElement: freezed == identifiedDateTimeElement
          ? _value.identifiedDateTimeElement
          : identifiedDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      identifiedPeriod: freezed == identifiedPeriod
          ? _value.identifiedPeriod
          : identifiedPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Reference?,
      implicated: freezed == implicated
          ? _value.implicated
          : implicated // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      evidence: freezed == evidence
          ? _value.evidence
          : evidence // ignore: cast_nullable_to_non_nullable
              as List<DetectedIssueEvidence>?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      detailElement: freezed == detailElement
          ? _value.detailElement
          : detailElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      referenceElement: freezed == referenceElement
          ? _value.referenceElement
          : referenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      mitigation: freezed == mitigation
          ? _value.mitigation
          : mitigation // ignore: cast_nullable_to_non_nullable
              as List<DetectedIssueMitigation>?,
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
  $ReferenceCopyWith<$Res>? get patient {
    if (_value.patient == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.patient!, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get identifiedPeriod {
    if (_value.identifiedPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.identifiedPeriod!, (value) {
      return _then(_value.copyWith(identifiedPeriod: value) as $Val);
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
}

/// @nodoc
abstract class _$$DetectedIssueImplCopyWith<$Res>
    implements $DetectedIssueCopyWith<$Res> {
  factory _$$DetectedIssueImplCopyWith(
          _$DetectedIssueImpl value, $Res Function(_$DetectedIssueImpl) then) =
      __$$DetectedIssueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.DetectedIssue)
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
      CodeableConcept? code,
      FhirCode? severity,
      @JsonKey(name: '_severity') PrimitiveElement? severityElement,
      Reference? patient,
      FhirDateTime? identifiedDateTime,
      @JsonKey(name: '_identifiedDateTime')
      PrimitiveElement? identifiedDateTimeElement,
      Period? identifiedPeriod,
      Reference? author,
      List<Reference>? implicated,
      List<DetectedIssueEvidence>? evidence,
      String? detail,
      @JsonKey(name: '_detail') PrimitiveElement? detailElement,
      FhirUri? reference,
      @JsonKey(name: '_reference') PrimitiveElement? referenceElement,
      List<DetectedIssueMitigation>? mitigation});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res>? get code;
  @override
  $ReferenceCopyWith<$Res>? get patient;
  @override
  $PeriodCopyWith<$Res>? get identifiedPeriod;
  @override
  $ReferenceCopyWith<$Res>? get author;
}

/// @nodoc
class __$$DetectedIssueImplCopyWithImpl<$Res>
    extends _$DetectedIssueCopyWithImpl<$Res, _$DetectedIssueImpl>
    implements _$$DetectedIssueImplCopyWith<$Res> {
  __$$DetectedIssueImplCopyWithImpl(
      _$DetectedIssueImpl _value, $Res Function(_$DetectedIssueImpl) _then)
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
    Object? code = freezed,
    Object? severity = freezed,
    Object? severityElement = freezed,
    Object? patient = freezed,
    Object? identifiedDateTime = freezed,
    Object? identifiedDateTimeElement = freezed,
    Object? identifiedPeriod = freezed,
    Object? author = freezed,
    Object? implicated = freezed,
    Object? evidence = freezed,
    Object? detail = freezed,
    Object? detailElement = freezed,
    Object? reference = freezed,
    Object? referenceElement = freezed,
    Object? mitigation = freezed,
  }) {
    return _then(_$DetectedIssueImpl(
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      severityElement: freezed == severityElement
          ? _value.severityElement
          : severityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference?,
      identifiedDateTime: freezed == identifiedDateTime
          ? _value.identifiedDateTime
          : identifiedDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      identifiedDateTimeElement: freezed == identifiedDateTimeElement
          ? _value.identifiedDateTimeElement
          : identifiedDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      identifiedPeriod: freezed == identifiedPeriod
          ? _value.identifiedPeriod
          : identifiedPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Reference?,
      implicated: freezed == implicated
          ? _value._implicated
          : implicated // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      evidence: freezed == evidence
          ? _value._evidence
          : evidence // ignore: cast_nullable_to_non_nullable
              as List<DetectedIssueEvidence>?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      detailElement: freezed == detailElement
          ? _value.detailElement
          : detailElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      referenceElement: freezed == referenceElement
          ? _value.referenceElement
          : referenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      mitigation: freezed == mitigation
          ? _value._mitigation
          : mitigation // ignore: cast_nullable_to_non_nullable
              as List<DetectedIssueMitigation>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetectedIssueImpl extends _DetectedIssue {
  const _$DetectedIssueImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.DetectedIssue)
      this.resourceType = R4ResourceType.DetectedIssue,
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
      this.code,
      this.severity,
      @JsonKey(name: '_severity') this.severityElement,
      this.patient,
      this.identifiedDateTime,
      @JsonKey(name: '_identifiedDateTime') this.identifiedDateTimeElement,
      this.identifiedPeriod,
      this.author,
      final List<Reference>? implicated,
      final List<DetectedIssueEvidence>? evidence,
      this.detail,
      @JsonKey(name: '_detail') this.detailElement,
      this.reference,
      @JsonKey(name: '_reference') this.referenceElement,
      final List<DetectedIssueMitigation>? mitigation})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _implicated = implicated,
        _evidence = evidence,
        _mitigation = mitigation,
        super._();

  factory _$DetectedIssueImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetectedIssueImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.DetectedIssue)
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
  final CodeableConcept? code;
  @override
  final FhirCode? severity;
  @override
  @JsonKey(name: '_severity')
  final PrimitiveElement? severityElement;
  @override
  final Reference? patient;
  @override
  final FhirDateTime? identifiedDateTime;
  @override
  @JsonKey(name: '_identifiedDateTime')
  final PrimitiveElement? identifiedDateTimeElement;
  @override
  final Period? identifiedPeriod;
  @override
  final Reference? author;
  final List<Reference>? _implicated;
  @override
  List<Reference>? get implicated {
    final value = _implicated;
    if (value == null) return null;
    if (_implicated is EqualUnmodifiableListView) return _implicated;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DetectedIssueEvidence>? _evidence;
  @override
  List<DetectedIssueEvidence>? get evidence {
    final value = _evidence;
    if (value == null) return null;
    if (_evidence is EqualUnmodifiableListView) return _evidence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? detail;
  @override
  @JsonKey(name: '_detail')
  final PrimitiveElement? detailElement;
  @override
  final FhirUri? reference;
  @override
  @JsonKey(name: '_reference')
  final PrimitiveElement? referenceElement;
  final List<DetectedIssueMitigation>? _mitigation;
  @override
  List<DetectedIssueMitigation>? get mitigation {
    final value = _mitigation;
    if (value == null) return null;
    if (_mitigation is EqualUnmodifiableListView) return _mitigation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetectedIssueImpl &&
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
            (identical(other.code, code) || other.code == code) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.severityElement, severityElement) ||
                other.severityElement == severityElement) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.identifiedDateTime, identifiedDateTime) ||
                other.identifiedDateTime == identifiedDateTime) &&
            (identical(other.identifiedDateTimeElement,
                    identifiedDateTimeElement) ||
                other.identifiedDateTimeElement == identifiedDateTimeElement) &&
            (identical(other.identifiedPeriod, identifiedPeriod) ||
                other.identifiedPeriod == identifiedPeriod) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality()
                .equals(other._implicated, _implicated) &&
            const DeepCollectionEquality().equals(other._evidence, _evidence) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.detailElement, detailElement) ||
                other.detailElement == detailElement) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.referenceElement, referenceElement) ||
                other.referenceElement == referenceElement) &&
            const DeepCollectionEquality()
                .equals(other._mitigation, _mitigation));
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
        code,
        severity,
        severityElement,
        patient,
        identifiedDateTime,
        identifiedDateTimeElement,
        identifiedPeriod,
        author,
        const DeepCollectionEquality().hash(_implicated),
        const DeepCollectionEquality().hash(_evidence),
        detail,
        detailElement,
        reference,
        referenceElement,
        const DeepCollectionEquality().hash(_mitigation)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetectedIssueImplCopyWith<_$DetectedIssueImpl> get copyWith =>
      __$$DetectedIssueImplCopyWithImpl<_$DetectedIssueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetectedIssueImplToJson(
      this,
    );
  }
}

abstract class _DetectedIssue extends DetectedIssue {
  const factory _DetectedIssue(
      {@JsonKey(unknownEnumValue: R4ResourceType.DetectedIssue)
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
      final CodeableConcept? code,
      final FhirCode? severity,
      @JsonKey(name: '_severity') final PrimitiveElement? severityElement,
      final Reference? patient,
      final FhirDateTime? identifiedDateTime,
      @JsonKey(name: '_identifiedDateTime')
      final PrimitiveElement? identifiedDateTimeElement,
      final Period? identifiedPeriod,
      final Reference? author,
      final List<Reference>? implicated,
      final List<DetectedIssueEvidence>? evidence,
      final String? detail,
      @JsonKey(name: '_detail') final PrimitiveElement? detailElement,
      final FhirUri? reference,
      @JsonKey(name: '_reference') final PrimitiveElement? referenceElement,
      final List<DetectedIssueMitigation>? mitigation}) = _$DetectedIssueImpl;
  const _DetectedIssue._() : super._();

  factory _DetectedIssue.fromJson(Map<String, dynamic> json) =
      _$DetectedIssueImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.DetectedIssue)
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
  CodeableConcept? get code;
  @override
  FhirCode? get severity;
  @override
  @JsonKey(name: '_severity')
  PrimitiveElement? get severityElement;
  @override
  Reference? get patient;
  @override
  FhirDateTime? get identifiedDateTime;
  @override
  @JsonKey(name: '_identifiedDateTime')
  PrimitiveElement? get identifiedDateTimeElement;
  @override
  Period? get identifiedPeriod;
  @override
  Reference? get author;
  @override
  List<Reference>? get implicated;
  @override
  List<DetectedIssueEvidence>? get evidence;
  @override
  String? get detail;
  @override
  @JsonKey(name: '_detail')
  PrimitiveElement? get detailElement;
  @override
  FhirUri? get reference;
  @override
  @JsonKey(name: '_reference')
  PrimitiveElement? get referenceElement;
  @override
  List<DetectedIssueMitigation>? get mitigation;
  @override
  @JsonKey(ignore: true)
  _$$DetectedIssueImplCopyWith<_$DetectedIssueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetectedIssueEvidence _$DetectedIssueEvidenceFromJson(
    Map<String, dynamic> json) {
  return _DetectedIssueEvidence.fromJson(json);
}

/// @nodoc
mixin _$DetectedIssueEvidence {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  List<CodeableConcept>? get code => throw _privateConstructorUsedError;
  List<Reference>? get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetectedIssueEvidenceCopyWith<DetectedIssueEvidence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetectedIssueEvidenceCopyWith<$Res> {
  factory $DetectedIssueEvidenceCopyWith(DetectedIssueEvidence value,
          $Res Function(DetectedIssueEvidence) then) =
      _$DetectedIssueEvidenceCopyWithImpl<$Res, DetectedIssueEvidence>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<CodeableConcept>? code,
      List<Reference>? detail});
}

/// @nodoc
class _$DetectedIssueEvidenceCopyWithImpl<$Res,
        $Val extends DetectedIssueEvidence>
    implements $DetectedIssueEvidenceCopyWith<$Res> {
  _$DetectedIssueEvidenceCopyWithImpl(this._value, this._then);

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
    Object? code = freezed,
    Object? detail = freezed,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetectedIssueEvidenceImplCopyWith<$Res>
    implements $DetectedIssueEvidenceCopyWith<$Res> {
  factory _$$DetectedIssueEvidenceImplCopyWith(
          _$DetectedIssueEvidenceImpl value,
          $Res Function(_$DetectedIssueEvidenceImpl) then) =
      __$$DetectedIssueEvidenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<CodeableConcept>? code,
      List<Reference>? detail});
}

/// @nodoc
class __$$DetectedIssueEvidenceImplCopyWithImpl<$Res>
    extends _$DetectedIssueEvidenceCopyWithImpl<$Res,
        _$DetectedIssueEvidenceImpl>
    implements _$$DetectedIssueEvidenceImplCopyWith<$Res> {
  __$$DetectedIssueEvidenceImplCopyWithImpl(_$DetectedIssueEvidenceImpl _value,
      $Res Function(_$DetectedIssueEvidenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? detail = freezed,
  }) {
    return _then(_$DetectedIssueEvidenceImpl(
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
      code: freezed == code
          ? _value._code
          : code // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      detail: freezed == detail
          ? _value._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetectedIssueEvidenceImpl extends _DetectedIssueEvidence {
  const _$DetectedIssueEvidenceImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<CodeableConcept>? code,
      final List<Reference>? detail})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _code = code,
        _detail = detail,
        super._();

  factory _$DetectedIssueEvidenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetectedIssueEvidenceImplFromJson(json);

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

  final List<CodeableConcept>? _code;
  @override
  List<CodeableConcept>? get code {
    final value = _code;
    if (value == null) return null;
    if (_code is EqualUnmodifiableListView) return _code;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reference>? _detail;
  @override
  List<Reference>? get detail {
    final value = _detail;
    if (value == null) return null;
    if (_detail is EqualUnmodifiableListView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetectedIssueEvidenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other._code, _code) &&
            const DeepCollectionEquality().equals(other._detail, _detail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_code),
      const DeepCollectionEquality().hash(_detail));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetectedIssueEvidenceImplCopyWith<_$DetectedIssueEvidenceImpl>
      get copyWith => __$$DetectedIssueEvidenceImplCopyWithImpl<
          _$DetectedIssueEvidenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetectedIssueEvidenceImplToJson(
      this,
    );
  }
}

abstract class _DetectedIssueEvidence extends DetectedIssueEvidence {
  const factory _DetectedIssueEvidence(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<CodeableConcept>? code,
      final List<Reference>? detail}) = _$DetectedIssueEvidenceImpl;
  const _DetectedIssueEvidence._() : super._();

  factory _DetectedIssueEvidence.fromJson(Map<String, dynamic> json) =
      _$DetectedIssueEvidenceImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  List<CodeableConcept>? get code;
  @override
  List<Reference>? get detail;
  @override
  @JsonKey(ignore: true)
  _$$DetectedIssueEvidenceImplCopyWith<_$DetectedIssueEvidenceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DetectedIssueMitigation _$DetectedIssueMitigationFromJson(
    Map<String, dynamic> json) {
  return _DetectedIssueMitigation.fromJson(json);
}

/// @nodoc
mixin _$DetectedIssueMitigation {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept get action => throw _privateConstructorUsedError;
  FhirDateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;
  Reference? get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetectedIssueMitigationCopyWith<DetectedIssueMitigation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetectedIssueMitigationCopyWith<$Res> {
  factory $DetectedIssueMitigationCopyWith(DetectedIssueMitigation value,
          $Res Function(DetectedIssueMitigation) then) =
      _$DetectedIssueMitigationCopyWithImpl<$Res, DetectedIssueMitigation>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept action,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      Reference? author});

  $CodeableConceptCopyWith<$Res> get action;
  $ReferenceCopyWith<$Res>? get author;
}

/// @nodoc
class _$DetectedIssueMitigationCopyWithImpl<$Res,
        $Val extends DetectedIssueMitigation>
    implements $DetectedIssueMitigationCopyWith<$Res> {
  _$DetectedIssueMitigationCopyWithImpl(this._value, this._then);

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
    Object? action = null,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? author = freezed,
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
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get action {
    return $CodeableConceptCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value) as $Val);
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
}

/// @nodoc
abstract class _$$DetectedIssueMitigationImplCopyWith<$Res>
    implements $DetectedIssueMitigationCopyWith<$Res> {
  factory _$$DetectedIssueMitigationImplCopyWith(
          _$DetectedIssueMitigationImpl value,
          $Res Function(_$DetectedIssueMitigationImpl) then) =
      __$$DetectedIssueMitigationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept action,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      Reference? author});

  @override
  $CodeableConceptCopyWith<$Res> get action;
  @override
  $ReferenceCopyWith<$Res>? get author;
}

/// @nodoc
class __$$DetectedIssueMitigationImplCopyWithImpl<$Res>
    extends _$DetectedIssueMitigationCopyWithImpl<$Res,
        _$DetectedIssueMitigationImpl>
    implements _$$DetectedIssueMitigationImplCopyWith<$Res> {
  __$$DetectedIssueMitigationImplCopyWithImpl(
      _$DetectedIssueMitigationImpl _value,
      $Res Function(_$DetectedIssueMitigationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? action = null,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? author = freezed,
  }) {
    return _then(_$DetectedIssueMitigationImpl(
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
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetectedIssueMitigationImpl extends _DetectedIssueMitigation {
  const _$DetectedIssueMitigationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.action,
      this.date,
      @JsonKey(name: '_date') this.dateElement,
      this.author})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$DetectedIssueMitigationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetectedIssueMitigationImplFromJson(json);

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
  final CodeableConcept action;
  @override
  final FhirDateTime? date;
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;
  @override
  final Reference? author;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetectedIssueMitigationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateElement, dateElement) ||
                other.dateElement == dateElement) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      action,
      date,
      dateElement,
      author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetectedIssueMitigationImplCopyWith<_$DetectedIssueMitigationImpl>
      get copyWith => __$$DetectedIssueMitigationImplCopyWithImpl<
          _$DetectedIssueMitigationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetectedIssueMitigationImplToJson(
      this,
    );
  }
}

abstract class _DetectedIssueMitigation extends DetectedIssueMitigation {
  const factory _DetectedIssueMitigation(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept action,
      final FhirDateTime? date,
      @JsonKey(name: '_date') final PrimitiveElement? dateElement,
      final Reference? author}) = _$DetectedIssueMitigationImpl;
  const _DetectedIssueMitigation._() : super._();

  factory _DetectedIssueMitigation.fromJson(Map<String, dynamic> json) =
      _$DetectedIssueMitigationImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept get action;
  @override
  FhirDateTime? get date;
  @override
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override
  Reference? get author;
  @override
  @JsonKey(ignore: true)
  _$$DetectedIssueMitigationImplCopyWith<_$DetectedIssueMitigationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
