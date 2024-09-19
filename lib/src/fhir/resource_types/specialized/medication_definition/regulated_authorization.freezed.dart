// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regulated_authorization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegulatedAuthorization _$RegulatedAuthorizationFromJson(
    Map<String, dynamic> json) {
  return _RegulatedAuthorization.fromJson(json);
}

/// @nodoc
mixin _$RegulatedAuthorization {
  /// [resourceType] This is a RegulatedAuthorization resource;
  R4ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  String? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.;
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] (_language): Extensions for language;
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] Business identifier for the authorization, typically assigned by the authorizing body.;
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [subject] The product type, treatment, facility or activity that is being authorized.;
  List<Reference>? get subject => throw _privateConstructorUsedError;

  /// [type] Overall type of this authorization, for example drug marketing approval, orphan drug designation.;
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [description] General textual supporting information.;
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] (_description): Extensions for description;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [region] The territory (e.g., country, jurisdiction etc.) in which the authorization has been granted.;
  List<CodeableConcept>? get region => throw _privateConstructorUsedError;

  /// [status] The status that is authorised e.g. approved. Intermediate states and actions can be tracked with cases and applications.;
  CodeableConcept? get status => throw _privateConstructorUsedError;

  /// [statusDate] The date at which the current status was assigned.;
  FhirDateTime? get statusDate => throw _privateConstructorUsedError;

  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  @JsonKey(name: '_statusDate')
  PrimitiveElement? get statusDateElement => throw _privateConstructorUsedError;

  /// [validityPeriod] The time period in which the regulatory approval, clearance or licencing is in effect. As an example, a Marketing Authorization includes the date of authorization and/or an expiration date.;
  Period? get validityPeriod => throw _privateConstructorUsedError;

  /// [indication] Condition for which the use of the regulated product applies.;
  CodeableReference? get indication => throw _privateConstructorUsedError;

  /// [intendedUse] The intended use of the product, e.g. prevention, treatment, diagnosis.;
  CodeableConcept? get intendedUse => throw _privateConstructorUsedError;

  /// [basis] The legal or regulatory framework against which this authorization is granted, or other reasons for it.;
  List<CodeableConcept>? get basis => throw _privateConstructorUsedError;

  /// [holder] The organization that has been granted this authorization, by some authoritative body (the 'regulator').;
  Reference? get holder => throw _privateConstructorUsedError;

  /// [regulator] The regulatory authority or authorizing body granting the authorization. For example, European Medicines Agency (EMA), Food and Drug Administration (FDA), Health Canada (HC), etc.;
  Reference? get regulator => throw _privateConstructorUsedError;

  /// [case_] The case or regulatory procedure for granting or amending a regulated authorization. An authorization is granted in response to submissions/applications by those seeking authorization. A case is the administrative process that deals with the application(s) that relate to this and assesses them. Note: This area is subject to ongoing review and the workgroup is seeking implementer feedback on its use (see link at bottom of page).;
  @JsonKey(name: 'case')
  RegulatedAuthorizationCase? get case_ => throw _privateConstructorUsedError;

  /// Serializes this RegulatedAuthorization to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegulatedAuthorization
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegulatedAuthorizationCopyWith<RegulatedAuthorization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegulatedAuthorizationCopyWith<$Res> {
  factory $RegulatedAuthorizationCopyWith(RegulatedAuthorization value,
          $Res Function(RegulatedAuthorization) then) =
      _$RegulatedAuthorizationCopyWithImpl<$Res, RegulatedAuthorization>;
  @useResult
  $Res call(
      {R4ResourceType resourceType,
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
      List<Reference>? subject,
      CodeableConcept? type,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<CodeableConcept>? region,
      CodeableConcept? status,
      FhirDateTime? statusDate,
      @JsonKey(name: '_statusDate') PrimitiveElement? statusDateElement,
      Period? validityPeriod,
      CodeableReference? indication,
      CodeableConcept? intendedUse,
      List<CodeableConcept>? basis,
      Reference? holder,
      Reference? regulator,
      @JsonKey(name: 'case') RegulatedAuthorizationCase? case_});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res>? get type;
  $CodeableConceptCopyWith<$Res>? get status;
  $PeriodCopyWith<$Res>? get validityPeriod;
  $CodeableReferenceCopyWith<$Res>? get indication;
  $CodeableConceptCopyWith<$Res>? get intendedUse;
  $ReferenceCopyWith<$Res>? get holder;
  $ReferenceCopyWith<$Res>? get regulator;
  $RegulatedAuthorizationCaseCopyWith<$Res>? get case_;
}

