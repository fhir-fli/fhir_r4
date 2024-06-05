// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measure_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeasureReport _$MeasureReportFromJson(Map<String, dynamic> json) {
  return _MeasureReport.fromJson(json);
}

/// @nodoc
mixin _$MeasureReport {
  @JsonKey(unknownEnumValue: R4ResourceType.MeasureReport)
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

  /// [identifier] A formal identifier that is used to identify this
  /// MeasureReport when it is represented in other formats or referenced in a
  ///  specification, model, design or an instance.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [status] The MeasureReport status. No data will be available until the
  ///  MeasureReport status is complete.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [type] The type of measure report. This may be an individual report,
  /// which provides the score for the measure for an individual member of the
  /// population; a subject-listing, which returns the list of members that meet
  /// the various criteria in the measure; a summary report, which returns a
  /// population count for each of the criteria in the measure; or a
  /// data-collection, which enables the MeasureReport to be used to exchange
  ///  the data-of-interest for a quality measure.
  FhirCode? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [measure] A reference to the Measure that was calculated to produce this
  ///  report.
  FhirCanonical get measure => throw _privateConstructorUsedError;

  /// [subject] Optional subject identifying the individual or individuals the
  ///  report is for.
  Reference? get subject => throw _privateConstructorUsedError;

  /// [date] The date this measure report was generated.
  FhirDateTime? get date => throw _privateConstructorUsedError;

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [reporter] The individual, location, or organization that is reporting
  ///  the data.
  Reference? get reporter => throw _privateConstructorUsedError;

  /// [period] The reporting period for which the report was calculated.
  Period get period => throw _privateConstructorUsedError;

  /// [improvementNotation] Whether improvement in the measure is noted by an
  ///  increase or decrease in the measure score.
  CodeableConcept? get improvementNotation =>
      throw _privateConstructorUsedError;

  /// [group] The results of the calculation, one for each population group in
  ///  the measure.
  List<MeasureReportGroup>? get group => throw _privateConstructorUsedError;

  /// [evaluatedResource] A reference to a Bundle containing the Resources that
  ///  were used in the calculation of this measure.
  List<Reference>? get evaluatedResource => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasureReportCopyWith<MeasureReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureReportCopyWith<$Res> {
  factory $MeasureReportCopyWith(
          MeasureReport value, $Res Function(MeasureReport) then) =
      _$MeasureReportCopyWithImpl<$Res, MeasureReport>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.MeasureReport)
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
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirCanonical measure,
      Reference? subject,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      Reference? reporter,
      Period period,
      CodeableConcept? improvementNotation,
      List<MeasureReportGroup>? group,
      List<Reference>? evaluatedResource});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $ReferenceCopyWith<$Res>? get subject;
  $ReferenceCopyWith<$Res>? get reporter;
  $PeriodCopyWith<$Res> get period;
  $CodeableConceptCopyWith<$Res>? get improvementNotation;
}

