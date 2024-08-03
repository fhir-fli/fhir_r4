// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'care_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarePlan _$CarePlanFromJson(Map<String, dynamic> json) {
  return _CarePlan.fromJson(json);
}

/// @nodoc
mixin _$CarePlan {
  @JsonKey(unknownEnumValue: R4ResourceType.CarePlan)
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

  /// [identifier] Business identifiers assigned to this care plan by the
  /// performer or other systems which remain constant as the resource is
  ///  updated and propagates from server to server.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan.
  List<FhirCanonical>? get instantiatesCanonical =>
      throw _privateConstructorUsedError;

  /// [instantiatesUri] The URL pointing to an externally maintained protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan.
  List<FhirUri>? get instantiatesUri => throw _privateConstructorUsedError;

  /// [instantiatesUriElement] Extensions for instantiatesUri
  @JsonKey(name: '_instantiatesUri')
  List<PrimitiveElement>? get instantiatesUriElement =>
      throw _privateConstructorUsedError;

  /// [basedOn] A care plan that is fulfilled in whole or in part by this care
  ///  plan.
  List<Reference>? get basedOn => throw _privateConstructorUsedError;

  /// [replaces] Completed or terminated care plan whose function is taken by
  ///  this new care plan.
  List<Reference>? get replaces => throw _privateConstructorUsedError;

  /// [partOf] A larger care plan of which this particular care plan is a
  ///  component or step.
  List<Reference>? get partOf => throw _privateConstructorUsedError;

  /// [status] Indicates whether the plan is currently being acted upon,
  ///  represents future intentions or is now a historical record.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [intent] Indicates the level of authority/intentionality associated with
  ///  the care plan and where the care plan fits into the workflow chain.
  FhirCode? get intent => throw _privateConstructorUsedError;

  /// [intentElement] Extensions for intent
  @JsonKey(name: '_intent')
  PrimitiveElement? get intentElement => throw _privateConstructorUsedError;

  /// [category] Identifies what "kind" of plan this is to support
  /// differentiation between multiple co-existing plans; e.g. "Home health",
  ///  "psychiatric", "asthma", "disease management", "wellness plan", etc.
  List<CodeableConcept>? get category => throw _privateConstructorUsedError;

  /// [title] Human-friendly name for the care plan.
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;

  /// [description] A description of the scope and nature of the plan.
  String? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [subject] Identifies the patient or group whose intended care is
  ///  described by the plan.
  Reference get subject => throw _privateConstructorUsedError;

  /// [encounter] The Encounter during which this CarePlan was created or to
  ///  which the creation of this record is tightly associated.
  Reference? get encounter => throw _privateConstructorUsedError;

  /// [period] Indicates when the plan did (or is intended to) come into effect
  ///  and end.
  Period? get period => throw _privateConstructorUsedError;

  /// [created] Represents when this particular CarePlan record was created in
  ///  the system, which is often a system-generated date.
  FhirDateTime? get created => throw _privateConstructorUsedError;

  /// [createdElement] Extensions for created
  @JsonKey(name: '_created')
  PrimitiveElement? get createdElement => throw _privateConstructorUsedError;

  /// [author] When populated, the author is responsible for the care plan.
  ///  The care plan is attributed to the author.
  Reference? get author => throw _privateConstructorUsedError;

  /// [contributor] Identifies the individual(s) or organization who provided
  ///  the contents of the care plan.
  List<Reference>? get contributor => throw _privateConstructorUsedError;

  /// [careTeam] Identifies all people and organizations who are expected to be
  ///  involved in the care envisioned by this plan.
  List<Reference>? get careTeam => throw _privateConstructorUsedError;

  /// [addresses] Identifies the conditions/problems/concerns/diagnoses/etc.
  ///  whose management and/or mitigation are handled by this plan.
  List<Reference>? get addresses => throw _privateConstructorUsedError;

  /// [supportingInfo] Identifies portions of the patient's record that
  /// specifically influenced the formation of the plan.  These might include
  ///  comorbidities, recent procedures, limitations, recent assessments, etc.
  List<Reference>? get supportingInfo => throw _privateConstructorUsedError;

  /// [goal] Describes the intended objective(s) of carrying out the care plan.
  List<Reference>? get goal => throw _privateConstructorUsedError;

  /// [activity] Identifies a planned action to occur as part of the plan.  For
  /// example, a medication to be used, lab tests to perform, self-monitoring,
  ///  education, etc.
  List<CarePlanActivity>? get activity => throw _privateConstructorUsedError;

  /// [note] General notes about the care plan not covered elsewhere.
  List<Annotation>? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarePlanCopyWith<CarePlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarePlanCopyWith<$Res> {
  factory $CarePlanCopyWith(CarePlan value, $Res Function(CarePlan) then) =
      _$CarePlanCopyWithImpl<$Res, CarePlan>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.CarePlan)
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
      List<Reference>? basedOn,
      List<Reference>? replaces,
      List<Reference>? partOf,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      FhirCode? intent,
      @JsonKey(name: '_intent') PrimitiveElement? intentElement,
      List<CodeableConcept>? category,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      Reference subject,
      Reference? encounter,
      Period? period,
      FhirDateTime? created,
      @JsonKey(name: '_created') PrimitiveElement? createdElement,
      Reference? author,
      List<Reference>? contributor,
      List<Reference>? careTeam,
      List<Reference>? addresses,
      List<Reference>? supportingInfo,
      List<Reference>? goal,
      List<CarePlanActivity>? activity,
      List<Annotation>? note});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $ReferenceCopyWith<$Res> get subject;
  $ReferenceCopyWith<$Res>? get encounter;
  $PeriodCopyWith<$Res>? get period;
  $ReferenceCopyWith<$Res>? get author;
}

