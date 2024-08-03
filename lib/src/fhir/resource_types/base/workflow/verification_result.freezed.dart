// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerificationResult _$VerificationResultFromJson(Map<String, dynamic> json) {
  return _VerificationResult.fromJson(json);
}

/// @nodoc
mixin _$VerificationResult {
  @JsonKey(unknownEnumValue: R4ResourceType.VerificationResult)
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

  /// [target] A resource that was validated.
  List<Reference>? get target => throw _privateConstructorUsedError;

  /// [targetLocation] The fhirpath location(s) within the resource that was
  ///  validated.
  List<String>? get targetLocation => throw _privateConstructorUsedError;

  /// [targetLocationElement] Extensions for targetLocation
  @JsonKey(name: '_targetLocation')
  List<PrimitiveElement>? get targetLocationElement =>
      throw _privateConstructorUsedError;

  /// [need] The frequency with which the target must be validated (none;
  ///  initial; periodic).
  CodeableConcept? get need => throw _privateConstructorUsedError;

  /// [status] The validation status of the target (attested; validated; in
  ///  process; requires revalidation; validation failed; revalidation failed).
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [statusDate] When the validation status was updated.
  FhirDateTime? get statusDate => throw _privateConstructorUsedError;

  /// [statusDateElement] Extensions for statusDate
  @JsonKey(name: '_statusDate')
  PrimitiveElement? get statusDateElement => throw _privateConstructorUsedError;

  /// [validationType] What the target is validated against (nothing; primary
  ///  source; multiple sources).
  CodeableConcept? get validationType => throw _privateConstructorUsedError;

  /// [validationProcess] The primary process by which the target is validated
  /// (edit check; value set; primary source; multiple sources; standalone; in
  ///  context).
  List<CodeableConcept>? get validationProcess =>
      throw _privateConstructorUsedError;

  /// [frequency] Frequency of revalidation.
  Timing? get frequency => throw _privateConstructorUsedError;

  /// [lastPerformed] The date/time validation was last completed (including
  ///  failed validations).
  FhirDateTime? get lastPerformed => throw _privateConstructorUsedError;

  /// [lastPerformedElement] Extensions for lastPerformed
  @JsonKey(name: '_lastPerformed')
  PrimitiveElement? get lastPerformedElement =>
      throw _privateConstructorUsedError;

  /// [nextScheduled] The date when target is next validated, if appropriate.
  FhirDate? get nextScheduled => throw _privateConstructorUsedError;

  /// [nextScheduledElement] Extensions for nextScheduled
  @JsonKey(name: '_nextScheduled')
  PrimitiveElement? get nextScheduledElement =>
      throw _privateConstructorUsedError;

  /// [failureAction] The result if validation fails (fatal; warning; record
  ///  only; none).
  CodeableConcept? get failureAction => throw _privateConstructorUsedError;

  /// [primarySource] Information about the primary source(s) involved in
  ///  validation.
  List<VerificationResultPrimarySource>? get primarySource =>
      throw _privateConstructorUsedError;

  /// [attestation] Information about the entity attesting to information.
  VerificationResultAttestation? get attestation =>
      throw _privateConstructorUsedError;

  /// [validator] Information about the entity validating information.
  List<VerificationResultValidator>? get validator =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationResultCopyWith<VerificationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationResultCopyWith<$Res> {
  factory $VerificationResultCopyWith(
          VerificationResult value, $Res Function(VerificationResult) then) =
      _$VerificationResultCopyWithImpl<$Res, VerificationResult>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.VerificationResult)
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
      List<Reference>? target,
      List<String>? targetLocation,
      @JsonKey(name: '_targetLocation')
      List<PrimitiveElement>? targetLocationElement,
      CodeableConcept? need,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      FhirDateTime? statusDate,
      @JsonKey(name: '_statusDate') PrimitiveElement? statusDateElement,
      CodeableConcept? validationType,
      List<CodeableConcept>? validationProcess,
      Timing? frequency,
      FhirDateTime? lastPerformed,
      @JsonKey(name: '_lastPerformed') PrimitiveElement? lastPerformedElement,
      FhirDate? nextScheduled,
      @JsonKey(name: '_nextScheduled') PrimitiveElement? nextScheduledElement,
      CodeableConcept? failureAction,
      List<VerificationResultPrimarySource>? primarySource,
      VerificationResultAttestation? attestation,
      List<VerificationResultValidator>? validator});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res>? get need;
  $CodeableConceptCopyWith<$Res>? get validationType;
  $TimingCopyWith<$Res>? get frequency;
  $CodeableConceptCopyWith<$Res>? get failureAction;
  $VerificationResultAttestationCopyWith<$Res>? get attestation;
}