/// @nodoc
class _$MeasureReportCopyWithImpl<$Res, $Val extends MeasureReport>
    implements $MeasureReportCopyWith<$Res> {
  _$MeasureReportCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? measure = null,
    Object? subject = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? reporter = freezed,
    Object? period = null,
    Object? improvementNotation = freezed,
    Object? group = freezed,
    Object? evaluatedResource = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      measure: null == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Reference?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      reporter: freezed == reporter
          ? _value.reporter
          : reporter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
      improvementNotation: freezed == improvementNotation
          ? _value.improvementNotation
          : improvementNotation // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as List<MeasureReportGroup>?,
      evaluatedResource: freezed == evaluatedResource
          ? _value.evaluatedResource
          : evaluatedResource // ignore: cast_nullable_to_non_nullable
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
  $ReferenceCopyWith<$Res>? get subject {
    if (_value.subject == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.subject!, (value) {
      return _then(_value.copyWith(subject: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get reporter {
    if (_value.reporter == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.reporter!, (value) {
      return _then(_value.copyWith(reporter: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res> get period {
    return $PeriodCopyWith<$Res>(_value.period, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get improvementNotation {
    if (_value.improvementNotation == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.improvementNotation!, (value) {
      return _then(_value.copyWith(improvementNotation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeasureReportImplCopyWith<$Res>
    implements $MeasureReportCopyWith<$Res> {
  factory _$$MeasureReportImplCopyWith(
          _$MeasureReportImpl value, $Res Function(_$MeasureReportImpl) then) =
      __$$MeasureReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.MeasureReport)
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
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirCanonical measure,
      Reference? subject,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      Reference? reporter,
      Period period,
      CodeableConcept? improvementNotation,
      List<MeasureReportGroup>? group,
      List<Reference>? evaluatedResource});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ReferenceCopyWith<$Res>? get subject;
  @override
  $ReferenceCopyWith<$Res>? get reporter;
  @override
  $PeriodCopyWith<$Res> get period;
  @override
  $CodeableConceptCopyWith<$Res>? get improvementNotation;
}

/// @nodoc
class __$$MeasureReportImplCopyWithImpl<$Res>
    extends _$MeasureReportCopyWithImpl<$Res, _$MeasureReportImpl>
    implements _$$MeasureReportImplCopyWith<$Res> {
  __$$MeasureReportImplCopyWithImpl(
      _$MeasureReportImpl _value, $Res Function(_$MeasureReportImpl) _then)
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
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? measure = null,
    Object? subject = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? reporter = freezed,
    Object? period = null,
    Object? improvementNotation = freezed,
    Object? group = freezed,
    Object? evaluatedResource = freezed,
  }) {
    return _then(_$MeasureReportImpl(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      measure: null == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Reference?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      reporter: freezed == reporter
          ? _value.reporter
          : reporter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
      improvementNotation: freezed == improvementNotation
          ? _value.improvementNotation
          : improvementNotation // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      group: freezed == group
          ? _value._group
          : group // ignore: cast_nullable_to_non_nullable
              as List<MeasureReportGroup>?,
      evaluatedResource: freezed == evaluatedResource
          ? _value._evaluatedResource
          : evaluatedResource // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasureReportImpl extends _MeasureReport {
  const _$MeasureReportImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.MeasureReport)
      this.resourceType = R4ResourceType.MeasureReport,
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
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      required this.measure,
      this.subject,
      this.date,
      @JsonKey(name: '_date') this.dateElement,
      this.reporter,
      required this.period,
      this.improvementNotation,
      final List<MeasureReportGroup>? group,
      final List<Reference>? evaluatedResource})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _group = group,
        _evaluatedResource = evaluatedResource,
        super._();

  factory _$MeasureReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeasureReportImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.MeasureReport)
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

  /// [identifier] A formal identifier that is used to identify this
  /// MeasureReport when it is represented in other formats or referenced in a
  ///  specification, model, design or an instance.
  final List<Identifier>? _identifier;

  /// [identifier] A formal identifier that is used to identify this
  /// MeasureReport when it is represented in other formats or referenced in a
  ///  specification, model, design or an instance.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The MeasureReport status. No data will be available until the
  ///  MeasureReport status is complete.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [type] The type of measure report. This may be an individual report,
  /// which provides the score for the measure for an individual member of the
  /// population; a subject-listing, which returns the list of members that meet
  /// the various criteria in the measure; a summary report, which returns a
  /// population count for each of the criteria in the measure; or a
  /// data-collection, which enables the MeasureReport to be used to exchange
  ///  the data-of-interest for a quality measure.
  @override
  final FhirCode? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [measure] A reference to the Measure that was calculated to produce this
  ///  report.
  @override
  final FhirCanonical measure;

  /// [subject] Optional subject identifying the individual or individuals the
  ///  report is for.
  @override
  final Reference? subject;

  /// [date] The date this measure report was generated.
  @override
  final FhirDateTime? date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [reporter] The individual, location, or organization that is reporting
  ///  the data.
  @override
  final Reference? reporter;

  /// [period] The reporting period for which the report was calculated.
  @override
  final Period period;

  /// [improvementNotation] Whether improvement in the measure is noted by an
  ///  increase or decrease in the measure score.
  @override
  final CodeableConcept? improvementNotation;

  /// [group] The results of the calculation, one for each population group in
  ///  the measure.
  final List<MeasureReportGroup>? _group;

  /// [group] The results of the calculation, one for each population group in
  ///  the measure.
  @override
  List<MeasureReportGroup>? get group {
    final value = _group;
    if (value == null) return null;
    if (_group is EqualUnmodifiableListView) return _group;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [evaluatedResource] A reference to a Bundle containing the Resources that
  ///  were used in the calculation of this measure.
  final List<Reference>? _evaluatedResource;

  /// [evaluatedResource] A reference to a Bundle containing the Resources that
  ///  were used in the calculation of this measure.
  @override
  List<Reference>? get evaluatedResource {
    final value = _evaluatedResource;
    if (value == null) return null;
    if (_evaluatedResource is EqualUnmodifiableListView)
      return _evaluatedResource;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MeasureReport(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, status: $status, statusElement: $statusElement, type: $type, typeElement: $typeElement, measure: $measure, subject: $subject, date: $date, dateElement: $dateElement, reporter: $reporter, period: $period, improvementNotation: $improvementNotation, group: $group, evaluatedResource: $evaluatedResource)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasureReportImpl &&
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
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.measure, measure) || other.measure == measure) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateElement, dateElement) ||
                other.dateElement == dateElement) &&
            (identical(other.reporter, reporter) ||
                other.reporter == reporter) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.improvementNotation, improvementNotation) ||
                other.improvementNotation == improvementNotation) &&
            const DeepCollectionEquality().equals(other._group, _group) &&
            const DeepCollectionEquality()
                .equals(other._evaluatedResource, _evaluatedResource));
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
        type,
        typeElement,
        measure,
        subject,
        date,
        dateElement,
        reporter,
        period,
        improvementNotation,
        const DeepCollectionEquality().hash(_group),
        const DeepCollectionEquality().hash(_evaluatedResource)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasureReportImplCopyWith<_$MeasureReportImpl> get copyWith =>
      __$$MeasureReportImplCopyWithImpl<_$MeasureReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasureReportImplToJson(
      this,
    );
  }
}

abstract class _MeasureReport extends MeasureReport {
  const factory _MeasureReport(
      {@JsonKey(unknownEnumValue: R4ResourceType.MeasureReport)
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
      final FhirCode? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      required final FhirCanonical measure,
      final Reference? subject,
      final FhirDateTime? date,
      @JsonKey(name: '_date') final PrimitiveElement? dateElement,
      final Reference? reporter,
      required final Period period,
      final CodeableConcept? improvementNotation,
      final List<MeasureReportGroup>? group,
      final List<Reference>? evaluatedResource}) = _$MeasureReportImpl;
  const _MeasureReport._() : super._();

  factory _MeasureReport.fromJson(Map<String, dynamic> json) =
      _$MeasureReportImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.MeasureReport)
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

  /// [identifier] A formal identifier that is used to identify this
  /// MeasureReport when it is represented in other formats or referenced in a
  ///  specification, model, design or an instance.
  List<Identifier>? get identifier;
  @override

  /// [status] The MeasureReport status. No data will be available until the
  ///  MeasureReport status is complete.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [type] The type of measure report. This may be an individual report,
  /// which provides the score for the measure for an individual member of the
  /// population; a subject-listing, which returns the list of members that meet
  /// the various criteria in the measure; a summary report, which returns a
  /// population count for each of the criteria in the measure; or a
  /// data-collection, which enables the MeasureReport to be used to exchange
  ///  the data-of-interest for a quality measure.
  FhirCode? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [measure] A reference to the Measure that was calculated to produce this
  ///  report.
  FhirCanonical get measure;
  @override

  /// [subject] Optional subject identifying the individual or individuals the
  ///  report is for.
  Reference? get subject;
  @override

  /// [date] The date this measure report was generated.
  FhirDateTime? get date;
  @override

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override

  /// [reporter] The individual, location, or organization that is reporting
  ///  the data.
  Reference? get reporter;
  @override

  /// [period] The reporting period for which the report was calculated.
  Period get period;
  @override

  /// [improvementNotation] Whether improvement in the measure is noted by an
  ///  increase or decrease in the measure score.
  CodeableConcept? get improvementNotation;
  @override

  /// [group] The results of the calculation, one for each population group in
  ///  the measure.
  List<MeasureReportGroup>? get group;
  @override

  /// [evaluatedResource] A reference to a Bundle containing the Resources that
  ///  were used in the calculation of this measure.
  List<Reference>? get evaluatedResource;
  @override
  @JsonKey(ignore: true)
  _$$MeasureReportImplCopyWith<_$MeasureReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MeasureReportGroup _$MeasureReportGroupFromJson(Map<String, dynamic> json) {
  return _MeasureReportGroup.fromJson(json);
}

/// @nodoc
mixin _$MeasureReportGroup {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [code] The meaning of the population group as defined in the measure
  ///  definition.
  CodeableConcept? get code => throw _privateConstructorUsedError;

  /// [population] The populations that make up the population group, one for
  ///  each type of population appropriate for the measure.
  List<MeasureReportPopulation>? get population =>
      throw _privateConstructorUsedError;

  /// [measureScore] The measure score for this population group, calculated as
  /// appropriate for the measure type and scoring method, and based on the
  ///  contents of the populations defined in the group.
  Quantity? get measureScore => throw _privateConstructorUsedError;

  /// [stratifier] When a measure includes multiple stratifiers, there will be
  ///  a stratifier group for each stratifier defined by the measure.
  List<MeasureReportStratifier>? get stratifier =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasureReportGroupCopyWith<MeasureReportGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureReportGroupCopyWith<$Res> {
  factory $MeasureReportGroupCopyWith(
          MeasureReportGroup value, $Res Function(MeasureReportGroup) then) =
      _$MeasureReportGroupCopyWithImpl<$Res, MeasureReportGroup>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? code,
      List<MeasureReportPopulation>? population,
      Quantity? measureScore,
      List<MeasureReportStratifier>? stratifier});

  $CodeableConceptCopyWith<$Res>? get code;
  $QuantityCopyWith<$Res>? get measureScore;
}

/// @nodoc
class _$MeasureReportGroupCopyWithImpl<$Res, $Val extends MeasureReportGroup>
    implements $MeasureReportGroupCopyWith<$Res> {
  _$MeasureReportGroupCopyWithImpl(this._value, this._then);

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
    Object? population = freezed,
    Object? measureScore = freezed,
    Object? stratifier = freezed,
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
              as CodeableConcept?,
      population: freezed == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as List<MeasureReportPopulation>?,
      measureScore: freezed == measureScore
          ? _value.measureScore
          : measureScore // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      stratifier: freezed == stratifier
          ? _value.stratifier
          : stratifier // ignore: cast_nullable_to_non_nullable
              as List<MeasureReportStratifier>?,
    ) as $Val);
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
  $QuantityCopyWith<$Res>? get measureScore {
    if (_value.measureScore == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.measureScore!, (value) {
      return _then(_value.copyWith(measureScore: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeasureReportGroupImplCopyWith<$Res>
    implements $MeasureReportGroupCopyWith<$Res> {
  factory _$$MeasureReportGroupImplCopyWith(_$MeasureReportGroupImpl value,
          $Res Function(_$MeasureReportGroupImpl) then) =
      __$$MeasureReportGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? code,
      List<MeasureReportPopulation>? population,
      Quantity? measureScore,
      List<MeasureReportStratifier>? stratifier});

  @override
  $CodeableConceptCopyWith<$Res>? get code;
  @override
  $QuantityCopyWith<$Res>? get measureScore;
}

/// @nodoc
class __$$MeasureReportGroupImplCopyWithImpl<$Res>
    extends _$MeasureReportGroupCopyWithImpl<$Res, _$MeasureReportGroupImpl>
    implements _$$MeasureReportGroupImplCopyWith<$Res> {
  __$$MeasureReportGroupImplCopyWithImpl(_$MeasureReportGroupImpl _value,
      $Res Function(_$MeasureReportGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? population = freezed,
    Object? measureScore = freezed,
    Object? stratifier = freezed,
  }) {
    return _then(_$MeasureReportGroupImpl(
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
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      population: freezed == population
          ? _value._population
          : population // ignore: cast_nullable_to_non_nullable
              as List<MeasureReportPopulation>?,
      measureScore: freezed == measureScore
          ? _value.measureScore
          : measureScore // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      stratifier: freezed == stratifier
          ? _value._stratifier
          : stratifier // ignore: cast_nullable_to_non_nullable
              as List<MeasureReportStratifier>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasureReportGroupImpl extends _MeasureReportGroup {
  const _$MeasureReportGroupImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      final List<MeasureReportPopulation>? population,
      this.measureScore,
      final List<MeasureReportStratifier>? stratifier})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _population = population,
        _stratifier = stratifier,
        super._();

  factory _$MeasureReportGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeasureReportGroupImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
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
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
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

  /// [code] The meaning of the population group as defined in the measure
  ///  definition.
  @override
  final CodeableConcept? code;

  /// [population] The populations that make up the population group, one for
  ///  each type of population appropriate for the measure.
  final List<MeasureReportPopulation>? _population;

  /// [population] The populations that make up the population group, one for
  ///  each type of population appropriate for the measure.
  @override
  List<MeasureReportPopulation>? get population {
    final value = _population;
    if (value == null) return null;
    if (_population is EqualUnmodifiableListView) return _population;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [measureScore] The measure score for this population group, calculated as
  /// appropriate for the measure type and scoring method, and based on the
  ///  contents of the populations defined in the group.
  @override
  final Quantity? measureScore;

  /// [stratifier] When a measure includes multiple stratifiers, there will be
  ///  a stratifier group for each stratifier defined by the measure.
  final List<MeasureReportStratifier>? _stratifier;

  /// [stratifier] When a measure includes multiple stratifiers, there will be
  ///  a stratifier group for each stratifier defined by the measure.
  @override
  List<MeasureReportStratifier>? get stratifier {
    final value = _stratifier;
    if (value == null) return null;
    if (_stratifier is EqualUnmodifiableListView) return _stratifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MeasureReportGroup(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, code: $code, population: $population, measureScore: $measureScore, stratifier: $stratifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasureReportGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality()
                .equals(other._population, _population) &&
            (identical(other.measureScore, measureScore) ||
                other.measureScore == measureScore) &&
            const DeepCollectionEquality()
                .equals(other._stratifier, _stratifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      code,
      const DeepCollectionEquality().hash(_population),
      measureScore,
      const DeepCollectionEquality().hash(_stratifier));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasureReportGroupImplCopyWith<_$MeasureReportGroupImpl> get copyWith =>
      __$$MeasureReportGroupImplCopyWithImpl<_$MeasureReportGroupImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasureReportGroupImplToJson(
      this,
    );
  }
}

abstract class _MeasureReportGroup extends MeasureReportGroup {
  const factory _MeasureReportGroup(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? code,
          final List<MeasureReportPopulation>? population,
          final Quantity? measureScore,
          final List<MeasureReportStratifier>? stratifier}) =
      _$MeasureReportGroupImpl;
  const _MeasureReportGroup._() : super._();

  factory _MeasureReportGroup.fromJson(Map<String, dynamic> json) =
      _$MeasureReportGroupImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [code] The meaning of the population group as defined in the measure
  ///  definition.
  CodeableConcept? get code;
  @override

  /// [population] The populations that make up the population group, one for
  ///  each type of population appropriate for the measure.
  List<MeasureReportPopulation>? get population;
  @override

  /// [measureScore] The measure score for this population group, calculated as
  /// appropriate for the measure type and scoring method, and based on the
  ///  contents of the populations defined in the group.
  Quantity? get measureScore;
  @override

  /// [stratifier] When a measure includes multiple stratifiers, there will be
  ///  a stratifier group for each stratifier defined by the measure.
  List<MeasureReportStratifier>? get stratifier;
  @override
  @JsonKey(ignore: true)
  _$$MeasureReportGroupImplCopyWith<_$MeasureReportGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MeasureReportPopulation _$MeasureReportPopulationFromJson(
    Map<String, dynamic> json) {
  return _MeasureReportPopulation.fromJson(json);
}

/// @nodoc
mixin _$MeasureReportPopulation {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [code] The type of the population.
  CodeableConcept? get code => throw _privateConstructorUsedError;

  /// [count] The number of members of the population.
  FhirInteger? get count => throw _privateConstructorUsedError;

  /// [countElement] Extensions for count
  @JsonKey(name: '_count')
  PrimitiveElement? get countElement => throw _privateConstructorUsedError;

  /// [subjectResults] This element refers to a List of subject level
  ///  MeasureReport resources, one for each subject in this population.
  Reference? get subjectResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasureReportPopulationCopyWith<MeasureReportPopulation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureReportPopulationCopyWith<$Res> {
  factory $MeasureReportPopulationCopyWith(MeasureReportPopulation value,
          $Res Function(MeasureReportPopulation) then) =
      _$MeasureReportPopulationCopyWithImpl<$Res, MeasureReportPopulation>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? code,
      FhirInteger? count,
      @JsonKey(name: '_count') PrimitiveElement? countElement,
      Reference? subjectResults});

  $CodeableConceptCopyWith<$Res>? get code;
  $ReferenceCopyWith<$Res>? get subjectResults;
}

/// @nodoc
class _$MeasureReportPopulationCopyWithImpl<$Res,
        $Val extends MeasureReportPopulation>
    implements $MeasureReportPopulationCopyWith<$Res> {
  _$MeasureReportPopulationCopyWithImpl(this._value, this._then);

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
    Object? count = freezed,
    Object? countElement = freezed,
    Object? subjectResults = freezed,
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
              as CodeableConcept?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      countElement: freezed == countElement
          ? _value.countElement
          : countElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subjectResults: freezed == subjectResults
          ? _value.subjectResults
          : subjectResults // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
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
  $ReferenceCopyWith<$Res>? get subjectResults {
    if (_value.subjectResults == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.subjectResults!, (value) {
      return _then(_value.copyWith(subjectResults: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeasureReportPopulationImplCopyWith<$Res>
    implements $MeasureReportPopulationCopyWith<$Res> {
  factory _$$MeasureReportPopulationImplCopyWith(
          _$MeasureReportPopulationImpl value,
          $Res Function(_$MeasureReportPopulationImpl) then) =
      __$$MeasureReportPopulationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? code,
      FhirInteger? count,
      @JsonKey(name: '_count') PrimitiveElement? countElement,
      Reference? subjectResults});

  @override
  $CodeableConceptCopyWith<$Res>? get code;
  @override
  $ReferenceCopyWith<$Res>? get subjectResults;
}

/// @nodoc
class __$$MeasureReportPopulationImplCopyWithImpl<$Res>
    extends _$MeasureReportPopulationCopyWithImpl<$Res,
        _$MeasureReportPopulationImpl>
    implements _$$MeasureReportPopulationImplCopyWith<$Res> {
  __$$MeasureReportPopulationImplCopyWithImpl(
      _$MeasureReportPopulationImpl _value,
      $Res Function(_$MeasureReportPopulationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? count = freezed,
    Object? countElement = freezed,
    Object? subjectResults = freezed,
  }) {
    return _then(_$MeasureReportPopulationImpl(
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
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      countElement: freezed == countElement
          ? _value.countElement
          : countElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subjectResults: freezed == subjectResults
          ? _value.subjectResults
          : subjectResults // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasureReportPopulationImpl extends _MeasureReportPopulation {
  const _$MeasureReportPopulationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      this.count,
      @JsonKey(name: '_count') this.countElement,
      this.subjectResults})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MeasureReportPopulationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeasureReportPopulationImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
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
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
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

  /// [code] The type of the population.
  @override
  final CodeableConcept? code;

  /// [count] The number of members of the population.
  @override
  final FhirInteger? count;

  /// [countElement] Extensions for count
  @override
  @JsonKey(name: '_count')
  final PrimitiveElement? countElement;

  /// [subjectResults] This element refers to a List of subject level
  ///  MeasureReport resources, one for each subject in this population.
  @override
  final Reference? subjectResults;

  @override
  String toString() {
    return 'MeasureReportPopulation(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, code: $code, count: $count, countElement: $countElement, subjectResults: $subjectResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasureReportPopulationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.countElement, countElement) ||
                other.countElement == countElement) &&
            (identical(other.subjectResults, subjectResults) ||
                other.subjectResults == subjectResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      code,
      count,
      countElement,
      subjectResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasureReportPopulationImplCopyWith<_$MeasureReportPopulationImpl>
      get copyWith => __$$MeasureReportPopulationImplCopyWithImpl<
          _$MeasureReportPopulationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasureReportPopulationImplToJson(
      this,
    );
  }
}

abstract class _MeasureReportPopulation extends MeasureReportPopulation {
  const factory _MeasureReportPopulation(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? code,
      final FhirInteger? count,
      @JsonKey(name: '_count') final PrimitiveElement? countElement,
      final Reference? subjectResults}) = _$MeasureReportPopulationImpl;
  const _MeasureReportPopulation._() : super._();

  factory _MeasureReportPopulation.fromJson(Map<String, dynamic> json) =
      _$MeasureReportPopulationImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [code] The type of the population.
  CodeableConcept? get code;
  @override

  /// [count] The number of members of the population.
  FhirInteger? get count;
  @override

  /// [countElement] Extensions for count
  @JsonKey(name: '_count')
  PrimitiveElement? get countElement;
  @override

  /// [subjectResults] This element refers to a List of subject level
  ///  MeasureReport resources, one for each subject in this population.
  Reference? get subjectResults;
  @override
  @JsonKey(ignore: true)
  _$$MeasureReportPopulationImplCopyWith<_$MeasureReportPopulationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeasureReportStratifier _$MeasureReportStratifierFromJson(
    Map<String, dynamic> json) {
  return _MeasureReportStratifier.fromJson(json);
}

/// @nodoc
mixin _$MeasureReportStratifier {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [code] The meaning of this stratifier, as defined in the measure
  ///  definition.
  List<CodeableConcept>? get code => throw _privateConstructorUsedError;

  /// [stratum] This element contains the results for a single stratum within
  /// the stratifier. For example, when stratifying on administrative gender,
  ///  there will be four strata, one for each possible gender value.
  List<MeasureReportStratum>? get stratum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasureReportStratifierCopyWith<MeasureReportStratifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureReportStratifierCopyWith<$Res> {
  factory $MeasureReportStratifierCopyWith(MeasureReportStratifier value,
          $Res Function(MeasureReportStratifier) then) =
      _$MeasureReportStratifierCopyWithImpl<$Res, MeasureReportStratifier>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<CodeableConcept>? code,
      List<MeasureReportStratum>? stratum});
}

/// @nodoc
class _$MeasureReportStratifierCopyWithImpl<$Res,
        $Val extends MeasureReportStratifier>
    implements $MeasureReportStratifierCopyWith<$Res> {
  _$MeasureReportStratifierCopyWithImpl(this._value, this._then);

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
    Object? stratum = freezed,
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
      stratum: freezed == stratum
          ? _value.stratum
          : stratum // ignore: cast_nullable_to_non_nullable
              as List<MeasureReportStratum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeasureReportStratifierImplCopyWith<$Res>
    implements $MeasureReportStratifierCopyWith<$Res> {
  factory _$$MeasureReportStratifierImplCopyWith(
          _$MeasureReportStratifierImpl value,
          $Res Function(_$MeasureReportStratifierImpl) then) =
      __$$MeasureReportStratifierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<CodeableConcept>? code,
      List<MeasureReportStratum>? stratum});
}

/// @nodoc
class __$$MeasureReportStratifierImplCopyWithImpl<$Res>
    extends _$MeasureReportStratifierCopyWithImpl<$Res,
        _$MeasureReportStratifierImpl>
    implements _$$MeasureReportStratifierImplCopyWith<$Res> {
  __$$MeasureReportStratifierImplCopyWithImpl(
      _$MeasureReportStratifierImpl _value,
      $Res Function(_$MeasureReportStratifierImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? stratum = freezed,
  }) {
    return _then(_$MeasureReportStratifierImpl(
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
      stratum: freezed == stratum
          ? _value._stratum
          : stratum // ignore: cast_nullable_to_non_nullable
              as List<MeasureReportStratum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasureReportStratifierImpl extends _MeasureReportStratifier {
  const _$MeasureReportStratifierImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<CodeableConcept>? code,
      final List<MeasureReportStratum>? stratum})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _code = code,
        _stratum = stratum,
        super._();

  factory _$MeasureReportStratifierImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeasureReportStratifierImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
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
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
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

  /// [code] The meaning of this stratifier, as defined in the measure
  ///  definition.
  final List<CodeableConcept>? _code;

  /// [code] The meaning of this stratifier, as defined in the measure
  ///  definition.
  @override
  List<CodeableConcept>? get code {
    final value = _code;
    if (value == null) return null;
    if (_code is EqualUnmodifiableListView) return _code;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [stratum] This element contains the results for a single stratum within
  /// the stratifier. For example, when stratifying on administrative gender,
  ///  there will be four strata, one for each possible gender value.
  final List<MeasureReportStratum>? _stratum;

  /// [stratum] This element contains the results for a single stratum within
  /// the stratifier. For example, when stratifying on administrative gender,
  ///  there will be four strata, one for each possible gender value.
  @override
  List<MeasureReportStratum>? get stratum {
    final value = _stratum;
    if (value == null) return null;
    if (_stratum is EqualUnmodifiableListView) return _stratum;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MeasureReportStratifier(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, code: $code, stratum: $stratum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasureReportStratifierImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other._code, _code) &&
            const DeepCollectionEquality().equals(other._stratum, _stratum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_code),
      const DeepCollectionEquality().hash(_stratum));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasureReportStratifierImplCopyWith<_$MeasureReportStratifierImpl>
      get copyWith => __$$MeasureReportStratifierImplCopyWithImpl<
          _$MeasureReportStratifierImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasureReportStratifierImplToJson(
      this,
    );
  }
}

abstract class _MeasureReportStratifier extends MeasureReportStratifier {
  const factory _MeasureReportStratifier(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final List<CodeableConcept>? code,
          final List<MeasureReportStratum>? stratum}) =
      _$MeasureReportStratifierImpl;
  const _MeasureReportStratifier._() : super._();

  factory _MeasureReportStratifier.fromJson(Map<String, dynamic> json) =
      _$MeasureReportStratifierImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [code] The meaning of this stratifier, as defined in the measure
  ///  definition.
  List<CodeableConcept>? get code;
  @override

  /// [stratum] This element contains the results for a single stratum within
  /// the stratifier. For example, when stratifying on administrative gender,
  ///  there will be four strata, one for each possible gender value.
  List<MeasureReportStratum>? get stratum;
  @override
  @JsonKey(ignore: true)
  _$$MeasureReportStratifierImplCopyWith<_$MeasureReportStratifierImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeasureReportStratum _$MeasureReportStratumFromJson(Map<String, dynamic> json) {
  return _MeasureReportStratum.fromJson(json);
}

/// @nodoc
mixin _$MeasureReportStratum {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [value] The value for this stratum, expressed as a CodeableConcept. When
  /// defining stratifiers on complex values, the value must be rendered such
  ///  that the value for each stratum within the stratifier is unique.
  CodeableConcept? get value => throw _privateConstructorUsedError;

  /// [component] A stratifier component value.
  List<MeasureReportComponent>? get component =>
      throw _privateConstructorUsedError;

  /// [population] The populations that make up the stratum, one for each type
  ///  of population appropriate to the measure.
  List<MeasureReportPopulation1>? get population =>
      throw _privateConstructorUsedError;

  /// [measureScore] The measure score for this stratum, calculated as
  /// appropriate for the measure type and scoring method, and based on only the
  ///  members of this stratum.
  Quantity? get measureScore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasureReportStratumCopyWith<MeasureReportStratum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureReportStratumCopyWith<$Res> {
  factory $MeasureReportStratumCopyWith(MeasureReportStratum value,
          $Res Function(MeasureReportStratum) then) =
      _$MeasureReportStratumCopyWithImpl<$Res, MeasureReportStratum>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? value,
      List<MeasureReportComponent>? component,
      List<MeasureReportPopulation1>? population,
      Quantity? measureScore});

  $CodeableConceptCopyWith<$Res>? get value;
  $QuantityCopyWith<$Res>? get measureScore;
}

/// @nodoc
class _$MeasureReportStratumCopyWithImpl<$Res,
        $Val extends MeasureReportStratum>
    implements $MeasureReportStratumCopyWith<$Res> {
  _$MeasureReportStratumCopyWithImpl(this._value, this._then);

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
    Object? value = freezed,
    Object? component = freezed,
    Object? population = freezed,
    Object? measureScore = freezed,
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
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      component: freezed == component
          ? _value.component
          : component // ignore: cast_nullable_to_non_nullable
              as List<MeasureReportComponent>?,
      population: freezed == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as List<MeasureReportPopulation1>?,
      measureScore: freezed == measureScore
          ? _value.measureScore
          : measureScore // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get value {
    if (_value.value == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.value!, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get measureScore {
    if (_value.measureScore == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.measureScore!, (value) {
      return _then(_value.copyWith(measureScore: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeasureReportStratumImplCopyWith<$Res>
    implements $MeasureReportStratumCopyWith<$Res> {
  factory _$$MeasureReportStratumImplCopyWith(_$MeasureReportStratumImpl value,
          $Res Function(_$MeasureReportStratumImpl) then) =
      __$$MeasureReportStratumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? value,
      List<MeasureReportComponent>? component,
      List<MeasureReportPopulation1>? population,
      Quantity? measureScore});

  @override
  $CodeableConceptCopyWith<$Res>? get value;
  @override
  $QuantityCopyWith<$Res>? get measureScore;
}

/// @nodoc
class __$$MeasureReportStratumImplCopyWithImpl<$Res>
    extends _$MeasureReportStratumCopyWithImpl<$Res, _$MeasureReportStratumImpl>
    implements _$$MeasureReportStratumImplCopyWith<$Res> {
  __$$MeasureReportStratumImplCopyWithImpl(_$MeasureReportStratumImpl _value,
      $Res Function(_$MeasureReportStratumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? value = freezed,
    Object? component = freezed,
    Object? population = freezed,
    Object? measureScore = freezed,
  }) {
    return _then(_$MeasureReportStratumImpl(
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
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      component: freezed == component
          ? _value._component
          : component // ignore: cast_nullable_to_non_nullable
              as List<MeasureReportComponent>?,
      population: freezed == population
          ? _value._population
          : population // ignore: cast_nullable_to_non_nullable
              as List<MeasureReportPopulation1>?,
      measureScore: freezed == measureScore
          ? _value.measureScore
          : measureScore // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasureReportStratumImpl extends _MeasureReportStratum {
  const _$MeasureReportStratumImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.value,
      final List<MeasureReportComponent>? component,
      final List<MeasureReportPopulation1>? population,
      this.measureScore})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _component = component,
        _population = population,
        super._();

  factory _$MeasureReportStratumImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeasureReportStratumImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
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
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
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

  /// [value] The value for this stratum, expressed as a CodeableConcept. When
  /// defining stratifiers on complex values, the value must be rendered such
  ///  that the value for each stratum within the stratifier is unique.
  @override
  final CodeableConcept? value;

  /// [component] A stratifier component value.
  final List<MeasureReportComponent>? _component;

  /// [component] A stratifier component value.
  @override
  List<MeasureReportComponent>? get component {
    final value = _component;
    if (value == null) return null;
    if (_component is EqualUnmodifiableListView) return _component;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [population] The populations that make up the stratum, one for each type
  ///  of population appropriate to the measure.
  final List<MeasureReportPopulation1>? _population;

  /// [population] The populations that make up the stratum, one for each type
  ///  of population appropriate to the measure.
  @override
  List<MeasureReportPopulation1>? get population {
    final value = _population;
    if (value == null) return null;
    if (_population is EqualUnmodifiableListView) return _population;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [measureScore] The measure score for this stratum, calculated as
  /// appropriate for the measure type and scoring method, and based on only the
  ///  members of this stratum.
  @override
  final Quantity? measureScore;

  @override
  String toString() {
    return 'MeasureReportStratum(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, value: $value, component: $component, population: $population, measureScore: $measureScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasureReportStratumImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other._component, _component) &&
            const DeepCollectionEquality()
                .equals(other._population, _population) &&
            (identical(other.measureScore, measureScore) ||
                other.measureScore == measureScore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      value,
      const DeepCollectionEquality().hash(_component),
      const DeepCollectionEquality().hash(_population),
      measureScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasureReportStratumImplCopyWith<_$MeasureReportStratumImpl>
      get copyWith =>
          __$$MeasureReportStratumImplCopyWithImpl<_$MeasureReportStratumImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasureReportStratumImplToJson(
      this,
    );
  }
}

abstract class _MeasureReportStratum extends MeasureReportStratum {
  const factory _MeasureReportStratum(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? value,
      final List<MeasureReportComponent>? component,
      final List<MeasureReportPopulation1>? population,
      final Quantity? measureScore}) = _$MeasureReportStratumImpl;
  const _MeasureReportStratum._() : super._();

  factory _MeasureReportStratum.fromJson(Map<String, dynamic> json) =
      _$MeasureReportStratumImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [value] The value for this stratum, expressed as a CodeableConcept. When
  /// defining stratifiers on complex values, the value must be rendered such
  ///  that the value for each stratum within the stratifier is unique.
  CodeableConcept? get value;
  @override

  /// [component] A stratifier component value.
  List<MeasureReportComponent>? get component;
  @override

  /// [population] The populations that make up the stratum, one for each type
  ///  of population appropriate to the measure.
  List<MeasureReportPopulation1>? get population;
  @override

  /// [measureScore] The measure score for this stratum, calculated as
  /// appropriate for the measure type and scoring method, and based on only the
  ///  members of this stratum.
  Quantity? get measureScore;
  @override
  @JsonKey(ignore: true)
  _$$MeasureReportStratumImplCopyWith<_$MeasureReportStratumImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeasureReportComponent _$MeasureReportComponentFromJson(
    Map<String, dynamic> json) {
  return _MeasureReportComponent.fromJson(json);
}

/// @nodoc
mixin _$MeasureReportComponent {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [code] The code for the stratum component value.
  CodeableConcept get code => throw _privateConstructorUsedError;

  /// [value] The stratum component value.
  CodeableConcept get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasureReportComponentCopyWith<MeasureReportComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureReportComponentCopyWith<$Res> {
  factory $MeasureReportComponentCopyWith(MeasureReportComponent value,
          $Res Function(MeasureReportComponent) then) =
      _$MeasureReportComponentCopyWithImpl<$Res, MeasureReportComponent>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept code,
      CodeableConcept value});

  $CodeableConceptCopyWith<$Res> get code;
  $CodeableConceptCopyWith<$Res> get value;
}

/// @nodoc
class _$MeasureReportComponentCopyWithImpl<$Res,
        $Val extends MeasureReportComponent>
    implements $MeasureReportComponentCopyWith<$Res> {
  _$MeasureReportComponentCopyWithImpl(this._value, this._then);

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
    Object? value = null,
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
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
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
  $CodeableConceptCopyWith<$Res> get value {
    return $CodeableConceptCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeasureReportComponentImplCopyWith<$Res>
    implements $MeasureReportComponentCopyWith<$Res> {
  factory _$$MeasureReportComponentImplCopyWith(
          _$MeasureReportComponentImpl value,
          $Res Function(_$MeasureReportComponentImpl) then) =
      __$$MeasureReportComponentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept code,
      CodeableConcept value});

  @override
  $CodeableConceptCopyWith<$Res> get code;
  @override
  $CodeableConceptCopyWith<$Res> get value;
}

/// @nodoc
class __$$MeasureReportComponentImplCopyWithImpl<$Res>
    extends _$MeasureReportComponentCopyWithImpl<$Res,
        _$MeasureReportComponentImpl>
    implements _$$MeasureReportComponentImplCopyWith<$Res> {
  __$$MeasureReportComponentImplCopyWithImpl(
      _$MeasureReportComponentImpl _value,
      $Res Function(_$MeasureReportComponentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = null,
    Object? value = null,
  }) {
    return _then(_$MeasureReportComponentImpl(
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
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasureReportComponentImpl extends _MeasureReportComponent {
  const _$MeasureReportComponentImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.code,
      required this.value})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MeasureReportComponentImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeasureReportComponentImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
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
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
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

  /// [code] The code for the stratum component value.
  @override
  final CodeableConcept code;

  /// [value] The stratum component value.
  @override
  final CodeableConcept value;

  @override
  String toString() {
    return 'MeasureReportComponent(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, code: $code, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasureReportComponentImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      code,
      value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasureReportComponentImplCopyWith<_$MeasureReportComponentImpl>
      get copyWith => __$$MeasureReportComponentImplCopyWithImpl<
          _$MeasureReportComponentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasureReportComponentImplToJson(
      this,
    );
  }
}

abstract class _MeasureReportComponent extends MeasureReportComponent {
  const factory _MeasureReportComponent(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept code,
      required final CodeableConcept value}) = _$MeasureReportComponentImpl;
  const _MeasureReportComponent._() : super._();

  factory _MeasureReportComponent.fromJson(Map<String, dynamic> json) =
      _$MeasureReportComponentImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [code] The code for the stratum component value.
  CodeableConcept get code;
  @override

  /// [value] The stratum component value.
  CodeableConcept get value;
  @override
  @JsonKey(ignore: true)
  _$$MeasureReportComponentImplCopyWith<_$MeasureReportComponentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeasureReportPopulation1 _$MeasureReportPopulation1FromJson(
    Map<String, dynamic> json) {
  return _MeasureReportPopulation1.fromJson(json);
}

/// @nodoc
mixin _$MeasureReportPopulation1 {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [code] The type of the population.
  CodeableConcept? get code => throw _privateConstructorUsedError;

  /// [count] The number of members of the population in this stratum.
  FhirInteger? get count => throw _privateConstructorUsedError;

  /// [countElement] Extensions for count
  @JsonKey(name: '_count')
  PrimitiveElement? get countElement => throw _privateConstructorUsedError;

  /// [subjectResults] This element refers to a List of subject level
  /// MeasureReport resources, one for each subject in this population in this
  ///  stratum.
  Reference? get subjectResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasureReportPopulation1CopyWith<MeasureReportPopulation1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureReportPopulation1CopyWith<$Res> {
  factory $MeasureReportPopulation1CopyWith(MeasureReportPopulation1 value,
          $Res Function(MeasureReportPopulation1) then) =
      _$MeasureReportPopulation1CopyWithImpl<$Res, MeasureReportPopulation1>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? code,
      FhirInteger? count,
      @JsonKey(name: '_count') PrimitiveElement? countElement,
      Reference? subjectResults});

  $CodeableConceptCopyWith<$Res>? get code;
  $ReferenceCopyWith<$Res>? get subjectResults;
}

/// @nodoc
class _$MeasureReportPopulation1CopyWithImpl<$Res,
        $Val extends MeasureReportPopulation1>
    implements $MeasureReportPopulation1CopyWith<$Res> {
  _$MeasureReportPopulation1CopyWithImpl(this._value, this._then);

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
    Object? count = freezed,
    Object? countElement = freezed,
    Object? subjectResults = freezed,
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
              as CodeableConcept?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      countElement: freezed == countElement
          ? _value.countElement
          : countElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subjectResults: freezed == subjectResults
          ? _value.subjectResults
          : subjectResults // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
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
  $ReferenceCopyWith<$Res>? get subjectResults {
    if (_value.subjectResults == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.subjectResults!, (value) {
      return _then(_value.copyWith(subjectResults: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeasureReportPopulation1ImplCopyWith<$Res>
    implements $MeasureReportPopulation1CopyWith<$Res> {
  factory _$$MeasureReportPopulation1ImplCopyWith(
          _$MeasureReportPopulation1Impl value,
          $Res Function(_$MeasureReportPopulation1Impl) then) =
      __$$MeasureReportPopulation1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? code,
      FhirInteger? count,
      @JsonKey(name: '_count') PrimitiveElement? countElement,
      Reference? subjectResults});

  @override
  $CodeableConceptCopyWith<$Res>? get code;
  @override
  $ReferenceCopyWith<$Res>? get subjectResults;
}

/// @nodoc
class __$$MeasureReportPopulation1ImplCopyWithImpl<$Res>
    extends _$MeasureReportPopulation1CopyWithImpl<$Res,
        _$MeasureReportPopulation1Impl>
    implements _$$MeasureReportPopulation1ImplCopyWith<$Res> {
  __$$MeasureReportPopulation1ImplCopyWithImpl(
      _$MeasureReportPopulation1Impl _value,
      $Res Function(_$MeasureReportPopulation1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? count = freezed,
    Object? countElement = freezed,
    Object? subjectResults = freezed,
  }) {
    return _then(_$MeasureReportPopulation1Impl(
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
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      countElement: freezed == countElement
          ? _value.countElement
          : countElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subjectResults: freezed == subjectResults
          ? _value.subjectResults
          : subjectResults // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasureReportPopulation1Impl extends _MeasureReportPopulation1 {
  const _$MeasureReportPopulation1Impl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      this.count,
      @JsonKey(name: '_count') this.countElement,
      this.subjectResults})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MeasureReportPopulation1Impl.fromJson(Map<String, dynamic> json) =>
      _$$MeasureReportPopulation1ImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
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
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
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

  /// [code] The type of the population.
  @override
  final CodeableConcept? code;

  /// [count] The number of members of the population in this stratum.
  @override
  final FhirInteger? count;

  /// [countElement] Extensions for count
  @override
  @JsonKey(name: '_count')
  final PrimitiveElement? countElement;

  /// [subjectResults] This element refers to a List of subject level
  /// MeasureReport resources, one for each subject in this population in this
  ///  stratum.
  @override
  final Reference? subjectResults;

  @override
  String toString() {
    return 'MeasureReportPopulation1(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, code: $code, count: $count, countElement: $countElement, subjectResults: $subjectResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasureReportPopulation1Impl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.countElement, countElement) ||
                other.countElement == countElement) &&
            (identical(other.subjectResults, subjectResults) ||
                other.subjectResults == subjectResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      code,
      count,
      countElement,
      subjectResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasureReportPopulation1ImplCopyWith<_$MeasureReportPopulation1Impl>
      get copyWith => __$$MeasureReportPopulation1ImplCopyWithImpl<
          _$MeasureReportPopulation1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasureReportPopulation1ImplToJson(
      this,
    );
  }
}

abstract class _MeasureReportPopulation1 extends MeasureReportPopulation1 {
  const factory _MeasureReportPopulation1(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? code,
      final FhirInteger? count,
      @JsonKey(name: '_count') final PrimitiveElement? countElement,
      final Reference? subjectResults}) = _$MeasureReportPopulation1Impl;
  const _MeasureReportPopulation1._() : super._();

  factory _MeasureReportPopulation1.fromJson(Map<String, dynamic> json) =
      _$MeasureReportPopulation1Impl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [code] The type of the population.
  CodeableConcept? get code;
  @override

  /// [count] The number of members of the population in this stratum.
  FhirInteger? get count;
  @override

  /// [countElement] Extensions for count
  @JsonKey(name: '_count')
  PrimitiveElement? get countElement;
  @override

  /// [subjectResults] This element refers to a List of subject level
  /// MeasureReport resources, one for each subject in this population in this
  ///  stratum.
  Reference? get subjectResults;
  @override
  @JsonKey(ignore: true)
  _$$MeasureReportPopulation1ImplCopyWith<_$MeasureReportPopulation1Impl>
      get copyWith => throw _privateConstructorUsedError;
}