/// @nodoc
class _$CarePlanCopyWithImpl<$Res, $Val extends CarePlan>
    implements $CarePlanCopyWith<$Res> {
  _$CarePlanCopyWithImpl(this._value, this._then);

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
    Object? basedOn = freezed,
    Object? replaces = freezed,
    Object? partOf = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? intent = freezed,
    Object? intentElement = freezed,
    Object? category = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? subject = null,
    Object? encounter = freezed,
    Object? period = freezed,
    Object? created = freezed,
    Object? createdElement = freezed,
    Object? author = freezed,
    Object? contributor = freezed,
    Object? careTeam = freezed,
    Object? addresses = freezed,
    Object? supportingInfo = freezed,
    Object? goal = freezed,
    Object? activity = freezed,
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
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      replaces: freezed == replaces
          ? _value.replaces
          : replaces // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      partOf: freezed == partOf
          ? _value.partOf
          : partOf // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      intent: freezed == intent
          ? _value.intent
          : intent // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      intentElement: freezed == intentElement
          ? _value.intentElement
          : intentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      createdElement: freezed == createdElement
          ? _value.createdElement
          : createdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Reference?,
      contributor: freezed == contributor
          ? _value.contributor
          : contributor // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      careTeam: freezed == careTeam
          ? _value.careTeam
          : careTeam // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      addresses: freezed == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      supportingInfo: freezed == supportingInfo
          ? _value.supportingInfo
          : supportingInfo // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      activity: freezed == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as List<CarePlanActivity>?,
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
  $PeriodCopyWith<$Res>? get period {
    if (_value.period == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.period!, (value) {
      return _then(_value.copyWith(period: value) as $Val);
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
abstract class _$$CarePlanImplCopyWith<$Res>
    implements $CarePlanCopyWith<$Res> {
  factory _$$CarePlanImplCopyWith(
          _$CarePlanImpl value, $Res Function(_$CarePlanImpl) then) =
      __$$CarePlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.CarePlan)
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
      List<Reference>? basedOn,
      List<Reference>? replaces,
      List<Reference>? partOf,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      FhirCode? intent,
      @JsonKey(name: '_intent') PrimitiveElement? intentElement,
      List<CodeableConcept>? category,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      Reference subject,
      Reference? encounter,
      Period? period,
      FhirDateTime? created,
      @JsonKey(name: '_created') PrimitiveElement? createdElement,
      Reference? author,
      List<Reference>? contributor,
      List<Reference>? careTeam,
      List<Reference>? addresses,
      List<Reference>? supportingInfo,
      List<Reference>? goal,
      List<CarePlanActivity>? activity,
      List<Annotation>? note});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ReferenceCopyWith<$Res> get subject;
  @override
  $ReferenceCopyWith<$Res>? get encounter;
  @override
  $PeriodCopyWith<$Res>? get period;
  @override
  $ReferenceCopyWith<$Res>? get author;
}

/// @nodoc
class __$$CarePlanImplCopyWithImpl<$Res>
    extends _$CarePlanCopyWithImpl<$Res, _$CarePlanImpl>
    implements _$$CarePlanImplCopyWith<$Res> {
  __$$CarePlanImplCopyWithImpl(
      _$CarePlanImpl _value, $Res Function(_$CarePlanImpl) _then)
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
    Object? basedOn = freezed,
    Object? replaces = freezed,
    Object? partOf = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? intent = freezed,
    Object? intentElement = freezed,
    Object? category = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? subject = null,
    Object? encounter = freezed,
    Object? period = freezed,
    Object? created = freezed,
    Object? createdElement = freezed,
    Object? author = freezed,
    Object? contributor = freezed,
    Object? careTeam = freezed,
    Object? addresses = freezed,
    Object? supportingInfo = freezed,
    Object? goal = freezed,
    Object? activity = freezed,
    Object? note = freezed,
  }) {
    return _then(_$CarePlanImpl(
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
      basedOn: freezed == basedOn
          ? _value._basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      replaces: freezed == replaces
          ? _value._replaces
          : replaces // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      partOf: freezed == partOf
          ? _value._partOf
          : partOf // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      intent: freezed == intent
          ? _value.intent
          : intent // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      intentElement: freezed == intentElement
          ? _value.intentElement
          : intentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      createdElement: freezed == createdElement
          ? _value.createdElement
          : createdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Reference?,
      contributor: freezed == contributor
          ? _value._contributor
          : contributor // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      careTeam: freezed == careTeam
          ? _value._careTeam
          : careTeam // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      addresses: freezed == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      supportingInfo: freezed == supportingInfo
          ? _value._supportingInfo
          : supportingInfo // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      goal: freezed == goal
          ? _value._goal
          : goal // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      activity: freezed == activity
          ? _value._activity
          : activity // ignore: cast_nullable_to_non_nullable
              as List<CarePlanActivity>?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarePlanImpl extends _CarePlan {
  const _$CarePlanImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.CarePlan)
      this.resourceType = R4ResourceType.CarePlan,
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
      final List<Reference>? basedOn,
      final List<Reference>? replaces,
      final List<Reference>? partOf,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.intent,
      @JsonKey(name: '_intent') this.intentElement,
      final List<CodeableConcept>? category,
      this.title,
      @JsonKey(name: '_title') this.titleElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      required this.subject,
      this.encounter,
      this.period,
      this.created,
      @JsonKey(name: '_created') this.createdElement,
      this.author,
      final List<Reference>? contributor,
      final List<Reference>? careTeam,
      final List<Reference>? addresses,
      final List<Reference>? supportingInfo,
      final List<Reference>? goal,
      final List<CarePlanActivity>? activity,
      final List<Annotation>? note})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _instantiatesCanonical = instantiatesCanonical,
        _instantiatesUri = instantiatesUri,
        _instantiatesUriElement = instantiatesUriElement,
        _basedOn = basedOn,
        _replaces = replaces,
        _partOf = partOf,
        _category = category,
        _contributor = contributor,
        _careTeam = careTeam,
        _addresses = addresses,
        _supportingInfo = supportingInfo,
        _goal = goal,
        _activity = activity,
        _note = note,
        super._();

  factory _$CarePlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarePlanImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.CarePlan)
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

  /// [identifier] Business identifiers assigned to this care plan by the
  /// performer or other systems which remain constant as the resource is
  ///  updated and propagates from server to server.
  final List<Identifier>? _identifier;

  /// [identifier] Business identifiers assigned to this care plan by the
  /// performer or other systems which remain constant as the resource is
  ///  updated and propagates from server to server.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan.
  final List<FhirCanonical>? _instantiatesCanonical;

  /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan.
  @override
  List<FhirCanonical>? get instantiatesCanonical {
    final value = _instantiatesCanonical;
    if (value == null) return null;
    if (_instantiatesCanonical is EqualUnmodifiableListView)
      return _instantiatesCanonical;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [instantiatesUri] The URL pointing to an externally maintained protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan.
  final List<FhirUri>? _instantiatesUri;

  /// [instantiatesUri] The URL pointing to an externally maintained protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan.
  @override
  List<FhirUri>? get instantiatesUri {
    final value = _instantiatesUri;
    if (value == null) return null;
    if (_instantiatesUri is EqualUnmodifiableListView) return _instantiatesUri;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [instantiatesUriElement] Extensions for instantiatesUri
  final List<PrimitiveElement>? _instantiatesUriElement;

  /// [instantiatesUriElement] Extensions for instantiatesUri
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

  /// [basedOn] A care plan that is fulfilled in whole or in part by this care
  ///  plan.
  final List<Reference>? _basedOn;

  /// [basedOn] A care plan that is fulfilled in whole or in part by this care
  ///  plan.
  @override
  List<Reference>? get basedOn {
    final value = _basedOn;
    if (value == null) return null;
    if (_basedOn is EqualUnmodifiableListView) return _basedOn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [replaces] Completed or terminated care plan whose function is taken by
  ///  this new care plan.
  final List<Reference>? _replaces;

  /// [replaces] Completed or terminated care plan whose function is taken by
  ///  this new care plan.
  @override
  List<Reference>? get replaces {
    final value = _replaces;
    if (value == null) return null;
    if (_replaces is EqualUnmodifiableListView) return _replaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [partOf] A larger care plan of which this particular care plan is a
  ///  component or step.
  final List<Reference>? _partOf;

  /// [partOf] A larger care plan of which this particular care plan is a
  ///  component or step.
  @override
  List<Reference>? get partOf {
    final value = _partOf;
    if (value == null) return null;
    if (_partOf is EqualUnmodifiableListView) return _partOf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] Indicates whether the plan is currently being acted upon,
  ///  represents future intentions or is now a historical record.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [intent] Indicates the level of authority/intentionality associated with
  ///  the care plan and where the care plan fits into the workflow chain.
  @override
  final FhirCode? intent;

  /// [intentElement] Extensions for intent
  @override
  @JsonKey(name: '_intent')
  final PrimitiveElement? intentElement;

  /// [category] Identifies what "kind" of plan this is to support
  /// differentiation between multiple co-existing plans; e.g. "Home health",
  ///  "psychiatric", "asthma", "disease management", "wellness plan", etc.
  final List<CodeableConcept>? _category;

  /// [category] Identifies what "kind" of plan this is to support
  /// differentiation between multiple co-existing plans; e.g. "Home health",
  ///  "psychiatric", "asthma", "disease management", "wellness plan", etc.
  @override
  List<CodeableConcept>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [title] Human-friendly name for the care plan.
  @override
  final String? title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;

  /// [description] A description of the scope and nature of the plan.
  @override
  final String? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [subject] Identifies the patient or group whose intended care is
  ///  described by the plan.
  @override
  final Reference subject;

  /// [encounter] The Encounter during which this CarePlan was created or to
  ///  which the creation of this record is tightly associated.
  @override
  final Reference? encounter;

  /// [period] Indicates when the plan did (or is intended to) come into effect
  ///  and end.
  @override
  final Period? period;

  /// [created] Represents when this particular CarePlan record was created in
  ///  the system, which is often a system-generated date.
  @override
  final FhirDateTime? created;

  /// [createdElement] Extensions for created
  @override
  @JsonKey(name: '_created')
  final PrimitiveElement? createdElement;

  /// [author] When populated, the author is responsible for the care plan.
  ///  The care plan is attributed to the author.
  @override
  final Reference? author;

  /// [contributor] Identifies the individual(s) or organization who provided
  ///  the contents of the care plan.
  final List<Reference>? _contributor;

  /// [contributor] Identifies the individual(s) or organization who provided
  ///  the contents of the care plan.
  @override
  List<Reference>? get contributor {
    final value = _contributor;
    if (value == null) return null;
    if (_contributor is EqualUnmodifiableListView) return _contributor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [careTeam] Identifies all people and organizations who are expected to be
  ///  involved in the care envisioned by this plan.
  final List<Reference>? _careTeam;

  /// [careTeam] Identifies all people and organizations who are expected to be
  ///  involved in the care envisioned by this plan.
  @override
  List<Reference>? get careTeam {
    final value = _careTeam;
    if (value == null) return null;
    if (_careTeam is EqualUnmodifiableListView) return _careTeam;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [addresses] Identifies the conditions/problems/concerns/diagnoses/etc.
  ///  whose management and/or mitigation are handled by this plan.
  final List<Reference>? _addresses;

  /// [addresses] Identifies the conditions/problems/concerns/diagnoses/etc.
  ///  whose management and/or mitigation are handled by this plan.
  @override
  List<Reference>? get addresses {
    final value = _addresses;
    if (value == null) return null;
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [supportingInfo] Identifies portions of the patient's record that
  /// specifically influenced the formation of the plan.  These might include
  ///  comorbidities, recent procedures, limitations, recent assessments, etc.
  final List<Reference>? _supportingInfo;

  /// [supportingInfo] Identifies portions of the patient's record that
  /// specifically influenced the formation of the plan.  These might include
  ///  comorbidities, recent procedures, limitations, recent assessments, etc.
  @override
  List<Reference>? get supportingInfo {
    final value = _supportingInfo;
    if (value == null) return null;
    if (_supportingInfo is EqualUnmodifiableListView) return _supportingInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [goal] Describes the intended objective(s) of carrying out the care plan.
  final List<Reference>? _goal;

  /// [goal] Describes the intended objective(s) of carrying out the care plan.
  @override
  List<Reference>? get goal {
    final value = _goal;
    if (value == null) return null;
    if (_goal is EqualUnmodifiableListView) return _goal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [activity] Identifies a planned action to occur as part of the plan.  For
  /// example, a medication to be used, lab tests to perform, self-monitoring,
  ///  education, etc.
  final List<CarePlanActivity>? _activity;

  /// [activity] Identifies a planned action to occur as part of the plan.  For
  /// example, a medication to be used, lab tests to perform, self-monitoring,
  ///  education, etc.
  @override
  List<CarePlanActivity>? get activity {
    final value = _activity;
    if (value == null) return null;
    if (_activity is EqualUnmodifiableListView) return _activity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [note] General notes about the care plan not covered elsewhere.
  final List<Annotation>? _note;

  /// [note] General notes about the care plan not covered elsewhere.
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
            other is _$CarePlanImpl &&
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
            const DeepCollectionEquality().equals(other._basedOn, _basedOn) &&
            const DeepCollectionEquality().equals(other._replaces, _replaces) &&
            const DeepCollectionEquality().equals(other._partOf, _partOf) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.intent, intent) || other.intent == intent) &&
            (identical(other.intentElement, intentElement) ||
                other.intentElement == intentElement) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleElement, titleElement) ||
                other.titleElement == titleElement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.encounter, encounter) ||
                other.encounter == encounter) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.createdElement, createdElement) ||
                other.createdElement == createdElement) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality()
                .equals(other._contributor, _contributor) &&
            const DeepCollectionEquality().equals(other._careTeam, _careTeam) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses) &&
            const DeepCollectionEquality()
                .equals(other._supportingInfo, _supportingInfo) &&
            const DeepCollectionEquality().equals(other._goal, _goal) &&
            const DeepCollectionEquality().equals(other._activity, _activity) &&
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
        const DeepCollectionEquality().hash(_instantiatesCanonical),
        const DeepCollectionEquality().hash(_instantiatesUri),
        const DeepCollectionEquality().hash(_instantiatesUriElement),
        const DeepCollectionEquality().hash(_basedOn),
        const DeepCollectionEquality().hash(_replaces),
        const DeepCollectionEquality().hash(_partOf),
        status,
        statusElement,
        intent,
        intentElement,
        const DeepCollectionEquality().hash(_category),
        title,
        titleElement,
        description,
        descriptionElement,
        subject,
        encounter,
        period,
        created,
        createdElement,
        author,
        const DeepCollectionEquality().hash(_contributor),
        const DeepCollectionEquality().hash(_careTeam),
        const DeepCollectionEquality().hash(_addresses),
        const DeepCollectionEquality().hash(_supportingInfo),
        const DeepCollectionEquality().hash(_goal),
        const DeepCollectionEquality().hash(_activity),
        const DeepCollectionEquality().hash(_note)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarePlanImplCopyWith<_$CarePlanImpl> get copyWith =>
      __$$CarePlanImplCopyWithImpl<_$CarePlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarePlanImplToJson(
      this,
    );
  }
}

