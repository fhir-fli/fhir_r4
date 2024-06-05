// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clinical_use_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClinicalUseDefinition _$ClinicalUseDefinitionFromJson(
    Map<String, dynamic> json) {
  return _ClinicalUseDefinition.fromJson(json);
}

/// @nodoc
mixin _$ClinicalUseDefinition {
  /// [resourceType] This is a ClinicalUseDefinition resource;
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

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] Business identifier for this issue.;
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [type] indication | contraindication | interaction | undesirable-effect | warning.;
  FhirCode? get type => throw _privateConstructorUsedError;

  /// [typeElement] (_type): Extensions for type;
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [category] A categorisation of the issue, primarily for dividing warnings into subject heading areas such as "Pregnancy and Lactation", "Overdose", "Effects on Ability to Drive and Use Machines".;
  List<CodeableConcept>? get category => throw _privateConstructorUsedError;

  /// [subject] The medication or procedure for which this is an indication.;
  List<Reference>? get subject => throw _privateConstructorUsedError;

  /// [status] Whether this is a current issue or one that has been retired etc.;
  CodeableConcept? get status => throw _privateConstructorUsedError;

  /// [contraindication] Specifics for when this is a contraindication.;
  ClinicalUseDefinitionContraindication? get contraindication =>
      throw _privateConstructorUsedError;

  /// [indication] Specifics for when this is an indication.;
  ClinicalUseDefinitionIndication? get indication =>
      throw _privateConstructorUsedError;

  /// [interaction] Specifics for when this is an interaction.;
  ClinicalUseDefinitionInteraction? get interaction =>
      throw _privateConstructorUsedError;

  /// [population] The population group to which this applies.;
  List<Reference>? get population => throw _privateConstructorUsedError;

  /// [undesirableEffect] Describe the possible undesirable effects (negative outcomes) from the use of the medicinal product as treatment.;
  ClinicalUseDefinitionUndesirableEffect? get undesirableEffect =>
      throw _privateConstructorUsedError;

  /// [warning] A critical piece of information about environmental, health or physical risks or hazards that serve as caution to the user. For example 'Do not operate heavy machinery', 'May cause drowsiness', or 'Get medical advice/attention if you feel unwell'.;
  ClinicalUseDefinitionWarning? get warning =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicalUseDefinitionCopyWith<ClinicalUseDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicalUseDefinitionCopyWith<$Res> {
  factory $ClinicalUseDefinitionCopyWith(ClinicalUseDefinition value,
          $Res Function(ClinicalUseDefinition) then) =
      _$ClinicalUseDefinitionCopyWithImpl<$Res, ClinicalUseDefinition>;
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
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      List<CodeableConcept>? category,
      List<Reference>? subject,
      CodeableConcept? status,
      ClinicalUseDefinitionContraindication? contraindication,
      ClinicalUseDefinitionIndication? indication,
      ClinicalUseDefinitionInteraction? interaction,
      List<Reference>? population,
      ClinicalUseDefinitionUndesirableEffect? undesirableEffect,
      ClinicalUseDefinitionWarning? warning});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res>? get status;
  $ClinicalUseDefinitionContraindicationCopyWith<$Res>? get contraindication;
  $ClinicalUseDefinitionIndicationCopyWith<$Res>? get indication;
  $ClinicalUseDefinitionInteractionCopyWith<$Res>? get interaction;
  $ClinicalUseDefinitionUndesirableEffectCopyWith<$Res>? get undesirableEffect;
  $ClinicalUseDefinitionWarningCopyWith<$Res>? get warning;
}