/// @nodoc
class _$VerificationResultCopyWithImpl<$Res, $Val extends VerificationResult>
    implements $VerificationResultCopyWith<$Res> {
  _$VerificationResultCopyWithImpl(this._value, this._then);

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
    Object? target = freezed,
    Object? targetLocation = freezed,
    Object? targetLocationElement = freezed,
    Object? need = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? statusDate = freezed,
    Object? statusDateElement = freezed,
    Object? validationType = freezed,
    Object? validationProcess = freezed,
    Object? frequency = freezed,
    Object? lastPerformed = freezed,
    Object? lastPerformedElement = freezed,
    Object? nextScheduled = freezed,
    Object? nextScheduledElement = freezed,
    Object? failureAction = freezed,
    Object? primarySource = freezed,
    Object? attestation = freezed,
    Object? validator = freezed,
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
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      targetLocation: freezed == targetLocation
          ? _value.targetLocation
          : targetLocation // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      targetLocationElement: freezed == targetLocationElement
          ? _value.targetLocationElement
          : targetLocationElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      need: freezed == need
          ? _value.need
          : need // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      statusDateElement: freezed == statusDateElement
          ? _value.statusDateElement
          : statusDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      validationType: freezed == validationType
          ? _value.validationType
          : validationType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      validationProcess: freezed == validationProcess
          ? _value.validationProcess
          : validationProcess // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as Timing?,
      lastPerformed: freezed == lastPerformed
          ? _value.lastPerformed
          : lastPerformed // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      lastPerformedElement: freezed == lastPerformedElement
          ? _value.lastPerformedElement
          : lastPerformedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      nextScheduled: freezed == nextScheduled
          ? _value.nextScheduled
          : nextScheduled // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      nextScheduledElement: freezed == nextScheduledElement
          ? _value.nextScheduledElement
          : nextScheduledElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      failureAction: freezed == failureAction
          ? _value.failureAction
          : failureAction // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      primarySource: freezed == primarySource
          ? _value.primarySource
          : primarySource // ignore: cast_nullable_to_non_nullable
              as List<VerificationResultPrimarySource>?,
      attestation: freezed == attestation
          ? _value.attestation
          : attestation // ignore: cast_nullable_to_non_nullable
              as VerificationResultAttestation?,
      validator: freezed == validator
          ? _value.validator
          : validator // ignore: cast_nullable_to_non_nullable
              as List<VerificationResultValidator>?,
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
  $CodeableConceptCopyWith<$Res>? get need {
    if (_value.need == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.need!, (value) {
      return _then(_value.copyWith(need: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get validationType {
    if (_value.validationType == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.validationType!, (value) {
      return _then(_value.copyWith(validationType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimingCopyWith<$Res>? get frequency {
    if (_value.frequency == null) {
      return null;
    }

    return $TimingCopyWith<$Res>(_value.frequency!, (value) {
      return _then(_value.copyWith(frequency: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get failureAction {
    if (_value.failureAction == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.failureAction!, (value) {
      return _then(_value.copyWith(failureAction: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VerificationResultAttestationCopyWith<$Res>? get attestation {
    if (_value.attestation == null) {
      return null;
    }

    return $VerificationResultAttestationCopyWith<$Res>(_value.attestation!,
        (value) {
      return _then(_value.copyWith(attestation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerificationResultImplCopyWith<$Res>
    implements $VerificationResultCopyWith<$Res> {
  factory _$$VerificationResultImplCopyWith(_$VerificationResultImpl value,
          $Res Function(_$VerificationResultImpl) then) =
      __$$VerificationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.VerificationResult)
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
      List<Reference>? target,
      List<String>? targetLocation,
      @JsonKey(name: '_targetLocation')
      List<PrimitiveElement>? targetLocationElement,
      CodeableConcept? need,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      FhirDateTime? statusDate,
      @JsonKey(name: '_statusDate') PrimitiveElement? statusDateElement,
      CodeableConcept? validationType,
      List<CodeableConcept>? validationProcess,
      Timing? frequency,
      FhirDateTime? lastPerformed,
      @JsonKey(name: '_lastPerformed') PrimitiveElement? lastPerformedElement,
      FhirDate? nextScheduled,
      @JsonKey(name: '_nextScheduled') PrimitiveElement? nextScheduledElement,
      CodeableConcept? failureAction,
      List<VerificationResultPrimarySource>? primarySource,
      VerificationResultAttestation? attestation,
      List<VerificationResultValidator>? validator});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res>? get need;
  @override
  $CodeableConceptCopyWith<$Res>? get validationType;
  @override
  $TimingCopyWith<$Res>? get frequency;
  @override
  $CodeableConceptCopyWith<$Res>? get failureAction;
  @override
  $VerificationResultAttestationCopyWith<$Res>? get attestation;
}

/// @nodoc
class __$$VerificationResultImplCopyWithImpl<$Res>
    extends _$VerificationResultCopyWithImpl<$Res, _$VerificationResultImpl>
    implements _$$VerificationResultImplCopyWith<$Res> {
  __$$VerificationResultImplCopyWithImpl(_$VerificationResultImpl _value,
      $Res Function(_$VerificationResultImpl) _then)
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
    Object? target = freezed,
    Object? targetLocation = freezed,
    Object? targetLocationElement = freezed,
    Object? need = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? statusDate = freezed,
    Object? statusDateElement = freezed,
    Object? validationType = freezed,
    Object? validationProcess = freezed,
    Object? frequency = freezed,
    Object? lastPerformed = freezed,
    Object? lastPerformedElement = freezed,
    Object? nextScheduled = freezed,
    Object? nextScheduledElement = freezed,
    Object? failureAction = freezed,
    Object? primarySource = freezed,
    Object? attestation = freezed,
    Object? validator = freezed,
  }) {
    return _then(_$VerificationResultImpl(
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
      target: freezed == target
          ? _value._target
          : target // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      targetLocation: freezed == targetLocation
          ? _value._targetLocation
          : targetLocation // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      targetLocationElement: freezed == targetLocationElement
          ? _value._targetLocationElement
          : targetLocationElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      need: freezed == need
          ? _value.need
          : need // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      statusDateElement: freezed == statusDateElement
          ? _value.statusDateElement
          : statusDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      validationType: freezed == validationType
          ? _value.validationType
          : validationType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      validationProcess: freezed == validationProcess
          ? _value._validationProcess
          : validationProcess // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as Timing?,
      lastPerformed: freezed == lastPerformed
          ? _value.lastPerformed
          : lastPerformed // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      lastPerformedElement: freezed == lastPerformedElement
          ? _value.lastPerformedElement
          : lastPerformedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      nextScheduled: freezed == nextScheduled
          ? _value.nextScheduled
          : nextScheduled // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      nextScheduledElement: freezed == nextScheduledElement
          ? _value.nextScheduledElement
          : nextScheduledElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      failureAction: freezed == failureAction
          ? _value.failureAction
          : failureAction // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      primarySource: freezed == primarySource
          ? _value._primarySource
          : primarySource // ignore: cast_nullable_to_non_nullable
              as List<VerificationResultPrimarySource>?,
      attestation: freezed == attestation
          ? _value.attestation
          : attestation // ignore: cast_nullable_to_non_nullable
              as VerificationResultAttestation?,
      validator: freezed == validator
          ? _value._validator
          : validator // ignore: cast_nullable_to_non_nullable
              as List<VerificationResultValidator>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationResultImpl extends _VerificationResult {
  const _$VerificationResultImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.VerificationResult)
      this.resourceType = R4ResourceType.VerificationResult,
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
      final List<Reference>? target,
      final List<String>? targetLocation,
      @JsonKey(name: '_targetLocation')
      final List<PrimitiveElement>? targetLocationElement,
      this.need,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.statusDate,
      @JsonKey(name: '_statusDate') this.statusDateElement,
      this.validationType,
      final List<CodeableConcept>? validationProcess,
      this.frequency,
      this.lastPerformed,
      @JsonKey(name: '_lastPerformed') this.lastPerformedElement,
      this.nextScheduled,
      @JsonKey(name: '_nextScheduled') this.nextScheduledElement,
      this.failureAction,
      final List<VerificationResultPrimarySource>? primarySource,
      this.attestation,
      final List<VerificationResultValidator>? validator})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _target = target,
        _targetLocation = targetLocation,
        _targetLocationElement = targetLocationElement,
        _validationProcess = validationProcess,
        _primarySource = primarySource,
        _validator = validator,
        super._();

  factory _$VerificationResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationResultImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.VerificationResult)
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

  /// [target] A resource that was validated.
  final List<Reference>? _target;

  /// [target] A resource that was validated.
  @override
  List<Reference>? get target {
    final value = _target;
    if (value == null) return null;
    if (_target is EqualUnmodifiableListView) return _target;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [targetLocation] The fhirpath location(s) within the resource that was
  ///  validated.
  final List<String>? _targetLocation;

  /// [targetLocation] The fhirpath location(s) within the resource that was
  ///  validated.
  @override
  List<String>? get targetLocation {
    final value = _targetLocation;
    if (value == null) return null;
    if (_targetLocation is EqualUnmodifiableListView) return _targetLocation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [targetLocationElement] Extensions for targetLocation
  final List<PrimitiveElement>? _targetLocationElement;

  /// [targetLocationElement] Extensions for targetLocation
  @override
  @JsonKey(name: '_targetLocation')
  List<PrimitiveElement>? get targetLocationElement {
    final value = _targetLocationElement;
    if (value == null) return null;
    if (_targetLocationElement is EqualUnmodifiableListView)
      return _targetLocationElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [need] The frequency with which the target must be validated (none;
  ///  initial; periodic).
  @override
  final CodeableConcept? need;

  /// [status] The validation status of the target (attested; validated; in
  ///  process; requires revalidation; validation failed; revalidation failed).
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [statusDate] When the validation status was updated.
  @override
  final FhirDateTime? statusDate;

  /// [statusDateElement] Extensions for statusDate
  @override
  @JsonKey(name: '_statusDate')
  final PrimitiveElement? statusDateElement;

  /// [validationType] What the target is validated against (nothing; primary
  ///  source; multiple sources).
  @override
  final CodeableConcept? validationType;

  /// [validationProcess] The primary process by which the target is validated
  /// (edit check; value set; primary source; multiple sources; standalone; in
  ///  context).
  final List<CodeableConcept>? _validationProcess;

  /// [validationProcess] The primary process by which the target is validated
  /// (edit check; value set; primary source; multiple sources; standalone; in
  ///  context).
  @override
  List<CodeableConcept>? get validationProcess {
    final value = _validationProcess;
    if (value == null) return null;
    if (_validationProcess is EqualUnmodifiableListView)
      return _validationProcess;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [frequency] Frequency of revalidation.
  @override
  final Timing? frequency;

  /// [lastPerformed] The date/time validation was last completed (including
  ///  failed validations).
  @override
  final FhirDateTime? lastPerformed;

  /// [lastPerformedElement] Extensions for lastPerformed
  @override
  @JsonKey(name: '_lastPerformed')
  final PrimitiveElement? lastPerformedElement;

  /// [nextScheduled] The date when target is next validated, if appropriate.
  @override
  final FhirDate? nextScheduled;

  /// [nextScheduledElement] Extensions for nextScheduled
  @override
  @JsonKey(name: '_nextScheduled')
  final PrimitiveElement? nextScheduledElement;

  /// [failureAction] The result if validation fails (fatal; warning; record
  ///  only; none).
  @override
  final CodeableConcept? failureAction;

  /// [primarySource] Information about the primary source(s) involved in
  ///  validation.
  final List<VerificationResultPrimarySource>? _primarySource;

  /// [primarySource] Information about the primary source(s) involved in
  ///  validation.
  @override
  List<VerificationResultPrimarySource>? get primarySource {
    final value = _primarySource;
    if (value == null) return null;
    if (_primarySource is EqualUnmodifiableListView) return _primarySource;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [attestation] Information about the entity attesting to information.
  @override
  final VerificationResultAttestation? attestation;

  /// [validator] Information about the entity validating information.
  final List<VerificationResultValidator>? _validator;

  /// [validator] Information about the entity validating information.
  @override
  List<VerificationResultValidator>? get validator {
    final value = _validator;
    if (value == null) return null;
    if (_validator is EqualUnmodifiableListView) return _validator;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationResultImpl &&
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
            const DeepCollectionEquality().equals(other._target, _target) &&
            const DeepCollectionEquality()
                .equals(other._targetLocation, _targetLocation) &&
            const DeepCollectionEquality()
                .equals(other._targetLocationElement, _targetLocationElement) &&
            (identical(other.need, need) || other.need == need) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.statusDate, statusDate) ||
                other.statusDate == statusDate) &&
            (identical(other.statusDateElement, statusDateElement) ||
                other.statusDateElement == statusDateElement) &&
            (identical(other.validationType, validationType) ||
                other.validationType == validationType) &&
            const DeepCollectionEquality()
                .equals(other._validationProcess, _validationProcess) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.lastPerformed, lastPerformed) ||
                other.lastPerformed == lastPerformed) &&
            (identical(other.lastPerformedElement, lastPerformedElement) ||
                other.lastPerformedElement == lastPerformedElement) &&
            (identical(other.nextScheduled, nextScheduled) ||
                other.nextScheduled == nextScheduled) &&
            (identical(other.nextScheduledElement, nextScheduledElement) ||
                other.nextScheduledElement == nextScheduledElement) &&
            (identical(other.failureAction, failureAction) ||
                other.failureAction == failureAction) &&
            const DeepCollectionEquality()
                .equals(other._primarySource, _primarySource) &&
            (identical(other.attestation, attestation) ||
                other.attestation == attestation) &&
            const DeepCollectionEquality()
                .equals(other._validator, _validator));
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
        const DeepCollectionEquality().hash(_target),
        const DeepCollectionEquality().hash(_targetLocation),
        const DeepCollectionEquality().hash(_targetLocationElement),
        need,
        status,
        statusElement,
        statusDate,
        statusDateElement,
        validationType,
        const DeepCollectionEquality().hash(_validationProcess),
        frequency,
        lastPerformed,
        lastPerformedElement,
        nextScheduled,
        nextScheduledElement,
        failureAction,
        const DeepCollectionEquality().hash(_primarySource),
        attestation,
        const DeepCollectionEquality().hash(_validator)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationResultImplCopyWith<_$VerificationResultImpl> get copyWith =>
      __$$VerificationResultImplCopyWithImpl<_$VerificationResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationResultImplToJson(
      this,
    );
  }
}

abstract class _VerificationResult extends VerificationResult {
  const factory _VerificationResult(
      {@JsonKey(unknownEnumValue: R4ResourceType.VerificationResult)
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
      final List<Reference>? target,
      final List<String>? targetLocation,
      @JsonKey(name: '_targetLocation')
      final List<PrimitiveElement>? targetLocationElement,
      final CodeableConcept? need,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final FhirDateTime? statusDate,
      @JsonKey(name: '_statusDate') final PrimitiveElement? statusDateElement,
      final CodeableConcept? validationType,
      final List<CodeableConcept>? validationProcess,
      final Timing? frequency,
      final FhirDateTime? lastPerformed,
      @JsonKey(name: '_lastPerformed')
      final PrimitiveElement? lastPerformedElement,
      final FhirDate? nextScheduled,
      @JsonKey(name: '_nextScheduled')
      final PrimitiveElement? nextScheduledElement,
      final CodeableConcept? failureAction,
      final List<VerificationResultPrimarySource>? primarySource,
      final VerificationResultAttestation? attestation,
      final List<VerificationResultValidator>?
          validator}) = _$VerificationResultImpl;
  const _VerificationResult._() : super._();

  factory _VerificationResult.fromJson(Map<String, dynamic> json) =
      _$VerificationResultImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.VerificationResult)
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

  /// [target] A resource that was validated.
  List<Reference>? get target;
  @override

  /// [targetLocation] The fhirpath location(s) within the resource that was
  ///  validated.
  List<String>? get targetLocation;
  @override

  /// [targetLocationElement] Extensions for targetLocation
  @JsonKey(name: '_targetLocation')
  List<PrimitiveElement>? get targetLocationElement;
  @override

  /// [need] The frequency with which the target must be validated (none;
  ///  initial; periodic).
  CodeableConcept? get need;
  @override

  /// [status] The validation status of the target (attested; validated; in
  ///  process; requires revalidation; validation failed; revalidation failed).
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [statusDate] When the validation status was updated.
  FhirDateTime? get statusDate;
  @override

  /// [statusDateElement] Extensions for statusDate
  @JsonKey(name: '_statusDate')
  PrimitiveElement? get statusDateElement;
  @override

  /// [validationType] What the target is validated against (nothing; primary
  ///  source; multiple sources).
  CodeableConcept? get validationType;
  @override

  /// [validationProcess] The primary process by which the target is validated
  /// (edit check; value set; primary source; multiple sources; standalone; in
  ///  context).
  List<CodeableConcept>? get validationProcess;
  @override

  /// [frequency] Frequency of revalidation.
  Timing? get frequency;
  @override

  /// [lastPerformed] The date/time validation was last completed (including
  ///  failed validations).
  FhirDateTime? get lastPerformed;
  @override

  /// [lastPerformedElement] Extensions for lastPerformed
  @JsonKey(name: '_lastPerformed')
  PrimitiveElement? get lastPerformedElement;
  @override

  /// [nextScheduled] The date when target is next validated, if appropriate.
  FhirDate? get nextScheduled;
  @override

  /// [nextScheduledElement] Extensions for nextScheduled
  @JsonKey(name: '_nextScheduled')
  PrimitiveElement? get nextScheduledElement;
  @override

  /// [failureAction] The result if validation fails (fatal; warning; record
  ///  only; none).
  CodeableConcept? get failureAction;
  @override

  /// [primarySource] Information about the primary source(s) involved in
  ///  validation.
  List<VerificationResultPrimarySource>? get primarySource;
  @override

  /// [attestation] Information about the entity attesting to information.
  VerificationResultAttestation? get attestation;
  @override

  /// [validator] Information about the entity validating information.
  List<VerificationResultValidator>? get validator;
  @override
  @JsonKey(ignore: true)
  _$$VerificationResultImplCopyWith<_$VerificationResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VerificationResultPrimarySource _$VerificationResultPrimarySourceFromJson(
    Map<String, dynamic> json) {
  return _VerificationResultPrimarySource.fromJson(json);
}

/// @nodoc
mixin _$VerificationResultPrimarySource {
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

  /// [who] Reference to the primary source.
  Reference? get who => throw _privateConstructorUsedError;

  /// [type] Type of primary source (License Board; Primary Education;
  /// Continuing Education; Postal Service; Relationship owner; Registration
  ///  Authority; legal source; issuing source; authoritative source).
  List<CodeableConcept>? get type => throw _privateConstructorUsedError;

  /// [communicationMethod] Method for communicating with the primary source
  ///  (manual; API; Push).
  List<CodeableConcept>? get communicationMethod =>
      throw _privateConstructorUsedError;

  /// [validationStatus] Status of the validation of the target against the
  ///  primary source (successful; failed; unknown).
  CodeableConcept? get validationStatus => throw _privateConstructorUsedError;

  /// [validationDate] When the target was validated against the primary
  ///  source.
  FhirDateTime? get validationDate => throw _privateConstructorUsedError;

  /// [validationDateElement] Extensions for validationDate
  @JsonKey(name: '_validationDate')
  PrimitiveElement? get validationDateElement =>
      throw _privateConstructorUsedError;

  /// [canPushUpdates] Ability of the primary source to push updates/alerts
  ///  (yes; no; undetermined).
  CodeableConcept? get canPushUpdates => throw _privateConstructorUsedError;

  /// [pushTypeAvailable] Type of alerts/updates the primary source can send
  ///  (specific requested changes; any changes; as defined by source).
  List<CodeableConcept>? get pushTypeAvailable =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationResultPrimarySourceCopyWith<VerificationResultPrimarySource>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationResultPrimarySourceCopyWith<$Res> {
  factory $VerificationResultPrimarySourceCopyWith(
          VerificationResultPrimarySource value,
          $Res Function(VerificationResultPrimarySource) then) =
      _$VerificationResultPrimarySourceCopyWithImpl<$Res,
          VerificationResultPrimarySource>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference? who,
      List<CodeableConcept>? type,
      List<CodeableConcept>? communicationMethod,
      CodeableConcept? validationStatus,
      FhirDateTime? validationDate,
      @JsonKey(name: '_validationDate') PrimitiveElement? validationDateElement,
      CodeableConcept? canPushUpdates,
      List<CodeableConcept>? pushTypeAvailable});

  $ReferenceCopyWith<$Res>? get who;
  $CodeableConceptCopyWith<$Res>? get validationStatus;
  $CodeableConceptCopyWith<$Res>? get canPushUpdates;
}

/// @nodoc
class _$VerificationResultPrimarySourceCopyWithImpl<$Res,
        $Val extends VerificationResultPrimarySource>
    implements $VerificationResultPrimarySourceCopyWith<$Res> {
  _$VerificationResultPrimarySourceCopyWithImpl(this._value, this._then);

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
    Object? who = freezed,
    Object? type = freezed,
    Object? communicationMethod = freezed,
    Object? validationStatus = freezed,
    Object? validationDate = freezed,
    Object? validationDateElement = freezed,
    Object? canPushUpdates = freezed,
    Object? pushTypeAvailable = freezed,
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
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as Reference?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      communicationMethod: freezed == communicationMethod
          ? _value.communicationMethod
          : communicationMethod // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      validationStatus: freezed == validationStatus
          ? _value.validationStatus
          : validationStatus // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      validationDate: freezed == validationDate
          ? _value.validationDate
          : validationDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      validationDateElement: freezed == validationDateElement
          ? _value.validationDateElement
          : validationDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      canPushUpdates: freezed == canPushUpdates
          ? _value.canPushUpdates
          : canPushUpdates // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      pushTypeAvailable: freezed == pushTypeAvailable
          ? _value.pushTypeAvailable
          : pushTypeAvailable // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get who {
    if (_value.who == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.who!, (value) {
      return _then(_value.copyWith(who: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get validationStatus {
    if (_value.validationStatus == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.validationStatus!, (value) {
      return _then(_value.copyWith(validationStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get canPushUpdates {
    if (_value.canPushUpdates == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.canPushUpdates!, (value) {
      return _then(_value.copyWith(canPushUpdates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerificationResultPrimarySourceImplCopyWith<$Res>
    implements $VerificationResultPrimarySourceCopyWith<$Res> {
  factory _$$VerificationResultPrimarySourceImplCopyWith(
          _$VerificationResultPrimarySourceImpl value,
          $Res Function(_$VerificationResultPrimarySourceImpl) then) =
      __$$VerificationResultPrimarySourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference? who,
      List<CodeableConcept>? type,
      List<CodeableConcept>? communicationMethod,
      CodeableConcept? validationStatus,
      FhirDateTime? validationDate,
      @JsonKey(name: '_validationDate') PrimitiveElement? validationDateElement,
      CodeableConcept? canPushUpdates,
      List<CodeableConcept>? pushTypeAvailable});

  @override
  $ReferenceCopyWith<$Res>? get who;
  @override
  $CodeableConceptCopyWith<$Res>? get validationStatus;
  @override
  $CodeableConceptCopyWith<$Res>? get canPushUpdates;
}

/// @nodoc
class __$$VerificationResultPrimarySourceImplCopyWithImpl<$Res>
    extends _$VerificationResultPrimarySourceCopyWithImpl<$Res,
        _$VerificationResultPrimarySourceImpl>
    implements _$$VerificationResultPrimarySourceImplCopyWith<$Res> {
  __$$VerificationResultPrimarySourceImplCopyWithImpl(
      _$VerificationResultPrimarySourceImpl _value,
      $Res Function(_$VerificationResultPrimarySourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? who = freezed,
    Object? type = freezed,
    Object? communicationMethod = freezed,
    Object? validationStatus = freezed,
    Object? validationDate = freezed,
    Object? validationDateElement = freezed,
    Object? canPushUpdates = freezed,
    Object? pushTypeAvailable = freezed,
  }) {
    return _then(_$VerificationResultPrimarySourceImpl(
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
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as Reference?,
      type: freezed == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      communicationMethod: freezed == communicationMethod
          ? _value._communicationMethod
          : communicationMethod // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      validationStatus: freezed == validationStatus
          ? _value.validationStatus
          : validationStatus // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      validationDate: freezed == validationDate
          ? _value.validationDate
          : validationDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      validationDateElement: freezed == validationDateElement
          ? _value.validationDateElement
          : validationDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      canPushUpdates: freezed == canPushUpdates
          ? _value.canPushUpdates
          : canPushUpdates // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      pushTypeAvailable: freezed == pushTypeAvailable
          ? _value._pushTypeAvailable
          : pushTypeAvailable // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationResultPrimarySourceImpl
    extends _VerificationResultPrimarySource {
  const _$VerificationResultPrimarySourceImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.who,
      final List<CodeableConcept>? type,
      final List<CodeableConcept>? communicationMethod,
      this.validationStatus,
      this.validationDate,
      @JsonKey(name: '_validationDate') this.validationDateElement,
      this.canPushUpdates,
      final List<CodeableConcept>? pushTypeAvailable})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _type = type,
        _communicationMethod = communicationMethod,
        _pushTypeAvailable = pushTypeAvailable,
        super._();

  factory _$VerificationResultPrimarySourceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VerificationResultPrimarySourceImplFromJson(json);

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

  /// [who] Reference to the primary source.
  @override
  final Reference? who;

  /// [type] Type of primary source (License Board; Primary Education;
  /// Continuing Education; Postal Service; Relationship owner; Registration
  ///  Authority; legal source; issuing source; authoritative source).
  final List<CodeableConcept>? _type;

  /// [type] Type of primary source (License Board; Primary Education;
  /// Continuing Education; Postal Service; Relationship owner; Registration
  ///  Authority; legal source; issuing source; authoritative source).
  @override
  List<CodeableConcept>? get type {
    final value = _type;
    if (value == null) return null;
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [communicationMethod] Method for communicating with the primary source
  ///  (manual; API; Push).
  final List<CodeableConcept>? _communicationMethod;

  /// [communicationMethod] Method for communicating with the primary source
  ///  (manual; API; Push).
  @override
  List<CodeableConcept>? get communicationMethod {
    final value = _communicationMethod;
    if (value == null) return null;
    if (_communicationMethod is EqualUnmodifiableListView)
      return _communicationMethod;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [validationStatus] Status of the validation of the target against the
  ///  primary source (successful; failed; unknown).
  @override
  final CodeableConcept? validationStatus;

  /// [validationDate] When the target was validated against the primary
  ///  source.
  @override
  final FhirDateTime? validationDate;

  /// [validationDateElement] Extensions for validationDate
  @override
  @JsonKey(name: '_validationDate')
  final PrimitiveElement? validationDateElement;

  /// [canPushUpdates] Ability of the primary source to push updates/alerts
  ///  (yes; no; undetermined).
  @override
  final CodeableConcept? canPushUpdates;

  /// [pushTypeAvailable] Type of alerts/updates the primary source can send
  ///  (specific requested changes; any changes; as defined by source).
  final List<CodeableConcept>? _pushTypeAvailable;

  /// [pushTypeAvailable] Type of alerts/updates the primary source can send
  ///  (specific requested changes; any changes; as defined by source).
  @override
  List<CodeableConcept>? get pushTypeAvailable {
    final value = _pushTypeAvailable;
    if (value == null) return null;
    if (_pushTypeAvailable is EqualUnmodifiableListView)
      return _pushTypeAvailable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationResultPrimarySourceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.who, who) || other.who == who) &&
            const DeepCollectionEquality().equals(other._type, _type) &&
            const DeepCollectionEquality()
                .equals(other._communicationMethod, _communicationMethod) &&
            (identical(other.validationStatus, validationStatus) ||
                other.validationStatus == validationStatus) &&
            (identical(other.validationDate, validationDate) ||
                other.validationDate == validationDate) &&
            (identical(other.validationDateElement, validationDateElement) ||
                other.validationDateElement == validationDateElement) &&
            (identical(other.canPushUpdates, canPushUpdates) ||
                other.canPushUpdates == canPushUpdates) &&
            const DeepCollectionEquality()
                .equals(other._pushTypeAvailable, _pushTypeAvailable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      who,
      const DeepCollectionEquality().hash(_type),
      const DeepCollectionEquality().hash(_communicationMethod),
      validationStatus,
      validationDate,
      validationDateElement,
      canPushUpdates,
      const DeepCollectionEquality().hash(_pushTypeAvailable));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationResultPrimarySourceImplCopyWith<
          _$VerificationResultPrimarySourceImpl>
      get copyWith => __$$VerificationResultPrimarySourceImplCopyWithImpl<
          _$VerificationResultPrimarySourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationResultPrimarySourceImplToJson(
      this,
    );
  }
}

abstract class _VerificationResultPrimarySource
    extends VerificationResultPrimarySource {
  const factory _VerificationResultPrimarySource(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final Reference? who,
          final List<CodeableConcept>? type,
          final List<CodeableConcept>? communicationMethod,
          final CodeableConcept? validationStatus,
          final FhirDateTime? validationDate,
          @JsonKey(name: '_validationDate')
          final PrimitiveElement? validationDateElement,
          final CodeableConcept? canPushUpdates,
          final List<CodeableConcept>? pushTypeAvailable}) =
      _$VerificationResultPrimarySourceImpl;
  const _VerificationResultPrimarySource._() : super._();

  factory _VerificationResultPrimarySource.fromJson(Map<String, dynamic> json) =
      _$VerificationResultPrimarySourceImpl.fromJson;

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

  /// [who] Reference to the primary source.
  Reference? get who;
  @override

  /// [type] Type of primary source (License Board; Primary Education;
  /// Continuing Education; Postal Service; Relationship owner; Registration
  ///  Authority; legal source; issuing source; authoritative source).
  List<CodeableConcept>? get type;
  @override

  /// [communicationMethod] Method for communicating with the primary source
  ///  (manual; API; Push).
  List<CodeableConcept>? get communicationMethod;
  @override

  /// [validationStatus] Status of the validation of the target against the
  ///  primary source (successful; failed; unknown).
  CodeableConcept? get validationStatus;
  @override

  /// [validationDate] When the target was validated against the primary
  ///  source.
  FhirDateTime? get validationDate;
  @override

  /// [validationDateElement] Extensions for validationDate
  @JsonKey(name: '_validationDate')
  PrimitiveElement? get validationDateElement;
  @override

  /// [canPushUpdates] Ability of the primary source to push updates/alerts
  ///  (yes; no; undetermined).
  CodeableConcept? get canPushUpdates;
  @override

  /// [pushTypeAvailable] Type of alerts/updates the primary source can send
  ///  (specific requested changes; any changes; as defined by source).
  List<CodeableConcept>? get pushTypeAvailable;
  @override
  @JsonKey(ignore: true)
  _$$VerificationResultPrimarySourceImplCopyWith<
          _$VerificationResultPrimarySourceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerificationResultAttestation _$VerificationResultAttestationFromJson(
    Map<String, dynamic> json) {
  return _VerificationResultAttestation.fromJson(json);
}

/// @nodoc
mixin _$VerificationResultAttestation {
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

  /// [who] The individual or organization attesting to information.
  Reference? get who => throw _privateConstructorUsedError;

  /// [onBehalfOf] When the who is asserting on behalf of another (organization
  ///  or individual).
  Reference? get onBehalfOf => throw _privateConstructorUsedError;

  /// [communicationMethod] The method by which attested information was
  ///  submitted/retrieved (manual; API; Push).
  CodeableConcept? get communicationMethod =>
      throw _privateConstructorUsedError;

  /// [date] The date the information was attested to.
  FhirDate? get date => throw _privateConstructorUsedError;

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [sourceIdentityCertificate] A digital identity certificate associated
  ///  with the attestation source.
  String? get sourceIdentityCertificate => throw _privateConstructorUsedError;
  @JsonKey(name: '_sourceIdentityCertificate')
  PrimitiveElement? get sourceIdentityCertificateElement =>
      throw _privateConstructorUsedError;

  /// [proxyIdentityCertificate] A digital identity certificate associated with
  /// the proxy entity submitting attested information on behalf of the
  ///  attestation source.
  String? get proxyIdentityCertificate => throw _privateConstructorUsedError;
  @JsonKey(name: '_proxyIdentityCertificate')
  PrimitiveElement? get proxyIdentityCertificateElement =>
      throw _privateConstructorUsedError;

  /// [proxySignature] Signed assertion by the proxy entity indicating that
  /// they have the right to submit attested information on behalf of the
  ///  attestation source.
  Signature? get proxySignature => throw _privateConstructorUsedError;

  /// [sourceSignature] Signed assertion by the attestation source that they
  ///  have attested to the information.
  Signature? get sourceSignature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationResultAttestationCopyWith<VerificationResultAttestation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationResultAttestationCopyWith<$Res> {
  factory $VerificationResultAttestationCopyWith(
          VerificationResultAttestation value,
          $Res Function(VerificationResultAttestation) then) =
      _$VerificationResultAttestationCopyWithImpl<$Res,
          VerificationResultAttestation>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference? who,
      Reference? onBehalfOf,
      CodeableConcept? communicationMethod,
      FhirDate? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      String? sourceIdentityCertificate,
      @JsonKey(name: '_sourceIdentityCertificate')
      PrimitiveElement? sourceIdentityCertificateElement,
      String? proxyIdentityCertificate,
      @JsonKey(name: '_proxyIdentityCertificate')
      PrimitiveElement? proxyIdentityCertificateElement,
      Signature? proxySignature,
      Signature? sourceSignature});

  $ReferenceCopyWith<$Res>? get who;
  $ReferenceCopyWith<$Res>? get onBehalfOf;
  $CodeableConceptCopyWith<$Res>? get communicationMethod;
  $SignatureCopyWith<$Res>? get proxySignature;
  $SignatureCopyWith<$Res>? get sourceSignature;
}

/// @nodoc
class _$VerificationResultAttestationCopyWithImpl<$Res,
        $Val extends VerificationResultAttestation>
    implements $VerificationResultAttestationCopyWith<$Res> {
  _$VerificationResultAttestationCopyWithImpl(this._value, this._then);

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
    Object? who = freezed,
    Object? onBehalfOf = freezed,
    Object? communicationMethod = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? sourceIdentityCertificate = freezed,
    Object? sourceIdentityCertificateElement = freezed,
    Object? proxyIdentityCertificate = freezed,
    Object? proxyIdentityCertificateElement = freezed,
    Object? proxySignature = freezed,
    Object? sourceSignature = freezed,
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
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as Reference?,
      onBehalfOf: freezed == onBehalfOf
          ? _value.onBehalfOf
          : onBehalfOf // ignore: cast_nullable_to_non_nullable
              as Reference?,
      communicationMethod: freezed == communicationMethod
          ? _value.communicationMethod
          : communicationMethod // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      sourceIdentityCertificate: freezed == sourceIdentityCertificate
          ? _value.sourceIdentityCertificate
          : sourceIdentityCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceIdentityCertificateElement: freezed ==
              sourceIdentityCertificateElement
          ? _value.sourceIdentityCertificateElement
          : sourceIdentityCertificateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      proxyIdentityCertificate: freezed == proxyIdentityCertificate
          ? _value.proxyIdentityCertificate
          : proxyIdentityCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      proxyIdentityCertificateElement: freezed ==
              proxyIdentityCertificateElement
          ? _value.proxyIdentityCertificateElement
          : proxyIdentityCertificateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      proxySignature: freezed == proxySignature
          ? _value.proxySignature
          : proxySignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
      sourceSignature: freezed == sourceSignature
          ? _value.sourceSignature
          : sourceSignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get who {
    if (_value.who == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.who!, (value) {
      return _then(_value.copyWith(who: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get onBehalfOf {
    if (_value.onBehalfOf == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.onBehalfOf!, (value) {
      return _then(_value.copyWith(onBehalfOf: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get communicationMethod {
    if (_value.communicationMethod == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.communicationMethod!, (value) {
      return _then(_value.copyWith(communicationMethod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SignatureCopyWith<$Res>? get proxySignature {
    if (_value.proxySignature == null) {
      return null;
    }

    return $SignatureCopyWith<$Res>(_value.proxySignature!, (value) {
      return _then(_value.copyWith(proxySignature: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SignatureCopyWith<$Res>? get sourceSignature {
    if (_value.sourceSignature == null) {
      return null;
    }

    return $SignatureCopyWith<$Res>(_value.sourceSignature!, (value) {
      return _then(_value.copyWith(sourceSignature: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerificationResultAttestationImplCopyWith<$Res>
    implements $VerificationResultAttestationCopyWith<$Res> {
  factory _$$VerificationResultAttestationImplCopyWith(
          _$VerificationResultAttestationImpl value,
          $Res Function(_$VerificationResultAttestationImpl) then) =
      __$$VerificationResultAttestationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference? who,
      Reference? onBehalfOf,
      CodeableConcept? communicationMethod,
      FhirDate? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      String? sourceIdentityCertificate,
      @JsonKey(name: '_sourceIdentityCertificate')
      PrimitiveElement? sourceIdentityCertificateElement,
      String? proxyIdentityCertificate,
      @JsonKey(name: '_proxyIdentityCertificate')
      PrimitiveElement? proxyIdentityCertificateElement,
      Signature? proxySignature,
      Signature? sourceSignature});

  @override
  $ReferenceCopyWith<$Res>? get who;
  @override
  $ReferenceCopyWith<$Res>? get onBehalfOf;
  @override
  $CodeableConceptCopyWith<$Res>? get communicationMethod;
  @override
  $SignatureCopyWith<$Res>? get proxySignature;
  @override
  $SignatureCopyWith<$Res>? get sourceSignature;
}

/// @nodoc
class __$$VerificationResultAttestationImplCopyWithImpl<$Res>
    extends _$VerificationResultAttestationCopyWithImpl<$Res,
        _$VerificationResultAttestationImpl>
    implements _$$VerificationResultAttestationImplCopyWith<$Res> {
  __$$VerificationResultAttestationImplCopyWithImpl(
      _$VerificationResultAttestationImpl _value,
      $Res Function(_$VerificationResultAttestationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? who = freezed,
    Object? onBehalfOf = freezed,
    Object? communicationMethod = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? sourceIdentityCertificate = freezed,
    Object? sourceIdentityCertificateElement = freezed,
    Object? proxyIdentityCertificate = freezed,
    Object? proxyIdentityCertificateElement = freezed,
    Object? proxySignature = freezed,
    Object? sourceSignature = freezed,
  }) {
    return _then(_$VerificationResultAttestationImpl(
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
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as Reference?,
      onBehalfOf: freezed == onBehalfOf
          ? _value.onBehalfOf
          : onBehalfOf // ignore: cast_nullable_to_non_nullable
              as Reference?,
      communicationMethod: freezed == communicationMethod
          ? _value.communicationMethod
          : communicationMethod // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      sourceIdentityCertificate: freezed == sourceIdentityCertificate
          ? _value.sourceIdentityCertificate
          : sourceIdentityCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceIdentityCertificateElement: freezed ==
              sourceIdentityCertificateElement
          ? _value.sourceIdentityCertificateElement
          : sourceIdentityCertificateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      proxyIdentityCertificate: freezed == proxyIdentityCertificate
          ? _value.proxyIdentityCertificate
          : proxyIdentityCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      proxyIdentityCertificateElement: freezed ==
              proxyIdentityCertificateElement
          ? _value.proxyIdentityCertificateElement
          : proxyIdentityCertificateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      proxySignature: freezed == proxySignature
          ? _value.proxySignature
          : proxySignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
      sourceSignature: freezed == sourceSignature
          ? _value.sourceSignature
          : sourceSignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationResultAttestationImpl
    extends _VerificationResultAttestation {
  const _$VerificationResultAttestationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.who,
      this.onBehalfOf,
      this.communicationMethod,
      this.date,
      @JsonKey(name: '_date') this.dateElement,
      this.sourceIdentityCertificate,
      @JsonKey(name: '_sourceIdentityCertificate')
      this.sourceIdentityCertificateElement,
      this.proxyIdentityCertificate,
      @JsonKey(name: '_proxyIdentityCertificate')
      this.proxyIdentityCertificateElement,
      this.proxySignature,
      this.sourceSignature})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$VerificationResultAttestationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VerificationResultAttestationImplFromJson(json);

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

  /// [who] The individual or organization attesting to information.
  @override
  final Reference? who;

  /// [onBehalfOf] When the who is asserting on behalf of another (organization
  ///  or individual).
  @override
  final Reference? onBehalfOf;

  /// [communicationMethod] The method by which attested information was
  ///  submitted/retrieved (manual; API; Push).
  @override
  final CodeableConcept? communicationMethod;

  /// [date] The date the information was attested to.
  @override
  final FhirDate? date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [sourceIdentityCertificate] A digital identity certificate associated
  ///  with the attestation source.
  @override
  final String? sourceIdentityCertificate;
  @override
  @JsonKey(name: '_sourceIdentityCertificate')
  final PrimitiveElement? sourceIdentityCertificateElement;

  /// [proxyIdentityCertificate] A digital identity certificate associated with
  /// the proxy entity submitting attested information on behalf of the
  ///  attestation source.
  @override
  final String? proxyIdentityCertificate;
  @override
  @JsonKey(name: '_proxyIdentityCertificate')
  final PrimitiveElement? proxyIdentityCertificateElement;

  /// [proxySignature] Signed assertion by the proxy entity indicating that
  /// they have the right to submit attested information on behalf of the
  ///  attestation source.
  @override
  final Signature? proxySignature;

  /// [sourceSignature] Signed assertion by the attestation source that they
  ///  have attested to the information.
  @override
  final Signature? sourceSignature;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationResultAttestationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.who, who) || other.who == who) &&
            (identical(other.onBehalfOf, onBehalfOf) ||
                other.onBehalfOf == onBehalfOf) &&
            (identical(other.communicationMethod, communicationMethod) ||
                other.communicationMethod == communicationMethod) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateElement, dateElement) ||
                other.dateElement == dateElement) &&
            (identical(other.sourceIdentityCertificate,
                    sourceIdentityCertificate) ||
                other.sourceIdentityCertificate == sourceIdentityCertificate) &&
            (identical(other.sourceIdentityCertificateElement,
                    sourceIdentityCertificateElement) ||
                other.sourceIdentityCertificateElement ==
                    sourceIdentityCertificateElement) &&
            (identical(
                    other.proxyIdentityCertificate, proxyIdentityCertificate) ||
                other.proxyIdentityCertificate == proxyIdentityCertificate) &&
            (identical(other.proxyIdentityCertificateElement,
                    proxyIdentityCertificateElement) ||
                other.proxyIdentityCertificateElement ==
                    proxyIdentityCertificateElement) &&
            (identical(other.proxySignature, proxySignature) ||
                other.proxySignature == proxySignature) &&
            (identical(other.sourceSignature, sourceSignature) ||
                other.sourceSignature == sourceSignature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      who,
      onBehalfOf,
      communicationMethod,
      date,
      dateElement,
      sourceIdentityCertificate,
      sourceIdentityCertificateElement,
      proxyIdentityCertificate,
      proxyIdentityCertificateElement,
      proxySignature,
      sourceSignature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationResultAttestationImplCopyWith<
          _$VerificationResultAttestationImpl>
      get copyWith => __$$VerificationResultAttestationImplCopyWithImpl<
          _$VerificationResultAttestationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationResultAttestationImplToJson(
      this,
    );
  }
}

abstract class _VerificationResultAttestation
    extends VerificationResultAttestation {
  const factory _VerificationResultAttestation(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final Reference? who,
      final Reference? onBehalfOf,
      final CodeableConcept? communicationMethod,
      final FhirDate? date,
      @JsonKey(name: '_date') final PrimitiveElement? dateElement,
      final String? sourceIdentityCertificate,
      @JsonKey(name: '_sourceIdentityCertificate')
      final PrimitiveElement? sourceIdentityCertificateElement,
      final String? proxyIdentityCertificate,
      @JsonKey(name: '_proxyIdentityCertificate')
      final PrimitiveElement? proxyIdentityCertificateElement,
      final Signature? proxySignature,
      final Signature? sourceSignature}) = _$VerificationResultAttestationImpl;
  const _VerificationResultAttestation._() : super._();

  factory _VerificationResultAttestation.fromJson(Map<String, dynamic> json) =
      _$VerificationResultAttestationImpl.fromJson;

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

  /// [who] The individual or organization attesting to information.
  Reference? get who;
  @override

  /// [onBehalfOf] When the who is asserting on behalf of another (organization
  ///  or individual).
  Reference? get onBehalfOf;
  @override

  /// [communicationMethod] The method by which attested information was
  ///  submitted/retrieved (manual; API; Push).
  CodeableConcept? get communicationMethod;
  @override

  /// [date] The date the information was attested to.
  FhirDate? get date;
  @override

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override

  /// [sourceIdentityCertificate] A digital identity certificate associated
  ///  with the attestation source.
  String? get sourceIdentityCertificate;
  @override
  @JsonKey(name: '_sourceIdentityCertificate')
  PrimitiveElement? get sourceIdentityCertificateElement;
  @override

  /// [proxyIdentityCertificate] A digital identity certificate associated with
  /// the proxy entity submitting attested information on behalf of the
  ///  attestation source.
  String? get proxyIdentityCertificate;
  @override
  @JsonKey(name: '_proxyIdentityCertificate')
  PrimitiveElement? get proxyIdentityCertificateElement;
  @override

  /// [proxySignature] Signed assertion by the proxy entity indicating that
  /// they have the right to submit attested information on behalf of the
  ///  attestation source.
  Signature? get proxySignature;
  @override

  /// [sourceSignature] Signed assertion by the attestation source that they
  ///  have attested to the information.
  Signature? get sourceSignature;
  @override
  @JsonKey(ignore: true)
  _$$VerificationResultAttestationImplCopyWith<
          _$VerificationResultAttestationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerificationResultValidator _$VerificationResultValidatorFromJson(
    Map<String, dynamic> json) {
  return _VerificationResultValidator.fromJson(json);
}

/// @nodoc
mixin _$VerificationResultValidator {
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

  /// [organization] Reference to the organization validating information.
  Reference get organization => throw _privateConstructorUsedError;

  /// [identityCertificate] A digital identity certificate associated with the
  ///  validator.
  String? get identityCertificate => throw _privateConstructorUsedError;

  /// [identityCertificateElement] Extensions for identityCertificate
  @JsonKey(name: '_identityCertificate')
  PrimitiveElement? get identityCertificateElement =>
      throw _privateConstructorUsedError;

  /// [attestationSignature] Signed assertion by the validator that they have
  ///  validated the information.
  Signature? get attestationSignature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationResultValidatorCopyWith<VerificationResultValidator>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationResultValidatorCopyWith<$Res> {
  factory $VerificationResultValidatorCopyWith(
          VerificationResultValidator value,
          $Res Function(VerificationResultValidator) then) =
      _$VerificationResultValidatorCopyWithImpl<$Res,
          VerificationResultValidator>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference organization,
      String? identityCertificate,
      @JsonKey(name: '_identityCertificate')
      PrimitiveElement? identityCertificateElement,
      Signature? attestationSignature});

  $ReferenceCopyWith<$Res> get organization;
  $SignatureCopyWith<$Res>? get attestationSignature;
}

/// @nodoc
class _$VerificationResultValidatorCopyWithImpl<$Res,
        $Val extends VerificationResultValidator>
    implements $VerificationResultValidatorCopyWith<$Res> {
  _$VerificationResultValidatorCopyWithImpl(this._value, this._then);

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
    Object? organization = null,
    Object? identityCertificate = freezed,
    Object? identityCertificateElement = freezed,
    Object? attestationSignature = freezed,
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
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Reference,
      identityCertificate: freezed == identityCertificate
          ? _value.identityCertificate
          : identityCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      identityCertificateElement: freezed == identityCertificateElement
          ? _value.identityCertificateElement
          : identityCertificateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      attestationSignature: freezed == attestationSignature
          ? _value.attestationSignature
          : attestationSignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get organization {
    return $ReferenceCopyWith<$Res>(_value.organization, (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SignatureCopyWith<$Res>? get attestationSignature {
    if (_value.attestationSignature == null) {
      return null;
    }

    return $SignatureCopyWith<$Res>(_value.attestationSignature!, (value) {
      return _then(_value.copyWith(attestationSignature: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerificationResultValidatorImplCopyWith<$Res>
    implements $VerificationResultValidatorCopyWith<$Res> {
  factory _$$VerificationResultValidatorImplCopyWith(
          _$VerificationResultValidatorImpl value,
          $Res Function(_$VerificationResultValidatorImpl) then) =
      __$$VerificationResultValidatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference organization,
      String? identityCertificate,
      @JsonKey(name: '_identityCertificate')
      PrimitiveElement? identityCertificateElement,
      Signature? attestationSignature});

  @override
  $ReferenceCopyWith<$Res> get organization;
  @override
  $SignatureCopyWith<$Res>? get attestationSignature;
}

/// @nodoc
class __$$VerificationResultValidatorImplCopyWithImpl<$Res>
    extends _$VerificationResultValidatorCopyWithImpl<$Res,
        _$VerificationResultValidatorImpl>
    implements _$$VerificationResultValidatorImplCopyWith<$Res> {
  __$$VerificationResultValidatorImplCopyWithImpl(
      _$VerificationResultValidatorImpl _value,
      $Res Function(_$VerificationResultValidatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? organization = null,
    Object? identityCertificate = freezed,
    Object? identityCertificateElement = freezed,
    Object? attestationSignature = freezed,
  }) {
    return _then(_$VerificationResultValidatorImpl(
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
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Reference,
      identityCertificate: freezed == identityCertificate
          ? _value.identityCertificate
          : identityCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      identityCertificateElement: freezed == identityCertificateElement
          ? _value.identityCertificateElement
          : identityCertificateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      attestationSignature: freezed == attestationSignature
          ? _value.attestationSignature
          : attestationSignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationResultValidatorImpl extends _VerificationResultValidator {
  const _$VerificationResultValidatorImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.organization,
      this.identityCertificate,
      @JsonKey(name: '_identityCertificate') this.identityCertificateElement,
      this.attestationSignature})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$VerificationResultValidatorImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VerificationResultValidatorImplFromJson(json);

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

  /// [organization] Reference to the organization validating information.
  @override
  final Reference organization;

  /// [identityCertificate] A digital identity certificate associated with the
  ///  validator.
  @override
  final String? identityCertificate;

  /// [identityCertificateElement] Extensions for identityCertificate
  @override
  @JsonKey(name: '_identityCertificate')
  final PrimitiveElement? identityCertificateElement;

  /// [attestationSignature] Signed assertion by the validator that they have
  ///  validated the information.
  @override
  final Signature? attestationSignature;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationResultValidatorImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.identityCertificate, identityCertificate) ||
                other.identityCertificate == identityCertificate) &&
            (identical(other.identityCertificateElement,
                    identityCertificateElement) ||
                other.identityCertificateElement ==
                    identityCertificateElement) &&
            (identical(other.attestationSignature, attestationSignature) ||
                other.attestationSignature == attestationSignature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      organization,
      identityCertificate,
      identityCertificateElement,
      attestationSignature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationResultValidatorImplCopyWith<_$VerificationResultValidatorImpl>
      get copyWith => __$$VerificationResultValidatorImplCopyWithImpl<
          _$VerificationResultValidatorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationResultValidatorImplToJson(
      this,
    );
  }
}

abstract class _VerificationResultValidator
    extends VerificationResultValidator {
  const factory _VerificationResultValidator(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final Reference organization,
          final String? identityCertificate,
          @JsonKey(name: '_identityCertificate')
          final PrimitiveElement? identityCertificateElement,
          final Signature? attestationSignature}) =
      _$VerificationResultValidatorImpl;
  const _VerificationResultValidator._() : super._();

  factory _VerificationResultValidator.fromJson(Map<String, dynamic> json) =
      _$VerificationResultValidatorImpl.fromJson;

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

  /// [organization] Reference to the organization validating information.
  Reference get organization;
  @override

  /// [identityCertificate] A digital identity certificate associated with the
  ///  validator.
  String? get identityCertificate;
  @override

  /// [identityCertificateElement] Extensions for identityCertificate
  @JsonKey(name: '_identityCertificate')
  PrimitiveElement? get identityCertificateElement;
  @override

  /// [attestationSignature] Signed assertion by the validator that they have
  ///  validated the information.
  Signature? get attestationSignature;
  @override
  @JsonKey(ignore: true)
  _$$VerificationResultValidatorImplCopyWith<_$VerificationResultValidatorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