/// @nodoc
class _$RegulatedAuthorizationCopyWithImpl<$Res,
        $Val extends RegulatedAuthorization>
    implements $RegulatedAuthorizationCopyWith<$Res> {
  _$RegulatedAuthorizationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegulatedAuthorization
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
    Object? subject = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? region = freezed,
    Object? status = freezed,
    Object? statusDate = freezed,
    Object? statusDateElement = freezed,
    Object? validityPeriod = freezed,
    Object? indication = freezed,
    Object? intendedUse = freezed,
    Object? basis = freezed,
    Object? holder = freezed,
    Object? regulator = freezed,
    Object? case_ = freezed,
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
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      statusDateElement: freezed == statusDateElement
          ? _value.statusDateElement
          : statusDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      validityPeriod: freezed == validityPeriod
          ? _value.validityPeriod
          : validityPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      indication: freezed == indication
          ? _value.indication
          : indication // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      intendedUse: freezed == intendedUse
          ? _value.intendedUse
          : intendedUse // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      basis: freezed == basis
          ? _value.basis
          : basis // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      holder: freezed == holder
          ? _value.holder
          : holder // ignore: cast_nullable_to_non_nullable
              as Reference?,
      regulator: freezed == regulator
          ? _value.regulator
          : regulator // ignore: cast_nullable_to_non_nullable
              as Reference?,
      case_: freezed == case_
          ? _value.case_
          : case_ // ignore: cast_nullable_to_non_nullable
              as RegulatedAuthorizationCase?,
    ) as $Val);
  }

  /// Create a copy of RegulatedAuthorization
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

  /// Create a copy of RegulatedAuthorization
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

  /// Create a copy of RegulatedAuthorization
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  /// Create a copy of RegulatedAuthorization
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of RegulatedAuthorization
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get validityPeriod {
    if (_value.validityPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.validityPeriod!, (value) {
      return _then(_value.copyWith(validityPeriod: value) as $Val);
    });
  }

  /// Create a copy of RegulatedAuthorization
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res>? get indication {
    if (_value.indication == null) {
      return null;
    }

    return $CodeableReferenceCopyWith<$Res>(_value.indication!, (value) {
      return _then(_value.copyWith(indication: value) as $Val);
    });
  }

  /// Create a copy of RegulatedAuthorization
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get intendedUse {
    if (_value.intendedUse == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.intendedUse!, (value) {
      return _then(_value.copyWith(intendedUse: value) as $Val);
    });
  }

  /// Create a copy of RegulatedAuthorization
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get holder {
    if (_value.holder == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.holder!, (value) {
      return _then(_value.copyWith(holder: value) as $Val);
    });
  }

  /// Create a copy of RegulatedAuthorization
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get regulator {
    if (_value.regulator == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.regulator!, (value) {
      return _then(_value.copyWith(regulator: value) as $Val);
    });
  }

  /// Create a copy of RegulatedAuthorization
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegulatedAuthorizationCaseCopyWith<$Res>? get case_ {
    if (_value.case_ == null) {
      return null;
    }

    return $RegulatedAuthorizationCaseCopyWith<$Res>(_value.case_!, (value) {
      return _then(_value.copyWith(case_: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegulatedAuthorizationImplCopyWith<$Res>
    implements $RegulatedAuthorizationCopyWith<$Res> {
  factory _$$RegulatedAuthorizationImplCopyWith(
          _$RegulatedAuthorizationImpl value,
          $Res Function(_$RegulatedAuthorizationImpl) then) =
      __$$RegulatedAuthorizationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {R4ResourceType resourceType,
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
      List<Reference>? subject,
      CodeableConcept? type,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<CodeableConcept>? region,
      CodeableConcept? status,
      FhirDateTime? statusDate,
      @JsonKey(name: '_statusDate') PrimitiveElement? statusDateElement,
      Period? validityPeriod,
      CodeableReference? indication,
      CodeableConcept? intendedUse,
      List<CodeableConcept>? basis,
      Reference? holder,
      Reference? regulator,
      @JsonKey(name: 'case') RegulatedAuthorizationCase? case_});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $CodeableConceptCopyWith<$Res>? get status;
  @override
  $PeriodCopyWith<$Res>? get validityPeriod;
  @override
  $CodeableReferenceCopyWith<$Res>? get indication;
  @override
  $CodeableConceptCopyWith<$Res>? get intendedUse;
  @override
  $ReferenceCopyWith<$Res>? get holder;
  @override
  $ReferenceCopyWith<$Res>? get regulator;
  @override
  $RegulatedAuthorizationCaseCopyWith<$Res>? get case_;
}

/// @nodoc
class __$$RegulatedAuthorizationImplCopyWithImpl<$Res>
    extends _$RegulatedAuthorizationCopyWithImpl<$Res,
        _$RegulatedAuthorizationImpl>
    implements _$$RegulatedAuthorizationImplCopyWith<$Res> {
  __$$RegulatedAuthorizationImplCopyWithImpl(
      _$RegulatedAuthorizationImpl _value,
      $Res Function(_$RegulatedAuthorizationImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegulatedAuthorization
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
    Object? subject = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? region = freezed,
    Object? status = freezed,
    Object? statusDate = freezed,
    Object? statusDateElement = freezed,
    Object? validityPeriod = freezed,
    Object? indication = freezed,
    Object? intendedUse = freezed,
    Object? basis = freezed,
    Object? holder = freezed,
    Object? regulator = freezed,
    Object? case_ = freezed,
  }) {
    return _then(_$RegulatedAuthorizationImpl(
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
      subject: freezed == subject
          ? _value._subject
          : subject // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      region: freezed == region
          ? _value._region
          : region // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      statusDateElement: freezed == statusDateElement
          ? _value.statusDateElement
          : statusDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      validityPeriod: freezed == validityPeriod
          ? _value.validityPeriod
          : validityPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      indication: freezed == indication
          ? _value.indication
          : indication // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      intendedUse: freezed == intendedUse
          ? _value.intendedUse
          : intendedUse // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      basis: freezed == basis
          ? _value._basis
          : basis // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      holder: freezed == holder
          ? _value.holder
          : holder // ignore: cast_nullable_to_non_nullable
              as Reference?,
      regulator: freezed == regulator
          ? _value.regulator
          : regulator // ignore: cast_nullable_to_non_nullable
              as Reference?,
      case_: freezed == case_
          ? _value.case_
          : case_ // ignore: cast_nullable_to_non_nullable
              as RegulatedAuthorizationCase?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegulatedAuthorizationImpl extends _RegulatedAuthorization {
  _$RegulatedAuthorizationImpl(
      {this.resourceType = R4ResourceType.RegulatedAuthorization,
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
      final List<Reference>? subject,
      this.type,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      final List<CodeableConcept>? region,
      this.status,
      this.statusDate,
      @JsonKey(name: '_statusDate') this.statusDateElement,
      this.validityPeriod,
      this.indication,
      this.intendedUse,
      final List<CodeableConcept>? basis,
      this.holder,
      this.regulator,
      @JsonKey(name: 'case') this.case_})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _subject = subject,
        _region = region,
        _basis = basis,
        super._();

  factory _$RegulatedAuthorizationImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegulatedAuthorizationImplFromJson(json);

  /// [resourceType] This is a RegulatedAuthorization resource;
  @override
  @JsonKey()
  final R4ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  @override
  final String? id;

  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;

  /// [language] The base language in which the resource is written.;
  @override
  final FhirCode? language;

  /// [languageElement] (_language): Extensions for language;
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] Business identifier for the authorization, typically assigned by the authorizing body.;
  final List<Identifier>? _identifier;

  /// [identifier] Business identifier for the authorization, typically assigned by the authorizing body.;
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [subject] The product type, treatment, facility or activity that is being authorized.;
  final List<Reference>? _subject;

  /// [subject] The product type, treatment, facility or activity that is being authorized.;
  @override
  List<Reference>? get subject {
    final value = _subject;
    if (value == null) return null;
    if (_subject is EqualUnmodifiableListView) return _subject;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] Overall type of this authorization, for example drug marketing approval, orphan drug designation.;
  @override
  final CodeableConcept? type;

  /// [description] General textual supporting information.;
  @override
  final FhirMarkdown? description;

  /// [descriptionElement] (_description): Extensions for description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [region] The territory (e.g., country, jurisdiction etc.) in which the authorization has been granted.;
  final List<CodeableConcept>? _region;

  /// [region] The territory (e.g., country, jurisdiction etc.) in which the authorization has been granted.;
  @override
  List<CodeableConcept>? get region {
    final value = _region;
    if (value == null) return null;
    if (_region is EqualUnmodifiableListView) return _region;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The status that is authorised e.g. approved. Intermediate states and actions can be tracked with cases and applications.;
  @override
  final CodeableConcept? status;

  /// [statusDate] The date at which the current status was assigned.;
  @override
  final FhirDateTime? statusDate;

  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  @override
  @JsonKey(name: '_statusDate')
  final PrimitiveElement? statusDateElement;

  /// [validityPeriod] The time period in which the regulatory approval, clearance or licencing is in effect. As an example, a Marketing Authorization includes the date of authorization and/or an expiration date.;
  @override
  final Period? validityPeriod;

  /// [indication] Condition for which the use of the regulated product applies.;
  @override
  final CodeableReference? indication;

  /// [intendedUse] The intended use of the product, e.g. prevention, treatment, diagnosis.;
  @override
  final CodeableConcept? intendedUse;

  /// [basis] The legal or regulatory framework against which this authorization is granted, or other reasons for it.;
  final List<CodeableConcept>? _basis;

  /// [basis] The legal or regulatory framework against which this authorization is granted, or other reasons for it.;
  @override
  List<CodeableConcept>? get basis {
    final value = _basis;
    if (value == null) return null;
    if (_basis is EqualUnmodifiableListView) return _basis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [holder] The organization that has been granted this authorization, by some authoritative body (the 'regulator').;
  @override
  final Reference? holder;

  /// [regulator] The regulatory authority or authorizing body granting the authorization. For example, European Medicines Agency (EMA), Food and Drug Administration (FDA), Health Canada (HC), etc.;
  @override
  final Reference? regulator;

  /// [case_] The case or regulatory procedure for granting or amending a regulated authorization. An authorization is granted in response to submissions/applications by those seeking authorization. A case is the administrative process that deals with the application(s) that relate to this and assesses them. Note: This area is subject to ongoing review and the workgroup is seeking implementer feedback on its use (see link at bottom of page).;
  @override
  @JsonKey(name: 'case')
  final RegulatedAuthorizationCase? case_;

  @override
  String toString() {
    return 'RegulatedAuthorization(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, subject: $subject, type: $type, description: $description, descriptionElement: $descriptionElement, region: $region, status: $status, statusDate: $statusDate, statusDateElement: $statusDateElement, validityPeriod: $validityPeriod, indication: $indication, intendedUse: $intendedUse, basis: $basis, holder: $holder, regulator: $regulator, case_: $case_)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegulatedAuthorizationImpl &&
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
            const DeepCollectionEquality().equals(other._subject, _subject) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            const DeepCollectionEquality().equals(other._region, _region) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusDate, statusDate) ||
                other.statusDate == statusDate) &&
            (identical(other.statusDateElement, statusDateElement) ||
                other.statusDateElement == statusDateElement) &&
            (identical(other.validityPeriod, validityPeriod) ||
                other.validityPeriod == validityPeriod) &&
            (identical(other.indication, indication) ||
                other.indication == indication) &&
            (identical(other.intendedUse, intendedUse) ||
                other.intendedUse == intendedUse) &&
            const DeepCollectionEquality().equals(other._basis, _basis) &&
            (identical(other.holder, holder) || other.holder == holder) &&
            (identical(other.regulator, regulator) ||
                other.regulator == regulator) &&
            (identical(other.case_, case_) || other.case_ == case_));
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
        const DeepCollectionEquality().hash(_subject),
        type,
        description,
        descriptionElement,
        const DeepCollectionEquality().hash(_region),
        status,
        statusDate,
        statusDateElement,
        validityPeriod,
        indication,
        intendedUse,
        const DeepCollectionEquality().hash(_basis),
        holder,
        regulator,
        case_
      ]);

  /// Create a copy of RegulatedAuthorization
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegulatedAuthorizationImplCopyWith<_$RegulatedAuthorizationImpl>
      get copyWith => __$$RegulatedAuthorizationImplCopyWithImpl<
          _$RegulatedAuthorizationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegulatedAuthorizationImplToJson(
      this,
    );
  }
}

abstract class _RegulatedAuthorization extends RegulatedAuthorization {
  factory _RegulatedAuthorization(
      {final R4ResourceType resourceType,
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
      final List<Reference>? subject,
      final CodeableConcept? type,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final List<CodeableConcept>? region,
      final CodeableConcept? status,
      final FhirDateTime? statusDate,
      @JsonKey(name: '_statusDate') final PrimitiveElement? statusDateElement,
      final Period? validityPeriod,
      final CodeableReference? indication,
      final CodeableConcept? intendedUse,
      final List<CodeableConcept>? basis,
      final Reference? holder,
      final Reference? regulator,
      @JsonKey(name: 'case')
      final RegulatedAuthorizationCase? case_}) = _$RegulatedAuthorizationImpl;
  _RegulatedAuthorization._() : super._();

  factory _RegulatedAuthorization.fromJson(Map<String, dynamic> json) =
      _$RegulatedAuthorizationImpl.fromJson;

  /// [resourceType] This is a RegulatedAuthorization resource;
  @override
  R4ResourceType get resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  @override
  String? get id;

  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  @override
  FhirMeta? get meta;

  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  @override
  FhirUri? get implicitRules;

  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  @override
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;

  /// [language] The base language in which the resource is written.;
  @override
  FhirCode? get language;

  /// [languageElement] (_language): Extensions for language;
  @override
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  @override
  Narrative? get text;

  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  @override
  List<Resource>? get contained;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension;

  /// [identifier] Business identifier for the authorization, typically assigned by the authorizing body.;
  @override
  List<Identifier>? get identifier;

  /// [subject] The product type, treatment, facility or activity that is being authorized.;
  @override
  List<Reference>? get subject;

  /// [type] Overall type of this authorization, for example drug marketing approval, orphan drug designation.;
  @override
  CodeableConcept? get type;

  /// [description] General textual supporting information.;
  @override
  FhirMarkdown? get description;

  /// [descriptionElement] (_description): Extensions for description;
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;

  /// [region] The territory (e.g., country, jurisdiction etc.) in which the authorization has been granted.;
  @override
  List<CodeableConcept>? get region;

  /// [status] The status that is authorised e.g. approved. Intermediate states and actions can be tracked with cases and applications.;
  @override
  CodeableConcept? get status;

  /// [statusDate] The date at which the current status was assigned.;
  @override
  FhirDateTime? get statusDate;

  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  @override
  @JsonKey(name: '_statusDate')
  PrimitiveElement? get statusDateElement;

  /// [validityPeriod] The time period in which the regulatory approval, clearance or licencing is in effect. As an example, a Marketing Authorization includes the date of authorization and/or an expiration date.;
  @override
  Period? get validityPeriod;

  /// [indication] Condition for which the use of the regulated product applies.;
  @override
  CodeableReference? get indication;

  /// [intendedUse] The intended use of the product, e.g. prevention, treatment, diagnosis.;
  @override
  CodeableConcept? get intendedUse;

  /// [basis] The legal or regulatory framework against which this authorization is granted, or other reasons for it.;
  @override
  List<CodeableConcept>? get basis;

  /// [holder] The organization that has been granted this authorization, by some authoritative body (the 'regulator').;
  @override
  Reference? get holder;

  /// [regulator] The regulatory authority or authorizing body granting the authorization. For example, European Medicines Agency (EMA), Food and Drug Administration (FDA), Health Canada (HC), etc.;
  @override
  Reference? get regulator;

  /// [case_] The case or regulatory procedure for granting or amending a regulated authorization. An authorization is granted in response to submissions/applications by those seeking authorization. A case is the administrative process that deals with the application(s) that relate to this and assesses them. Note: This area is subject to ongoing review and the workgroup is seeking implementer feedback on its use (see link at bottom of page).;
  @override
  @JsonKey(name: 'case')
  RegulatedAuthorizationCase? get case_;

  /// Create a copy of RegulatedAuthorization
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegulatedAuthorizationImplCopyWith<_$RegulatedAuthorizationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RegulatedAuthorizationCase _$RegulatedAuthorizationCaseFromJson(
    Map<String, dynamic> json) {
  return _RegulatedAuthorizationCase.fromJson(json);
}

/// @nodoc
mixin _$RegulatedAuthorizationCase {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] Identifier by which this case can be referenced.;
  Identifier? get identifier => throw _privateConstructorUsedError;

  /// [type] The defining type of case.;
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [status] The status associated with the case.;
  CodeableConcept? get status => throw _privateConstructorUsedError;

  /// [datePeriod] Relevant date for this case.;
  Period? get datePeriod => throw _privateConstructorUsedError;

  /// [dateDateTime] Relevant date for this case.;
  FhirDateTime? get dateDateTime => throw _privateConstructorUsedError;

  /// [dateDateTimeElement] (_dateDateTime): Extensions for dateDateTime;
  @JsonKey(name: '_dateDateTime')
  PrimitiveElement? get dateDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [application] A regulatory submission from an organization to a regulator, as part of an assessing case. Multiple applications may occur over time, with more or different information to support or modify the submission or the authorization. The applications can be considered as steps within the longer running case or procedure for this authorization process.;
  List<RegulatedAuthorizationCase>? get application =>
      throw _privateConstructorUsedError;

  /// Serializes this RegulatedAuthorizationCase to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegulatedAuthorizationCase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegulatedAuthorizationCaseCopyWith<RegulatedAuthorizationCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegulatedAuthorizationCaseCopyWith<$Res> {
  factory $RegulatedAuthorizationCaseCopyWith(RegulatedAuthorizationCase value,
          $Res Function(RegulatedAuthorizationCase) then) =
      _$RegulatedAuthorizationCaseCopyWithImpl<$Res,
          RegulatedAuthorizationCase>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Identifier? identifier,
      CodeableConcept? type,
      CodeableConcept? status,
      Period? datePeriod,
      FhirDateTime? dateDateTime,
      @JsonKey(name: '_dateDateTime') PrimitiveElement? dateDateTimeElement,
      List<RegulatedAuthorizationCase>? application});

  $IdentifierCopyWith<$Res>? get identifier;
  $CodeableConceptCopyWith<$Res>? get type;
  $CodeableConceptCopyWith<$Res>? get status;
  $PeriodCopyWith<$Res>? get datePeriod;
}

/// @nodoc
class _$RegulatedAuthorizationCaseCopyWithImpl<$Res,
        $Val extends RegulatedAuthorizationCase>
    implements $RegulatedAuthorizationCaseCopyWith<$Res> {
  _$RegulatedAuthorizationCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegulatedAuthorizationCase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? datePeriod = freezed,
    Object? dateDateTime = freezed,
    Object? dateDateTimeElement = freezed,
    Object? application = freezed,
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
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      datePeriod: freezed == datePeriod
          ? _value.datePeriod
          : datePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      dateDateTime: freezed == dateDateTime
          ? _value.dateDateTime
          : dateDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateDateTimeElement: freezed == dateDateTimeElement
          ? _value.dateDateTimeElement
          : dateDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      application: freezed == application
          ? _value.application
          : application // ignore: cast_nullable_to_non_nullable
              as List<RegulatedAuthorizationCase>?,
    ) as $Val);
  }

  /// Create a copy of RegulatedAuthorizationCase
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of RegulatedAuthorizationCase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  /// Create a copy of RegulatedAuthorizationCase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of RegulatedAuthorizationCase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get datePeriod {
    if (_value.datePeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.datePeriod!, (value) {
      return _then(_value.copyWith(datePeriod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegulatedAuthorizationCaseImplCopyWith<$Res>
    implements $RegulatedAuthorizationCaseCopyWith<$Res> {
  factory _$$RegulatedAuthorizationCaseImplCopyWith(
          _$RegulatedAuthorizationCaseImpl value,
          $Res Function(_$RegulatedAuthorizationCaseImpl) then) =
      __$$RegulatedAuthorizationCaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Identifier? identifier,
      CodeableConcept? type,
      CodeableConcept? status,
      Period? datePeriod,
      FhirDateTime? dateDateTime,
      @JsonKey(name: '_dateDateTime') PrimitiveElement? dateDateTimeElement,
      List<RegulatedAuthorizationCase>? application});

  @override
  $IdentifierCopyWith<$Res>? get identifier;
  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $CodeableConceptCopyWith<$Res>? get status;
  @override
  $PeriodCopyWith<$Res>? get datePeriod;
}

/// @nodoc
class __$$RegulatedAuthorizationCaseImplCopyWithImpl<$Res>
    extends _$RegulatedAuthorizationCaseCopyWithImpl<$Res,
        _$RegulatedAuthorizationCaseImpl>
    implements _$$RegulatedAuthorizationCaseImplCopyWith<$Res> {
  __$$RegulatedAuthorizationCaseImplCopyWithImpl(
      _$RegulatedAuthorizationCaseImpl _value,
      $Res Function(_$RegulatedAuthorizationCaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegulatedAuthorizationCase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? datePeriod = freezed,
    Object? dateDateTime = freezed,
    Object? dateDateTimeElement = freezed,
    Object? application = freezed,
  }) {
    return _then(_$RegulatedAuthorizationCaseImpl(
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
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      datePeriod: freezed == datePeriod
          ? _value.datePeriod
          : datePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      dateDateTime: freezed == dateDateTime
          ? _value.dateDateTime
          : dateDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateDateTimeElement: freezed == dateDateTimeElement
          ? _value.dateDateTimeElement
          : dateDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      application: freezed == application
          ? _value._application
          : application // ignore: cast_nullable_to_non_nullable
              as List<RegulatedAuthorizationCase>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegulatedAuthorizationCaseImpl extends _RegulatedAuthorizationCase {
  _$RegulatedAuthorizationCaseImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.identifier,
      this.type,
      this.status,
      this.datePeriod,
      this.dateDateTime,
      @JsonKey(name: '_dateDateTime') this.dateDateTimeElement,
      final List<RegulatedAuthorizationCase>? application})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _application = application,
        super._();

  factory _$RegulatedAuthorizationCaseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RegulatedAuthorizationCaseImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] Identifier by which this case can be referenced.;
  @override
  final Identifier? identifier;

  /// [type] The defining type of case.;
  @override
  final CodeableConcept? type;

  /// [status] The status associated with the case.;
  @override
  final CodeableConcept? status;

  /// [datePeriod] Relevant date for this case.;
  @override
  final Period? datePeriod;

  /// [dateDateTime] Relevant date for this case.;
  @override
  final FhirDateTime? dateDateTime;

  /// [dateDateTimeElement] (_dateDateTime): Extensions for dateDateTime;
  @override
  @JsonKey(name: '_dateDateTime')
  final PrimitiveElement? dateDateTimeElement;

  /// [application] A regulatory submission from an organization to a regulator, as part of an assessing case. Multiple applications may occur over time, with more or different information to support or modify the submission or the authorization. The applications can be considered as steps within the longer running case or procedure for this authorization process.;
  final List<RegulatedAuthorizationCase>? _application;

  /// [application] A regulatory submission from an organization to a regulator, as part of an assessing case. Multiple applications may occur over time, with more or different information to support or modify the submission or the authorization. The applications can be considered as steps within the longer running case or procedure for this authorization process.;
  @override
  List<RegulatedAuthorizationCase>? get application {
    final value = _application;
    if (value == null) return null;
    if (_application is EqualUnmodifiableListView) return _application;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RegulatedAuthorizationCase(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, type: $type, status: $status, datePeriod: $datePeriod, dateDateTime: $dateDateTime, dateDateTimeElement: $dateDateTimeElement, application: $application)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegulatedAuthorizationCaseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.datePeriod, datePeriod) ||
                other.datePeriod == datePeriod) &&
            (identical(other.dateDateTime, dateDateTime) ||
                other.dateDateTime == dateDateTime) &&
            (identical(other.dateDateTimeElement, dateDateTimeElement) ||
                other.dateDateTimeElement == dateDateTimeElement) &&
            const DeepCollectionEquality()
                .equals(other._application, _application));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      identifier,
      type,
      status,
      datePeriod,
      dateDateTime,
      dateDateTimeElement,
      const DeepCollectionEquality().hash(_application));

  /// Create a copy of RegulatedAuthorizationCase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegulatedAuthorizationCaseImplCopyWith<_$RegulatedAuthorizationCaseImpl>
      get copyWith => __$$RegulatedAuthorizationCaseImplCopyWithImpl<
          _$RegulatedAuthorizationCaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegulatedAuthorizationCaseImplToJson(
      this,
    );
  }
}