abstract class _CarePlan extends CarePlan {
  const factory _CarePlan(
      {@JsonKey(unknownEnumValue: R4ResourceType.CarePlan)
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
      final List<Reference>? basedOn,
      final List<Reference>? replaces,
      final List<Reference>? partOf,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final FhirCode? intent,
      @JsonKey(name: '_intent') final PrimitiveElement? intentElement,
      final List<CodeableConcept>? category,
      final String? title,
      @JsonKey(name: '_title') final PrimitiveElement? titleElement,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      required final Reference subject,
      final Reference? encounter,
      final Period? period,
      final FhirDateTime? created,
      @JsonKey(name: '_created') final PrimitiveElement? createdElement,
      final Reference? author,
      final List<Reference>? contributor,
      final List<Reference>? careTeam,
      final List<Reference>? addresses,
      final List<Reference>? supportingInfo,
      final List<Reference>? goal,
      final List<CarePlanActivity>? activity,
      final List<Annotation>? note}) = _$CarePlanImpl;
  const _CarePlan._() : super._();

  factory _CarePlan.fromJson(Map<String, dynamic> json) =
      _$CarePlanImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.CarePlan)
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

  /// [identifier] Business identifiers assigned to this care plan by the
  /// performer or other systems which remain constant as the resource is
  ///  updated and propagates from server to server.
  List<Identifier>? get identifier;
  @override

  /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan.
  List<FhirCanonical>? get instantiatesCanonical;
  @override

  /// [instantiatesUri] The URL pointing to an externally maintained protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan.
  List<FhirUri>? get instantiatesUri;
  @override

  /// [instantiatesUriElement] Extensions for instantiatesUri
  @JsonKey(name: '_instantiatesUri')
  List<PrimitiveElement>? get instantiatesUriElement;
  @override

  /// [basedOn] A care plan that is fulfilled in whole or in part by this care
  ///  plan.
  List<Reference>? get basedOn;
  @override

  /// [replaces] Completed or terminated care plan whose function is taken by
  ///  this new care plan.
  List<Reference>? get replaces;
  @override

  /// [partOf] A larger care plan of which this particular care plan is a
  ///  component or step.
  List<Reference>? get partOf;
  @override

  /// [status] Indicates whether the plan is currently being acted upon,
  ///  represents future intentions or is now a historical record.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [intent] Indicates the level of authority/intentionality associated with
  ///  the care plan and where the care plan fits into the workflow chain.
  FhirCode? get intent;
  @override

  /// [intentElement] Extensions for intent
  @JsonKey(name: '_intent')
  PrimitiveElement? get intentElement;
  @override

  /// [category] Identifies what "kind" of plan this is to support
  /// differentiation between multiple co-existing plans; e.g. "Home health",
  ///  "psychiatric", "asthma", "disease management", "wellness plan", etc.
  List<CodeableConcept>? get category;
  @override

  /// [title] Human-friendly name for the care plan.
  String? get title;
  @override

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;
  @override

  /// [description] A description of the scope and nature of the plan.
  String? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [subject] Identifies the patient or group whose intended care is
  ///  described by the plan.
  Reference get subject;
  @override

  /// [encounter] The Encounter during which this CarePlan was created or to
  ///  which the creation of this record is tightly associated.
  Reference? get encounter;
  @override

  /// [period] Indicates when the plan did (or is intended to) come into effect
  ///  and end.
  Period? get period;
  @override

  /// [created] Represents when this particular CarePlan record was created in
  ///  the system, which is often a system-generated date.
  FhirDateTime? get created;
  @override

  /// [createdElement] Extensions for created
  @JsonKey(name: '_created')
  PrimitiveElement? get createdElement;
  @override

  /// [author] When populated, the author is responsible for the care plan.
  ///  The care plan is attributed to the author.
  Reference? get author;
  @override

  /// [contributor] Identifies the individual(s) or organization who provided
  ///  the contents of the care plan.
  List<Reference>? get contributor;
  @override

  /// [careTeam] Identifies all people and organizations who are expected to be
  ///  involved in the care envisioned by this plan.
  List<Reference>? get careTeam;
  @override

  /// [addresses] Identifies the conditions/problems/concerns/diagnoses/etc.
  ///  whose management and/or mitigation are handled by this plan.
  List<Reference>? get addresses;
  @override

  /// [supportingInfo] Identifies portions of the patient's record that
  /// specifically influenced the formation of the plan.  These might include
  ///  comorbidities, recent procedures, limitations, recent assessments, etc.
  List<Reference>? get supportingInfo;
  @override

  /// [goal] Describes the intended objective(s) of carrying out the care plan.
  List<Reference>? get goal;
  @override

  /// [activity] Identifies a planned action to occur as part of the plan.  For
  /// example, a medication to be used, lab tests to perform, self-monitoring,
  ///  education, etc.
  List<CarePlanActivity>? get activity;
  @override

  /// [note] General notes about the care plan not covered elsewhere.
  List<Annotation>? get note;
  @override
  @JsonKey(ignore: true)
  _$$CarePlanImplCopyWith<_$CarePlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CarePlanActivity _$CarePlanActivityFromJson(Map<String, dynamic> json) {
  return _CarePlanActivity.fromJson(json);
}