/// @nodoc
class _$ClinicalUseDefinitionCopyWithImpl<$Res,
        $Val extends ClinicalUseDefinition>
    implements $ClinicalUseDefinitionCopyWith<$Res> {
  _$ClinicalUseDefinitionCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? category = freezed,
    Object? subject = freezed,
    Object? status = freezed,
    Object? contraindication = freezed,
    Object? indication = freezed,
    Object? interaction = freezed,
    Object? population = freezed,
    Object? undesirableEffect = freezed,
    Object? warning = freezed,
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
              as List<CodeableConcept>?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      contraindication: freezed == contraindication
          ? _value.contraindication
          : contraindication // ignore: cast_nullable_to_non_nullable
              as ClinicalUseDefinitionContraindication?,
      indication: freezed == indication
          ? _value.indication
          : indication // ignore: cast_nullable_to_non_nullable
              as ClinicalUseDefinitionIndication?,
      interaction: freezed == interaction
          ? _value.interaction
          : interaction // ignore: cast_nullable_to_non_nullable
              as ClinicalUseDefinitionInteraction?,
      population: freezed == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      undesirableEffect: freezed == undesirableEffect
          ? _value.undesirableEffect
          : undesirableEffect // ignore: cast_nullable_to_non_nullable
              as ClinicalUseDefinitionUndesirableEffect?,
      warning: freezed == warning
          ? _value.warning
          : warning // ignore: cast_nullable_to_non_nullable
              as ClinicalUseDefinitionWarning?,
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
  $CodeableConceptCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClinicalUseDefinitionContraindicationCopyWith<$Res>? get contraindication {
    if (_value.contraindication == null) {
      return null;
    }

    return $ClinicalUseDefinitionContraindicationCopyWith<$Res>(
        _value.contraindication!, (value) {
      return _then(_value.copyWith(contraindication: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClinicalUseDefinitionIndicationCopyWith<$Res>? get indication {
    if (_value.indication == null) {
      return null;
    }

    return $ClinicalUseDefinitionIndicationCopyWith<$Res>(_value.indication!,
        (value) {
      return _then(_value.copyWith(indication: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClinicalUseDefinitionInteractionCopyWith<$Res>? get interaction {
    if (_value.interaction == null) {
      return null;
    }

    return $ClinicalUseDefinitionInteractionCopyWith<$Res>(_value.interaction!,
        (value) {
      return _then(_value.copyWith(interaction: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClinicalUseDefinitionUndesirableEffectCopyWith<$Res>? get undesirableEffect {
    if (_value.undesirableEffect == null) {
      return null;
    }

    return $ClinicalUseDefinitionUndesirableEffectCopyWith<$Res>(
        _value.undesirableEffect!, (value) {
      return _then(_value.copyWith(undesirableEffect: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClinicalUseDefinitionWarningCopyWith<$Res>? get warning {
    if (_value.warning == null) {
      return null;
    }

    return $ClinicalUseDefinitionWarningCopyWith<$Res>(_value.warning!,
        (value) {
      return _then(_value.copyWith(warning: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClinicalUseDefinitionImplCopyWith<$Res>
    implements $ClinicalUseDefinitionCopyWith<$Res> {
  factory _$$ClinicalUseDefinitionImplCopyWith(
          _$ClinicalUseDefinitionImpl value,
          $Res Function(_$ClinicalUseDefinitionImpl) then) =
      __$$ClinicalUseDefinitionImplCopyWithImpl<$Res>;
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
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      List<CodeableConcept>? category,
      List<Reference>? subject,
      CodeableConcept? status,
      ClinicalUseDefinitionContraindication? contraindication,
      ClinicalUseDefinitionIndication? indication,
      ClinicalUseDefinitionInteraction? interaction,
      List<Reference>? population,
      ClinicalUseDefinitionUndesirableEffect? undesirableEffect,
      ClinicalUseDefinitionWarning? warning});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res>? get status;
  @override
  $ClinicalUseDefinitionContraindicationCopyWith<$Res>? get contraindication;
  @override
  $ClinicalUseDefinitionIndicationCopyWith<$Res>? get indication;
  @override
  $ClinicalUseDefinitionInteractionCopyWith<$Res>? get interaction;
  @override
  $ClinicalUseDefinitionUndesirableEffectCopyWith<$Res>? get undesirableEffect;
  @override
  $ClinicalUseDefinitionWarningCopyWith<$Res>? get warning;
}

/// @nodoc
class __$$ClinicalUseDefinitionImplCopyWithImpl<$Res>
    extends _$ClinicalUseDefinitionCopyWithImpl<$Res,
        _$ClinicalUseDefinitionImpl>
    implements _$$ClinicalUseDefinitionImplCopyWith<$Res> {
  __$$ClinicalUseDefinitionImplCopyWithImpl(_$ClinicalUseDefinitionImpl _value,
      $Res Function(_$ClinicalUseDefinitionImpl) _then)
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
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? category = freezed,
    Object? subject = freezed,
    Object? status = freezed,
    Object? contraindication = freezed,
    Object? indication = freezed,
    Object? interaction = freezed,
    Object? population = freezed,
    Object? undesirableEffect = freezed,
    Object? warning = freezed,
  }) {
    return _then(_$ClinicalUseDefinitionImpl(
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
              as List<CodeableConcept>?,
      subject: freezed == subject
          ? _value._subject
          : subject // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      contraindication: freezed == contraindication
          ? _value.contraindication
          : contraindication // ignore: cast_nullable_to_non_nullable
              as ClinicalUseDefinitionContraindication?,
      indication: freezed == indication
          ? _value.indication
          : indication // ignore: cast_nullable_to_non_nullable
              as ClinicalUseDefinitionIndication?,
      interaction: freezed == interaction
          ? _value.interaction
          : interaction // ignore: cast_nullable_to_non_nullable
              as ClinicalUseDefinitionInteraction?,
      population: freezed == population
          ? _value._population
          : population // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      undesirableEffect: freezed == undesirableEffect
          ? _value.undesirableEffect
          : undesirableEffect // ignore: cast_nullable_to_non_nullable
              as ClinicalUseDefinitionUndesirableEffect?,
      warning: freezed == warning
          ? _value.warning
          : warning // ignore: cast_nullable_to_non_nullable
              as ClinicalUseDefinitionWarning?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClinicalUseDefinitionImpl extends _ClinicalUseDefinition {
  const _$ClinicalUseDefinitionImpl(
      {this.resourceType = R4ResourceType.ClinicalUseDefinition,
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
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      final List<CodeableConcept>? category,
      final List<Reference>? subject,
      this.status,
      this.contraindication,
      this.indication,
      this.interaction,
      final List<Reference>? population,
      this.undesirableEffect,
      this.warning})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _category = category,
        _subject = subject,
        _population = population,
        super._();

  factory _$ClinicalUseDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClinicalUseDefinitionImplFromJson(json);

  /// [resourceType] This is a ClinicalUseDefinition resource;
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

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] Business identifier for this issue.;
  final List<Identifier>? _identifier;

  /// [identifier] Business identifier for this issue.;
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] indication | contraindication | interaction | undesirable-effect | warning.;
  @override
  final FhirCode? type;

  /// [typeElement] (_type): Extensions for type;
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [category] A categorisation of the issue, primarily for dividing warnings into subject heading areas such as "Pregnancy and Lactation", "Overdose", "Effects on Ability to Drive and Use Machines".;
  final List<CodeableConcept>? _category;

  /// [category] A categorisation of the issue, primarily for dividing warnings into subject heading areas such as "Pregnancy and Lactation", "Overdose", "Effects on Ability to Drive and Use Machines".;
  @override
  List<CodeableConcept>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [subject] The medication or procedure for which this is an indication.;
  final List<Reference>? _subject;

  /// [subject] The medication or procedure for which this is an indication.;
  @override
  List<Reference>? get subject {
    final value = _subject;
    if (value == null) return null;
    if (_subject is EqualUnmodifiableListView) return _subject;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] Whether this is a current issue or one that has been retired etc.;
  @override
  final CodeableConcept? status;

  /// [contraindication] Specifics for when this is a contraindication.;
  @override
  final ClinicalUseDefinitionContraindication? contraindication;

  /// [indication] Specifics for when this is an indication.;
  @override
  final ClinicalUseDefinitionIndication? indication;

  /// [interaction] Specifics for when this is an interaction.;
  @override
  final ClinicalUseDefinitionInteraction? interaction;

  /// [population] The population group to which this applies.;
  final List<Reference>? _population;

  /// [population] The population group to which this applies.;
  @override
  List<Reference>? get population {
    final value = _population;
    if (value == null) return null;
    if (_population is EqualUnmodifiableListView) return _population;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [undesirableEffect] Describe the possible undesirable effects (negative outcomes) from the use of the medicinal product as treatment.;
  @override
  final ClinicalUseDefinitionUndesirableEffect? undesirableEffect;

  /// [warning] A critical piece of information about environmental, health or physical risks or hazards that serve as caution to the user. For example 'Do not operate heavy machinery', 'May cause drowsiness', or 'Get medical advice/attention if you feel unwell'.;
  @override
  final ClinicalUseDefinitionWarning? warning;

  @override
  String toString() {
    return 'ClinicalUseDefinition(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, type: $type, typeElement: $typeElement, category: $category, subject: $subject, status: $status, contraindication: $contraindication, indication: $indication, interaction: $interaction, population: $population, undesirableEffect: $undesirableEffect, warning: $warning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicalUseDefinitionImpl &&
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
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality().equals(other._subject, _subject) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.contraindication, contraindication) ||
                other.contraindication == contraindication) &&
            (identical(other.indication, indication) ||
                other.indication == indication) &&
            (identical(other.interaction, interaction) ||
                other.interaction == interaction) &&
            const DeepCollectionEquality()
                .equals(other._population, _population) &&
            (identical(other.undesirableEffect, undesirableEffect) ||
                other.undesirableEffect == undesirableEffect) &&
            (identical(other.warning, warning) || other.warning == warning));
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
        type,
        typeElement,
        const DeepCollectionEquality().hash(_category),
        const DeepCollectionEquality().hash(_subject),
        status,
        contraindication,
        indication,
        interaction,
        const DeepCollectionEquality().hash(_population),
        undesirableEffect,
        warning
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicalUseDefinitionImplCopyWith<_$ClinicalUseDefinitionImpl>
      get copyWith => __$$ClinicalUseDefinitionImplCopyWithImpl<
          _$ClinicalUseDefinitionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClinicalUseDefinitionImplToJson(
      this,
    );
  }
}

abstract class _ClinicalUseDefinition extends ClinicalUseDefinition {
  const factory _ClinicalUseDefinition(
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
          final FhirCode? type,
          @JsonKey(name: '_type') final PrimitiveElement? typeElement,
          final List<CodeableConcept>? category,
          final List<Reference>? subject,
          final CodeableConcept? status,
          final ClinicalUseDefinitionContraindication? contraindication,
          final ClinicalUseDefinitionIndication? indication,
          final ClinicalUseDefinitionInteraction? interaction,
          final List<Reference>? population,
          final ClinicalUseDefinitionUndesirableEffect? undesirableEffect,
          final ClinicalUseDefinitionWarning? warning}) =
      _$ClinicalUseDefinitionImpl;
  const _ClinicalUseDefinition._() : super._();

  factory _ClinicalUseDefinition.fromJson(Map<String, dynamic> json) =
      _$ClinicalUseDefinitionImpl.fromJson;

  @override

  /// [resourceType] This is a ClinicalUseDefinition resource;
  R4ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  String? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.;
  FhirCode? get language;
  @override

  /// [languageElement] (_language): Extensions for language;
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  List<Resource>? get contained;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] Business identifier for this issue.;
  List<Identifier>? get identifier;
  @override

  /// [type] indication | contraindication | interaction | undesirable-effect | warning.;
  FhirCode? get type;
  @override

  /// [typeElement] (_type): Extensions for type;
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [category] A categorisation of the issue, primarily for dividing warnings into subject heading areas such as "Pregnancy and Lactation", "Overdose", "Effects on Ability to Drive and Use Machines".;
  List<CodeableConcept>? get category;
  @override

  /// [subject] The medication or procedure for which this is an indication.;
  List<Reference>? get subject;
  @override

  /// [status] Whether this is a current issue or one that has been retired etc.;
  CodeableConcept? get status;
  @override

  /// [contraindication] Specifics for when this is a contraindication.;
  ClinicalUseDefinitionContraindication? get contraindication;
  @override

  /// [indication] Specifics for when this is an indication.;
  ClinicalUseDefinitionIndication? get indication;
  @override

  /// [interaction] Specifics for when this is an interaction.;
  ClinicalUseDefinitionInteraction? get interaction;
  @override

  /// [population] The population group to which this applies.;
  List<Reference>? get population;
  @override

  /// [undesirableEffect] Describe the possible undesirable effects (negative outcomes) from the use of the medicinal product as treatment.;
  ClinicalUseDefinitionUndesirableEffect? get undesirableEffect;
  @override

  /// [warning] A critical piece of information about environmental, health or physical risks or hazards that serve as caution to the user. For example 'Do not operate heavy machinery', 'May cause drowsiness', or 'Get medical advice/attention if you feel unwell'.;
  ClinicalUseDefinitionWarning? get warning;
  @override
  @JsonKey(ignore: true)
  _$$ClinicalUseDefinitionImplCopyWith<_$ClinicalUseDefinitionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClinicalUseDefinitionContraindication
    _$ClinicalUseDefinitionContraindicationFromJson(Map<String, dynamic> json) {
  return _ClinicalUseDefinitionContraindication.fromJson(json);
}

/// @nodoc
mixin _$ClinicalUseDefinitionContraindication {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [diseaseSymptomProcedure] The situation that is being documented as contraindicating against this item.;
  CodeableReference? get diseaseSymptomProcedure =>
      throw _privateConstructorUsedError;

  /// [diseaseStatus] The status of the disease or symptom for the contraindication, for example "chronic" or "metastatic".;
  CodeableReference? get diseaseStatus => throw _privateConstructorUsedError;

  /// [comorbidity] A comorbidity (concurrent condition) or coinfection.;
  List<CodeableReference>? get comorbidity =>
      throw _privateConstructorUsedError;

  /// [indication] The indication which this is a contraidication for.;
  List<Reference>? get indication => throw _privateConstructorUsedError;

  /// [otherTherapy] Information about the use of the medicinal product in relation to other therapies described as part of the contraindication.;
  List<ClinicalUseDefinitionOtherTherapy>? get otherTherapy =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicalUseDefinitionContraindicationCopyWith<
          ClinicalUseDefinitionContraindication>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicalUseDefinitionContraindicationCopyWith<$Res> {
  factory $ClinicalUseDefinitionContraindicationCopyWith(
          ClinicalUseDefinitionContraindication value,
          $Res Function(ClinicalUseDefinitionContraindication) then) =
      _$ClinicalUseDefinitionContraindicationCopyWithImpl<$Res,
          ClinicalUseDefinitionContraindication>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableReference? diseaseSymptomProcedure,
      CodeableReference? diseaseStatus,
      List<CodeableReference>? comorbidity,
      List<Reference>? indication,
      List<ClinicalUseDefinitionOtherTherapy>? otherTherapy});

  $CodeableReferenceCopyWith<$Res>? get diseaseSymptomProcedure;
  $CodeableReferenceCopyWith<$Res>? get diseaseStatus;
}

/// @nodoc
class _$ClinicalUseDefinitionContraindicationCopyWithImpl<$Res,
        $Val extends ClinicalUseDefinitionContraindication>
    implements $ClinicalUseDefinitionContraindicationCopyWith<$Res> {
  _$ClinicalUseDefinitionContraindicationCopyWithImpl(this._value, this._then);

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
    Object? diseaseSymptomProcedure = freezed,
    Object? diseaseStatus = freezed,
    Object? comorbidity = freezed,
    Object? indication = freezed,
    Object? otherTherapy = freezed,
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
      diseaseSymptomProcedure: freezed == diseaseSymptomProcedure
          ? _value.diseaseSymptomProcedure
          : diseaseSymptomProcedure // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      diseaseStatus: freezed == diseaseStatus
          ? _value.diseaseStatus
          : diseaseStatus // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      comorbidity: freezed == comorbidity
          ? _value.comorbidity
          : comorbidity // ignore: cast_nullable_to_non_nullable
              as List<CodeableReference>?,
      indication: freezed == indication
          ? _value.indication
          : indication // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      otherTherapy: freezed == otherTherapy
          ? _value.otherTherapy
          : otherTherapy // ignore: cast_nullable_to_non_nullable
              as List<ClinicalUseDefinitionOtherTherapy>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res>? get diseaseSymptomProcedure {
    if (_value.diseaseSymptomProcedure == null) {
      return null;
    }

    return $CodeableReferenceCopyWith<$Res>(_value.diseaseSymptomProcedure!,
        (value) {
      return _then(_value.copyWith(diseaseSymptomProcedure: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res>? get diseaseStatus {
    if (_value.diseaseStatus == null) {
      return null;
    }

    return $CodeableReferenceCopyWith<$Res>(_value.diseaseStatus!, (value) {
      return _then(_value.copyWith(diseaseStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClinicalUseDefinitionContraindicationImplCopyWith<$Res>
    implements $ClinicalUseDefinitionContraindicationCopyWith<$Res> {
  factory _$$ClinicalUseDefinitionContraindicationImplCopyWith(
          _$ClinicalUseDefinitionContraindicationImpl value,
          $Res Function(_$ClinicalUseDefinitionContraindicationImpl) then) =
      __$$ClinicalUseDefinitionContraindicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableReference? diseaseSymptomProcedure,
      CodeableReference? diseaseStatus,
      List<CodeableReference>? comorbidity,
      List<Reference>? indication,
      List<ClinicalUseDefinitionOtherTherapy>? otherTherapy});

  @override
  $CodeableReferenceCopyWith<$Res>? get diseaseSymptomProcedure;
  @override
  $CodeableReferenceCopyWith<$Res>? get diseaseStatus;
}

/// @nodoc
class __$$ClinicalUseDefinitionContraindicationImplCopyWithImpl<$Res>
    extends _$ClinicalUseDefinitionContraindicationCopyWithImpl<$Res,
        _$ClinicalUseDefinitionContraindicationImpl>
    implements _$$ClinicalUseDefinitionContraindicationImplCopyWith<$Res> {
  __$$ClinicalUseDefinitionContraindicationImplCopyWithImpl(
      _$ClinicalUseDefinitionContraindicationImpl _value,
      $Res Function(_$ClinicalUseDefinitionContraindicationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? diseaseSymptomProcedure = freezed,
    Object? diseaseStatus = freezed,
    Object? comorbidity = freezed,
    Object? indication = freezed,
    Object? otherTherapy = freezed,
  }) {
    return _then(_$ClinicalUseDefinitionContraindicationImpl(
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
      diseaseSymptomProcedure: freezed == diseaseSymptomProcedure
          ? _value.diseaseSymptomProcedure
          : diseaseSymptomProcedure // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      diseaseStatus: freezed == diseaseStatus
          ? _value.diseaseStatus
          : diseaseStatus // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      comorbidity: freezed == comorbidity
          ? _value._comorbidity
          : comorbidity // ignore: cast_nullable_to_non_nullable
              as List<CodeableReference>?,
      indication: freezed == indication
          ? _value._indication
          : indication // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      otherTherapy: freezed == otherTherapy
          ? _value._otherTherapy
          : otherTherapy // ignore: cast_nullable_to_non_nullable
              as List<ClinicalUseDefinitionOtherTherapy>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClinicalUseDefinitionContraindicationImpl
    extends _ClinicalUseDefinitionContraindication {
  const _$ClinicalUseDefinitionContraindicationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.diseaseSymptomProcedure,
      this.diseaseStatus,
      final List<CodeableReference>? comorbidity,
      final List<Reference>? indication,
      final List<ClinicalUseDefinitionOtherTherapy>? otherTherapy})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _comorbidity = comorbidity,
        _indication = indication,
        _otherTherapy = otherTherapy,
        super._();

  factory _$ClinicalUseDefinitionContraindicationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClinicalUseDefinitionContraindicationImplFromJson(json);

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

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [diseaseSymptomProcedure] The situation that is being documented as contraindicating against this item.;
  @override
  final CodeableReference? diseaseSymptomProcedure;

  /// [diseaseStatus] The status of the disease or symptom for the contraindication, for example "chronic" or "metastatic".;
  @override
  final CodeableReference? diseaseStatus;

  /// [comorbidity] A comorbidity (concurrent condition) or coinfection.;
  final List<CodeableReference>? _comorbidity;

  /// [comorbidity] A comorbidity (concurrent condition) or coinfection.;
  @override
  List<CodeableReference>? get comorbidity {
    final value = _comorbidity;
    if (value == null) return null;
    if (_comorbidity is EqualUnmodifiableListView) return _comorbidity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [indication] The indication which this is a contraidication for.;
  final List<Reference>? _indication;

  /// [indication] The indication which this is a contraidication for.;
  @override
  List<Reference>? get indication {
    final value = _indication;
    if (value == null) return null;
    if (_indication is EqualUnmodifiableListView) return _indication;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [otherTherapy] Information about the use of the medicinal product in relation to other therapies described as part of the contraindication.;
  final List<ClinicalUseDefinitionOtherTherapy>? _otherTherapy;

  /// [otherTherapy] Information about the use of the medicinal product in relation to other therapies described as part of the contraindication.;
  @override
  List<ClinicalUseDefinitionOtherTherapy>? get otherTherapy {
    final value = _otherTherapy;
    if (value == null) return null;
    if (_otherTherapy is EqualUnmodifiableListView) return _otherTherapy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClinicalUseDefinitionContraindication(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, diseaseSymptomProcedure: $diseaseSymptomProcedure, diseaseStatus: $diseaseStatus, comorbidity: $comorbidity, indication: $indication, otherTherapy: $otherTherapy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicalUseDefinitionContraindicationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(
                    other.diseaseSymptomProcedure, diseaseSymptomProcedure) ||
                other.diseaseSymptomProcedure == diseaseSymptomProcedure) &&
            (identical(other.diseaseStatus, diseaseStatus) ||
                other.diseaseStatus == diseaseStatus) &&
            const DeepCollectionEquality()
                .equals(other._comorbidity, _comorbidity) &&
            const DeepCollectionEquality()
                .equals(other._indication, _indication) &&
            const DeepCollectionEquality()
                .equals(other._otherTherapy, _otherTherapy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      diseaseSymptomProcedure,
      diseaseStatus,
      const DeepCollectionEquality().hash(_comorbidity),
      const DeepCollectionEquality().hash(_indication),
      const DeepCollectionEquality().hash(_otherTherapy));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicalUseDefinitionContraindicationImplCopyWith<
          _$ClinicalUseDefinitionContraindicationImpl>
      get copyWith => __$$ClinicalUseDefinitionContraindicationImplCopyWithImpl<
          _$ClinicalUseDefinitionContraindicationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClinicalUseDefinitionContraindicationImplToJson(
      this,
    );
  }
}

abstract class _ClinicalUseDefinitionContraindication
    extends ClinicalUseDefinitionContraindication {
  const factory _ClinicalUseDefinitionContraindication(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableReference? diseaseSymptomProcedure,
          final CodeableReference? diseaseStatus,
          final List<CodeableReference>? comorbidity,
          final List<Reference>? indication,
          final List<ClinicalUseDefinitionOtherTherapy>? otherTherapy}) =
      _$ClinicalUseDefinitionContraindicationImpl;
  const _ClinicalUseDefinitionContraindication._() : super._();

  factory _ClinicalUseDefinitionContraindication.fromJson(
          Map<String, dynamic> json) =
      _$ClinicalUseDefinitionContraindicationImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [diseaseSymptomProcedure] The situation that is being documented as contraindicating against this item.;
  CodeableReference? get diseaseSymptomProcedure;
  @override

  /// [diseaseStatus] The status of the disease or symptom for the contraindication, for example "chronic" or "metastatic".;
  CodeableReference? get diseaseStatus;
  @override

  /// [comorbidity] A comorbidity (concurrent condition) or coinfection.;
  List<CodeableReference>? get comorbidity;
  @override

  /// [indication] The indication which this is a contraidication for.;
  List<Reference>? get indication;
  @override

  /// [otherTherapy] Information about the use of the medicinal product in relation to other therapies described as part of the contraindication.;
  List<ClinicalUseDefinitionOtherTherapy>? get otherTherapy;
  @override
  @JsonKey(ignore: true)
  _$$ClinicalUseDefinitionContraindicationImplCopyWith<
          _$ClinicalUseDefinitionContraindicationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClinicalUseDefinitionOtherTherapy _$ClinicalUseDefinitionOtherTherapyFromJson(
    Map<String, dynamic> json) {
  return _ClinicalUseDefinitionOtherTherapy.fromJson(json);
}

/// @nodoc
mixin _$ClinicalUseDefinitionOtherTherapy {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [relationshipType] The type of relationship between the medicinal product indication or contraindication and another therapy.;
  CodeableConcept get relationshipType => throw _privateConstructorUsedError;

  /// [therapy] Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication.;
  CodeableReference get therapy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicalUseDefinitionOtherTherapyCopyWith<ClinicalUseDefinitionOtherTherapy>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicalUseDefinitionOtherTherapyCopyWith<$Res> {
  factory $ClinicalUseDefinitionOtherTherapyCopyWith(
          ClinicalUseDefinitionOtherTherapy value,
          $Res Function(ClinicalUseDefinitionOtherTherapy) then) =
      _$ClinicalUseDefinitionOtherTherapyCopyWithImpl<$Res,
          ClinicalUseDefinitionOtherTherapy>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept relationshipType,
      CodeableReference therapy});

  $CodeableConceptCopyWith<$Res> get relationshipType;
  $CodeableReferenceCopyWith<$Res> get therapy;
}

/// @nodoc
class _$ClinicalUseDefinitionOtherTherapyCopyWithImpl<$Res,
        $Val extends ClinicalUseDefinitionOtherTherapy>
    implements $ClinicalUseDefinitionOtherTherapyCopyWith<$Res> {
  _$ClinicalUseDefinitionOtherTherapyCopyWithImpl(this._value, this._then);

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
    Object? relationshipType = null,
    Object? therapy = null,
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
      relationshipType: null == relationshipType
          ? _value.relationshipType
          : relationshipType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      therapy: null == therapy
          ? _value.therapy
          : therapy // ignore: cast_nullable_to_non_nullable
              as CodeableReference,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get relationshipType {
    return $CodeableConceptCopyWith<$Res>(_value.relationshipType, (value) {
      return _then(_value.copyWith(relationshipType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res> get therapy {
    return $CodeableReferenceCopyWith<$Res>(_value.therapy, (value) {
      return _then(_value.copyWith(therapy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClinicalUseDefinitionOtherTherapyImplCopyWith<$Res>
    implements $ClinicalUseDefinitionOtherTherapyCopyWith<$Res> {
  factory _$$ClinicalUseDefinitionOtherTherapyImplCopyWith(
          _$ClinicalUseDefinitionOtherTherapyImpl value,
          $Res Function(_$ClinicalUseDefinitionOtherTherapyImpl) then) =
      __$$ClinicalUseDefinitionOtherTherapyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept relationshipType,
      CodeableReference therapy});

  @override
  $CodeableConceptCopyWith<$Res> get relationshipType;
  @override
  $CodeableReferenceCopyWith<$Res> get therapy;
}

/// @nodoc
class __$$ClinicalUseDefinitionOtherTherapyImplCopyWithImpl<$Res>
    extends _$ClinicalUseDefinitionOtherTherapyCopyWithImpl<$Res,
        _$ClinicalUseDefinitionOtherTherapyImpl>
    implements _$$ClinicalUseDefinitionOtherTherapyImplCopyWith<$Res> {
  __$$ClinicalUseDefinitionOtherTherapyImplCopyWithImpl(
      _$ClinicalUseDefinitionOtherTherapyImpl _value,
      $Res Function(_$ClinicalUseDefinitionOtherTherapyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? relationshipType = null,
    Object? therapy = null,
  }) {
    return _then(_$ClinicalUseDefinitionOtherTherapyImpl(
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
      relationshipType: null == relationshipType
          ? _value.relationshipType
          : relationshipType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      therapy: null == therapy
          ? _value.therapy
          : therapy // ignore: cast_nullable_to_non_nullable
              as CodeableReference,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClinicalUseDefinitionOtherTherapyImpl
    extends _ClinicalUseDefinitionOtherTherapy {
  const _$ClinicalUseDefinitionOtherTherapyImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.relationshipType,
      required this.therapy})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ClinicalUseDefinitionOtherTherapyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClinicalUseDefinitionOtherTherapyImplFromJson(json);

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

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [relationshipType] The type of relationship between the medicinal product indication or contraindication and another therapy.;
  @override
  final CodeableConcept relationshipType;

  /// [therapy] Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication.;
  @override
  final CodeableReference therapy;

  @override
  String toString() {
    return 'ClinicalUseDefinitionOtherTherapy(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, relationshipType: $relationshipType, therapy: $therapy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicalUseDefinitionOtherTherapyImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.relationshipType, relationshipType) ||
                other.relationshipType == relationshipType) &&
            (identical(other.therapy, therapy) || other.therapy == therapy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      relationshipType,
      therapy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicalUseDefinitionOtherTherapyImplCopyWith<
          _$ClinicalUseDefinitionOtherTherapyImpl>
      get copyWith => __$$ClinicalUseDefinitionOtherTherapyImplCopyWithImpl<
          _$ClinicalUseDefinitionOtherTherapyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClinicalUseDefinitionOtherTherapyImplToJson(
      this,
    );
  }
}

abstract class _ClinicalUseDefinitionOtherTherapy
    extends ClinicalUseDefinitionOtherTherapy {
  const factory _ClinicalUseDefinitionOtherTherapy(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept relationshipType,
          required final CodeableReference therapy}) =
      _$ClinicalUseDefinitionOtherTherapyImpl;
  const _ClinicalUseDefinitionOtherTherapy._() : super._();

  factory _ClinicalUseDefinitionOtherTherapy.fromJson(
          Map<String, dynamic> json) =
      _$ClinicalUseDefinitionOtherTherapyImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [relationshipType] The type of relationship between the medicinal product indication or contraindication and another therapy.;
  CodeableConcept get relationshipType;
  @override

  /// [therapy] Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication.;
  CodeableReference get therapy;
  @override
  @JsonKey(ignore: true)
  _$$ClinicalUseDefinitionOtherTherapyImplCopyWith<
          _$ClinicalUseDefinitionOtherTherapyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClinicalUseDefinitionIndication _$ClinicalUseDefinitionIndicationFromJson(
    Map<String, dynamic> json) {
  return _ClinicalUseDefinitionIndication.fromJson(json);
}

/// @nodoc
mixin _$ClinicalUseDefinitionIndication {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [diseaseSymptomProcedure] The situation that is being documented as an indicaton for this item.;
  CodeableReference? get diseaseSymptomProcedure =>
      throw _privateConstructorUsedError;

  /// [diseaseStatus] The status of the disease or symptom for the indication, for example "chronic" or "metastatic".;
  CodeableReference? get diseaseStatus => throw _privateConstructorUsedError;

  /// [comorbidity] A comorbidity (concurrent condition) or coinfection as part of the indication.;
  List<CodeableReference>? get comorbidity =>
      throw _privateConstructorUsedError;

  /// [intendedEffect] The intended effect, aim or strategy to be achieved.;
  CodeableReference? get intendedEffect => throw _privateConstructorUsedError;

  /// [durationRange] Timing or duration information, that may be associated with use with the indicated condition e.g. Adult patients suffering from myocardial infarction (from a few days until less than 35 days), ischaemic stroke (from 7 days until less than 6 months).;
  Range? get durationRange => throw _privateConstructorUsedError;

  /// [durationString] Timing or duration information, that may be associated with use with the indicated condition e.g. Adult patients suffering from myocardial infarction (from a few days until less than 35 days), ischaemic stroke (from 7 days until less than 6 months).;
  FhirMarkdown? get durationString => throw _privateConstructorUsedError;

  /// [durationStringElement] (_durationString): Extensions for durationString;
  @JsonKey(name: '_durationString')
  PrimitiveElement? get durationStringElement =>
      throw _privateConstructorUsedError;

  /// [undesirableEffect] An unwanted side effect or negative outcome that may happen if you use the drug (or other subject of this resource) for this indication.;
  List<Reference>? get undesirableEffect => throw _privateConstructorUsedError;

  /// [otherTherapy] Information about the use of the medicinal product in relation to other therapies described as part of the indication.;
  List<ClinicalUseDefinitionOtherTherapy>? get otherTherapy =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicalUseDefinitionIndicationCopyWith<ClinicalUseDefinitionIndication>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicalUseDefinitionIndicationCopyWith<$Res> {
  factory $ClinicalUseDefinitionIndicationCopyWith(
          ClinicalUseDefinitionIndication value,
          $Res Function(ClinicalUseDefinitionIndication) then) =
      _$ClinicalUseDefinitionIndicationCopyWithImpl<$Res,
          ClinicalUseDefinitionIndication>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableReference? diseaseSymptomProcedure,
      CodeableReference? diseaseStatus,
      List<CodeableReference>? comorbidity,
      CodeableReference? intendedEffect,
      Range? durationRange,
      FhirMarkdown? durationString,
      @JsonKey(name: '_durationString') PrimitiveElement? durationStringElement,
      List<Reference>? undesirableEffect,
      List<ClinicalUseDefinitionOtherTherapy>? otherTherapy});

  $CodeableReferenceCopyWith<$Res>? get diseaseSymptomProcedure;
  $CodeableReferenceCopyWith<$Res>? get diseaseStatus;
  $CodeableReferenceCopyWith<$Res>? get intendedEffect;
  $RangeCopyWith<$Res>? get durationRange;
}

/// @nodoc
class _$ClinicalUseDefinitionIndicationCopyWithImpl<$Res,
        $Val extends ClinicalUseDefinitionIndication>
    implements $ClinicalUseDefinitionIndicationCopyWith<$Res> {
  _$ClinicalUseDefinitionIndicationCopyWithImpl(this._value, this._then);

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
    Object? diseaseSymptomProcedure = freezed,
    Object? diseaseStatus = freezed,
    Object? comorbidity = freezed,
    Object? intendedEffect = freezed,
    Object? durationRange = freezed,
    Object? durationString = freezed,
    Object? durationStringElement = freezed,
    Object? undesirableEffect = freezed,
    Object? otherTherapy = freezed,
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
      diseaseSymptomProcedure: freezed == diseaseSymptomProcedure
          ? _value.diseaseSymptomProcedure
          : diseaseSymptomProcedure // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      diseaseStatus: freezed == diseaseStatus
          ? _value.diseaseStatus
          : diseaseStatus // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      comorbidity: freezed == comorbidity
          ? _value.comorbidity
          : comorbidity // ignore: cast_nullable_to_non_nullable
              as List<CodeableReference>?,
      intendedEffect: freezed == intendedEffect
          ? _value.intendedEffect
          : intendedEffect // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      durationRange: freezed == durationRange
          ? _value.durationRange
          : durationRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      durationString: freezed == durationString
          ? _value.durationString
          : durationString // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      durationStringElement: freezed == durationStringElement
          ? _value.durationStringElement
          : durationStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      undesirableEffect: freezed == undesirableEffect
          ? _value.undesirableEffect
          : undesirableEffect // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      otherTherapy: freezed == otherTherapy
          ? _value.otherTherapy
          : otherTherapy // ignore: cast_nullable_to_non_nullable
              as List<ClinicalUseDefinitionOtherTherapy>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res>? get diseaseSymptomProcedure {
    if (_value.diseaseSymptomProcedure == null) {
      return null;
    }

    return $CodeableReferenceCopyWith<$Res>(_value.diseaseSymptomProcedure!,
        (value) {
      return _then(_value.copyWith(diseaseSymptomProcedure: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res>? get diseaseStatus {
    if (_value.diseaseStatus == null) {
      return null;
    }

    return $CodeableReferenceCopyWith<$Res>(_value.diseaseStatus!, (value) {
      return _then(_value.copyWith(diseaseStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res>? get intendedEffect {
    if (_value.intendedEffect == null) {
      return null;
    }

    return $CodeableReferenceCopyWith<$Res>(_value.intendedEffect!, (value) {
      return _then(_value.copyWith(intendedEffect: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get durationRange {
    if (_value.durationRange == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.durationRange!, (value) {
      return _then(_value.copyWith(durationRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClinicalUseDefinitionIndicationImplCopyWith<$Res>
    implements $ClinicalUseDefinitionIndicationCopyWith<$Res> {
  factory _$$ClinicalUseDefinitionIndicationImplCopyWith(
          _$ClinicalUseDefinitionIndicationImpl value,
          $Res Function(_$ClinicalUseDefinitionIndicationImpl) then) =
      __$$ClinicalUseDefinitionIndicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableReference? diseaseSymptomProcedure,
      CodeableReference? diseaseStatus,
      List<CodeableReference>? comorbidity,
      CodeableReference? intendedEffect,
      Range? durationRange,
      FhirMarkdown? durationString,
      @JsonKey(name: '_durationString') PrimitiveElement? durationStringElement,
      List<Reference>? undesirableEffect,
      List<ClinicalUseDefinitionOtherTherapy>? otherTherapy});

  @override
  $CodeableReferenceCopyWith<$Res>? get diseaseSymptomProcedure;
  @override
  $CodeableReferenceCopyWith<$Res>? get diseaseStatus;
  @override
  $CodeableReferenceCopyWith<$Res>? get intendedEffect;
  @override
  $RangeCopyWith<$Res>? get durationRange;
}

/// @nodoc
class __$$ClinicalUseDefinitionIndicationImplCopyWithImpl<$Res>
    extends _$ClinicalUseDefinitionIndicationCopyWithImpl<$Res,
        _$ClinicalUseDefinitionIndicationImpl>
    implements _$$ClinicalUseDefinitionIndicationImplCopyWith<$Res> {
  __$$ClinicalUseDefinitionIndicationImplCopyWithImpl(
      _$ClinicalUseDefinitionIndicationImpl _value,
      $Res Function(_$ClinicalUseDefinitionIndicationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? diseaseSymptomProcedure = freezed,
    Object? diseaseStatus = freezed,
    Object? comorbidity = freezed,
    Object? intendedEffect = freezed,
    Object? durationRange = freezed,
    Object? durationString = freezed,
    Object? durationStringElement = freezed,
    Object? undesirableEffect = freezed,
    Object? otherTherapy = freezed,
  }) {
    return _then(_$ClinicalUseDefinitionIndicationImpl(
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
      diseaseSymptomProcedure: freezed == diseaseSymptomProcedure
          ? _value.diseaseSymptomProcedure
          : diseaseSymptomProcedure // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      diseaseStatus: freezed == diseaseStatus
          ? _value.diseaseStatus
          : diseaseStatus // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      comorbidity: freezed == comorbidity
          ? _value._comorbidity
          : comorbidity // ignore: cast_nullable_to_non_nullable
              as List<CodeableReference>?,
      intendedEffect: freezed == intendedEffect
          ? _value.intendedEffect
          : intendedEffect // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      durationRange: freezed == durationRange
          ? _value.durationRange
          : durationRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      durationString: freezed == durationString
          ? _value.durationString
          : durationString // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      durationStringElement: freezed == durationStringElement
          ? _value.durationStringElement
          : durationStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      undesirableEffect: freezed == undesirableEffect
          ? _value._undesirableEffect
          : undesirableEffect // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      otherTherapy: freezed == otherTherapy
          ? _value._otherTherapy
          : otherTherapy // ignore: cast_nullable_to_non_nullable
              as List<ClinicalUseDefinitionOtherTherapy>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClinicalUseDefinitionIndicationImpl
    extends _ClinicalUseDefinitionIndication {
  const _$ClinicalUseDefinitionIndicationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.diseaseSymptomProcedure,
      this.diseaseStatus,
      final List<CodeableReference>? comorbidity,
      this.intendedEffect,
      this.durationRange,
      this.durationString,
      @JsonKey(name: '_durationString') this.durationStringElement,
      final List<Reference>? undesirableEffect,
      final List<ClinicalUseDefinitionOtherTherapy>? otherTherapy})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _comorbidity = comorbidity,
        _undesirableEffect = undesirableEffect,
        _otherTherapy = otherTherapy,
        super._();

  factory _$ClinicalUseDefinitionIndicationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClinicalUseDefinitionIndicationImplFromJson(json);

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

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [diseaseSymptomProcedure] The situation that is being documented as an indicaton for this item.;
  @override
  final CodeableReference? diseaseSymptomProcedure;

  /// [diseaseStatus] The status of the disease or symptom for the indication, for example "chronic" or "metastatic".;
  @override
  final CodeableReference? diseaseStatus;

  /// [comorbidity] A comorbidity (concurrent condition) or coinfection as part of the indication.;
  final List<CodeableReference>? _comorbidity;

  /// [comorbidity] A comorbidity (concurrent condition) or coinfection as part of the indication.;
  @override
  List<CodeableReference>? get comorbidity {
    final value = _comorbidity;
    if (value == null) return null;
    if (_comorbidity is EqualUnmodifiableListView) return _comorbidity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [intendedEffect] The intended effect, aim or strategy to be achieved.;
  @override
  final CodeableReference? intendedEffect;

  /// [durationRange] Timing or duration information, that may be associated with use with the indicated condition e.g. Adult patients suffering from myocardial infarction (from a few days until less than 35 days), ischaemic stroke (from 7 days until less than 6 months).;
  @override
  final Range? durationRange;

  /// [durationString] Timing or duration information, that may be associated with use with the indicated condition e.g. Adult patients suffering from myocardial infarction (from a few days until less than 35 days), ischaemic stroke (from 7 days until less than 6 months).;
  @override
  final FhirMarkdown? durationString;

  /// [durationStringElement] (_durationString): Extensions for durationString;
  @override
  @JsonKey(name: '_durationString')
  final PrimitiveElement? durationStringElement;

  /// [undesirableEffect] An unwanted side effect or negative outcome that may happen if you use the drug (or other subject of this resource) for this indication.;
  final List<Reference>? _undesirableEffect;

  /// [undesirableEffect] An unwanted side effect or negative outcome that may happen if you use the drug (or other subject of this resource) for this indication.;
  @override
  List<Reference>? get undesirableEffect {
    final value = _undesirableEffect;
    if (value == null) return null;
    if (_undesirableEffect is EqualUnmodifiableListView)
      return _undesirableEffect;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [otherTherapy] Information about the use of the medicinal product in relation to other therapies described as part of the indication.;
  final List<ClinicalUseDefinitionOtherTherapy>? _otherTherapy;

  /// [otherTherapy] Information about the use of the medicinal product in relation to other therapies described as part of the indication.;
  @override
  List<ClinicalUseDefinitionOtherTherapy>? get otherTherapy {
    final value = _otherTherapy;
    if (value == null) return null;
    if (_otherTherapy is EqualUnmodifiableListView) return _otherTherapy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClinicalUseDefinitionIndication(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, diseaseSymptomProcedure: $diseaseSymptomProcedure, diseaseStatus: $diseaseStatus, comorbidity: $comorbidity, intendedEffect: $intendedEffect, durationRange: $durationRange, durationString: $durationString, durationStringElement: $durationStringElement, undesirableEffect: $undesirableEffect, otherTherapy: $otherTherapy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicalUseDefinitionIndicationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(
                    other.diseaseSymptomProcedure, diseaseSymptomProcedure) ||
                other.diseaseSymptomProcedure == diseaseSymptomProcedure) &&
            (identical(other.diseaseStatus, diseaseStatus) ||
                other.diseaseStatus == diseaseStatus) &&
            const DeepCollectionEquality()
                .equals(other._comorbidity, _comorbidity) &&
            (identical(other.intendedEffect, intendedEffect) ||
                other.intendedEffect == intendedEffect) &&
            (identical(other.durationRange, durationRange) ||
                other.durationRange == durationRange) &&
            (identical(other.durationString, durationString) ||
                other.durationString == durationString) &&
            (identical(other.durationStringElement, durationStringElement) ||
                other.durationStringElement == durationStringElement) &&
            const DeepCollectionEquality()
                .equals(other._undesirableEffect, _undesirableEffect) &&
            const DeepCollectionEquality()
                .equals(other._otherTherapy, _otherTherapy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      diseaseSymptomProcedure,
      diseaseStatus,
      const DeepCollectionEquality().hash(_comorbidity),
      intendedEffect,
      durationRange,
      durationString,
      durationStringElement,
      const DeepCollectionEquality().hash(_undesirableEffect),
      const DeepCollectionEquality().hash(_otherTherapy));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicalUseDefinitionIndicationImplCopyWith<
          _$ClinicalUseDefinitionIndicationImpl>
      get copyWith => __$$ClinicalUseDefinitionIndicationImplCopyWithImpl<
          _$ClinicalUseDefinitionIndicationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClinicalUseDefinitionIndicationImplToJson(
      this,
    );
  }
}

abstract class _ClinicalUseDefinitionIndication
    extends ClinicalUseDefinitionIndication {
  const factory _ClinicalUseDefinitionIndication(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableReference? diseaseSymptomProcedure,
          final CodeableReference? diseaseStatus,
          final List<CodeableReference>? comorbidity,
          final CodeableReference? intendedEffect,
          final Range? durationRange,
          final FhirMarkdown? durationString,
          @JsonKey(name: '_durationString')
          final PrimitiveElement? durationStringElement,
          final List<Reference>? undesirableEffect,
          final List<ClinicalUseDefinitionOtherTherapy>? otherTherapy}) =
      _$ClinicalUseDefinitionIndicationImpl;
  const _ClinicalUseDefinitionIndication._() : super._();

  factory _ClinicalUseDefinitionIndication.fromJson(Map<String, dynamic> json) =
      _$ClinicalUseDefinitionIndicationImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [diseaseSymptomProcedure] The situation that is being documented as an indicaton for this item.;
  CodeableReference? get diseaseSymptomProcedure;
  @override

  /// [diseaseStatus] The status of the disease or symptom for the indication, for example "chronic" or "metastatic".;
  CodeableReference? get diseaseStatus;
  @override

  /// [comorbidity] A comorbidity (concurrent condition) or coinfection as part of the indication.;
  List<CodeableReference>? get comorbidity;
  @override

  /// [intendedEffect] The intended effect, aim or strategy to be achieved.;
  CodeableReference? get intendedEffect;
  @override

  /// [durationRange] Timing or duration information, that may be associated with use with the indicated condition e.g. Adult patients suffering from myocardial infarction (from a few days until less than 35 days), ischaemic stroke (from 7 days until less than 6 months).;
  Range? get durationRange;
  @override

  /// [durationString] Timing or duration information, that may be associated with use with the indicated condition e.g. Adult patients suffering from myocardial infarction (from a few days until less than 35 days), ischaemic stroke (from 7 days until less than 6 months).;
  FhirMarkdown? get durationString;
  @override

  /// [durationStringElement] (_durationString): Extensions for durationString;
  @JsonKey(name: '_durationString')
  PrimitiveElement? get durationStringElement;
  @override

  /// [undesirableEffect] An unwanted side effect or negative outcome that may happen if you use the drug (or other subject of this resource) for this indication.;
  List<Reference>? get undesirableEffect;
  @override

  /// [otherTherapy] Information about the use of the medicinal product in relation to other therapies described as part of the indication.;
  List<ClinicalUseDefinitionOtherTherapy>? get otherTherapy;
  @override
  @JsonKey(ignore: true)
  _$$ClinicalUseDefinitionIndicationImplCopyWith<
          _$ClinicalUseDefinitionIndicationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClinicalUseDefinitionInteraction _$ClinicalUseDefinitionInteractionFromJson(
    Map<String, dynamic> json) {
  return _ClinicalUseDefinitionInteraction.fromJson(json);
}

/// @nodoc
mixin _$ClinicalUseDefinitionInteraction {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [interactant] The specific medication, food, substance or laboratory test that interacts.;
  List<ClinicalUseDefinitionInteractant>? get interactant =>
      throw _privateConstructorUsedError;

  /// [type] The type of the interaction e.g. drug-drug interaction, drug-food interaction, drug-lab test interaction.;
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [effect] The effect of the interaction, for example "reduced gastric absorption of primary medication".;
  CodeableReference? get effect => throw _privateConstructorUsedError;

  /// [incidence] The incidence of the interaction, e.g. theoretical, observed.;
  CodeableConcept? get incidence => throw _privateConstructorUsedError;

  /// [management] Actions for managing the interaction.;
  List<CodeableConcept>? get management => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicalUseDefinitionInteractionCopyWith<ClinicalUseDefinitionInteraction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicalUseDefinitionInteractionCopyWith<$Res> {
  factory $ClinicalUseDefinitionInteractionCopyWith(
          ClinicalUseDefinitionInteraction value,
          $Res Function(ClinicalUseDefinitionInteraction) then) =
      _$ClinicalUseDefinitionInteractionCopyWithImpl<$Res,
          ClinicalUseDefinitionInteraction>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<ClinicalUseDefinitionInteractant>? interactant,
      CodeableConcept? type,
      CodeableReference? effect,
      CodeableConcept? incidence,
      List<CodeableConcept>? management});

  $CodeableConceptCopyWith<$Res>? get type;
  $CodeableReferenceCopyWith<$Res>? get effect;
  $CodeableConceptCopyWith<$Res>? get incidence;
}

/// @nodoc
class _$ClinicalUseDefinitionInteractionCopyWithImpl<$Res,
        $Val extends ClinicalUseDefinitionInteraction>
    implements $ClinicalUseDefinitionInteractionCopyWith<$Res> {
  _$ClinicalUseDefinitionInteractionCopyWithImpl(this._value, this._then);

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
    Object? interactant = freezed,
    Object? type = freezed,
    Object? effect = freezed,
    Object? incidence = freezed,
    Object? management = freezed,
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
      interactant: freezed == interactant
          ? _value.interactant
          : interactant // ignore: cast_nullable_to_non_nullable
              as List<ClinicalUseDefinitionInteractant>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      effect: freezed == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      incidence: freezed == incidence
          ? _value.incidence
          : incidence // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      management: freezed == management
          ? _value.management
          : management // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ) as $Val);
  }

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

  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res>? get effect {
    if (_value.effect == null) {
      return null;
    }

    return $CodeableReferenceCopyWith<$Res>(_value.effect!, (value) {
      return _then(_value.copyWith(effect: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get incidence {
    if (_value.incidence == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.incidence!, (value) {
      return _then(_value.copyWith(incidence: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClinicalUseDefinitionInteractionImplCopyWith<$Res>
    implements $ClinicalUseDefinitionInteractionCopyWith<$Res> {
  factory _$$ClinicalUseDefinitionInteractionImplCopyWith(
          _$ClinicalUseDefinitionInteractionImpl value,
          $Res Function(_$ClinicalUseDefinitionInteractionImpl) then) =
      __$$ClinicalUseDefinitionInteractionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<ClinicalUseDefinitionInteractant>? interactant,
      CodeableConcept? type,
      CodeableReference? effect,
      CodeableConcept? incidence,
      List<CodeableConcept>? management});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $CodeableReferenceCopyWith<$Res>? get effect;
  @override
  $CodeableConceptCopyWith<$Res>? get incidence;
}

/// @nodoc
class __$$ClinicalUseDefinitionInteractionImplCopyWithImpl<$Res>
    extends _$ClinicalUseDefinitionInteractionCopyWithImpl<$Res,
        _$ClinicalUseDefinitionInteractionImpl>
    implements _$$ClinicalUseDefinitionInteractionImplCopyWith<$Res> {
  __$$ClinicalUseDefinitionInteractionImplCopyWithImpl(
      _$ClinicalUseDefinitionInteractionImpl _value,
      $Res Function(_$ClinicalUseDefinitionInteractionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? interactant = freezed,
    Object? type = freezed,
    Object? effect = freezed,
    Object? incidence = freezed,
    Object? management = freezed,
  }) {
    return _then(_$ClinicalUseDefinitionInteractionImpl(
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
      interactant: freezed == interactant
          ? _value._interactant
          : interactant // ignore: cast_nullable_to_non_nullable
              as List<ClinicalUseDefinitionInteractant>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      effect: freezed == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      incidence: freezed == incidence
          ? _value.incidence
          : incidence // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      management: freezed == management
          ? _value._management
          : management // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClinicalUseDefinitionInteractionImpl
    extends _ClinicalUseDefinitionInteraction {
  const _$ClinicalUseDefinitionInteractionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<ClinicalUseDefinitionInteractant>? interactant,
      this.type,
      this.effect,
      this.incidence,
      final List<CodeableConcept>? management})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _interactant = interactant,
        _management = management,
        super._();

  factory _$ClinicalUseDefinitionInteractionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClinicalUseDefinitionInteractionImplFromJson(json);

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

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [interactant] The specific medication, food, substance or laboratory test that interacts.;
  final List<ClinicalUseDefinitionInteractant>? _interactant;

  /// [interactant] The specific medication, food, substance or laboratory test that interacts.;
  @override
  List<ClinicalUseDefinitionInteractant>? get interactant {
    final value = _interactant;
    if (value == null) return null;
    if (_interactant is EqualUnmodifiableListView) return _interactant;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] The type of the interaction e.g. drug-drug interaction, drug-food interaction, drug-lab test interaction.;
  @override
  final CodeableConcept? type;

  /// [effect] The effect of the interaction, for example "reduced gastric absorption of primary medication".;
  @override
  final CodeableReference? effect;

  /// [incidence] The incidence of the interaction, e.g. theoretical, observed.;
  @override
  final CodeableConcept? incidence;

  /// [management] Actions for managing the interaction.;
  final List<CodeableConcept>? _management;

  /// [management] Actions for managing the interaction.;
  @override
  List<CodeableConcept>? get management {
    final value = _management;
    if (value == null) return null;
    if (_management is EqualUnmodifiableListView) return _management;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClinicalUseDefinitionInteraction(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, interactant: $interactant, type: $type, effect: $effect, incidence: $incidence, management: $management)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicalUseDefinitionInteractionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._interactant, _interactant) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.effect, effect) || other.effect == effect) &&
            (identical(other.incidence, incidence) ||
                other.incidence == incidence) &&
            const DeepCollectionEquality()
                .equals(other._management, _management));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_interactant),
      type,
      effect,
      incidence,
      const DeepCollectionEquality().hash(_management));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicalUseDefinitionInteractionImplCopyWith<
          _$ClinicalUseDefinitionInteractionImpl>
      get copyWith => __$$ClinicalUseDefinitionInteractionImplCopyWithImpl<
          _$ClinicalUseDefinitionInteractionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClinicalUseDefinitionInteractionImplToJson(
      this,
    );
  }
}

abstract class _ClinicalUseDefinitionInteraction
    extends ClinicalUseDefinitionInteraction {
  const factory _ClinicalUseDefinitionInteraction(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final List<ClinicalUseDefinitionInteractant>? interactant,
          final CodeableConcept? type,
          final CodeableReference? effect,
          final CodeableConcept? incidence,
          final List<CodeableConcept>? management}) =
      _$ClinicalUseDefinitionInteractionImpl;
  const _ClinicalUseDefinitionInteraction._() : super._();

  factory _ClinicalUseDefinitionInteraction.fromJson(
          Map<String, dynamic> json) =
      _$ClinicalUseDefinitionInteractionImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [interactant] The specific medication, food, substance or laboratory test that interacts.;
  List<ClinicalUseDefinitionInteractant>? get interactant;
  @override

  /// [type] The type of the interaction e.g. drug-drug interaction, drug-food interaction, drug-lab test interaction.;
  CodeableConcept? get type;
  @override

  /// [effect] The effect of the interaction, for example "reduced gastric absorption of primary medication".;
  CodeableReference? get effect;
  @override

  /// [incidence] The incidence of the interaction, e.g. theoretical, observed.;
  CodeableConcept? get incidence;
  @override

  /// [management] Actions for managing the interaction.;
  List<CodeableConcept>? get management;
  @override
  @JsonKey(ignore: true)
  _$$ClinicalUseDefinitionInteractionImplCopyWith<
          _$ClinicalUseDefinitionInteractionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClinicalUseDefinitionInteractant _$ClinicalUseDefinitionInteractantFromJson(
    Map<String, dynamic> json) {
  return _ClinicalUseDefinitionInteractant.fromJson(json);
}

/// @nodoc
mixin _$ClinicalUseDefinitionInteractant {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [itemReference] The specific medication, food or laboratory test that interacts.;
  Reference? get itemReference => throw _privateConstructorUsedError;

  /// [itemCodeableConcept] The specific medication, food or laboratory test that interacts.;
  CodeableConcept? get itemCodeableConcept =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicalUseDefinitionInteractantCopyWith<ClinicalUseDefinitionInteractant>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicalUseDefinitionInteractantCopyWith<$Res> {
  factory $ClinicalUseDefinitionInteractantCopyWith(
          ClinicalUseDefinitionInteractant value,
          $Res Function(ClinicalUseDefinitionInteractant) then) =
      _$ClinicalUseDefinitionInteractantCopyWithImpl<$Res,
          ClinicalUseDefinitionInteractant>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference? itemReference,
      CodeableConcept? itemCodeableConcept});

  $ReferenceCopyWith<$Res>? get itemReference;
  $CodeableConceptCopyWith<$Res>? get itemCodeableConcept;
}

/// @nodoc
class _$ClinicalUseDefinitionInteractantCopyWithImpl<$Res,
        $Val extends ClinicalUseDefinitionInteractant>
    implements $ClinicalUseDefinitionInteractantCopyWith<$Res> {
  _$ClinicalUseDefinitionInteractantCopyWithImpl(this._value, this._then);

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
    Object? itemReference = freezed,
    Object? itemCodeableConcept = freezed,
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
      itemReference: freezed == itemReference
          ? _value.itemReference
          : itemReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      itemCodeableConcept: freezed == itemCodeableConcept
          ? _value.itemCodeableConcept
          : itemCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ) as $Val);
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
}

/// @nodoc
abstract class _$$ClinicalUseDefinitionInteractantImplCopyWith<$Res>
    implements $ClinicalUseDefinitionInteractantCopyWith<$Res> {
  factory _$$ClinicalUseDefinitionInteractantImplCopyWith(
          _$ClinicalUseDefinitionInteractantImpl value,
          $Res Function(_$ClinicalUseDefinitionInteractantImpl) then) =
      __$$ClinicalUseDefinitionInteractantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference? itemReference,
      CodeableConcept? itemCodeableConcept});

  @override
  $ReferenceCopyWith<$Res>? get itemReference;
  @override
  $CodeableConceptCopyWith<$Res>? get itemCodeableConcept;
}

/// @nodoc
class __$$ClinicalUseDefinitionInteractantImplCopyWithImpl<$Res>
    extends _$ClinicalUseDefinitionInteractantCopyWithImpl<$Res,
        _$ClinicalUseDefinitionInteractantImpl>
    implements _$$ClinicalUseDefinitionInteractantImplCopyWith<$Res> {
  __$$ClinicalUseDefinitionInteractantImplCopyWithImpl(
      _$ClinicalUseDefinitionInteractantImpl _value,
      $Res Function(_$ClinicalUseDefinitionInteractantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? itemReference = freezed,
    Object? itemCodeableConcept = freezed,
  }) {
    return _then(_$ClinicalUseDefinitionInteractantImpl(
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
      itemReference: freezed == itemReference
          ? _value.itemReference
          : itemReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      itemCodeableConcept: freezed == itemCodeableConcept
          ? _value.itemCodeableConcept
          : itemCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClinicalUseDefinitionInteractantImpl
    extends _ClinicalUseDefinitionInteractant {
  const _$ClinicalUseDefinitionInteractantImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.itemReference,
      this.itemCodeableConcept})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ClinicalUseDefinitionInteractantImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClinicalUseDefinitionInteractantImplFromJson(json);

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

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [itemReference] The specific medication, food or laboratory test that interacts.;
  @override
  final Reference? itemReference;

  /// [itemCodeableConcept] The specific medication, food or laboratory test that interacts.;
  @override
  final CodeableConcept? itemCodeableConcept;

  @override
  String toString() {
    return 'ClinicalUseDefinitionInteractant(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, itemReference: $itemReference, itemCodeableConcept: $itemCodeableConcept)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicalUseDefinitionInteractantImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.itemReference, itemReference) ||
                other.itemReference == itemReference) &&
            (identical(other.itemCodeableConcept, itemCodeableConcept) ||
                other.itemCodeableConcept == itemCodeableConcept));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      itemReference,
      itemCodeableConcept);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicalUseDefinitionInteractantImplCopyWith<
          _$ClinicalUseDefinitionInteractantImpl>
      get copyWith => __$$ClinicalUseDefinitionInteractantImplCopyWithImpl<
          _$ClinicalUseDefinitionInteractantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClinicalUseDefinitionInteractantImplToJson(
      this,
    );
  }
}

abstract class _ClinicalUseDefinitionInteractant
    extends ClinicalUseDefinitionInteractant {
  const factory _ClinicalUseDefinitionInteractant(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final Reference? itemReference,
          final CodeableConcept? itemCodeableConcept}) =
      _$ClinicalUseDefinitionInteractantImpl;
  const _ClinicalUseDefinitionInteractant._() : super._();

  factory _ClinicalUseDefinitionInteractant.fromJson(
          Map<String, dynamic> json) =
      _$ClinicalUseDefinitionInteractantImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [itemReference] The specific medication, food or laboratory test that interacts.;
  Reference? get itemReference;
  @override

  /// [itemCodeableConcept] The specific medication, food or laboratory test that interacts.;
  CodeableConcept? get itemCodeableConcept;
  @override
  @JsonKey(ignore: true)
  _$$ClinicalUseDefinitionInteractantImplCopyWith<
          _$ClinicalUseDefinitionInteractantImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClinicalUseDefinitionUndesirableEffect
    _$ClinicalUseDefinitionUndesirableEffectFromJson(
        Map<String, dynamic> json) {
  return _ClinicalUseDefinitionUndesirableEffect.fromJson(json);
}

/// @nodoc
mixin _$ClinicalUseDefinitionUndesirableEffect {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [symptomConditionEffect] The situation in which the undesirable effect may manifest.;
  CodeableReference? get symptomConditionEffect =>
      throw _privateConstructorUsedError;

  /// [classification] High level classification of the effect.;
  CodeableConcept? get classification => throw _privateConstructorUsedError;

  /// [frequencyOfOccurrence] How often the effect is seen.;
  CodeableConcept? get frequencyOfOccurrence =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicalUseDefinitionUndesirableEffectCopyWith<
          ClinicalUseDefinitionUndesirableEffect>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicalUseDefinitionUndesirableEffectCopyWith<$Res> {
  factory $ClinicalUseDefinitionUndesirableEffectCopyWith(
          ClinicalUseDefinitionUndesirableEffect value,
          $Res Function(ClinicalUseDefinitionUndesirableEffect) then) =
      _$ClinicalUseDefinitionUndesirableEffectCopyWithImpl<$Res,
          ClinicalUseDefinitionUndesirableEffect>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableReference? symptomConditionEffect,
      CodeableConcept? classification,
      CodeableConcept? frequencyOfOccurrence});

  $CodeableReferenceCopyWith<$Res>? get symptomConditionEffect;
  $CodeableConceptCopyWith<$Res>? get classification;
  $CodeableConceptCopyWith<$Res>? get frequencyOfOccurrence;
}

/// @nodoc
class _$ClinicalUseDefinitionUndesirableEffectCopyWithImpl<$Res,
        $Val extends ClinicalUseDefinitionUndesirableEffect>
    implements $ClinicalUseDefinitionUndesirableEffectCopyWith<$Res> {
  _$ClinicalUseDefinitionUndesirableEffectCopyWithImpl(this._value, this._then);

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
    Object? symptomConditionEffect = freezed,
    Object? classification = freezed,
    Object? frequencyOfOccurrence = freezed,
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
      symptomConditionEffect: freezed == symptomConditionEffect
          ? _value.symptomConditionEffect
          : symptomConditionEffect // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      classification: freezed == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      frequencyOfOccurrence: freezed == frequencyOfOccurrence
          ? _value.frequencyOfOccurrence
          : frequencyOfOccurrence // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res>? get symptomConditionEffect {
    if (_value.symptomConditionEffect == null) {
      return null;
    }

    return $CodeableReferenceCopyWith<$Res>(_value.symptomConditionEffect!,
        (value) {
      return _then(_value.copyWith(symptomConditionEffect: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get classification {
    if (_value.classification == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.classification!, (value) {
      return _then(_value.copyWith(classification: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get frequencyOfOccurrence {
    if (_value.frequencyOfOccurrence == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.frequencyOfOccurrence!,
        (value) {
      return _then(_value.copyWith(frequencyOfOccurrence: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClinicalUseDefinitionUndesirableEffectImplCopyWith<$Res>
    implements $ClinicalUseDefinitionUndesirableEffectCopyWith<$Res> {
  factory _$$ClinicalUseDefinitionUndesirableEffectImplCopyWith(
          _$ClinicalUseDefinitionUndesirableEffectImpl value,
          $Res Function(_$ClinicalUseDefinitionUndesirableEffectImpl) then) =
      __$$ClinicalUseDefinitionUndesirableEffectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableReference? symptomConditionEffect,
      CodeableConcept? classification,
      CodeableConcept? frequencyOfOccurrence});

  @override
  $CodeableReferenceCopyWith<$Res>? get symptomConditionEffect;
  @override
  $CodeableConceptCopyWith<$Res>? get classification;
  @override
  $CodeableConceptCopyWith<$Res>? get frequencyOfOccurrence;
}

/// @nodoc
class __$$ClinicalUseDefinitionUndesirableEffectImplCopyWithImpl<$Res>
    extends _$ClinicalUseDefinitionUndesirableEffectCopyWithImpl<$Res,
        _$ClinicalUseDefinitionUndesirableEffectImpl>
    implements _$$ClinicalUseDefinitionUndesirableEffectImplCopyWith<$Res> {
  __$$ClinicalUseDefinitionUndesirableEffectImplCopyWithImpl(
      _$ClinicalUseDefinitionUndesirableEffectImpl _value,
      $Res Function(_$ClinicalUseDefinitionUndesirableEffectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? symptomConditionEffect = freezed,
    Object? classification = freezed,
    Object? frequencyOfOccurrence = freezed,
  }) {
    return _then(_$ClinicalUseDefinitionUndesirableEffectImpl(
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
      symptomConditionEffect: freezed == symptomConditionEffect
          ? _value.symptomConditionEffect
          : symptomConditionEffect // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      classification: freezed == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      frequencyOfOccurrence: freezed == frequencyOfOccurrence
          ? _value.frequencyOfOccurrence
          : frequencyOfOccurrence // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClinicalUseDefinitionUndesirableEffectImpl
    extends _ClinicalUseDefinitionUndesirableEffect {
  const _$ClinicalUseDefinitionUndesirableEffectImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.symptomConditionEffect,
      this.classification,
      this.frequencyOfOccurrence})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ClinicalUseDefinitionUndesirableEffectImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClinicalUseDefinitionUndesirableEffectImplFromJson(json);

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

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [symptomConditionEffect] The situation in which the undesirable effect may manifest.;
  @override
  final CodeableReference? symptomConditionEffect;

  /// [classification] High level classification of the effect.;
  @override
  final CodeableConcept? classification;

  /// [frequencyOfOccurrence] How often the effect is seen.;
  @override
  final CodeableConcept? frequencyOfOccurrence;

  @override
  String toString() {
    return 'ClinicalUseDefinitionUndesirableEffect(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, symptomConditionEffect: $symptomConditionEffect, classification: $classification, frequencyOfOccurrence: $frequencyOfOccurrence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicalUseDefinitionUndesirableEffectImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.symptomConditionEffect, symptomConditionEffect) ||
                other.symptomConditionEffect == symptomConditionEffect) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            (identical(other.frequencyOfOccurrence, frequencyOfOccurrence) ||
                other.frequencyOfOccurrence == frequencyOfOccurrence));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      symptomConditionEffect,
      classification,
      frequencyOfOccurrence);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicalUseDefinitionUndesirableEffectImplCopyWith<
          _$ClinicalUseDefinitionUndesirableEffectImpl>
      get copyWith =>
          __$$ClinicalUseDefinitionUndesirableEffectImplCopyWithImpl<
              _$ClinicalUseDefinitionUndesirableEffectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClinicalUseDefinitionUndesirableEffectImplToJson(
      this,
    );
  }
}

abstract class _ClinicalUseDefinitionUndesirableEffect
    extends ClinicalUseDefinitionUndesirableEffect {
  const factory _ClinicalUseDefinitionUndesirableEffect(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableReference? symptomConditionEffect,
          final CodeableConcept? classification,
          final CodeableConcept? frequencyOfOccurrence}) =
      _$ClinicalUseDefinitionUndesirableEffectImpl;
  const _ClinicalUseDefinitionUndesirableEffect._() : super._();

  factory _ClinicalUseDefinitionUndesirableEffect.fromJson(
          Map<String, dynamic> json) =
      _$ClinicalUseDefinitionUndesirableEffectImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [symptomConditionEffect] The situation in which the undesirable effect may manifest.;
  CodeableReference? get symptomConditionEffect;
  @override

  /// [classification] High level classification of the effect.;
  CodeableConcept? get classification;
  @override

  /// [frequencyOfOccurrence] How often the effect is seen.;
  CodeableConcept? get frequencyOfOccurrence;
  @override
  @JsonKey(ignore: true)
  _$$ClinicalUseDefinitionUndesirableEffectImplCopyWith<
          _$ClinicalUseDefinitionUndesirableEffectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClinicalUseDefinitionWarning _$ClinicalUseDefinitionWarningFromJson(
    Map<String, dynamic> json) {
  return _ClinicalUseDefinitionWarning.fromJson(json);
}

/// @nodoc
mixin _$ClinicalUseDefinitionWarning {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [description] A textual definition of this warning, with formatting.;
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] (_description): Extensions for description;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [code] A coded or unformatted textual definition of this warning.;
  CodeableConcept? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicalUseDefinitionWarningCopyWith<ClinicalUseDefinitionWarning>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicalUseDefinitionWarningCopyWith<$Res> {
  factory $ClinicalUseDefinitionWarningCopyWith(
          ClinicalUseDefinitionWarning value,
          $Res Function(ClinicalUseDefinitionWarning) then) =
      _$ClinicalUseDefinitionWarningCopyWithImpl<$Res,
          ClinicalUseDefinitionWarning>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      CodeableConcept? code});

  $CodeableConceptCopyWith<$Res>? get code;
}

/// @nodoc
class _$ClinicalUseDefinitionWarningCopyWithImpl<$Res,
        $Val extends ClinicalUseDefinitionWarning>
    implements $ClinicalUseDefinitionWarningCopyWith<$Res> {
  _$ClinicalUseDefinitionWarningCopyWithImpl(this._value, this._then);

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
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? code = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
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
}

/// @nodoc
abstract class _$$ClinicalUseDefinitionWarningImplCopyWith<$Res>
    implements $ClinicalUseDefinitionWarningCopyWith<$Res> {
  factory _$$ClinicalUseDefinitionWarningImplCopyWith(
          _$ClinicalUseDefinitionWarningImpl value,
          $Res Function(_$ClinicalUseDefinitionWarningImpl) then) =
      __$$ClinicalUseDefinitionWarningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      CodeableConcept? code});

  @override
  $CodeableConceptCopyWith<$Res>? get code;
}

/// @nodoc
class __$$ClinicalUseDefinitionWarningImplCopyWithImpl<$Res>
    extends _$ClinicalUseDefinitionWarningCopyWithImpl<$Res,
        _$ClinicalUseDefinitionWarningImpl>
    implements _$$ClinicalUseDefinitionWarningImplCopyWith<$Res> {
  __$$ClinicalUseDefinitionWarningImplCopyWithImpl(
      _$ClinicalUseDefinitionWarningImpl _value,
      $Res Function(_$ClinicalUseDefinitionWarningImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? code = freezed,
  }) {
    return _then(_$ClinicalUseDefinitionWarningImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClinicalUseDefinitionWarningImpl extends _ClinicalUseDefinitionWarning {
  const _$ClinicalUseDefinitionWarningImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.code})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ClinicalUseDefinitionWarningImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClinicalUseDefinitionWarningImplFromJson(json);

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

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [description] A textual definition of this warning, with formatting.;
  @override
  final FhirMarkdown? description;

  /// [descriptionElement] (_description): Extensions for description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [code] A coded or unformatted textual definition of this warning.;
  @override
  final CodeableConcept? code;

  @override
  String toString() {
    return 'ClinicalUseDefinitionWarning(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, description: $description, descriptionElement: $descriptionElement, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicalUseDefinitionWarningImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      description,
      descriptionElement,
      code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicalUseDefinitionWarningImplCopyWith<
          _$ClinicalUseDefinitionWarningImpl>
      get copyWith => __$$ClinicalUseDefinitionWarningImplCopyWithImpl<
          _$ClinicalUseDefinitionWarningImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClinicalUseDefinitionWarningImplToJson(
      this,
    );
  }
}

abstract class _ClinicalUseDefinitionWarning
    extends ClinicalUseDefinitionWarning {
  const factory _ClinicalUseDefinitionWarning(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final CodeableConcept? code}) = _$ClinicalUseDefinitionWarningImpl;
  const _ClinicalUseDefinitionWarning._() : super._();

  factory _ClinicalUseDefinitionWarning.fromJson(Map<String, dynamic> json) =
      _$ClinicalUseDefinitionWarningImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [description] A textual definition of this warning, with formatting.;
  FhirMarkdown? get description;
  @override

  /// [descriptionElement] (_description): Extensions for description;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [code] A coded or unformatted textual definition of this warning.;
  CodeableConcept? get code;
  @override
  @JsonKey(ignore: true)
  _$$ClinicalUseDefinitionWarningImplCopyWith<
          _$ClinicalUseDefinitionWarningImpl>
      get copyWith => throw _privateConstructorUsedError;
}