abstract class _RegulatedAuthorizationCase extends RegulatedAuthorizationCase {
  factory _RegulatedAuthorizationCase(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final Identifier? identifier,
          final CodeableConcept? type,
          final CodeableConcept? status,
          final Period? datePeriod,
          final FhirDateTime? dateDateTime,
          @JsonKey(name: '_dateDateTime')
          final PrimitiveElement? dateDateTimeElement,
          final List<RegulatedAuthorizationCase>? application}) =
      _$RegulatedAuthorizationCaseImpl;
  _RegulatedAuthorizationCase._() : super._();

  factory _RegulatedAuthorizationCase.fromJson(Map<String, dynamic> json) =
      _$RegulatedAuthorizationCaseImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension;

  /// [identifier] Identifier by which this case can be referenced.;
  @override
  Identifier? get identifier;

  /// [type] The defining type of case.;
  @override
  CodeableConcept? get type;

  /// [status] The status associated with the case.;
  @override
  CodeableConcept? get status;

  /// [datePeriod] Relevant date for this case.;
  @override
  Period? get datePeriod;

  /// [dateDateTime] Relevant date for this case.;
  @override
  FhirDateTime? get dateDateTime;

  /// [dateDateTimeElement] (_dateDateTime): Extensions for dateDateTime;
  @override
  @JsonKey(name: '_dateDateTime')
  PrimitiveElement? get dateDateTimeElement;

  /// [application] A regulatory submission from an organization to a regulator, as part of an assessing case. Multiple applications may occur over time, with more or different information to support or modify the submission or the authorization. The applications can be considered as steps within the longer running case or procedure for this authorization process.;
  @override
  List<RegulatedAuthorizationCase>? get application;

  /// Create a copy of RegulatedAuthorizationCase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegulatedAuthorizationCaseImplCopyWith<_$RegulatedAuthorizationCaseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