/// @nodoc
mixin _$CarePlanActivity {
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

  /// [outcomeCodeableConcept] Identifies the outcome at the point when the
  /// status of the activity is assessed.  For example, the outcome of an
  ///  education activity could be patient understands (or not).
  List<CodeableConcept>? get outcomeCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [outcomeReference] Details of the outcome or action resulting from the
  /// activity.  The reference to an "event" resource, such as Procedure or
  /// Encounter or Observation, is the result/outcome of the activity itself.
  /// The activity can be conveyed using CarePlan.activity.detail OR using the
  ///  CarePlan.activity.reference (a reference to a “request” resource).
  List<Reference>? get outcomeReference => throw _privateConstructorUsedError;

  /// [progress] Notes about the adherence/status/progress of the activity.
  List<Annotation>? get progress => throw _privateConstructorUsedError;

  /// [reference] The details of the proposed activity represented in a
  ///  specific resource.
  Reference? get reference => throw _privateConstructorUsedError;

  /// [detail] A simple summary of a planned activity suitable for a general
  /// care plan system (e.g. form driven) that doesn't know about specific
  ///  resources such as procedure etc.
  CarePlanDetail? get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarePlanActivityCopyWith<CarePlanActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarePlanActivityCopyWith<$Res> {
  factory $CarePlanActivityCopyWith(
          CarePlanActivity value, $Res Function(CarePlanActivity) then) =
      _$CarePlanActivityCopyWithImpl<$Res, CarePlanActivity>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<CodeableConcept>? outcomeCodeableConcept,
      List<Reference>? outcomeReference,
      List<Annotation>? progress,
      Reference? reference,
      CarePlanDetail? detail});

  $ReferenceCopyWith<$Res>? get reference;
  $CarePlanDetailCopyWith<$Res>? get detail;
}

/// @nodoc
class _$CarePlanActivityCopyWithImpl<$Res, $Val extends CarePlanActivity>
    implements $CarePlanActivityCopyWith<$Res> {
  _$CarePlanActivityCopyWithImpl(this._value, this._then);

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
    Object? outcomeCodeableConcept = freezed,
    Object? outcomeReference = freezed,
    Object? progress = freezed,
    Object? reference = freezed,
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
      outcomeCodeableConcept: freezed == outcomeCodeableConcept
          ? _value.outcomeCodeableConcept
          : outcomeCodeableConcept // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      outcomeReference: freezed == outcomeReference
          ? _value.outcomeReference
          : outcomeReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as CarePlanDetail?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get reference {
    if (_value.reference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.reference!, (value) {
      return _then(_value.copyWith(reference: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CarePlanDetailCopyWith<$Res>? get detail {
    if (_value.detail == null) {
      return null;
    }

    return $CarePlanDetailCopyWith<$Res>(_value.detail!, (value) {
      return _then(_value.copyWith(detail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarePlanActivityImplCopyWith<$Res>
    implements $CarePlanActivityCopyWith<$Res> {
  factory _$$CarePlanActivityImplCopyWith(_$CarePlanActivityImpl value,
          $Res Function(_$CarePlanActivityImpl) then) =
      __$$CarePlanActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<CodeableConcept>? outcomeCodeableConcept,
      List<Reference>? outcomeReference,
      List<Annotation>? progress,
      Reference? reference,
      CarePlanDetail? detail});

  @override
  $ReferenceCopyWith<$Res>? get reference;
  @override
  $CarePlanDetailCopyWith<$Res>? get detail;
}

/// @nodoc
class __$$CarePlanActivityImplCopyWithImpl<$Res>
    extends _$CarePlanActivityCopyWithImpl<$Res, _$CarePlanActivityImpl>
    implements _$$CarePlanActivityImplCopyWith<$Res> {
  __$$CarePlanActivityImplCopyWithImpl(_$CarePlanActivityImpl _value,
      $Res Function(_$CarePlanActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? outcomeCodeableConcept = freezed,
    Object? outcomeReference = freezed,
    Object? progress = freezed,
    Object? reference = freezed,
    Object? detail = freezed,
  }) {
    return _then(_$CarePlanActivityImpl(
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
      outcomeCodeableConcept: freezed == outcomeCodeableConcept
          ? _value._outcomeCodeableConcept
          : outcomeCodeableConcept // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      outcomeReference: freezed == outcomeReference
          ? _value._outcomeReference
          : outcomeReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      progress: freezed == progress
          ? _value._progress
          : progress // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as CarePlanDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarePlanActivityImpl extends _CarePlanActivity {
  const _$CarePlanActivityImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<CodeableConcept>? outcomeCodeableConcept,
      final List<Reference>? outcomeReference,
      final List<Annotation>? progress,
      this.reference,
      this.detail})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _outcomeCodeableConcept = outcomeCodeableConcept,
        _outcomeReference = outcomeReference,
        _progress = progress,
        super._();

  factory _$CarePlanActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarePlanActivityImplFromJson(json);

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

  /// [outcomeCodeableConcept] Identifies the outcome at the point when the
  /// status of the activity is assessed.  For example, the outcome of an
  ///  education activity could be patient understands (or not).
  final List<CodeableConcept>? _outcomeCodeableConcept;

  /// [outcomeCodeableConcept] Identifies the outcome at the point when the
  /// status of the activity is assessed.  For example, the outcome of an
  ///  education activity could be patient understands (or not).
  @override
  List<CodeableConcept>? get outcomeCodeableConcept {
    final value = _outcomeCodeableConcept;
    if (value == null) return null;
    if (_outcomeCodeableConcept is EqualUnmodifiableListView)
      return _outcomeCodeableConcept;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [outcomeReference] Details of the outcome or action resulting from the
  /// activity.  The reference to an "event" resource, such as Procedure or
  /// Encounter or Observation, is the result/outcome of the activity itself.
  /// The activity can be conveyed using CarePlan.activity.detail OR using the
  ///  CarePlan.activity.reference (a reference to a “request” resource).
  final List<Reference>? _outcomeReference;

  /// [outcomeReference] Details of the outcome or action resulting from the
  /// activity.  The reference to an "event" resource, such as Procedure or
  /// Encounter or Observation, is the result/outcome of the activity itself.
  /// The activity can be conveyed using CarePlan.activity.detail OR using the
  ///  CarePlan.activity.reference (a reference to a “request” resource).
  @override
  List<Reference>? get outcomeReference {
    final value = _outcomeReference;
    if (value == null) return null;
    if (_outcomeReference is EqualUnmodifiableListView)
      return _outcomeReference;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [progress] Notes about the adherence/status/progress of the activity.
  final List<Annotation>? _progress;

  /// [progress] Notes about the adherence/status/progress of the activity.
  @override
  List<Annotation>? get progress {
    final value = _progress;
    if (value == null) return null;
    if (_progress is EqualUnmodifiableListView) return _progress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [reference] The details of the proposed activity represented in a
  ///  specific resource.
  @override
  final Reference? reference;

  /// [detail] A simple summary of a planned activity suitable for a general
  /// care plan system (e.g. form driven) that doesn't know about specific
  ///  resources such as procedure etc.
  @override
  final CarePlanDetail? detail;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarePlanActivityImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(
                other._outcomeCodeableConcept, _outcomeCodeableConcept) &&
            const DeepCollectionEquality()
                .equals(other._outcomeReference, _outcomeReference) &&
            const DeepCollectionEquality().equals(other._progress, _progress) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_outcomeCodeableConcept),
      const DeepCollectionEquality().hash(_outcomeReference),
      const DeepCollectionEquality().hash(_progress),
      reference,
      detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarePlanActivityImplCopyWith<_$CarePlanActivityImpl> get copyWith =>
      __$$CarePlanActivityImplCopyWithImpl<_$CarePlanActivityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarePlanActivityImplToJson(
      this,
    );
  }
}

abstract class _CarePlanActivity extends CarePlanActivity {
  const factory _CarePlanActivity(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<CodeableConcept>? outcomeCodeableConcept,
      final List<Reference>? outcomeReference,
      final List<Annotation>? progress,
      final Reference? reference,
      final CarePlanDetail? detail}) = _$CarePlanActivityImpl;
  const _CarePlanActivity._() : super._();

  factory _CarePlanActivity.fromJson(Map<String, dynamic> json) =
      _$CarePlanActivityImpl.fromJson;

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

  /// [outcomeCodeableConcept] Identifies the outcome at the point when the
  /// status of the activity is assessed.  For example, the outcome of an
  ///  education activity could be patient understands (or not).
  List<CodeableConcept>? get outcomeCodeableConcept;
  @override

  /// [outcomeReference] Details of the outcome or action resulting from the
  /// activity.  The reference to an "event" resource, such as Procedure or
  /// Encounter or Observation, is the result/outcome of the activity itself.
  /// The activity can be conveyed using CarePlan.activity.detail OR using the
  ///  CarePlan.activity.reference (a reference to a “request” resource).
  List<Reference>? get outcomeReference;
  @override

  /// [progress] Notes about the adherence/status/progress of the activity.
  List<Annotation>? get progress;
  @override

  /// [reference] The details of the proposed activity represented in a
  ///  specific resource.
  Reference? get reference;
  @override

  /// [detail] A simple summary of a planned activity suitable for a general
  /// care plan system (e.g. form driven) that doesn't know about specific
  ///  resources such as procedure etc.
  CarePlanDetail? get detail;
  @override
  @JsonKey(ignore: true)
  _$$CarePlanActivityImplCopyWith<_$CarePlanActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CarePlanDetail _$CarePlanDetailFromJson(Map<String, dynamic> json) {
  return _CarePlanDetail.fromJson(json);
}

/// @nodoc
mixin _$CarePlanDetail {
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

  /// [kind] A description of the kind of resource the in-line definition of a
  /// care plan activity is representing.  The CarePlan.activity.detail is an
  /// in-line definition when a resource is not referenced using
  /// CarePlan.activity.reference.  For example, a MedicationRequest, a
  ///  ServiceRequest, or a CommunicationRequest.
  FhirCode? get kind => throw _privateConstructorUsedError;

  /// [kindElement] Extensions for kind
  @JsonKey(name: '_kind')
  PrimitiveElement? get kindElement => throw _privateConstructorUsedError;

  /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan activity.
  List<FhirCanonical>? get instantiatesCanonical =>
      throw _privateConstructorUsedError;

  /// [instantiatesUri] The URL pointing to an externally maintained protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan activity.
  List<FhirUri>? get instantiatesUri => throw _privateConstructorUsedError;

  /// [instantiatesUriElement] Extensions for instantiatesUri
  @JsonKey(name: '_instantiatesUri')
  List<PrimitiveElement>? get instantiatesUriElement =>
      throw _privateConstructorUsedError;

  /// [code] Detailed description of the type of planned activity; e.g. what
  ///  lab test, what procedure, what kind of encounter.
  CodeableConcept? get code => throw _privateConstructorUsedError;

  /// [reasonCode] Provides the rationale that drove the inclusion of this
  /// particular activity as part of the plan or the reason why the activity was
  ///  prohibited.
  List<CodeableConcept>? get reasonCode => throw _privateConstructorUsedError;

  /// [reasonReference] Indicates another resource, such as the health
  /// condition(s), whose existence justifies this request and drove the
  ///  inclusion of this particular activity as part of the plan.
  List<Reference>? get reasonReference => throw _privateConstructorUsedError;

  /// [goal] Internal reference that identifies the goals that this activity is
  ///  intended to contribute towards meeting.
  List<Reference>? get goal => throw _privateConstructorUsedError;

  /// [status] Identifies what progress is being made for the specific
  ///  activity.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [statusReason] Provides reason why the activity isn't yet started, is on
  ///  hold, was cancelled, etc.
  CodeableConcept? get statusReason => throw _privateConstructorUsedError;

  /// [doNotPerform] If true, indicates that the described activity is one that
  /// must NOT be engaged in when following the plan.  If false, or missing,
  /// indicates that the described activity is one that should be engaged in
  ///  when following the plan.
  FhirBoolean? get doNotPerform => throw _privateConstructorUsedError;

  /// [doNotPerformElement] Extensions for doNotPerform
  @JsonKey(name: '_doNotPerform')
  PrimitiveElement? get doNotPerformElement =>
      throw _privateConstructorUsedError;

  /// [scheduledTiming] The period, timing or frequency upon which the
  ///  described activity is to occur.
  Timing? get scheduledTiming => throw _privateConstructorUsedError;

  /// [scheduledPeriod] The period, timing or frequency upon which the
  ///  described activity is to occur.
  Period? get scheduledPeriod => throw _privateConstructorUsedError;

  /// [scheduledString] The period, timing or frequency upon which the
  ///  described activity is to occur.
  String? get scheduledString => throw _privateConstructorUsedError;

  /// [scheduledStringElement] Extensions for scheduledString
  @JsonKey(name: '_scheduledString')
  PrimitiveElement? get scheduledStringElement =>
      throw _privateConstructorUsedError;

  /// [location] Identifies the facility where the activity will occur; e.g.
  ///  home, hospital, specific clinic, etc.
  Reference? get location => throw _privateConstructorUsedError;

  /// [performer] Identifies who's expected to be involved in the activity.
  List<Reference>? get performer => throw _privateConstructorUsedError;

  /// [productCodeableConcept] Identifies the food, drug or other product to be
  ///  consumed or supplied in the activity.
  CodeableConcept? get productCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [productReference] Identifies the food, drug or other product to be
  ///  consumed or supplied in the activity.
  Reference? get productReference => throw _privateConstructorUsedError;

  /// [dailyAmount] Identifies the quantity expected to be consumed in a given
  ///  day.
  Quantity? get dailyAmount => throw _privateConstructorUsedError;

  /// [quantity] Identifies the quantity expected to be supplied, administered
  ///  or consumed by the subject.
  Quantity? get quantity => throw _privateConstructorUsedError;

  /// [description] This provides a textual description of constraints on the
  /// intended activity occurrence, including relation to other activities.  It
  /// may also include objectives, pre-conditions and end-conditions.  Finally,
  /// it may convey specifics about the activity such as body site, method,
  ///  route, etc.
  String? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarePlanDetailCopyWith<CarePlanDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarePlanDetailCopyWith<$Res> {
  factory $CarePlanDetailCopyWith(
          CarePlanDetail value, $Res Function(CarePlanDetail) then) =
      _$CarePlanDetailCopyWithImpl<$Res, CarePlanDetail>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? kind,
      @JsonKey(name: '_kind') PrimitiveElement? kindElement,
      List<FhirCanonical>? instantiatesCanonical,
      List<FhirUri>? instantiatesUri,
      @JsonKey(name: '_instantiatesUri')
      List<PrimitiveElement>? instantiatesUriElement,
      CodeableConcept? code,
      List<CodeableConcept>? reasonCode,
      List<Reference>? reasonReference,
      List<Reference>? goal,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      CodeableConcept? statusReason,
      FhirBoolean? doNotPerform,
      @JsonKey(name: '_doNotPerform') PrimitiveElement? doNotPerformElement,
      Timing? scheduledTiming,
      Period? scheduledPeriod,
      String? scheduledString,
      @JsonKey(name: '_scheduledString')
      PrimitiveElement? scheduledStringElement,
      Reference? location,
      List<Reference>? performer,
      CodeableConcept? productCodeableConcept,
      Reference? productReference,
      Quantity? dailyAmount,
      Quantity? quantity,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement});

  $CodeableConceptCopyWith<$Res>? get code;
  $CodeableConceptCopyWith<$Res>? get statusReason;
  $TimingCopyWith<$Res>? get scheduledTiming;
  $PeriodCopyWith<$Res>? get scheduledPeriod;
  $ReferenceCopyWith<$Res>? get location;
  $CodeableConceptCopyWith<$Res>? get productCodeableConcept;
  $ReferenceCopyWith<$Res>? get productReference;
  $QuantityCopyWith<$Res>? get dailyAmount;
  $QuantityCopyWith<$Res>? get quantity;
}

/// @nodoc
class _$CarePlanDetailCopyWithImpl<$Res, $Val extends CarePlanDetail>
    implements $CarePlanDetailCopyWith<$Res> {
  _$CarePlanDetailCopyWithImpl(this._value, this._then);

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
    Object? kind = freezed,
    Object? kindElement = freezed,
    Object? instantiatesCanonical = freezed,
    Object? instantiatesUri = freezed,
    Object? instantiatesUriElement = freezed,
    Object? code = freezed,
    Object? reasonCode = freezed,
    Object? reasonReference = freezed,
    Object? goal = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? statusReason = freezed,
    Object? doNotPerform = freezed,
    Object? doNotPerformElement = freezed,
    Object? scheduledTiming = freezed,
    Object? scheduledPeriod = freezed,
    Object? scheduledString = freezed,
    Object? scheduledStringElement = freezed,
    Object? location = freezed,
    Object? performer = freezed,
    Object? productCodeableConcept = freezed,
    Object? productReference = freezed,
    Object? dailyAmount = freezed,
    Object? quantity = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
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
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      kindElement: freezed == kindElement
          ? _value.kindElement
          : kindElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      reasonCode: freezed == reasonCode
          ? _value.reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      reasonReference: freezed == reasonReference
          ? _value.reasonReference
          : reasonReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
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
      doNotPerform: freezed == doNotPerform
          ? _value.doNotPerform
          : doNotPerform // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      doNotPerformElement: freezed == doNotPerformElement
          ? _value.doNotPerformElement
          : doNotPerformElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      scheduledTiming: freezed == scheduledTiming
          ? _value.scheduledTiming
          : scheduledTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      scheduledPeriod: freezed == scheduledPeriod
          ? _value.scheduledPeriod
          : scheduledPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      scheduledString: freezed == scheduledString
          ? _value.scheduledString
          : scheduledString // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledStringElement: freezed == scheduledStringElement
          ? _value.scheduledStringElement
          : scheduledStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Reference?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      productCodeableConcept: freezed == productCodeableConcept
          ? _value.productCodeableConcept
          : productCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      productReference: freezed == productReference
          ? _value.productReference
          : productReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      dailyAmount: freezed == dailyAmount
          ? _value.dailyAmount
          : dailyAmount // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
  $TimingCopyWith<$Res>? get scheduledTiming {
    if (_value.scheduledTiming == null) {
      return null;
    }

    return $TimingCopyWith<$Res>(_value.scheduledTiming!, (value) {
      return _then(_value.copyWith(scheduledTiming: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get scheduledPeriod {
    if (_value.scheduledPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.scheduledPeriod!, (value) {
      return _then(_value.copyWith(scheduledPeriod: value) as $Val);
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
  $CodeableConceptCopyWith<$Res>? get productCodeableConcept {
    if (_value.productCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.productCodeableConcept!,
        (value) {
      return _then(_value.copyWith(productCodeableConcept: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get productReference {
    if (_value.productReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.productReference!, (value) {
      return _then(_value.copyWith(productReference: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get dailyAmount {
    if (_value.dailyAmount == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.dailyAmount!, (value) {
      return _then(_value.copyWith(dailyAmount: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get quantity {
    if (_value.quantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.quantity!, (value) {
      return _then(_value.copyWith(quantity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarePlanDetailImplCopyWith<$Res>
    implements $CarePlanDetailCopyWith<$Res> {
  factory _$$CarePlanDetailImplCopyWith(_$CarePlanDetailImpl value,
          $Res Function(_$CarePlanDetailImpl) then) =
      __$$CarePlanDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? kind,
      @JsonKey(name: '_kind') PrimitiveElement? kindElement,
      List<FhirCanonical>? instantiatesCanonical,
      List<FhirUri>? instantiatesUri,
      @JsonKey(name: '_instantiatesUri')
      List<PrimitiveElement>? instantiatesUriElement,
      CodeableConcept? code,
      List<CodeableConcept>? reasonCode,
      List<Reference>? reasonReference,
      List<Reference>? goal,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      CodeableConcept? statusReason,
      FhirBoolean? doNotPerform,
      @JsonKey(name: '_doNotPerform') PrimitiveElement? doNotPerformElement,
      Timing? scheduledTiming,
      Period? scheduledPeriod,
      String? scheduledString,
      @JsonKey(name: '_scheduledString')
      PrimitiveElement? scheduledStringElement,
      Reference? location,
      List<Reference>? performer,
      CodeableConcept? productCodeableConcept,
      Reference? productReference,
      Quantity? dailyAmount,
      Quantity? quantity,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement});

  @override
  $CodeableConceptCopyWith<$Res>? get code;
  @override
  $CodeableConceptCopyWith<$Res>? get statusReason;
  @override
  $TimingCopyWith<$Res>? get scheduledTiming;
  @override
  $PeriodCopyWith<$Res>? get scheduledPeriod;
  @override
  $ReferenceCopyWith<$Res>? get location;
  @override
  $CodeableConceptCopyWith<$Res>? get productCodeableConcept;
  @override
  $ReferenceCopyWith<$Res>? get productReference;
  @override
  $QuantityCopyWith<$Res>? get dailyAmount;
  @override
  $QuantityCopyWith<$Res>? get quantity;
}

/// @nodoc
class __$$CarePlanDetailImplCopyWithImpl<$Res>
    extends _$CarePlanDetailCopyWithImpl<$Res, _$CarePlanDetailImpl>
    implements _$$CarePlanDetailImplCopyWith<$Res> {
  __$$CarePlanDetailImplCopyWithImpl(
      _$CarePlanDetailImpl _value, $Res Function(_$CarePlanDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? kind = freezed,
    Object? kindElement = freezed,
    Object? instantiatesCanonical = freezed,
    Object? instantiatesUri = freezed,
    Object? instantiatesUriElement = freezed,
    Object? code = freezed,
    Object? reasonCode = freezed,
    Object? reasonReference = freezed,
    Object? goal = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? statusReason = freezed,
    Object? doNotPerform = freezed,
    Object? doNotPerformElement = freezed,
    Object? scheduledTiming = freezed,
    Object? scheduledPeriod = freezed,
    Object? scheduledString = freezed,
    Object? scheduledStringElement = freezed,
    Object? location = freezed,
    Object? performer = freezed,
    Object? productCodeableConcept = freezed,
    Object? productReference = freezed,
    Object? dailyAmount = freezed,
    Object? quantity = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
  }) {
    return _then(_$CarePlanDetailImpl(
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
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      kindElement: freezed == kindElement
          ? _value.kindElement
          : kindElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      reasonCode: freezed == reasonCode
          ? _value._reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      reasonReference: freezed == reasonReference
          ? _value._reasonReference
          : reasonReference // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      goal: freezed == goal
          ? _value._goal
          : goal // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
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
      doNotPerform: freezed == doNotPerform
          ? _value.doNotPerform
          : doNotPerform // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      doNotPerformElement: freezed == doNotPerformElement
          ? _value.doNotPerformElement
          : doNotPerformElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      scheduledTiming: freezed == scheduledTiming
          ? _value.scheduledTiming
          : scheduledTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      scheduledPeriod: freezed == scheduledPeriod
          ? _value.scheduledPeriod
          : scheduledPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      scheduledString: freezed == scheduledString
          ? _value.scheduledString
          : scheduledString // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledStringElement: freezed == scheduledStringElement
          ? _value.scheduledStringElement
          : scheduledStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Reference?,
      performer: freezed == performer
          ? _value._performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      productCodeableConcept: freezed == productCodeableConcept
          ? _value.productCodeableConcept
          : productCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      productReference: freezed == productReference
          ? _value.productReference
          : productReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      dailyAmount: freezed == dailyAmount
          ? _value.dailyAmount
          : dailyAmount // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarePlanDetailImpl extends _CarePlanDetail {
  const _$CarePlanDetailImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.kind,
      @JsonKey(name: '_kind') this.kindElement,
      final List<FhirCanonical>? instantiatesCanonical,
      final List<FhirUri>? instantiatesUri,
      @JsonKey(name: '_instantiatesUri')
      final List<PrimitiveElement>? instantiatesUriElement,
      this.code,
      final List<CodeableConcept>? reasonCode,
      final List<Reference>? reasonReference,
      final List<Reference>? goal,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.statusReason,
      this.doNotPerform,
      @JsonKey(name: '_doNotPerform') this.doNotPerformElement,
      this.scheduledTiming,
      this.scheduledPeriod,
      this.scheduledString,
      @JsonKey(name: '_scheduledString') this.scheduledStringElement,
      this.location,
      final List<Reference>? performer,
      this.productCodeableConcept,
      this.productReference,
      this.dailyAmount,
      this.quantity,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _instantiatesCanonical = instantiatesCanonical,
        _instantiatesUri = instantiatesUri,
        _instantiatesUriElement = instantiatesUriElement,
        _reasonCode = reasonCode,
        _reasonReference = reasonReference,
        _goal = goal,
        _performer = performer,
        super._();

  factory _$CarePlanDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarePlanDetailImplFromJson(json);

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

  /// [kind] A description of the kind of resource the in-line definition of a
  /// care plan activity is representing.  The CarePlan.activity.detail is an
  /// in-line definition when a resource is not referenced using
  /// CarePlan.activity.reference.  For example, a MedicationRequest, a
  ///  ServiceRequest, or a CommunicationRequest.
  @override
  final FhirCode? kind;

  /// [kindElement] Extensions for kind
  @override
  @JsonKey(name: '_kind')
  final PrimitiveElement? kindElement;

  /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan activity.
  final List<FhirCanonical>? _instantiatesCanonical;

  /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan activity.
  @override
  List<FhirCanonical>? get instantiatesCanonical {
    final value = _instantiatesCanonical;
    if (value == null) return null;
    if (_instantiatesCanonical is EqualUnmodifiableListView)
      return _instantiatesCanonical;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [instantiatesUri] The URL pointing to an externally maintained protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan activity.
  final List<FhirUri>? _instantiatesUri;

  /// [instantiatesUri] The URL pointing to an externally maintained protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan activity.
  @override
  List<FhirUri>? get instantiatesUri {
    final value = _instantiatesUri;
    if (value == null) return null;
    if (_instantiatesUri is EqualUnmodifiableListView) return _instantiatesUri;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [instantiatesUriElement] Extensions for instantiatesUri
  final List<PrimitiveElement>? _instantiatesUriElement;

  /// [instantiatesUriElement] Extensions for instantiatesUri
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

  /// [code] Detailed description of the type of planned activity; e.g. what
  ///  lab test, what procedure, what kind of encounter.
  @override
  final CodeableConcept? code;

  /// [reasonCode] Provides the rationale that drove the inclusion of this
  /// particular activity as part of the plan or the reason why the activity was
  ///  prohibited.
  final List<CodeableConcept>? _reasonCode;

  /// [reasonCode] Provides the rationale that drove the inclusion of this
  /// particular activity as part of the plan or the reason why the activity was
  ///  prohibited.
  @override
  List<CodeableConcept>? get reasonCode {
    final value = _reasonCode;
    if (value == null) return null;
    if (_reasonCode is EqualUnmodifiableListView) return _reasonCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [reasonReference] Indicates another resource, such as the health
  /// condition(s), whose existence justifies this request and drove the
  ///  inclusion of this particular activity as part of the plan.
  final List<Reference>? _reasonReference;

  /// [reasonReference] Indicates another resource, such as the health
  /// condition(s), whose existence justifies this request and drove the
  ///  inclusion of this particular activity as part of the plan.
  @override
  List<Reference>? get reasonReference {
    final value = _reasonReference;
    if (value == null) return null;
    if (_reasonReference is EqualUnmodifiableListView) return _reasonReference;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [goal] Internal reference that identifies the goals that this activity is
  ///  intended to contribute towards meeting.
  final List<Reference>? _goal;

  /// [goal] Internal reference that identifies the goals that this activity is
  ///  intended to contribute towards meeting.
  @override
  List<Reference>? get goal {
    final value = _goal;
    if (value == null) return null;
    if (_goal is EqualUnmodifiableListView) return _goal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] Identifies what progress is being made for the specific
  ///  activity.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [statusReason] Provides reason why the activity isn't yet started, is on
  ///  hold, was cancelled, etc.
  @override
  final CodeableConcept? statusReason;

  /// [doNotPerform] If true, indicates that the described activity is one that
  /// must NOT be engaged in when following the plan.  If false, or missing,
  /// indicates that the described activity is one that should be engaged in
  ///  when following the plan.
  @override
  final FhirBoolean? doNotPerform;

  /// [doNotPerformElement] Extensions for doNotPerform
  @override
  @JsonKey(name: '_doNotPerform')
  final PrimitiveElement? doNotPerformElement;

  /// [scheduledTiming] The period, timing or frequency upon which the
  ///  described activity is to occur.
  @override
  final Timing? scheduledTiming;

  /// [scheduledPeriod] The period, timing or frequency upon which the
  ///  described activity is to occur.
  @override
  final Period? scheduledPeriod;

  /// [scheduledString] The period, timing or frequency upon which the
  ///  described activity is to occur.
  @override
  final String? scheduledString;

  /// [scheduledStringElement] Extensions for scheduledString
  @override
  @JsonKey(name: '_scheduledString')
  final PrimitiveElement? scheduledStringElement;

  /// [location] Identifies the facility where the activity will occur; e.g.
  ///  home, hospital, specific clinic, etc.
  @override
  final Reference? location;

  /// [performer] Identifies who's expected to be involved in the activity.
  final List<Reference>? _performer;

  /// [performer] Identifies who's expected to be involved in the activity.
  @override
  List<Reference>? get performer {
    final value = _performer;
    if (value == null) return null;
    if (_performer is EqualUnmodifiableListView) return _performer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [productCodeableConcept] Identifies the food, drug or other product to be
  ///  consumed or supplied in the activity.
  @override
  final CodeableConcept? productCodeableConcept;

  /// [productReference] Identifies the food, drug or other product to be
  ///  consumed or supplied in the activity.
  @override
  final Reference? productReference;

  /// [dailyAmount] Identifies the quantity expected to be consumed in a given
  ///  day.
  @override
  final Quantity? dailyAmount;

  /// [quantity] Identifies the quantity expected to be supplied, administered
  ///  or consumed by the subject.
  @override
  final Quantity? quantity;

  /// [description] This provides a textual description of constraints on the
  /// intended activity occurrence, including relation to other activities.  It
  /// may also include objectives, pre-conditions and end-conditions.  Finally,
  /// it may convey specifics about the activity such as body site, method,
  ///  route, etc.
  @override
  final String? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarePlanDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.kindElement, kindElement) ||
                other.kindElement == kindElement) &&
            const DeepCollectionEquality()
                .equals(other._instantiatesCanonical, _instantiatesCanonical) &&
            const DeepCollectionEquality()
                .equals(other._instantiatesUri, _instantiatesUri) &&
            const DeepCollectionEquality().equals(
                other._instantiatesUriElement, _instantiatesUriElement) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality()
                .equals(other._reasonCode, _reasonCode) &&
            const DeepCollectionEquality()
                .equals(other._reasonReference, _reasonReference) &&
            const DeepCollectionEquality().equals(other._goal, _goal) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.statusReason, statusReason) ||
                other.statusReason == statusReason) &&
            (identical(other.doNotPerform, doNotPerform) ||
                other.doNotPerform == doNotPerform) &&
            (identical(other.doNotPerformElement, doNotPerformElement) ||
                other.doNotPerformElement == doNotPerformElement) &&
            (identical(other.scheduledTiming, scheduledTiming) ||
                other.scheduledTiming == scheduledTiming) &&
            (identical(other.scheduledPeriod, scheduledPeriod) ||
                other.scheduledPeriod == scheduledPeriod) &&
            (identical(other.scheduledString, scheduledString) ||
                other.scheduledString == scheduledString) &&
            (identical(other.scheduledStringElement, scheduledStringElement) ||
                other.scheduledStringElement == scheduledStringElement) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._performer, _performer) &&
            (identical(other.productCodeableConcept, productCodeableConcept) ||
                other.productCodeableConcept == productCodeableConcept) &&
            (identical(other.productReference, productReference) ||
                other.productReference == productReference) &&
            (identical(other.dailyAmount, dailyAmount) ||
                other.dailyAmount == dailyAmount) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        kind,
        kindElement,
        const DeepCollectionEquality().hash(_instantiatesCanonical),
        const DeepCollectionEquality().hash(_instantiatesUri),
        const DeepCollectionEquality().hash(_instantiatesUriElement),
        code,
        const DeepCollectionEquality().hash(_reasonCode),
        const DeepCollectionEquality().hash(_reasonReference),
        const DeepCollectionEquality().hash(_goal),
        status,
        statusElement,
        statusReason,
        doNotPerform,
        doNotPerformElement,
        scheduledTiming,
        scheduledPeriod,
        scheduledString,
        scheduledStringElement,
        location,
        const DeepCollectionEquality().hash(_performer),
        productCodeableConcept,
        productReference,
        dailyAmount,
        quantity,
        description,
        descriptionElement
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarePlanDetailImplCopyWith<_$CarePlanDetailImpl> get copyWith =>
      __$$CarePlanDetailImplCopyWithImpl<_$CarePlanDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarePlanDetailImplToJson(
      this,
    );
  }
}

abstract class _CarePlanDetail extends CarePlanDetail {
  const factory _CarePlanDetail(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirCode? kind,
      @JsonKey(name: '_kind') final PrimitiveElement? kindElement,
      final List<FhirCanonical>? instantiatesCanonical,
      final List<FhirUri>? instantiatesUri,
      @JsonKey(name: '_instantiatesUri')
      final List<PrimitiveElement>? instantiatesUriElement,
      final CodeableConcept? code,
      final List<CodeableConcept>? reasonCode,
      final List<Reference>? reasonReference,
      final List<Reference>? goal,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final CodeableConcept? statusReason,
      final FhirBoolean? doNotPerform,
      @JsonKey(name: '_doNotPerform')
      final PrimitiveElement? doNotPerformElement,
      final Timing? scheduledTiming,
      final Period? scheduledPeriod,
      final String? scheduledString,
      @JsonKey(name: '_scheduledString')
      final PrimitiveElement? scheduledStringElement,
      final Reference? location,
      final List<Reference>? performer,
      final CodeableConcept? productCodeableConcept,
      final Reference? productReference,
      final Quantity? dailyAmount,
      final Quantity? quantity,
      final String? description,
      @JsonKey(name: '_description')
      final PrimitiveElement? descriptionElement}) = _$CarePlanDetailImpl;
  const _CarePlanDetail._() : super._();

  factory _CarePlanDetail.fromJson(Map<String, dynamic> json) =
      _$CarePlanDetailImpl.fromJson;

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

  /// [kind] A description of the kind of resource the in-line definition of a
  /// care plan activity is representing.  The CarePlan.activity.detail is an
  /// in-line definition when a resource is not referenced using
  /// CarePlan.activity.reference.  For example, a MedicationRequest, a
  ///  ServiceRequest, or a CommunicationRequest.
  FhirCode? get kind;
  @override

  /// [kindElement] Extensions for kind
  @JsonKey(name: '_kind')
  PrimitiveElement? get kindElement;
  @override

  /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan activity.
  List<FhirCanonical>? get instantiatesCanonical;
  @override

  /// [instantiatesUri] The URL pointing to an externally maintained protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan activity.
  List<FhirUri>? get instantiatesUri;
  @override

  /// [instantiatesUriElement] Extensions for instantiatesUri
  @JsonKey(name: '_instantiatesUri')
  List<PrimitiveElement>? get instantiatesUriElement;
  @override

  /// [code] Detailed description of the type of planned activity; e.g. what
  ///  lab test, what procedure, what kind of encounter.
  CodeableConcept? get code;
  @override

  /// [reasonCode] Provides the rationale that drove the inclusion of this
  /// particular activity as part of the plan or the reason why the activity was
  ///  prohibited.
  List<CodeableConcept>? get reasonCode;
  @override

  /// [reasonReference] Indicates another resource, such as the health
  /// condition(s), whose existence justifies this request and drove the
  ///  inclusion of this particular activity as part of the plan.
  List<Reference>? get reasonReference;
  @override

  /// [goal] Internal reference that identifies the goals that this activity is
  ///  intended to contribute towards meeting.
  List<Reference>? get goal;
  @override

  /// [status] Identifies what progress is being made for the specific
  ///  activity.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [statusReason] Provides reason why the activity isn't yet started, is on
  ///  hold, was cancelled, etc.
  CodeableConcept? get statusReason;
  @override

  /// [doNotPerform] If true, indicates that the described activity is one that
  /// must NOT be engaged in when following the plan.  If false, or missing,
  /// indicates that the described activity is one that should be engaged in
  ///  when following the plan.
  FhirBoolean? get doNotPerform;
  @override

  /// [doNotPerformElement] Extensions for doNotPerform
  @JsonKey(name: '_doNotPerform')
  PrimitiveElement? get doNotPerformElement;
  @override

  /// [scheduledTiming] The period, timing or frequency upon which the
  ///  described activity is to occur.
  Timing? get scheduledTiming;
  @override

  /// [scheduledPeriod] The period, timing or frequency upon which the
  ///  described activity is to occur.
  Period? get scheduledPeriod;
  @override

  /// [scheduledString] The period, timing or frequency upon which the
  ///  described activity is to occur.
  String? get scheduledString;
  @override

  /// [scheduledStringElement] Extensions for scheduledString
  @JsonKey(name: '_scheduledString')
  PrimitiveElement? get scheduledStringElement;
  @override

  /// [location] Identifies the facility where the activity will occur; e.g.
  ///  home, hospital, specific clinic, etc.
  Reference? get location;
  @override

  /// [performer] Identifies who's expected to be involved in the activity.
  List<Reference>? get performer;
  @override

  /// [productCodeableConcept] Identifies the food, drug or other product to be
  ///  consumed or supplied in the activity.
  CodeableConcept? get productCodeableConcept;
  @override

  /// [productReference] Identifies the food, drug or other product to be
  ///  consumed or supplied in the activity.
  Reference? get productReference;
  @override

  /// [dailyAmount] Identifies the quantity expected to be consumed in a given
  ///  day.
  Quantity? get dailyAmount;
  @override

  /// [quantity] Identifies the quantity expected to be supplied, administered
  ///  or consumed by the subject.
  Quantity? get quantity;
  @override

  /// [description] This provides a textual description of constraints on the
  /// intended activity occurrence, including relation to other activities.  It
  /// may also include objectives, pre-conditions and end-conditions.  Finally,
  /// it may convey specifics about the activity such as body site, method,
  ///  route, etc.
  String? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override
  @JsonKey(ignore: true)
  _$$CarePlanDetailImplCopyWith<_$CarePlanDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
