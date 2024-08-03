// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Questionnaire _$QuestionnaireFromJson(Map<String, dynamic> json) {
  return _Questionnaire.fromJson(json);
}

/// @nodoc
mixin _$Questionnaire {
  @JsonKey(unknownEnumValue: R4ResourceType.Questionnaire)
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

  /// [url] An absolute URI that is used to identify this questionnaire when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// questionnaire is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the questionnaire is
  ///  stored on different servers.
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [identifier] A formal identifier that is used to identify this
  /// questionnaire when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [version] The identifier that is used to identify this version of the
  /// questionnaire when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the questionnaire author
  /// and is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  /// [name] A natural language name identifying the questionnaire. This name
  /// should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [title] A short, descriptive, user-friendly title for the questionnaire.
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;

  /// [derivedFrom] The URL of a Questionnaire that this Questionnaire is based
  ///  on.
  List<FhirCanonical>? get derivedFrom => throw _privateConstructorUsedError;

  /// [status] The status of this questionnaire. Enables tracking the
  ///  life-cycle of the content.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [experimental] A Boolean value to indicate that this questionnaire is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  FhirBoolean? get experimental => throw _privateConstructorUsedError;

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement =>
      throw _privateConstructorUsedError;

  /// [subjectType] The types of subjects that can be the subject of responses
  ///  created for the questionnaire.
  List<FhirCode>? get subjectType => throw _privateConstructorUsedError;

  /// [subjectTypeElement] Extensions for subjectType
  @JsonKey(name: '_subjectType')
  List<PrimitiveElement>? get subjectTypeElement =>
      throw _privateConstructorUsedError;

  /// [date] The date  (and optionally time) when the questionnaire was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the questionnaire changes.
  FhirDateTime? get date => throw _privateConstructorUsedError;

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [publisher] The name of the organization or individual that published the
  ///  questionnaire.
  String? get publisher => throw _privateConstructorUsedError;

  /// [publisherElement] Extensions for publisher
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement => throw _privateConstructorUsedError;

  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  List<ContactDetail>? get contact => throw _privateConstructorUsedError;

  /// [description] A free text natural language description of the
  ///  questionnaire from a consumer's perspective.
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate questionnaire instances.
  List<UsageContext>? get useContext => throw _privateConstructorUsedError;

  /// [jurisdiction] A legal or geographic region in which the questionnaire is
  ///  intended to be used.
  List<CodeableConcept>? get jurisdiction => throw _privateConstructorUsedError;

  /// [purpose] Explanation of why this questionnaire is needed and why it has
  ///  been designed as it has.
  FhirMarkdown? get purpose => throw _privateConstructorUsedError;

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement => throw _privateConstructorUsedError;

  /// [copyright] A copyright statement relating to the questionnaire and/or
  /// its contents. Copyright statements are generally legal restrictions on the
  ///  use and publishing of the questionnaire.
  FhirMarkdown? get copyright => throw _privateConstructorUsedError;

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement => throw _privateConstructorUsedError;

  /// [approvalDate] The date on which the resource content was approved by the
  /// publisher. Approval happens once when the content is officially approved
  ///  for usage.
  FhirDate? get approvalDate => throw _privateConstructorUsedError;

  /// [approvalDateElement] Extensions for approvalDate
  @JsonKey(name: '_approvalDate')
  PrimitiveElement? get approvalDateElement =>
      throw _privateConstructorUsedError;

  /// [lastReviewDate] The date on which the resource content was last
  /// reviewed. Review happens periodically after approval but does not change
  ///  the original approval date.
  FhirDate? get lastReviewDate => throw _privateConstructorUsedError;

  /// [lastReviewDateElement] Extensions for lastReviewDate
  @JsonKey(name: '_lastReviewDate')
  PrimitiveElement? get lastReviewDateElement =>
      throw _privateConstructorUsedError;

  /// [effectivePeriod] The period during which the questionnaire content was
  ///  or is planned to be in active use.
  Period? get effectivePeriod => throw _privateConstructorUsedError;

  /// [code] An identifier for this question or group of questions in a
  ///  particular terminology such as LOINC.
  List<Coding>? get code => throw _privateConstructorUsedError;

  /// [item] A particular question, question grouping or display text that is
  ///  part of the questionnaire.
  List<QuestionnaireItem>? get item => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireCopyWith<Questionnaire> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireCopyWith<$Res> {
  factory $QuestionnaireCopyWith(
          Questionnaire value, $Res Function(Questionnaire) then) =
      _$QuestionnaireCopyWithImpl<$Res, Questionnaire>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Questionnaire)
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
      FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      List<Identifier>? identifier,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      List<FhirCanonical>? derivedFrom,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      FhirBoolean? experimental,
      @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
      List<FhirCode>? subjectType,
      @JsonKey(name: '_subjectType') List<PrimitiveElement>? subjectTypeElement,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      String? publisher,
      @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
      List<ContactDetail>? contact,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<UsageContext>? useContext,
      List<CodeableConcept>? jurisdiction,
      FhirMarkdown? purpose,
      @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
      FhirDate? approvalDate,
      @JsonKey(name: '_approvalDate') PrimitiveElement? approvalDateElement,
      FhirDate? lastReviewDate,
      @JsonKey(name: '_lastReviewDate') PrimitiveElement? lastReviewDateElement,
      Period? effectivePeriod,
      List<Coding>? code,
      List<QuestionnaireItem>? item});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $PeriodCopyWith<$Res>? get effectivePeriod;
}

/// @nodoc
class _$QuestionnaireCopyWithImpl<$Res, $Val extends Questionnaire>
    implements $QuestionnaireCopyWith<$Res> {
  _$QuestionnaireCopyWithImpl(this._value, this._then);

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
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? identifier = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? derivedFrom = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? experimental = freezed,
    Object? experimentalElement = freezed,
    Object? subjectType = freezed,
    Object? subjectTypeElement = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? publisher = freezed,
    Object? publisherElement = freezed,
    Object? contact = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? useContext = freezed,
    Object? jurisdiction = freezed,
    Object? purpose = freezed,
    Object? purposeElement = freezed,
    Object? copyright = freezed,
    Object? copyrightElement = freezed,
    Object? approvalDate = freezed,
    Object? approvalDateElement = freezed,
    Object? lastReviewDate = freezed,
    Object? lastReviewDateElement = freezed,
    Object? effectivePeriod = freezed,
    Object? code = freezed,
    Object? item = freezed,
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionElement: freezed == versionElement
          ? _value.versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      derivedFrom: freezed == derivedFrom
          ? _value.derivedFrom
          : derivedFrom // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      experimental: freezed == experimental
          ? _value.experimental
          : experimental // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      experimentalElement: freezed == experimentalElement
          ? _value.experimentalElement
          : experimentalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subjectType: freezed == subjectType
          ? _value.subjectType
          : subjectType // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      subjectTypeElement: freezed == subjectTypeElement
          ? _value.subjectTypeElement
          : subjectTypeElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      publisherElement: freezed == publisherElement
          ? _value.publisherElement
          : publisherElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ContactDetail>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      useContext: freezed == useContext
          ? _value.useContext
          : useContext // ignore: cast_nullable_to_non_nullable
              as List<UsageContext>?,
      jurisdiction: freezed == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      purposeElement: freezed == purposeElement
          ? _value.purposeElement
          : purposeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      copyrightElement: freezed == copyrightElement
          ? _value.copyrightElement
          : copyrightElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      approvalDate: freezed == approvalDate
          ? _value.approvalDate
          : approvalDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      approvalDateElement: freezed == approvalDateElement
          ? _value.approvalDateElement
          : approvalDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      lastReviewDate: freezed == lastReviewDate
          ? _value.lastReviewDate
          : lastReviewDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      lastReviewDateElement: freezed == lastReviewDateElement
          ? _value.lastReviewDateElement
          : lastReviewDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      effectivePeriod: freezed == effectivePeriod
          ? _value.effectivePeriod
          : effectivePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireItem>?,
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
  $PeriodCopyWith<$Res>? get effectivePeriod {
    if (_value.effectivePeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.effectivePeriod!, (value) {
      return _then(_value.copyWith(effectivePeriod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionnaireImplCopyWith<$Res>
    implements $QuestionnaireCopyWith<$Res> {
  factory _$$QuestionnaireImplCopyWith(
          _$QuestionnaireImpl value, $Res Function(_$QuestionnaireImpl) then) =
      __$$QuestionnaireImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Questionnaire)
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
      FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      List<Identifier>? identifier,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      List<FhirCanonical>? derivedFrom,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      FhirBoolean? experimental,
      @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
      List<FhirCode>? subjectType,
      @JsonKey(name: '_subjectType') List<PrimitiveElement>? subjectTypeElement,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      String? publisher,
      @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
      List<ContactDetail>? contact,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<UsageContext>? useContext,
      List<CodeableConcept>? jurisdiction,
      FhirMarkdown? purpose,
      @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
      FhirDate? approvalDate,
      @JsonKey(name: '_approvalDate') PrimitiveElement? approvalDateElement,
      FhirDate? lastReviewDate,
      @JsonKey(name: '_lastReviewDate') PrimitiveElement? lastReviewDateElement,
      Period? effectivePeriod,
      List<Coding>? code,
      List<QuestionnaireItem>? item});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $PeriodCopyWith<$Res>? get effectivePeriod;
}

/// @nodoc
class __$$QuestionnaireImplCopyWithImpl<$Res>
    extends _$QuestionnaireCopyWithImpl<$Res, _$QuestionnaireImpl>
    implements _$$QuestionnaireImplCopyWith<$Res> {
  __$$QuestionnaireImplCopyWithImpl(
      _$QuestionnaireImpl _value, $Res Function(_$QuestionnaireImpl) _then)
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
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? identifier = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? derivedFrom = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? experimental = freezed,
    Object? experimentalElement = freezed,
    Object? subjectType = freezed,
    Object? subjectTypeElement = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? publisher = freezed,
    Object? publisherElement = freezed,
    Object? contact = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? useContext = freezed,
    Object? jurisdiction = freezed,
    Object? purpose = freezed,
    Object? purposeElement = freezed,
    Object? copyright = freezed,
    Object? copyrightElement = freezed,
    Object? approvalDate = freezed,
    Object? approvalDateElement = freezed,
    Object? lastReviewDate = freezed,
    Object? lastReviewDateElement = freezed,
    Object? effectivePeriod = freezed,
    Object? code = freezed,
    Object? item = freezed,
  }) {
    return _then(_$QuestionnaireImpl(
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionElement: freezed == versionElement
          ? _value.versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      derivedFrom: freezed == derivedFrom
          ? _value._derivedFrom
          : derivedFrom // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      experimental: freezed == experimental
          ? _value.experimental
          : experimental // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      experimentalElement: freezed == experimentalElement
          ? _value.experimentalElement
          : experimentalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subjectType: freezed == subjectType
          ? _value._subjectType
          : subjectType // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      subjectTypeElement: freezed == subjectTypeElement
          ? _value._subjectTypeElement
          : subjectTypeElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      publisherElement: freezed == publisherElement
          ? _value.publisherElement
          : publisherElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      contact: freezed == contact
          ? _value._contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ContactDetail>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      useContext: freezed == useContext
          ? _value._useContext
          : useContext // ignore: cast_nullable_to_non_nullable
              as List<UsageContext>?,
      jurisdiction: freezed == jurisdiction
          ? _value._jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      purposeElement: freezed == purposeElement
          ? _value.purposeElement
          : purposeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      copyrightElement: freezed == copyrightElement
          ? _value.copyrightElement
          : copyrightElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      approvalDate: freezed == approvalDate
          ? _value.approvalDate
          : approvalDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      approvalDateElement: freezed == approvalDateElement
          ? _value.approvalDateElement
          : approvalDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      lastReviewDate: freezed == lastReviewDate
          ? _value.lastReviewDate
          : lastReviewDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      lastReviewDateElement: freezed == lastReviewDateElement
          ? _value.lastReviewDateElement
          : lastReviewDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      effectivePeriod: freezed == effectivePeriod
          ? _value.effectivePeriod
          : effectivePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      code: freezed == code
          ? _value._code
          : code // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      item: freezed == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionnaireImpl extends _Questionnaire {
  const _$QuestionnaireImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.Questionnaire)
      this.resourceType = R4ResourceType.Questionnaire,
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
      this.url,
      @JsonKey(name: '_url') this.urlElement,
      final List<Identifier>? identifier,
      this.version,
      @JsonKey(name: '_version') this.versionElement,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.title,
      @JsonKey(name: '_title') this.titleElement,
      final List<FhirCanonical>? derivedFrom,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.experimental,
      @JsonKey(name: '_experimental') this.experimentalElement,
      final List<FhirCode>? subjectType,
      @JsonKey(name: '_subjectType')
      final List<PrimitiveElement>? subjectTypeElement,
      this.date,
      @JsonKey(name: '_date') this.dateElement,
      this.publisher,
      @JsonKey(name: '_publisher') this.publisherElement,
      final List<ContactDetail>? contact,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      final List<UsageContext>? useContext,
      final List<CodeableConcept>? jurisdiction,
      this.purpose,
      @JsonKey(name: '_purpose') this.purposeElement,
      this.copyright,
      @JsonKey(name: '_copyright') this.copyrightElement,
      this.approvalDate,
      @JsonKey(name: '_approvalDate') this.approvalDateElement,
      this.lastReviewDate,
      @JsonKey(name: '_lastReviewDate') this.lastReviewDateElement,
      this.effectivePeriod,
      final List<Coding>? code,
      final List<QuestionnaireItem>? item})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _derivedFrom = derivedFrom,
        _subjectType = subjectType,
        _subjectTypeElement = subjectTypeElement,
        _contact = contact,
        _useContext = useContext,
        _jurisdiction = jurisdiction,
        _code = code,
        _item = item,
        super._();

  factory _$QuestionnaireImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionnaireImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Questionnaire)
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

  /// [url] An absolute URI that is used to identify this questionnaire when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// questionnaire is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the questionnaire is
  ///  stored on different servers.
  @override
  final FhirUri? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [identifier] A formal identifier that is used to identify this
  /// questionnaire when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  final List<Identifier>? _identifier;

  /// [identifier] A formal identifier that is used to identify this
  /// questionnaire when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [version] The identifier that is used to identify this version of the
  /// questionnaire when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the questionnaire author
  /// and is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  @override
  final String? version;

  /// [versionElement] Extensions for version
  @override
  @JsonKey(name: '_version')
  final PrimitiveElement? versionElement;

  /// [name] A natural language name identifying the questionnaire. This name
  /// should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [title] A short, descriptive, user-friendly title for the questionnaire.
  @override
  final String? title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;

  /// [derivedFrom] The URL of a Questionnaire that this Questionnaire is based
  ///  on.
  final List<FhirCanonical>? _derivedFrom;

  /// [derivedFrom] The URL of a Questionnaire that this Questionnaire is based
  ///  on.
  @override
  List<FhirCanonical>? get derivedFrom {
    final value = _derivedFrom;
    if (value == null) return null;
    if (_derivedFrom is EqualUnmodifiableListView) return _derivedFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The status of this questionnaire. Enables tracking the
  ///  life-cycle of the content.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [experimental] A Boolean value to indicate that this questionnaire is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  @override
  final FhirBoolean? experimental;

  /// [experimentalElement] Extensions for experimental
  @override
  @JsonKey(name: '_experimental')
  final PrimitiveElement? experimentalElement;

  /// [subjectType] The types of subjects that can be the subject of responses
  ///  created for the questionnaire.
  final List<FhirCode>? _subjectType;

  /// [subjectType] The types of subjects that can be the subject of responses
  ///  created for the questionnaire.
  @override
  List<FhirCode>? get subjectType {
    final value = _subjectType;
    if (value == null) return null;
    if (_subjectType is EqualUnmodifiableListView) return _subjectType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [subjectTypeElement] Extensions for subjectType
  final List<PrimitiveElement>? _subjectTypeElement;

  /// [subjectTypeElement] Extensions for subjectType
  @override
  @JsonKey(name: '_subjectType')
  List<PrimitiveElement>? get subjectTypeElement {
    final value = _subjectTypeElement;
    if (value == null) return null;
    if (_subjectTypeElement is EqualUnmodifiableListView)
      return _subjectTypeElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [date] The date  (and optionally time) when the questionnaire was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the questionnaire changes.
  @override
  final FhirDateTime? date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [publisher] The name of the organization or individual that published the
  ///  questionnaire.
  @override
  final String? publisher;

  /// [publisherElement] Extensions for publisher
  @override
  @JsonKey(name: '_publisher')
  final PrimitiveElement? publisherElement;

  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  final List<ContactDetail>? _contact;

  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  @override
  List<ContactDetail>? get contact {
    final value = _contact;
    if (value == null) return null;
    if (_contact is EqualUnmodifiableListView) return _contact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [description] A free text natural language description of the
  ///  questionnaire from a consumer's perspective.
  @override
  final FhirMarkdown? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate questionnaire instances.
  final List<UsageContext>? _useContext;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate questionnaire instances.
  @override
  List<UsageContext>? get useContext {
    final value = _useContext;
    if (value == null) return null;
    if (_useContext is EqualUnmodifiableListView) return _useContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [jurisdiction] A legal or geographic region in which the questionnaire is
  ///  intended to be used.
  final List<CodeableConcept>? _jurisdiction;

  /// [jurisdiction] A legal or geographic region in which the questionnaire is
  ///  intended to be used.
  @override
  List<CodeableConcept>? get jurisdiction {
    final value = _jurisdiction;
    if (value == null) return null;
    if (_jurisdiction is EqualUnmodifiableListView) return _jurisdiction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [purpose] Explanation of why this questionnaire is needed and why it has
  ///  been designed as it has.
  @override
  final FhirMarkdown? purpose;

  /// [purposeElement] Extensions for purpose
  @override
  @JsonKey(name: '_purpose')
  final PrimitiveElement? purposeElement;

  /// [copyright] A copyright statement relating to the questionnaire and/or
  /// its contents. Copyright statements are generally legal restrictions on the
  ///  use and publishing of the questionnaire.
  @override
  final FhirMarkdown? copyright;

  /// [copyrightElement] Extensions for copyright
  @override
  @JsonKey(name: '_copyright')
  final PrimitiveElement? copyrightElement;

  /// [approvalDate] The date on which the resource content was approved by the
  /// publisher. Approval happens once when the content is officially approved
  ///  for usage.
  @override
  final FhirDate? approvalDate;

  /// [approvalDateElement] Extensions for approvalDate
  @override
  @JsonKey(name: '_approvalDate')
  final PrimitiveElement? approvalDateElement;

  /// [lastReviewDate] The date on which the resource content was last
  /// reviewed. Review happens periodically after approval but does not change
  ///  the original approval date.
  @override
  final FhirDate? lastReviewDate;

  /// [lastReviewDateElement] Extensions for lastReviewDate
  @override
  @JsonKey(name: '_lastReviewDate')
  final PrimitiveElement? lastReviewDateElement;

  /// [effectivePeriod] The period during which the questionnaire content was
  ///  or is planned to be in active use.
  @override
  final Period? effectivePeriod;

  /// [code] An identifier for this question or group of questions in a
  ///  particular terminology such as LOINC.
  final List<Coding>? _code;

  /// [code] An identifier for this question or group of questions in a
  ///  particular terminology such as LOINC.
  @override
  List<Coding>? get code {
    final value = _code;
    if (value == null) return null;
    if (_code is EqualUnmodifiableListView) return _code;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [item] A particular question, question grouping or display text that is
  ///  part of the questionnaire.
  final List<QuestionnaireItem>? _item;

  /// [item] A particular question, question grouping or display text that is
  ///  part of the questionnaire.
  @override
  List<QuestionnaireItem>? get item {
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
            other is _$QuestionnaireImpl &&
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
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlElement, urlElement) ||
                other.urlElement == urlElement) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.versionElement, versionElement) ||
                other.versionElement == versionElement) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleElement, titleElement) ||
                other.titleElement == titleElement) &&
            const DeepCollectionEquality()
                .equals(other._derivedFrom, _derivedFrom) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.experimental, experimental) ||
                other.experimental == experimental) &&
            (identical(other.experimentalElement, experimentalElement) ||
                other.experimentalElement == experimentalElement) &&
            const DeepCollectionEquality()
                .equals(other._subjectType, _subjectType) &&
            const DeepCollectionEquality()
                .equals(other._subjectTypeElement, _subjectTypeElement) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateElement, dateElement) ||
                other.dateElement == dateElement) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.publisherElement, publisherElement) ||
                other.publisherElement == publisherElement) &&
            const DeepCollectionEquality().equals(other._contact, _contact) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            const DeepCollectionEquality()
                .equals(other._useContext, _useContext) &&
            const DeepCollectionEquality()
                .equals(other._jurisdiction, _jurisdiction) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.purposeElement, purposeElement) ||
                other.purposeElement == purposeElement) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.copyrightElement, copyrightElement) ||
                other.copyrightElement == copyrightElement) &&
            (identical(other.approvalDate, approvalDate) ||
                other.approvalDate == approvalDate) &&
            (identical(other.approvalDateElement, approvalDateElement) ||
                other.approvalDateElement == approvalDateElement) &&
            (identical(other.lastReviewDate, lastReviewDate) ||
                other.lastReviewDate == lastReviewDate) &&
            (identical(other.lastReviewDateElement, lastReviewDateElement) ||
                other.lastReviewDateElement == lastReviewDateElement) &&
            (identical(other.effectivePeriod, effectivePeriod) ||
                other.effectivePeriod == effectivePeriod) &&
            const DeepCollectionEquality().equals(other._code, _code) &&
            const DeepCollectionEquality().equals(other._item, _item));
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
        url,
        urlElement,
        const DeepCollectionEquality().hash(_identifier),
        version,
        versionElement,
        name,
        nameElement,
        title,
        titleElement,
        const DeepCollectionEquality().hash(_derivedFrom),
        status,
        statusElement,
        experimental,
        experimentalElement,
        const DeepCollectionEquality().hash(_subjectType),
        const DeepCollectionEquality().hash(_subjectTypeElement),
        date,
        dateElement,
        publisher,
        publisherElement,
        const DeepCollectionEquality().hash(_contact),
        description,
        descriptionElement,
        const DeepCollectionEquality().hash(_useContext),
        const DeepCollectionEquality().hash(_jurisdiction),
        purpose,
        purposeElement,
        copyright,
        copyrightElement,
        approvalDate,
        approvalDateElement,
        lastReviewDate,
        lastReviewDateElement,
        effectivePeriod,
        const DeepCollectionEquality().hash(_code),
        const DeepCollectionEquality().hash(_item)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireImplCopyWith<_$QuestionnaireImpl> get copyWith =>
      __$$QuestionnaireImplCopyWithImpl<_$QuestionnaireImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionnaireImplToJson(
      this,
    );
  }
}

abstract class _Questionnaire extends Questionnaire {
  const factory _Questionnaire(
      {@JsonKey(unknownEnumValue: R4ResourceType.Questionnaire)
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
      final FhirUri? url,
      @JsonKey(name: '_url') final PrimitiveElement? urlElement,
      final List<Identifier>? identifier,
      final String? version,
      @JsonKey(name: '_version') final PrimitiveElement? versionElement,
      final String? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      final String? title,
      @JsonKey(name: '_title') final PrimitiveElement? titleElement,
      final List<FhirCanonical>? derivedFrom,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final FhirBoolean? experimental,
      @JsonKey(name: '_experimental')
      final PrimitiveElement? experimentalElement,
      final List<FhirCode>? subjectType,
      @JsonKey(name: '_subjectType')
      final List<PrimitiveElement>? subjectTypeElement,
      final FhirDateTime? date,
      @JsonKey(name: '_date') final PrimitiveElement? dateElement,
      final String? publisher,
      @JsonKey(name: '_publisher') final PrimitiveElement? publisherElement,
      final List<ContactDetail>? contact,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final List<UsageContext>? useContext,
      final List<CodeableConcept>? jurisdiction,
      final FhirMarkdown? purpose,
      @JsonKey(name: '_purpose') final PrimitiveElement? purposeElement,
      final FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') final PrimitiveElement? copyrightElement,
      final FhirDate? approvalDate,
      @JsonKey(name: '_approvalDate')
      final PrimitiveElement? approvalDateElement,
      final FhirDate? lastReviewDate,
      @JsonKey(name: '_lastReviewDate')
      final PrimitiveElement? lastReviewDateElement,
      final Period? effectivePeriod,
      final List<Coding>? code,
      final List<QuestionnaireItem>? item}) = _$QuestionnaireImpl;
  const _Questionnaire._() : super._();

  factory _Questionnaire.fromJson(Map<String, dynamic> json) =
      _$QuestionnaireImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Questionnaire)
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

  /// [url] An absolute URI that is used to identify this questionnaire when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// questionnaire is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the questionnaire is
  ///  stored on different servers.
  FhirUri? get url;
  @override

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override

  /// [identifier] A formal identifier that is used to identify this
  /// questionnaire when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  List<Identifier>? get identifier;
  @override

  /// [version] The identifier that is used to identify this version of the
  /// questionnaire when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the questionnaire author
  /// and is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  String? get version;
  @override

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement;
  @override

  /// [name] A natural language name identifying the questionnaire. This name
  /// should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [title] A short, descriptive, user-friendly title for the questionnaire.
  String? get title;
  @override

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;
  @override

  /// [derivedFrom] The URL of a Questionnaire that this Questionnaire is based
  ///  on.
  List<FhirCanonical>? get derivedFrom;
  @override

  /// [status] The status of this questionnaire. Enables tracking the
  ///  life-cycle of the content.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [experimental] A Boolean value to indicate that this questionnaire is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  FhirBoolean? get experimental;
  @override

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement;
  @override

  /// [subjectType] The types of subjects that can be the subject of responses
  ///  created for the questionnaire.
  List<FhirCode>? get subjectType;
  @override

  /// [subjectTypeElement] Extensions for subjectType
  @JsonKey(name: '_subjectType')
  List<PrimitiveElement>? get subjectTypeElement;
  @override

  /// [date] The date  (and optionally time) when the questionnaire was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the questionnaire changes.
  FhirDateTime? get date;
  @override

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override

  /// [publisher] The name of the organization or individual that published the
  ///  questionnaire.
  String? get publisher;
  @override

  /// [publisherElement] Extensions for publisher
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement;
  @override

  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  List<ContactDetail>? get contact;
  @override

  /// [description] A free text natural language description of the
  ///  questionnaire from a consumer's perspective.
  FhirMarkdown? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate questionnaire instances.
  List<UsageContext>? get useContext;
  @override

  /// [jurisdiction] A legal or geographic region in which the questionnaire is
  ///  intended to be used.
  List<CodeableConcept>? get jurisdiction;
  @override

  /// [purpose] Explanation of why this questionnaire is needed and why it has
  ///  been designed as it has.
  FhirMarkdown? get purpose;
  @override

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement;
  @override

  /// [copyright] A copyright statement relating to the questionnaire and/or
  /// its contents. Copyright statements are generally legal restrictions on the
  ///  use and publishing of the questionnaire.
  FhirMarkdown? get copyright;
  @override

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement;
  @override

  /// [approvalDate] The date on which the resource content was approved by the
  /// publisher. Approval happens once when the content is officially approved
  ///  for usage.
  FhirDate? get approvalDate;
  @override

  /// [approvalDateElement] Extensions for approvalDate
  @JsonKey(name: '_approvalDate')
  PrimitiveElement? get approvalDateElement;
  @override

  /// [lastReviewDate] The date on which the resource content was last
  /// reviewed. Review happens periodically after approval but does not change
  ///  the original approval date.
  FhirDate? get lastReviewDate;
  @override

  /// [lastReviewDateElement] Extensions for lastReviewDate
  @JsonKey(name: '_lastReviewDate')
  PrimitiveElement? get lastReviewDateElement;
  @override

  /// [effectivePeriod] The period during which the questionnaire content was
  ///  or is planned to be in active use.
  Period? get effectivePeriod;
  @override

  /// [code] An identifier for this question or group of questions in a
  ///  particular terminology such as LOINC.
  List<Coding>? get code;
  @override

  /// [item] A particular question, question grouping or display text that is
  ///  part of the questionnaire.
  List<QuestionnaireItem>? get item;
  @override
  @JsonKey(ignore: true)
  _$$QuestionnaireImplCopyWith<_$QuestionnaireImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionnaireItem _$QuestionnaireItemFromJson(Map<String, dynamic> json) {
  return _QuestionnaireItem.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireItem {
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

  /// [linkId] An identifier that is unique within the Questionnaire allowing
  ///  linkage to the equivalent item in a QuestionnaireResponse resource.
  String get linkId => throw _privateConstructorUsedError;

  /// [linkIdElement] Extensions for linkId
  @JsonKey(name: '_linkId')
  PrimitiveElement? get linkIdElement => throw _privateConstructorUsedError;

  /// [definition] This element is a URI that refers to an
  FhirUri? get definition => throw _privateConstructorUsedError;

  /// [definitionElement] Extensions for definition
  @JsonKey(name: '_definition')
  PrimitiveElement? get definitionElement => throw _privateConstructorUsedError;

  /// [code] A terminology code that corresponds to this group or question
  ///  (e.g. a code from LOINC, which defines many questions and answers).
  List<Coding>? get code => throw _privateConstructorUsedError;

  /// [prefix] A short label for a particular group, question or set of display
  /// text within the questionnaire used for reference by the individual
  ///  completing the questionnaire.
  String? get prefix => throw _privateConstructorUsedError;

  /// [prefixElement] Extensions for prefix
  @JsonKey(name: '_prefix')
  PrimitiveElement? get prefixElement => throw _privateConstructorUsedError;

  /// [text] The name of a section, the text of a question or text content for
  ///  a display item.
  String? get text => throw _privateConstructorUsedError;

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement => throw _privateConstructorUsedError;

  /// [type] The type of questionnaire item this is - whether text for display,
  /// a grouping of other items or a particular type of data to be captured
  ///  (string, integer, coded choice, etc.).
  FhirCode get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [enableWhen] A constraint indicating that this item should only be
  /// enabled (displayed/allow answers to be captured) when the specified
  ///  condition is true.
  List<QuestionnaireEnableWhen>? get enableWhen =>
      throw _privateConstructorUsedError;

  /// [enableBehavior] Controls how multiple enableWhen values are interpreted
  ///  -  whether all or any must be true.
  FhirCode? get enableBehavior => throw _privateConstructorUsedError;

  /// [enableBehaviorElement] Extensions for enableBehavior
  @JsonKey(name: '_enableBehavior')
  PrimitiveElement? get enableBehaviorElement =>
      throw _privateConstructorUsedError;

  /// [required] An indication, if true, that the item must be present in a
  /// "completed" QuestionnaireResponse.  If false, the item may be skipped when
  ///  answering the questionnaire.
  @JsonKey(name: 'required')
  FhirBoolean? get required_ => throw _privateConstructorUsedError;

  /// [requiredElement] Extensions for required
  @JsonKey(name: '_required')
  PrimitiveElement? get requiredElement => throw _privateConstructorUsedError;

  /// [repeats] An indication, if true, that the item may occur multiple times
  /// in the response, collecting multiple answers for questions or multiple
  ///  sets of answers for groups.
  FhirBoolean? get repeats => throw _privateConstructorUsedError;

  /// [repeatsElement] Extensions for repeats
  @JsonKey(name: '_repeats')
  PrimitiveElement? get repeatsElement => throw _privateConstructorUsedError;

  /// [readOnly] An indication, when true, that the value cannot be changed by
  ///  a human respondent to the Questionnaire.
  FhirBoolean? get readOnly => throw _privateConstructorUsedError;

  /// [readOnlyElement] Extensions for readOnly
  @JsonKey(name: '_readOnly')
  PrimitiveElement? get readOnlyElement => throw _privateConstructorUsedError;

  /// [maxLength] The maximum number of characters that are permitted in the
  ///  answer to be considered a "valid" QuestionnaireResponse.
  FhirInteger? get maxLength => throw _privateConstructorUsedError;

  /// [maxLengthElement] Extensions for maxLength
  @JsonKey(name: '_maxLength')
  PrimitiveElement? get maxLengthElement => throw _privateConstructorUsedError;

  /// [answerValueSet] A reference to a value set containing a list of codes
  ///  representing permitted answers for a "choice" or "open-choice" question.
  FhirCanonical? get answerValueSet => throw _privateConstructorUsedError;

  /// [answerOption] One of the permitted answers for a "choice" or
  ///  "open-choice" question.
  List<QuestionnaireAnswerOption>? get answerOption =>
      throw _privateConstructorUsedError;

  /// [initial] One or more values that should be pre-populated in the answer
  ///  when initially rendering the questionnaire for user input.
  List<QuestionnaireInitial>? get initial => throw _privateConstructorUsedError;

  /// [item] Text, questions and other groups to be nested beneath a question
  ///  or group.
  List<QuestionnaireItem>? get item => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireItemCopyWith<QuestionnaireItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireItemCopyWith<$Res> {
  factory $QuestionnaireItemCopyWith(
          QuestionnaireItem value, $Res Function(QuestionnaireItem) then) =
      _$QuestionnaireItemCopyWithImpl<$Res, QuestionnaireItem>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String linkId,
      @JsonKey(name: '_linkId') PrimitiveElement? linkIdElement,
      FhirUri? definition,
      @JsonKey(name: '_definition') PrimitiveElement? definitionElement,
      List<Coding>? code,
      String? prefix,
      @JsonKey(name: '_prefix') PrimitiveElement? prefixElement,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      FhirCode type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      List<QuestionnaireEnableWhen>? enableWhen,
      FhirCode? enableBehavior,
      @JsonKey(name: '_enableBehavior') PrimitiveElement? enableBehaviorElement,
      @JsonKey(name: 'required') FhirBoolean? required_,
      @JsonKey(name: '_required') PrimitiveElement? requiredElement,
      FhirBoolean? repeats,
      @JsonKey(name: '_repeats') PrimitiveElement? repeatsElement,
      FhirBoolean? readOnly,
      @JsonKey(name: '_readOnly') PrimitiveElement? readOnlyElement,
      FhirInteger? maxLength,
      @JsonKey(name: '_maxLength') PrimitiveElement? maxLengthElement,
      FhirCanonical? answerValueSet,
      List<QuestionnaireAnswerOption>? answerOption,
      List<QuestionnaireInitial>? initial,
      List<QuestionnaireItem>? item});
}

/// @nodoc
class _$QuestionnaireItemCopyWithImpl<$Res, $Val extends QuestionnaireItem>
    implements $QuestionnaireItemCopyWith<$Res> {
  _$QuestionnaireItemCopyWithImpl(this._value, this._then);

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
    Object? linkId = null,
    Object? linkIdElement = freezed,
    Object? definition = freezed,
    Object? definitionElement = freezed,
    Object? code = freezed,
    Object? prefix = freezed,
    Object? prefixElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? type = null,
    Object? typeElement = freezed,
    Object? enableWhen = freezed,
    Object? enableBehavior = freezed,
    Object? enableBehaviorElement = freezed,
    Object? required_ = freezed,
    Object? requiredElement = freezed,
    Object? repeats = freezed,
    Object? repeatsElement = freezed,
    Object? readOnly = freezed,
    Object? readOnlyElement = freezed,
    Object? maxLength = freezed,
    Object? maxLengthElement = freezed,
    Object? answerValueSet = freezed,
    Object? answerOption = freezed,
    Object? initial = freezed,
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
      linkId: null == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as String,
      linkIdElement: freezed == linkIdElement
          ? _value.linkIdElement
          : linkIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      definitionElement: freezed == definitionElement
          ? _value.definitionElement
          : definitionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      prefixElement: freezed == prefixElement
          ? _value.prefixElement
          : prefixElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      enableWhen: freezed == enableWhen
          ? _value.enableWhen
          : enableWhen // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireEnableWhen>?,
      enableBehavior: freezed == enableBehavior
          ? _value.enableBehavior
          : enableBehavior // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      enableBehaviorElement: freezed == enableBehaviorElement
          ? _value.enableBehaviorElement
          : enableBehaviorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      required_: freezed == required_
          ? _value.required_
          : required_ // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      requiredElement: freezed == requiredElement
          ? _value.requiredElement
          : requiredElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      repeats: freezed == repeats
          ? _value.repeats
          : repeats // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      repeatsElement: freezed == repeatsElement
          ? _value.repeatsElement
          : repeatsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      readOnly: freezed == readOnly
          ? _value.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      readOnlyElement: freezed == readOnlyElement
          ? _value.readOnlyElement
          : readOnlyElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxLength: freezed == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      maxLengthElement: freezed == maxLengthElement
          ? _value.maxLengthElement
          : maxLengthElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerValueSet: freezed == answerValueSet
          ? _value.answerValueSet
          : answerValueSet // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      answerOption: freezed == answerOption
          ? _value.answerOption
          : answerOption // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireAnswerOption>?,
      initial: freezed == initial
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireInitial>?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionnaireItemImplCopyWith<$Res>
    implements $QuestionnaireItemCopyWith<$Res> {
  factory _$$QuestionnaireItemImplCopyWith(_$QuestionnaireItemImpl value,
          $Res Function(_$QuestionnaireItemImpl) then) =
      __$$QuestionnaireItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String linkId,
      @JsonKey(name: '_linkId') PrimitiveElement? linkIdElement,
      FhirUri? definition,
      @JsonKey(name: '_definition') PrimitiveElement? definitionElement,
      List<Coding>? code,
      String? prefix,
      @JsonKey(name: '_prefix') PrimitiveElement? prefixElement,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      FhirCode type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      List<QuestionnaireEnableWhen>? enableWhen,
      FhirCode? enableBehavior,
      @JsonKey(name: '_enableBehavior') PrimitiveElement? enableBehaviorElement,
      @JsonKey(name: 'required') FhirBoolean? required_,
      @JsonKey(name: '_required') PrimitiveElement? requiredElement,
      FhirBoolean? repeats,
      @JsonKey(name: '_repeats') PrimitiveElement? repeatsElement,
      FhirBoolean? readOnly,
      @JsonKey(name: '_readOnly') PrimitiveElement? readOnlyElement,
      FhirInteger? maxLength,
      @JsonKey(name: '_maxLength') PrimitiveElement? maxLengthElement,
      FhirCanonical? answerValueSet,
      List<QuestionnaireAnswerOption>? answerOption,
      List<QuestionnaireInitial>? initial,
      List<QuestionnaireItem>? item});
}

/// @nodoc
class __$$QuestionnaireItemImplCopyWithImpl<$Res>
    extends _$QuestionnaireItemCopyWithImpl<$Res, _$QuestionnaireItemImpl>
    implements _$$QuestionnaireItemImplCopyWith<$Res> {
  __$$QuestionnaireItemImplCopyWithImpl(_$QuestionnaireItemImpl _value,
      $Res Function(_$QuestionnaireItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? linkId = null,
    Object? linkIdElement = freezed,
    Object? definition = freezed,
    Object? definitionElement = freezed,
    Object? code = freezed,
    Object? prefix = freezed,
    Object? prefixElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? type = null,
    Object? typeElement = freezed,
    Object? enableWhen = freezed,
    Object? enableBehavior = freezed,
    Object? enableBehaviorElement = freezed,
    Object? required_ = freezed,
    Object? requiredElement = freezed,
    Object? repeats = freezed,
    Object? repeatsElement = freezed,
    Object? readOnly = freezed,
    Object? readOnlyElement = freezed,
    Object? maxLength = freezed,
    Object? maxLengthElement = freezed,
    Object? answerValueSet = freezed,
    Object? answerOption = freezed,
    Object? initial = freezed,
    Object? item = freezed,
  }) {
    return _then(_$QuestionnaireItemImpl(
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
      linkId: null == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as String,
      linkIdElement: freezed == linkIdElement
          ? _value.linkIdElement
          : linkIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      definitionElement: freezed == definitionElement
          ? _value.definitionElement
          : definitionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      code: freezed == code
          ? _value._code
          : code // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      prefixElement: freezed == prefixElement
          ? _value.prefixElement
          : prefixElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      enableWhen: freezed == enableWhen
          ? _value._enableWhen
          : enableWhen // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireEnableWhen>?,
      enableBehavior: freezed == enableBehavior
          ? _value.enableBehavior
          : enableBehavior // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      enableBehaviorElement: freezed == enableBehaviorElement
          ? _value.enableBehaviorElement
          : enableBehaviorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      required_: freezed == required_
          ? _value.required_
          : required_ // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      requiredElement: freezed == requiredElement
          ? _value.requiredElement
          : requiredElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      repeats: freezed == repeats
          ? _value.repeats
          : repeats // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      repeatsElement: freezed == repeatsElement
          ? _value.repeatsElement
          : repeatsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      readOnly: freezed == readOnly
          ? _value.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      readOnlyElement: freezed == readOnlyElement
          ? _value.readOnlyElement
          : readOnlyElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      maxLength: freezed == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      maxLengthElement: freezed == maxLengthElement
          ? _value.maxLengthElement
          : maxLengthElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerValueSet: freezed == answerValueSet
          ? _value.answerValueSet
          : answerValueSet // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      answerOption: freezed == answerOption
          ? _value._answerOption
          : answerOption // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireAnswerOption>?,
      initial: freezed == initial
          ? _value._initial
          : initial // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireInitial>?,
      item: freezed == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionnaireItemImpl extends _QuestionnaireItem {
  const _$QuestionnaireItemImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.linkId,
      @JsonKey(name: '_linkId') this.linkIdElement,
      this.definition,
      @JsonKey(name: '_definition') this.definitionElement,
      final List<Coding>? code,
      this.prefix,
      @JsonKey(name: '_prefix') this.prefixElement,
      this.text,
      @JsonKey(name: '_text') this.textElement,
      required this.type,
      @JsonKey(name: '_type') this.typeElement,
      final List<QuestionnaireEnableWhen>? enableWhen,
      this.enableBehavior,
      @JsonKey(name: '_enableBehavior') this.enableBehaviorElement,
      @JsonKey(name: 'required') this.required_,
      @JsonKey(name: '_required') this.requiredElement,
      this.repeats,
      @JsonKey(name: '_repeats') this.repeatsElement,
      this.readOnly,
      @JsonKey(name: '_readOnly') this.readOnlyElement,
      this.maxLength,
      @JsonKey(name: '_maxLength') this.maxLengthElement,
      this.answerValueSet,
      final List<QuestionnaireAnswerOption>? answerOption,
      final List<QuestionnaireInitial>? initial,
      final List<QuestionnaireItem>? item})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _code = code,
        _enableWhen = enableWhen,
        _answerOption = answerOption,
        _initial = initial,
        _item = item,
        super._();

  factory _$QuestionnaireItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionnaireItemImplFromJson(json);

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

  /// [linkId] An identifier that is unique within the Questionnaire allowing
  ///  linkage to the equivalent item in a QuestionnaireResponse resource.
  @override
  final String linkId;

  /// [linkIdElement] Extensions for linkId
  @override
  @JsonKey(name: '_linkId')
  final PrimitiveElement? linkIdElement;

  /// [definition] This element is a URI that refers to an
  @override
  final FhirUri? definition;

  /// [definitionElement] Extensions for definition
  @override
  @JsonKey(name: '_definition')
  final PrimitiveElement? definitionElement;

  /// [code] A terminology code that corresponds to this group or question
  ///  (e.g. a code from LOINC, which defines many questions and answers).
  final List<Coding>? _code;

  /// [code] A terminology code that corresponds to this group or question
  ///  (e.g. a code from LOINC, which defines many questions and answers).
  @override
  List<Coding>? get code {
    final value = _code;
    if (value == null) return null;
    if (_code is EqualUnmodifiableListView) return _code;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [prefix] A short label for a particular group, question or set of display
  /// text within the questionnaire used for reference by the individual
  ///  completing the questionnaire.
  @override
  final String? prefix;

  /// [prefixElement] Extensions for prefix
  @override
  @JsonKey(name: '_prefix')
  final PrimitiveElement? prefixElement;

  /// [text] The name of a section, the text of a question or text content for
  ///  a display item.
  @override
  final String? text;

  /// [textElement] Extensions for text
  @override
  @JsonKey(name: '_text')
  final PrimitiveElement? textElement;

  /// [type] The type of questionnaire item this is - whether text for display,
  /// a grouping of other items or a particular type of data to be captured
  ///  (string, integer, coded choice, etc.).
  @override
  final FhirCode type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [enableWhen] A constraint indicating that this item should only be
  /// enabled (displayed/allow answers to be captured) when the specified
  ///  condition is true.
  final List<QuestionnaireEnableWhen>? _enableWhen;

  /// [enableWhen] A constraint indicating that this item should only be
  /// enabled (displayed/allow answers to be captured) when the specified
  ///  condition is true.
  @override
  List<QuestionnaireEnableWhen>? get enableWhen {
    final value = _enableWhen;
    if (value == null) return null;
    if (_enableWhen is EqualUnmodifiableListView) return _enableWhen;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [enableBehavior] Controls how multiple enableWhen values are interpreted
  ///  -  whether all or any must be true.
  @override
  final FhirCode? enableBehavior;

  /// [enableBehaviorElement] Extensions for enableBehavior
  @override
  @JsonKey(name: '_enableBehavior')
  final PrimitiveElement? enableBehaviorElement;

  /// [required] An indication, if true, that the item must be present in a
  /// "completed" QuestionnaireResponse.  If false, the item may be skipped when
  ///  answering the questionnaire.
  @override
  @JsonKey(name: 'required')
  final FhirBoolean? required_;

  /// [requiredElement] Extensions for required
  @override
  @JsonKey(name: '_required')
  final PrimitiveElement? requiredElement;

  /// [repeats] An indication, if true, that the item may occur multiple times
  /// in the response, collecting multiple answers for questions or multiple
  ///  sets of answers for groups.
  @override
  final FhirBoolean? repeats;

  /// [repeatsElement] Extensions for repeats
  @override
  @JsonKey(name: '_repeats')
  final PrimitiveElement? repeatsElement;

  /// [readOnly] An indication, when true, that the value cannot be changed by
  ///  a human respondent to the Questionnaire.
  @override
  final FhirBoolean? readOnly;

  /// [readOnlyElement] Extensions for readOnly
  @override
  @JsonKey(name: '_readOnly')
  final PrimitiveElement? readOnlyElement;

  /// [maxLength] The maximum number of characters that are permitted in the
  ///  answer to be considered a "valid" QuestionnaireResponse.
  @override
  final FhirInteger? maxLength;

  /// [maxLengthElement] Extensions for maxLength
  @override
  @JsonKey(name: '_maxLength')
  final PrimitiveElement? maxLengthElement;

  /// [answerValueSet] A reference to a value set containing a list of codes
  ///  representing permitted answers for a "choice" or "open-choice" question.
  @override
  final FhirCanonical? answerValueSet;

  /// [answerOption] One of the permitted answers for a "choice" or
  ///  "open-choice" question.
  final List<QuestionnaireAnswerOption>? _answerOption;

  /// [answerOption] One of the permitted answers for a "choice" or
  ///  "open-choice" question.
  @override
  List<QuestionnaireAnswerOption>? get answerOption {
    final value = _answerOption;
    if (value == null) return null;
    if (_answerOption is EqualUnmodifiableListView) return _answerOption;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [initial] One or more values that should be pre-populated in the answer
  ///  when initially rendering the questionnaire for user input.
  final List<QuestionnaireInitial>? _initial;

  /// [initial] One or more values that should be pre-populated in the answer
  ///  when initially rendering the questionnaire for user input.
  @override
  List<QuestionnaireInitial>? get initial {
    final value = _initial;
    if (value == null) return null;
    if (_initial is EqualUnmodifiableListView) return _initial;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [item] Text, questions and other groups to be nested beneath a question
  ///  or group.
  final List<QuestionnaireItem>? _item;

  /// [item] Text, questions and other groups to be nested beneath a question
  ///  or group.
  @override
  List<QuestionnaireItem>? get item {
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
            other is _$QuestionnaireItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.linkId, linkId) || other.linkId == linkId) &&
            (identical(other.linkIdElement, linkIdElement) ||
                other.linkIdElement == linkIdElement) &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            (identical(other.definitionElement, definitionElement) ||
                other.definitionElement == definitionElement) &&
            const DeepCollectionEquality().equals(other._code, _code) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.prefixElement, prefixElement) ||
                other.prefixElement == prefixElement) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textElement, textElement) ||
                other.textElement == textElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            const DeepCollectionEquality()
                .equals(other._enableWhen, _enableWhen) &&
            (identical(other.enableBehavior, enableBehavior) ||
                other.enableBehavior == enableBehavior) &&
            (identical(other.enableBehaviorElement, enableBehaviorElement) ||
                other.enableBehaviorElement == enableBehaviorElement) &&
            (identical(other.required_, required_) ||
                other.required_ == required_) &&
            (identical(other.requiredElement, requiredElement) ||
                other.requiredElement == requiredElement) &&
            (identical(other.repeats, repeats) || other.repeats == repeats) &&
            (identical(other.repeatsElement, repeatsElement) ||
                other.repeatsElement == repeatsElement) &&
            (identical(other.readOnly, readOnly) ||
                other.readOnly == readOnly) &&
            (identical(other.readOnlyElement, readOnlyElement) ||
                other.readOnlyElement == readOnlyElement) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.maxLengthElement, maxLengthElement) ||
                other.maxLengthElement == maxLengthElement) &&
            (identical(other.answerValueSet, answerValueSet) ||
                other.answerValueSet == answerValueSet) &&
            const DeepCollectionEquality()
                .equals(other._answerOption, _answerOption) &&
            const DeepCollectionEquality().equals(other._initial, _initial) &&
            const DeepCollectionEquality().equals(other._item, _item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        linkId,
        linkIdElement,
        definition,
        definitionElement,
        const DeepCollectionEquality().hash(_code),
        prefix,
        prefixElement,
        text,
        textElement,
        type,
        typeElement,
        const DeepCollectionEquality().hash(_enableWhen),
        enableBehavior,
        enableBehaviorElement,
        required_,
        requiredElement,
        repeats,
        repeatsElement,
        readOnly,
        readOnlyElement,
        maxLength,
        maxLengthElement,
        answerValueSet,
        const DeepCollectionEquality().hash(_answerOption),
        const DeepCollectionEquality().hash(_initial),
        const DeepCollectionEquality().hash(_item)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireItemImplCopyWith<_$QuestionnaireItemImpl> get copyWith =>
      __$$QuestionnaireItemImplCopyWithImpl<_$QuestionnaireItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionnaireItemImplToJson(
      this,
    );
  }
}

abstract class _QuestionnaireItem extends QuestionnaireItem {
  const factory _QuestionnaireItem(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final String linkId,
      @JsonKey(name: '_linkId') final PrimitiveElement? linkIdElement,
      final FhirUri? definition,
      @JsonKey(name: '_definition') final PrimitiveElement? definitionElement,
      final List<Coding>? code,
      final String? prefix,
      @JsonKey(name: '_prefix') final PrimitiveElement? prefixElement,
      final String? text,
      @JsonKey(name: '_text') final PrimitiveElement? textElement,
      required final FhirCode type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      final List<QuestionnaireEnableWhen>? enableWhen,
      final FhirCode? enableBehavior,
      @JsonKey(name: '_enableBehavior')
      final PrimitiveElement? enableBehaviorElement,
      @JsonKey(name: 'required') final FhirBoolean? required_,
      @JsonKey(name: '_required') final PrimitiveElement? requiredElement,
      final FhirBoolean? repeats,
      @JsonKey(name: '_repeats') final PrimitiveElement? repeatsElement,
      final FhirBoolean? readOnly,
      @JsonKey(name: '_readOnly') final PrimitiveElement? readOnlyElement,
      final FhirInteger? maxLength,
      @JsonKey(name: '_maxLength') final PrimitiveElement? maxLengthElement,
      final FhirCanonical? answerValueSet,
      final List<QuestionnaireAnswerOption>? answerOption,
      final List<QuestionnaireInitial>? initial,
      final List<QuestionnaireItem>? item}) = _$QuestionnaireItemImpl;
  const _QuestionnaireItem._() : super._();

  factory _QuestionnaireItem.fromJson(Map<String, dynamic> json) =
      _$QuestionnaireItemImpl.fromJson;

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

  /// [linkId] An identifier that is unique within the Questionnaire allowing
  ///  linkage to the equivalent item in a QuestionnaireResponse resource.
  String get linkId;
  @override

  /// [linkIdElement] Extensions for linkId
  @JsonKey(name: '_linkId')
  PrimitiveElement? get linkIdElement;
  @override

  /// [definition] This element is a URI that refers to an
  FhirUri? get definition;
  @override

  /// [definitionElement] Extensions for definition
  @JsonKey(name: '_definition')
  PrimitiveElement? get definitionElement;
  @override

  /// [code] A terminology code that corresponds to this group or question
  ///  (e.g. a code from LOINC, which defines many questions and answers).
  List<Coding>? get code;
  @override

  /// [prefix] A short label for a particular group, question or set of display
  /// text within the questionnaire used for reference by the individual
  ///  completing the questionnaire.
  String? get prefix;
  @override

  /// [prefixElement] Extensions for prefix
  @JsonKey(name: '_prefix')
  PrimitiveElement? get prefixElement;
  @override

  /// [text] The name of a section, the text of a question or text content for
  ///  a display item.
  String? get text;
  @override

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement;
  @override

  /// [type] The type of questionnaire item this is - whether text for display,
  /// a grouping of other items or a particular type of data to be captured
  ///  (string, integer, coded choice, etc.).
  FhirCode get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [enableWhen] A constraint indicating that this item should only be
  /// enabled (displayed/allow answers to be captured) when the specified
  ///  condition is true.
  List<QuestionnaireEnableWhen>? get enableWhen;
  @override

  /// [enableBehavior] Controls how multiple enableWhen values are interpreted
  ///  -  whether all or any must be true.
  FhirCode? get enableBehavior;
  @override

  /// [enableBehaviorElement] Extensions for enableBehavior
  @JsonKey(name: '_enableBehavior')
  PrimitiveElement? get enableBehaviorElement;
  @override

  /// [required] An indication, if true, that the item must be present in a
  /// "completed" QuestionnaireResponse.  If false, the item may be skipped when
  ///  answering the questionnaire.
  @JsonKey(name: 'required')
  FhirBoolean? get required_;
  @override

  /// [requiredElement] Extensions for required
  @JsonKey(name: '_required')
  PrimitiveElement? get requiredElement;
  @override

  /// [repeats] An indication, if true, that the item may occur multiple times
  /// in the response, collecting multiple answers for questions or multiple
  ///  sets of answers for groups.
  FhirBoolean? get repeats;
  @override

  /// [repeatsElement] Extensions for repeats
  @JsonKey(name: '_repeats')
  PrimitiveElement? get repeatsElement;
  @override

  /// [readOnly] An indication, when true, that the value cannot be changed by
  ///  a human respondent to the Questionnaire.
  FhirBoolean? get readOnly;
  @override

  /// [readOnlyElement] Extensions for readOnly
  @JsonKey(name: '_readOnly')
  PrimitiveElement? get readOnlyElement;
  @override

  /// [maxLength] The maximum number of characters that are permitted in the
  ///  answer to be considered a "valid" QuestionnaireResponse.
  FhirInteger? get maxLength;
  @override

  /// [maxLengthElement] Extensions for maxLength
  @JsonKey(name: '_maxLength')
  PrimitiveElement? get maxLengthElement;
  @override

  /// [answerValueSet] A reference to a value set containing a list of codes
  ///  representing permitted answers for a "choice" or "open-choice" question.
  FhirCanonical? get answerValueSet;
  @override

  /// [answerOption] One of the permitted answers for a "choice" or
  ///  "open-choice" question.
  List<QuestionnaireAnswerOption>? get answerOption;
  @override

  /// [initial] One or more values that should be pre-populated in the answer
  ///  when initially rendering the questionnaire for user input.
  List<QuestionnaireInitial>? get initial;
  @override

  /// [item] Text, questions and other groups to be nested beneath a question
  ///  or group.
  List<QuestionnaireItem>? get item;
  @override
  @JsonKey(ignore: true)
  _$$QuestionnaireItemImplCopyWith<_$QuestionnaireItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionnaireEnableWhen _$QuestionnaireEnableWhenFromJson(
    Map<String, dynamic> json) {
  return _QuestionnaireEnableWhen.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireEnableWhen {
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

  /// [question] The linkId for the question whose answer (or lack of answer)
  ///  governs whether this item is enabled.
  String? get question => throw _privateConstructorUsedError;

  /// [questionElement] Extensions for question
  @JsonKey(name: '_question')
  PrimitiveElement? get questionElement => throw _privateConstructorUsedError;

  /// [operator] Specifies the criteria by which the question is enabled.
  @JsonKey(name: 'operator')
  FhirCode? get operator_ => throw _privateConstructorUsedError;

  /// [operatorElement] Extensions for operator
  @JsonKey(name: '_operator')
  PrimitiveElement? get operatorElement => throw _privateConstructorUsedError;

  /// [answerBoolean] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  FhirBoolean? get answerBoolean => throw _privateConstructorUsedError;

  /// [answerBooleanElement] Extensions for answerBoolean
  @JsonKey(name: '_answerBoolean')
  PrimitiveElement? get answerBooleanElement =>
      throw _privateConstructorUsedError;

  /// [answerDecimal] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  FhirDecimal? get answerDecimal => throw _privateConstructorUsedError;

  /// [answerDecimalElement] Extensions for answerDecimal
  @JsonKey(name: '_answerDecimal')
  PrimitiveElement? get answerDecimalElement =>
      throw _privateConstructorUsedError;

  /// [answerInteger] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  FhirInteger? get answerInteger => throw _privateConstructorUsedError;

  /// [answerIntegerElement] Extensions for answerInteger
  @JsonKey(name: '_answerInteger')
  PrimitiveElement? get answerIntegerElement =>
      throw _privateConstructorUsedError;

  /// [answerDate] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  FhirDate? get answerDate => throw _privateConstructorUsedError;

  /// [answerDateElement] Extensions for answerDate
  @JsonKey(name: '_answerDate')
  PrimitiveElement? get answerDateElement => throw _privateConstructorUsedError;

  /// [answerDateTime] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  FhirDateTime? get answerDateTime => throw _privateConstructorUsedError;

  /// [answerDateTimeElement] Extensions for answerDateTime
  @JsonKey(name: '_answerDateTime')
  PrimitiveElement? get answerDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [answerTime] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  FhirTime? get answerTime => throw _privateConstructorUsedError;

  /// [answerTimeElement] Extensions for answerTime
  @JsonKey(name: '_answerTime')
  PrimitiveElement? get answerTimeElement => throw _privateConstructorUsedError;

  /// [answerString] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  String? get answerString => throw _privateConstructorUsedError;

  /// [answerStringElement] Extensions for answerString
  @JsonKey(name: '_answerString')
  PrimitiveElement? get answerStringElement =>
      throw _privateConstructorUsedError;

  /// [answerCoding] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  Coding? get answerCoding => throw _privateConstructorUsedError;

  /// [answerQuantity] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  Quantity? get answerQuantity => throw _privateConstructorUsedError;

  /// [answerReference] A value that the referenced question is tested using
  ///  the specified operator in order for the item to be enabled.
  Reference? get answerReference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireEnableWhenCopyWith<QuestionnaireEnableWhen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireEnableWhenCopyWith<$Res> {
  factory $QuestionnaireEnableWhenCopyWith(QuestionnaireEnableWhen value,
          $Res Function(QuestionnaireEnableWhen) then) =
      _$QuestionnaireEnableWhenCopyWithImpl<$Res, QuestionnaireEnableWhen>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? question,
      @JsonKey(name: '_question') PrimitiveElement? questionElement,
      @JsonKey(name: 'operator') FhirCode? operator_,
      @JsonKey(name: '_operator') PrimitiveElement? operatorElement,
      FhirBoolean? answerBoolean,
      @JsonKey(name: '_answerBoolean') PrimitiveElement? answerBooleanElement,
      FhirDecimal? answerDecimal,
      @JsonKey(name: '_answerDecimal') PrimitiveElement? answerDecimalElement,
      FhirInteger? answerInteger,
      @JsonKey(name: '_answerInteger') PrimitiveElement? answerIntegerElement,
      FhirDate? answerDate,
      @JsonKey(name: '_answerDate') PrimitiveElement? answerDateElement,
      FhirDateTime? answerDateTime,
      @JsonKey(name: '_answerDateTime') PrimitiveElement? answerDateTimeElement,
      FhirTime? answerTime,
      @JsonKey(name: '_answerTime') PrimitiveElement? answerTimeElement,
      String? answerString,
      @JsonKey(name: '_answerString') PrimitiveElement? answerStringElement,
      Coding? answerCoding,
      Quantity? answerQuantity,
      Reference? answerReference});

  $CodingCopyWith<$Res>? get answerCoding;
  $QuantityCopyWith<$Res>? get answerQuantity;
  $ReferenceCopyWith<$Res>? get answerReference;
}

/// @nodoc
class _$QuestionnaireEnableWhenCopyWithImpl<$Res,
        $Val extends QuestionnaireEnableWhen>
    implements $QuestionnaireEnableWhenCopyWith<$Res> {
  _$QuestionnaireEnableWhenCopyWithImpl(this._value, this._then);

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
    Object? question = freezed,
    Object? questionElement = freezed,
    Object? operator_ = freezed,
    Object? operatorElement = freezed,
    Object? answerBoolean = freezed,
    Object? answerBooleanElement = freezed,
    Object? answerDecimal = freezed,
    Object? answerDecimalElement = freezed,
    Object? answerInteger = freezed,
    Object? answerIntegerElement = freezed,
    Object? answerDate = freezed,
    Object? answerDateElement = freezed,
    Object? answerDateTime = freezed,
    Object? answerDateTimeElement = freezed,
    Object? answerTime = freezed,
    Object? answerTimeElement = freezed,
    Object? answerString = freezed,
    Object? answerStringElement = freezed,
    Object? answerCoding = freezed,
    Object? answerQuantity = freezed,
    Object? answerReference = freezed,
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
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      questionElement: freezed == questionElement
          ? _value.questionElement
          : questionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      operator_: freezed == operator_
          ? _value.operator_
          : operator_ // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      operatorElement: freezed == operatorElement
          ? _value.operatorElement
          : operatorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerBoolean: freezed == answerBoolean
          ? _value.answerBoolean
          : answerBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      answerBooleanElement: freezed == answerBooleanElement
          ? _value.answerBooleanElement
          : answerBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerDecimal: freezed == answerDecimal
          ? _value.answerDecimal
          : answerDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      answerDecimalElement: freezed == answerDecimalElement
          ? _value.answerDecimalElement
          : answerDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerInteger: freezed == answerInteger
          ? _value.answerInteger
          : answerInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      answerIntegerElement: freezed == answerIntegerElement
          ? _value.answerIntegerElement
          : answerIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerDate: freezed == answerDate
          ? _value.answerDate
          : answerDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      answerDateElement: freezed == answerDateElement
          ? _value.answerDateElement
          : answerDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerDateTime: freezed == answerDateTime
          ? _value.answerDateTime
          : answerDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      answerDateTimeElement: freezed == answerDateTimeElement
          ? _value.answerDateTimeElement
          : answerDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerTime: freezed == answerTime
          ? _value.answerTime
          : answerTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      answerTimeElement: freezed == answerTimeElement
          ? _value.answerTimeElement
          : answerTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerString: freezed == answerString
          ? _value.answerString
          : answerString // ignore: cast_nullable_to_non_nullable
              as String?,
      answerStringElement: freezed == answerStringElement
          ? _value.answerStringElement
          : answerStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerCoding: freezed == answerCoding
          ? _value.answerCoding
          : answerCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      answerQuantity: freezed == answerQuantity
          ? _value.answerQuantity
          : answerQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      answerReference: freezed == answerReference
          ? _value.answerReference
          : answerReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodingCopyWith<$Res>? get answerCoding {
    if (_value.answerCoding == null) {
      return null;
    }

    return $CodingCopyWith<$Res>(_value.answerCoding!, (value) {
      return _then(_value.copyWith(answerCoding: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get answerQuantity {
    if (_value.answerQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.answerQuantity!, (value) {
      return _then(_value.copyWith(answerQuantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get answerReference {
    if (_value.answerReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.answerReference!, (value) {
      return _then(_value.copyWith(answerReference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionnaireEnableWhenImplCopyWith<$Res>
    implements $QuestionnaireEnableWhenCopyWith<$Res> {
  factory _$$QuestionnaireEnableWhenImplCopyWith(
          _$QuestionnaireEnableWhenImpl value,
          $Res Function(_$QuestionnaireEnableWhenImpl) then) =
      __$$QuestionnaireEnableWhenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? question,
      @JsonKey(name: '_question') PrimitiveElement? questionElement,
      @JsonKey(name: 'operator') FhirCode? operator_,
      @JsonKey(name: '_operator') PrimitiveElement? operatorElement,
      FhirBoolean? answerBoolean,
      @JsonKey(name: '_answerBoolean') PrimitiveElement? answerBooleanElement,
      FhirDecimal? answerDecimal,
      @JsonKey(name: '_answerDecimal') PrimitiveElement? answerDecimalElement,
      FhirInteger? answerInteger,
      @JsonKey(name: '_answerInteger') PrimitiveElement? answerIntegerElement,
      FhirDate? answerDate,
      @JsonKey(name: '_answerDate') PrimitiveElement? answerDateElement,
      FhirDateTime? answerDateTime,
      @JsonKey(name: '_answerDateTime') PrimitiveElement? answerDateTimeElement,
      FhirTime? answerTime,
      @JsonKey(name: '_answerTime') PrimitiveElement? answerTimeElement,
      String? answerString,
      @JsonKey(name: '_answerString') PrimitiveElement? answerStringElement,
      Coding? answerCoding,
      Quantity? answerQuantity,
      Reference? answerReference});

  @override
  $CodingCopyWith<$Res>? get answerCoding;
  @override
  $QuantityCopyWith<$Res>? get answerQuantity;
  @override
  $ReferenceCopyWith<$Res>? get answerReference;
}

/// @nodoc
class __$$QuestionnaireEnableWhenImplCopyWithImpl<$Res>
    extends _$QuestionnaireEnableWhenCopyWithImpl<$Res,
        _$QuestionnaireEnableWhenImpl>
    implements _$$QuestionnaireEnableWhenImplCopyWith<$Res> {
  __$$QuestionnaireEnableWhenImplCopyWithImpl(
      _$QuestionnaireEnableWhenImpl _value,
      $Res Function(_$QuestionnaireEnableWhenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? question = freezed,
    Object? questionElement = freezed,
    Object? operator_ = freezed,
    Object? operatorElement = freezed,
    Object? answerBoolean = freezed,
    Object? answerBooleanElement = freezed,
    Object? answerDecimal = freezed,
    Object? answerDecimalElement = freezed,
    Object? answerInteger = freezed,
    Object? answerIntegerElement = freezed,
    Object? answerDate = freezed,
    Object? answerDateElement = freezed,
    Object? answerDateTime = freezed,
    Object? answerDateTimeElement = freezed,
    Object? answerTime = freezed,
    Object? answerTimeElement = freezed,
    Object? answerString = freezed,
    Object? answerStringElement = freezed,
    Object? answerCoding = freezed,
    Object? answerQuantity = freezed,
    Object? answerReference = freezed,
  }) {
    return _then(_$QuestionnaireEnableWhenImpl(
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
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      questionElement: freezed == questionElement
          ? _value.questionElement
          : questionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      operator_: freezed == operator_
          ? _value.operator_
          : operator_ // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      operatorElement: freezed == operatorElement
          ? _value.operatorElement
          : operatorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerBoolean: freezed == answerBoolean
          ? _value.answerBoolean
          : answerBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      answerBooleanElement: freezed == answerBooleanElement
          ? _value.answerBooleanElement
          : answerBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerDecimal: freezed == answerDecimal
          ? _value.answerDecimal
          : answerDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      answerDecimalElement: freezed == answerDecimalElement
          ? _value.answerDecimalElement
          : answerDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerInteger: freezed == answerInteger
          ? _value.answerInteger
          : answerInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      answerIntegerElement: freezed == answerIntegerElement
          ? _value.answerIntegerElement
          : answerIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerDate: freezed == answerDate
          ? _value.answerDate
          : answerDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      answerDateElement: freezed == answerDateElement
          ? _value.answerDateElement
          : answerDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerDateTime: freezed == answerDateTime
          ? _value.answerDateTime
          : answerDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      answerDateTimeElement: freezed == answerDateTimeElement
          ? _value.answerDateTimeElement
          : answerDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerTime: freezed == answerTime
          ? _value.answerTime
          : answerTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      answerTimeElement: freezed == answerTimeElement
          ? _value.answerTimeElement
          : answerTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerString: freezed == answerString
          ? _value.answerString
          : answerString // ignore: cast_nullable_to_non_nullable
              as String?,
      answerStringElement: freezed == answerStringElement
          ? _value.answerStringElement
          : answerStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      answerCoding: freezed == answerCoding
          ? _value.answerCoding
          : answerCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      answerQuantity: freezed == answerQuantity
          ? _value.answerQuantity
          : answerQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      answerReference: freezed == answerReference
          ? _value.answerReference
          : answerReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionnaireEnableWhenImpl extends _QuestionnaireEnableWhen {
  const _$QuestionnaireEnableWhenImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.question,
      @JsonKey(name: '_question') this.questionElement,
      @JsonKey(name: 'operator') this.operator_,
      @JsonKey(name: '_operator') this.operatorElement,
      this.answerBoolean,
      @JsonKey(name: '_answerBoolean') this.answerBooleanElement,
      this.answerDecimal,
      @JsonKey(name: '_answerDecimal') this.answerDecimalElement,
      this.answerInteger,
      @JsonKey(name: '_answerInteger') this.answerIntegerElement,
      this.answerDate,
      @JsonKey(name: '_answerDate') this.answerDateElement,
      this.answerDateTime,
      @JsonKey(name: '_answerDateTime') this.answerDateTimeElement,
      this.answerTime,
      @JsonKey(name: '_answerTime') this.answerTimeElement,
      this.answerString,
      @JsonKey(name: '_answerString') this.answerStringElement,
      this.answerCoding,
      this.answerQuantity,
      this.answerReference})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$QuestionnaireEnableWhenImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionnaireEnableWhenImplFromJson(json);

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

  /// [question] The linkId for the question whose answer (or lack of answer)
  ///  governs whether this item is enabled.
  @override
  final String? question;

  /// [questionElement] Extensions for question
  @override
  @JsonKey(name: '_question')
  final PrimitiveElement? questionElement;

  /// [operator] Specifies the criteria by which the question is enabled.
  @override
  @JsonKey(name: 'operator')
  final FhirCode? operator_;

  /// [operatorElement] Extensions for operator
  @override
  @JsonKey(name: '_operator')
  final PrimitiveElement? operatorElement;

  /// [answerBoolean] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  @override
  final FhirBoolean? answerBoolean;

  /// [answerBooleanElement] Extensions for answerBoolean
  @override
  @JsonKey(name: '_answerBoolean')
  final PrimitiveElement? answerBooleanElement;

  /// [answerDecimal] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  @override
  final FhirDecimal? answerDecimal;

  /// [answerDecimalElement] Extensions for answerDecimal
  @override
  @JsonKey(name: '_answerDecimal')
  final PrimitiveElement? answerDecimalElement;

  /// [answerInteger] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  @override
  final FhirInteger? answerInteger;

  /// [answerIntegerElement] Extensions for answerInteger
  @override
  @JsonKey(name: '_answerInteger')
  final PrimitiveElement? answerIntegerElement;

  /// [answerDate] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  @override
  final FhirDate? answerDate;

  /// [answerDateElement] Extensions for answerDate
  @override
  @JsonKey(name: '_answerDate')
  final PrimitiveElement? answerDateElement;

  /// [answerDateTime] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  @override
  final FhirDateTime? answerDateTime;

  /// [answerDateTimeElement] Extensions for answerDateTime
  @override
  @JsonKey(name: '_answerDateTime')
  final PrimitiveElement? answerDateTimeElement;

  /// [answerTime] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  @override
  final FhirTime? answerTime;

  /// [answerTimeElement] Extensions for answerTime
  @override
  @JsonKey(name: '_answerTime')
  final PrimitiveElement? answerTimeElement;

  /// [answerString] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  @override
  final String? answerString;

  /// [answerStringElement] Extensions for answerString
  @override
  @JsonKey(name: '_answerString')
  final PrimitiveElement? answerStringElement;

  /// [answerCoding] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  @override
  final Coding? answerCoding;

  /// [answerQuantity] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  @override
  final Quantity? answerQuantity;

  /// [answerReference] A value that the referenced question is tested using
  ///  the specified operator in order for the item to be enabled.
  @override
  final Reference? answerReference;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireEnableWhenImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.questionElement, questionElement) ||
                other.questionElement == questionElement) &&
            (identical(other.operator_, operator_) ||
                other.operator_ == operator_) &&
            (identical(other.operatorElement, operatorElement) ||
                other.operatorElement == operatorElement) &&
            (identical(other.answerBoolean, answerBoolean) ||
                other.answerBoolean == answerBoolean) &&
            (identical(other.answerBooleanElement, answerBooleanElement) ||
                other.answerBooleanElement == answerBooleanElement) &&
            (identical(other.answerDecimal, answerDecimal) ||
                other.answerDecimal == answerDecimal) &&
            (identical(other.answerDecimalElement, answerDecimalElement) ||
                other.answerDecimalElement == answerDecimalElement) &&
            (identical(other.answerInteger, answerInteger) ||
                other.answerInteger == answerInteger) &&
            (identical(other.answerIntegerElement, answerIntegerElement) ||
                other.answerIntegerElement == answerIntegerElement) &&
            (identical(other.answerDate, answerDate) ||
                other.answerDate == answerDate) &&
            (identical(other.answerDateElement, answerDateElement) ||
                other.answerDateElement == answerDateElement) &&
            (identical(other.answerDateTime, answerDateTime) ||
                other.answerDateTime == answerDateTime) &&
            (identical(other.answerDateTimeElement, answerDateTimeElement) ||
                other.answerDateTimeElement == answerDateTimeElement) &&
            (identical(other.answerTime, answerTime) ||
                other.answerTime == answerTime) &&
            (identical(other.answerTimeElement, answerTimeElement) ||
                other.answerTimeElement == answerTimeElement) &&
            (identical(other.answerString, answerString) ||
                other.answerString == answerString) &&
            (identical(other.answerStringElement, answerStringElement) ||
                other.answerStringElement == answerStringElement) &&
            (identical(other.answerCoding, answerCoding) ||
                other.answerCoding == answerCoding) &&
            (identical(other.answerQuantity, answerQuantity) ||
                other.answerQuantity == answerQuantity) &&
            (identical(other.answerReference, answerReference) ||
                other.answerReference == answerReference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        question,
        questionElement,
        operator_,
        operatorElement,
        answerBoolean,
        answerBooleanElement,
        answerDecimal,
        answerDecimalElement,
        answerInteger,
        answerIntegerElement,
        answerDate,
        answerDateElement,
        answerDateTime,
        answerDateTimeElement,
        answerTime,
        answerTimeElement,
        answerString,
        answerStringElement,
        answerCoding,
        answerQuantity,
        answerReference
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireEnableWhenImplCopyWith<_$QuestionnaireEnableWhenImpl>
      get copyWith => __$$QuestionnaireEnableWhenImplCopyWithImpl<
          _$QuestionnaireEnableWhenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionnaireEnableWhenImplToJson(
      this,
    );
  }
}

abstract class _QuestionnaireEnableWhen extends QuestionnaireEnableWhen {
  const factory _QuestionnaireEnableWhen(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? question,
      @JsonKey(name: '_question') final PrimitiveElement? questionElement,
      @JsonKey(name: 'operator') final FhirCode? operator_,
      @JsonKey(name: '_operator') final PrimitiveElement? operatorElement,
      final FhirBoolean? answerBoolean,
      @JsonKey(name: '_answerBoolean')
      final PrimitiveElement? answerBooleanElement,
      final FhirDecimal? answerDecimal,
      @JsonKey(name: '_answerDecimal')
      final PrimitiveElement? answerDecimalElement,
      final FhirInteger? answerInteger,
      @JsonKey(name: '_answerInteger')
      final PrimitiveElement? answerIntegerElement,
      final FhirDate? answerDate,
      @JsonKey(name: '_answerDate') final PrimitiveElement? answerDateElement,
      final FhirDateTime? answerDateTime,
      @JsonKey(name: '_answerDateTime')
      final PrimitiveElement? answerDateTimeElement,
      final FhirTime? answerTime,
      @JsonKey(name: '_answerTime') final PrimitiveElement? answerTimeElement,
      final String? answerString,
      @JsonKey(name: '_answerString')
      final PrimitiveElement? answerStringElement,
      final Coding? answerCoding,
      final Quantity? answerQuantity,
      final Reference? answerReference}) = _$QuestionnaireEnableWhenImpl;
  const _QuestionnaireEnableWhen._() : super._();

  factory _QuestionnaireEnableWhen.fromJson(Map<String, dynamic> json) =
      _$QuestionnaireEnableWhenImpl.fromJson;

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

  /// [question] The linkId for the question whose answer (or lack of answer)
  ///  governs whether this item is enabled.
  String? get question;
  @override

  /// [questionElement] Extensions for question
  @JsonKey(name: '_question')
  PrimitiveElement? get questionElement;
  @override

  /// [operator] Specifies the criteria by which the question is enabled.
  @JsonKey(name: 'operator')
  FhirCode? get operator_;
  @override

  /// [operatorElement] Extensions for operator
  @JsonKey(name: '_operator')
  PrimitiveElement? get operatorElement;
  @override

  /// [answerBoolean] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  FhirBoolean? get answerBoolean;
  @override

  /// [answerBooleanElement] Extensions for answerBoolean
  @JsonKey(name: '_answerBoolean')
  PrimitiveElement? get answerBooleanElement;
  @override

  /// [answerDecimal] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  FhirDecimal? get answerDecimal;
  @override

  /// [answerDecimalElement] Extensions for answerDecimal
  @JsonKey(name: '_answerDecimal')
  PrimitiveElement? get answerDecimalElement;
  @override

  /// [answerInteger] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  FhirInteger? get answerInteger;
  @override

  /// [answerIntegerElement] Extensions for answerInteger
  @JsonKey(name: '_answerInteger')
  PrimitiveElement? get answerIntegerElement;
  @override

  /// [answerDate] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  FhirDate? get answerDate;
  @override

  /// [answerDateElement] Extensions for answerDate
  @JsonKey(name: '_answerDate')
  PrimitiveElement? get answerDateElement;
  @override

  /// [answerDateTime] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  FhirDateTime? get answerDateTime;
  @override

  /// [answerDateTimeElement] Extensions for answerDateTime
  @JsonKey(name: '_answerDateTime')
  PrimitiveElement? get answerDateTimeElement;
  @override

  /// [answerTime] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  FhirTime? get answerTime;
  @override

  /// [answerTimeElement] Extensions for answerTime
  @JsonKey(name: '_answerTime')
  PrimitiveElement? get answerTimeElement;
  @override

  /// [answerString] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  String? get answerString;
  @override

  /// [answerStringElement] Extensions for answerString
  @JsonKey(name: '_answerString')
  PrimitiveElement? get answerStringElement;
  @override

  /// [answerCoding] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  Coding? get answerCoding;
  @override

  /// [answerQuantity] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  Quantity? get answerQuantity;
  @override

  /// [answerReference] A value that the referenced question is tested using
  ///  the specified operator in order for the item to be enabled.
  Reference? get answerReference;
  @override
  @JsonKey(ignore: true)
  _$$QuestionnaireEnableWhenImplCopyWith<_$QuestionnaireEnableWhenImpl>
      get copyWith => throw _privateConstructorUsedError;
}

QuestionnaireAnswerOption _$QuestionnaireAnswerOptionFromJson(
    Map<String, dynamic> json) {
  return _QuestionnaireAnswerOption.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireAnswerOption {
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

  /// [valueInteger] A potential answer that's allowed as the answer to this
  ///  question.
  FhirInteger? get valueInteger => throw _privateConstructorUsedError;

  /// [valueIntegerElement] Extensions for valueInteger
  @JsonKey(name: '_valueInteger')
  PrimitiveElement? get valueIntegerElement =>
      throw _privateConstructorUsedError;

  /// [valueDate] A potential answer that's allowed as the answer to this
  ///  question.
  FhirDate? get valueDate => throw _privateConstructorUsedError;

  /// [valueDateElement] Extensions for valueDate
  @JsonKey(name: '_valueDate')
  PrimitiveElement? get valueDateElement => throw _privateConstructorUsedError;

  /// [valueTime] A potential answer that's allowed as the answer to this
  ///  question.
  FhirTime? get valueTime => throw _privateConstructorUsedError;

  /// [valueTimeElement] Extensions for valueTime
  @JsonKey(name: '_valueTime')
  PrimitiveElement? get valueTimeElement => throw _privateConstructorUsedError;

  /// [valueString] A potential answer that's allowed as the answer to this
  ///  question.
  String? get valueString => throw _privateConstructorUsedError;

  /// [valueStringElement] Extensions for valueString
  @JsonKey(name: '_valueString')
  PrimitiveElement? get valueStringElement =>
      throw _privateConstructorUsedError;

  /// [valueCoding] A potential answer that's allowed as the answer to this
  ///  question.
  Coding? get valueCoding => throw _privateConstructorUsedError;

  /// [valueReference] A potential answer that's allowed as the answer to this
  ///  question.
  Reference? get valueReference => throw _privateConstructorUsedError;

  /// [initialSelected] Indicates whether the answer value is selected when the
  ///  list of possible answers is initially shown.
  FhirBoolean? get initialSelected => throw _privateConstructorUsedError;

  /// [initialSelectedElement] Extensions for initialSelected
  @JsonKey(name: '_initialSelected')
  PrimitiveElement? get initialSelectedElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireAnswerOptionCopyWith<QuestionnaireAnswerOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireAnswerOptionCopyWith<$Res> {
  factory $QuestionnaireAnswerOptionCopyWith(QuestionnaireAnswerOption value,
          $Res Function(QuestionnaireAnswerOption) then) =
      _$QuestionnaireAnswerOptionCopyWithImpl<$Res, QuestionnaireAnswerOption>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
      FhirDate? valueDate,
      @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
      FhirTime? valueTime,
      @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
      String? valueString,
      @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
      Coding? valueCoding,
      Reference? valueReference,
      FhirBoolean? initialSelected,
      @JsonKey(name: '_initialSelected')
      PrimitiveElement? initialSelectedElement});

  $CodingCopyWith<$Res>? get valueCoding;
  $ReferenceCopyWith<$Res>? get valueReference;
}

/// @nodoc
class _$QuestionnaireAnswerOptionCopyWithImpl<$Res,
        $Val extends QuestionnaireAnswerOption>
    implements $QuestionnaireAnswerOptionCopyWith<$Res> {
  _$QuestionnaireAnswerOptionCopyWithImpl(this._value, this._then);

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
    Object? valueInteger = freezed,
    Object? valueIntegerElement = freezed,
    Object? valueDate = freezed,
    Object? valueDateElement = freezed,
    Object? valueTime = freezed,
    Object? valueTimeElement = freezed,
    Object? valueString = freezed,
    Object? valueStringElement = freezed,
    Object? valueCoding = freezed,
    Object? valueReference = freezed,
    Object? initialSelected = freezed,
    Object? initialSelectedElement = freezed,
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
      valueInteger: freezed == valueInteger
          ? _value.valueInteger
          : valueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      valueIntegerElement: freezed == valueIntegerElement
          ? _value.valueIntegerElement
          : valueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      valueDateElement: freezed == valueDateElement
          ? _value.valueDateElement
          : valueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueTime: freezed == valueTime
          ? _value.valueTime
          : valueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      valueTimeElement: freezed == valueTimeElement
          ? _value.valueTimeElement
          : valueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueString: freezed == valueString
          ? _value.valueString
          : valueString // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStringElement: freezed == valueStringElement
          ? _value.valueStringElement
          : valueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueCoding: freezed == valueCoding
          ? _value.valueCoding
          : valueCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      valueReference: freezed == valueReference
          ? _value.valueReference
          : valueReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      initialSelected: freezed == initialSelected
          ? _value.initialSelected
          : initialSelected // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      initialSelectedElement: freezed == initialSelectedElement
          ? _value.initialSelectedElement
          : initialSelectedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodingCopyWith<$Res>? get valueCoding {
    if (_value.valueCoding == null) {
      return null;
    }

    return $CodingCopyWith<$Res>(_value.valueCoding!, (value) {
      return _then(_value.copyWith(valueCoding: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get valueReference {
    if (_value.valueReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.valueReference!, (value) {
      return _then(_value.copyWith(valueReference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionnaireAnswerOptionImplCopyWith<$Res>
    implements $QuestionnaireAnswerOptionCopyWith<$Res> {
  factory _$$QuestionnaireAnswerOptionImplCopyWith(
          _$QuestionnaireAnswerOptionImpl value,
          $Res Function(_$QuestionnaireAnswerOptionImpl) then) =
      __$$QuestionnaireAnswerOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
      FhirDate? valueDate,
      @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
      FhirTime? valueTime,
      @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
      String? valueString,
      @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
      Coding? valueCoding,
      Reference? valueReference,
      FhirBoolean? initialSelected,
      @JsonKey(name: '_initialSelected')
      PrimitiveElement? initialSelectedElement});

  @override
  $CodingCopyWith<$Res>? get valueCoding;
  @override
  $ReferenceCopyWith<$Res>? get valueReference;
}

/// @nodoc
class __$$QuestionnaireAnswerOptionImplCopyWithImpl<$Res>
    extends _$QuestionnaireAnswerOptionCopyWithImpl<$Res,
        _$QuestionnaireAnswerOptionImpl>
    implements _$$QuestionnaireAnswerOptionImplCopyWith<$Res> {
  __$$QuestionnaireAnswerOptionImplCopyWithImpl(
      _$QuestionnaireAnswerOptionImpl _value,
      $Res Function(_$QuestionnaireAnswerOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? valueInteger = freezed,
    Object? valueIntegerElement = freezed,
    Object? valueDate = freezed,
    Object? valueDateElement = freezed,
    Object? valueTime = freezed,
    Object? valueTimeElement = freezed,
    Object? valueString = freezed,
    Object? valueStringElement = freezed,
    Object? valueCoding = freezed,
    Object? valueReference = freezed,
    Object? initialSelected = freezed,
    Object? initialSelectedElement = freezed,
  }) {
    return _then(_$QuestionnaireAnswerOptionImpl(
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
      valueInteger: freezed == valueInteger
          ? _value.valueInteger
          : valueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      valueIntegerElement: freezed == valueIntegerElement
          ? _value.valueIntegerElement
          : valueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      valueDateElement: freezed == valueDateElement
          ? _value.valueDateElement
          : valueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueTime: freezed == valueTime
          ? _value.valueTime
          : valueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      valueTimeElement: freezed == valueTimeElement
          ? _value.valueTimeElement
          : valueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueString: freezed == valueString
          ? _value.valueString
          : valueString // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStringElement: freezed == valueStringElement
          ? _value.valueStringElement
          : valueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueCoding: freezed == valueCoding
          ? _value.valueCoding
          : valueCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      valueReference: freezed == valueReference
          ? _value.valueReference
          : valueReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      initialSelected: freezed == initialSelected
          ? _value.initialSelected
          : initialSelected // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      initialSelectedElement: freezed == initialSelectedElement
          ? _value.initialSelectedElement
          : initialSelectedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionnaireAnswerOptionImpl extends _QuestionnaireAnswerOption {
  const _$QuestionnaireAnswerOptionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.valueInteger,
      @JsonKey(name: '_valueInteger') this.valueIntegerElement,
      this.valueDate,
      @JsonKey(name: '_valueDate') this.valueDateElement,
      this.valueTime,
      @JsonKey(name: '_valueTime') this.valueTimeElement,
      this.valueString,
      @JsonKey(name: '_valueString') this.valueStringElement,
      this.valueCoding,
      this.valueReference,
      this.initialSelected,
      @JsonKey(name: '_initialSelected') this.initialSelectedElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$QuestionnaireAnswerOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionnaireAnswerOptionImplFromJson(json);

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

  /// [valueInteger] A potential answer that's allowed as the answer to this
  ///  question.
  @override
  final FhirInteger? valueInteger;

  /// [valueIntegerElement] Extensions for valueInteger
  @override
  @JsonKey(name: '_valueInteger')
  final PrimitiveElement? valueIntegerElement;

  /// [valueDate] A potential answer that's allowed as the answer to this
  ///  question.
  @override
  final FhirDate? valueDate;

  /// [valueDateElement] Extensions for valueDate
  @override
  @JsonKey(name: '_valueDate')
  final PrimitiveElement? valueDateElement;

  /// [valueTime] A potential answer that's allowed as the answer to this
  ///  question.
  @override
  final FhirTime? valueTime;

  /// [valueTimeElement] Extensions for valueTime
  @override
  @JsonKey(name: '_valueTime')
  final PrimitiveElement? valueTimeElement;

  /// [valueString] A potential answer that's allowed as the answer to this
  ///  question.
  @override
  final String? valueString;

  /// [valueStringElement] Extensions for valueString
  @override
  @JsonKey(name: '_valueString')
  final PrimitiveElement? valueStringElement;

  /// [valueCoding] A potential answer that's allowed as the answer to this
  ///  question.
  @override
  final Coding? valueCoding;

  /// [valueReference] A potential answer that's allowed as the answer to this
  ///  question.
  @override
  final Reference? valueReference;

  /// [initialSelected] Indicates whether the answer value is selected when the
  ///  list of possible answers is initially shown.
  @override
  final FhirBoolean? initialSelected;

  /// [initialSelectedElement] Extensions for initialSelected
  @override
  @JsonKey(name: '_initialSelected')
  final PrimitiveElement? initialSelectedElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireAnswerOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.valueInteger, valueInteger) ||
                other.valueInteger == valueInteger) &&
            (identical(other.valueIntegerElement, valueIntegerElement) ||
                other.valueIntegerElement == valueIntegerElement) &&
            (identical(other.valueDate, valueDate) ||
                other.valueDate == valueDate) &&
            (identical(other.valueDateElement, valueDateElement) ||
                other.valueDateElement == valueDateElement) &&
            (identical(other.valueTime, valueTime) ||
                other.valueTime == valueTime) &&
            (identical(other.valueTimeElement, valueTimeElement) ||
                other.valueTimeElement == valueTimeElement) &&
            (identical(other.valueString, valueString) ||
                other.valueString == valueString) &&
            (identical(other.valueStringElement, valueStringElement) ||
                other.valueStringElement == valueStringElement) &&
            (identical(other.valueCoding, valueCoding) ||
                other.valueCoding == valueCoding) &&
            (identical(other.valueReference, valueReference) ||
                other.valueReference == valueReference) &&
            (identical(other.initialSelected, initialSelected) ||
                other.initialSelected == initialSelected) &&
            (identical(other.initialSelectedElement, initialSelectedElement) ||
                other.initialSelectedElement == initialSelectedElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      valueInteger,
      valueIntegerElement,
      valueDate,
      valueDateElement,
      valueTime,
      valueTimeElement,
      valueString,
      valueStringElement,
      valueCoding,
      valueReference,
      initialSelected,
      initialSelectedElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireAnswerOptionImplCopyWith<_$QuestionnaireAnswerOptionImpl>
      get copyWith => __$$QuestionnaireAnswerOptionImplCopyWithImpl<
          _$QuestionnaireAnswerOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionnaireAnswerOptionImplToJson(
      this,
    );
  }
}

abstract class _QuestionnaireAnswerOption extends QuestionnaireAnswerOption {
  const factory _QuestionnaireAnswerOption(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger')
      final PrimitiveElement? valueIntegerElement,
      final FhirDate? valueDate,
      @JsonKey(name: '_valueDate') final PrimitiveElement? valueDateElement,
      final FhirTime? valueTime,
      @JsonKey(name: '_valueTime') final PrimitiveElement? valueTimeElement,
      final String? valueString,
      @JsonKey(name: '_valueString') final PrimitiveElement? valueStringElement,
      final Coding? valueCoding,
      final Reference? valueReference,
      final FhirBoolean? initialSelected,
      @JsonKey(name: '_initialSelected')
      final PrimitiveElement?
          initialSelectedElement}) = _$QuestionnaireAnswerOptionImpl;
  const _QuestionnaireAnswerOption._() : super._();

  factory _QuestionnaireAnswerOption.fromJson(Map<String, dynamic> json) =
      _$QuestionnaireAnswerOptionImpl.fromJson;

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

  /// [valueInteger] A potential answer that's allowed as the answer to this
  ///  question.
  FhirInteger? get valueInteger;
  @override

  /// [valueIntegerElement] Extensions for valueInteger
  @JsonKey(name: '_valueInteger')
  PrimitiveElement? get valueIntegerElement;
  @override

  /// [valueDate] A potential answer that's allowed as the answer to this
  ///  question.
  FhirDate? get valueDate;
  @override

  /// [valueDateElement] Extensions for valueDate
  @JsonKey(name: '_valueDate')
  PrimitiveElement? get valueDateElement;
  @override

  /// [valueTime] A potential answer that's allowed as the answer to this
  ///  question.
  FhirTime? get valueTime;
  @override

  /// [valueTimeElement] Extensions for valueTime
  @JsonKey(name: '_valueTime')
  PrimitiveElement? get valueTimeElement;
  @override

  /// [valueString] A potential answer that's allowed as the answer to this
  ///  question.
  String? get valueString;
  @override

  /// [valueStringElement] Extensions for valueString
  @JsonKey(name: '_valueString')
  PrimitiveElement? get valueStringElement;
  @override

  /// [valueCoding] A potential answer that's allowed as the answer to this
  ///  question.
  Coding? get valueCoding;
  @override

  /// [valueReference] A potential answer that's allowed as the answer to this
  ///  question.
  Reference? get valueReference;
  @override

  /// [initialSelected] Indicates whether the answer value is selected when the
  ///  list of possible answers is initially shown.
  FhirBoolean? get initialSelected;
  @override

  /// [initialSelectedElement] Extensions for initialSelected
  @JsonKey(name: '_initialSelected')
  PrimitiveElement? get initialSelectedElement;
  @override
  @JsonKey(ignore: true)
  _$$QuestionnaireAnswerOptionImplCopyWith<_$QuestionnaireAnswerOptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

QuestionnaireInitial _$QuestionnaireInitialFromJson(Map<String, dynamic> json) {
  return _QuestionnaireInitial.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireInitial {
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

  /// [valueBoolean] The actual value to for an initial answer.
  FhirBoolean? get valueBoolean => throw _privateConstructorUsedError;

  /// [valueBooleanElement] Extensions for valueBoolean
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement =>
      throw _privateConstructorUsedError;

  /// [valueDecimal] The actual value to for an initial answer.
  FhirDecimal? get valueDecimal => throw _privateConstructorUsedError;

  /// [valueDecimalElement] Extensions for valueDecimal
  @JsonKey(name: '_valueDecimal')
  PrimitiveElement? get valueDecimalElement =>
      throw _privateConstructorUsedError;

  /// [valueInteger] The actual value to for an initial answer.
  FhirInteger? get valueInteger => throw _privateConstructorUsedError;

  /// [valueIntegerElement] Extensions for valueInteger
  @JsonKey(name: '_valueInteger')
  PrimitiveElement? get valueIntegerElement =>
      throw _privateConstructorUsedError;

  /// [valueDate] The actual value to for an initial answer.
  FhirDate? get valueDate => throw _privateConstructorUsedError;

  /// [valueDateElement] Extensions for valueDate
  @JsonKey(name: '_valueDate')
  PrimitiveElement? get valueDateElement => throw _privateConstructorUsedError;

  /// [valueDateTime] The actual value to for an initial answer.
  FhirDateTime? get valueDateTime => throw _privateConstructorUsedError;

  /// [valueDateTimeElement] Extensions for valueDateTime
  @JsonKey(name: '_valueDateTime')
  PrimitiveElement? get valueDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [valueTime] The actual value to for an initial answer.
  FhirTime? get valueTime => throw _privateConstructorUsedError;

  /// [valueTimeElement] Extensions for valueTime
  @JsonKey(name: '_valueTime')
  PrimitiveElement? get valueTimeElement => throw _privateConstructorUsedError;

  /// [valueString] The actual value to for an initial answer.
  String? get valueString => throw _privateConstructorUsedError;

  /// [valueStringElement] Extensions for valueString
  @JsonKey(name: '_valueString')
  PrimitiveElement? get valueStringElement =>
      throw _privateConstructorUsedError;

  /// [valueUri] The actual value to for an initial answer.
  FhirUri? get valueUri => throw _privateConstructorUsedError;

  /// [valueUriElement] Extensions for valueUri
  @JsonKey(name: '_valueUri')
  PrimitiveElement? get valueUriElement => throw _privateConstructorUsedError;

  /// [valueAttachment] The actual value to for an initial answer.
  Attachment? get valueAttachment => throw _privateConstructorUsedError;

  /// [valueCoding] The actual value to for an initial answer.
  Coding? get valueCoding => throw _privateConstructorUsedError;

  /// [valueQuantity] The actual value to for an initial answer.
  Quantity? get valueQuantity => throw _privateConstructorUsedError;

  /// [valueReference] The actual value to for an initial answer.
  Reference? get valueReference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireInitialCopyWith<QuestionnaireInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireInitialCopyWith<$Res> {
  factory $QuestionnaireInitialCopyWith(QuestionnaireInitial value,
          $Res Function(QuestionnaireInitial) then) =
      _$QuestionnaireInitialCopyWithImpl<$Res, QuestionnaireInitial>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
      FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,
      FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
      FhirDate? valueDate,
      @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
      FhirDateTime? valueDateTime,
      @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
      FhirTime? valueTime,
      @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
      String? valueString,
      @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
      FhirUri? valueUri,
      @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,
      Attachment? valueAttachment,
      Coding? valueCoding,
      Quantity? valueQuantity,
      Reference? valueReference});

  $AttachmentCopyWith<$Res>? get valueAttachment;
  $CodingCopyWith<$Res>? get valueCoding;
  $QuantityCopyWith<$Res>? get valueQuantity;
  $ReferenceCopyWith<$Res>? get valueReference;
}

/// @nodoc
class _$QuestionnaireInitialCopyWithImpl<$Res,
        $Val extends QuestionnaireInitial>
    implements $QuestionnaireInitialCopyWith<$Res> {
  _$QuestionnaireInitialCopyWithImpl(this._value, this._then);

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
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueDecimal = freezed,
    Object? valueDecimalElement = freezed,
    Object? valueInteger = freezed,
    Object? valueIntegerElement = freezed,
    Object? valueDate = freezed,
    Object? valueDateElement = freezed,
    Object? valueDateTime = freezed,
    Object? valueDateTimeElement = freezed,
    Object? valueTime = freezed,
    Object? valueTimeElement = freezed,
    Object? valueString = freezed,
    Object? valueStringElement = freezed,
    Object? valueUri = freezed,
    Object? valueUriElement = freezed,
    Object? valueAttachment = freezed,
    Object? valueCoding = freezed,
    Object? valueQuantity = freezed,
    Object? valueReference = freezed,
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
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDecimal: freezed == valueDecimal
          ? _value.valueDecimal
          : valueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueDecimalElement: freezed == valueDecimalElement
          ? _value.valueDecimalElement
          : valueDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueInteger: freezed == valueInteger
          ? _value.valueInteger
          : valueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      valueIntegerElement: freezed == valueIntegerElement
          ? _value.valueIntegerElement
          : valueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      valueDateElement: freezed == valueDateElement
          ? _value.valueDateElement
          : valueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDateTime: freezed == valueDateTime
          ? _value.valueDateTime
          : valueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      valueDateTimeElement: freezed == valueDateTimeElement
          ? _value.valueDateTimeElement
          : valueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueTime: freezed == valueTime
          ? _value.valueTime
          : valueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      valueTimeElement: freezed == valueTimeElement
          ? _value.valueTimeElement
          : valueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueString: freezed == valueString
          ? _value.valueString
          : valueString // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStringElement: freezed == valueStringElement
          ? _value.valueStringElement
          : valueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUri: freezed == valueUri
          ? _value.valueUri
          : valueUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      valueUriElement: freezed == valueUriElement
          ? _value.valueUriElement
          : valueUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueAttachment: freezed == valueAttachment
          ? _value.valueAttachment
          : valueAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      valueCoding: freezed == valueCoding
          ? _value.valueCoding
          : valueCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueReference: freezed == valueReference
          ? _value.valueReference
          : valueReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get valueAttachment {
    if (_value.valueAttachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.valueAttachment!, (value) {
      return _then(_value.copyWith(valueAttachment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodingCopyWith<$Res>? get valueCoding {
    if (_value.valueCoding == null) {
      return null;
    }

    return $CodingCopyWith<$Res>(_value.valueCoding!, (value) {
      return _then(_value.copyWith(valueCoding: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get valueQuantity {
    if (_value.valueQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.valueQuantity!, (value) {
      return _then(_value.copyWith(valueQuantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get valueReference {
    if (_value.valueReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.valueReference!, (value) {
      return _then(_value.copyWith(valueReference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionnaireInitialImplCopyWith<$Res>
    implements $QuestionnaireInitialCopyWith<$Res> {
  factory _$$QuestionnaireInitialImplCopyWith(_$QuestionnaireInitialImpl value,
          $Res Function(_$QuestionnaireInitialImpl) then) =
      __$$QuestionnaireInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
      FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,
      FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
      FhirDate? valueDate,
      @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
      FhirDateTime? valueDateTime,
      @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
      FhirTime? valueTime,
      @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
      String? valueString,
      @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
      FhirUri? valueUri,
      @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,
      Attachment? valueAttachment,
      Coding? valueCoding,
      Quantity? valueQuantity,
      Reference? valueReference});

  @override
  $AttachmentCopyWith<$Res>? get valueAttachment;
  @override
  $CodingCopyWith<$Res>? get valueCoding;
  @override
  $QuantityCopyWith<$Res>? get valueQuantity;
  @override
  $ReferenceCopyWith<$Res>? get valueReference;
}

/// @nodoc
class __$$QuestionnaireInitialImplCopyWithImpl<$Res>
    extends _$QuestionnaireInitialCopyWithImpl<$Res, _$QuestionnaireInitialImpl>
    implements _$$QuestionnaireInitialImplCopyWith<$Res> {
  __$$QuestionnaireInitialImplCopyWithImpl(_$QuestionnaireInitialImpl _value,
      $Res Function(_$QuestionnaireInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueDecimal = freezed,
    Object? valueDecimalElement = freezed,
    Object? valueInteger = freezed,
    Object? valueIntegerElement = freezed,
    Object? valueDate = freezed,
    Object? valueDateElement = freezed,
    Object? valueDateTime = freezed,
    Object? valueDateTimeElement = freezed,
    Object? valueTime = freezed,
    Object? valueTimeElement = freezed,
    Object? valueString = freezed,
    Object? valueStringElement = freezed,
    Object? valueUri = freezed,
    Object? valueUriElement = freezed,
    Object? valueAttachment = freezed,
    Object? valueCoding = freezed,
    Object? valueQuantity = freezed,
    Object? valueReference = freezed,
  }) {
    return _then(_$QuestionnaireInitialImpl(
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
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDecimal: freezed == valueDecimal
          ? _value.valueDecimal
          : valueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueDecimalElement: freezed == valueDecimalElement
          ? _value.valueDecimalElement
          : valueDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueInteger: freezed == valueInteger
          ? _value.valueInteger
          : valueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      valueIntegerElement: freezed == valueIntegerElement
          ? _value.valueIntegerElement
          : valueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      valueDateElement: freezed == valueDateElement
          ? _value.valueDateElement
          : valueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDateTime: freezed == valueDateTime
          ? _value.valueDateTime
          : valueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      valueDateTimeElement: freezed == valueDateTimeElement
          ? _value.valueDateTimeElement
          : valueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueTime: freezed == valueTime
          ? _value.valueTime
          : valueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      valueTimeElement: freezed == valueTimeElement
          ? _value.valueTimeElement
          : valueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueString: freezed == valueString
          ? _value.valueString
          : valueString // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStringElement: freezed == valueStringElement
          ? _value.valueStringElement
          : valueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueUri: freezed == valueUri
          ? _value.valueUri
          : valueUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      valueUriElement: freezed == valueUriElement
          ? _value.valueUriElement
          : valueUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueAttachment: freezed == valueAttachment
          ? _value.valueAttachment
          : valueAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      valueCoding: freezed == valueCoding
          ? _value.valueCoding
          : valueCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueReference: freezed == valueReference
          ? _value.valueReference
          : valueReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionnaireInitialImpl extends _QuestionnaireInitial {
  const _$QuestionnaireInitialImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.valueBoolean,
      @JsonKey(name: '_valueBoolean') this.valueBooleanElement,
      this.valueDecimal,
      @JsonKey(name: '_valueDecimal') this.valueDecimalElement,
      this.valueInteger,
      @JsonKey(name: '_valueInteger') this.valueIntegerElement,
      this.valueDate,
      @JsonKey(name: '_valueDate') this.valueDateElement,
      this.valueDateTime,
      @JsonKey(name: '_valueDateTime') this.valueDateTimeElement,
      this.valueTime,
      @JsonKey(name: '_valueTime') this.valueTimeElement,
      this.valueString,
      @JsonKey(name: '_valueString') this.valueStringElement,
      this.valueUri,
      @JsonKey(name: '_valueUri') this.valueUriElement,
      this.valueAttachment,
      this.valueCoding,
      this.valueQuantity,
      this.valueReference})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$QuestionnaireInitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionnaireInitialImplFromJson(json);

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

  /// [valueBoolean] The actual value to for an initial answer.
  @override
  final FhirBoolean? valueBoolean;

  /// [valueBooleanElement] Extensions for valueBoolean
  @override
  @JsonKey(name: '_valueBoolean')
  final PrimitiveElement? valueBooleanElement;

  /// [valueDecimal] The actual value to for an initial answer.
  @override
  final FhirDecimal? valueDecimal;

  /// [valueDecimalElement] Extensions for valueDecimal
  @override
  @JsonKey(name: '_valueDecimal')
  final PrimitiveElement? valueDecimalElement;

  /// [valueInteger] The actual value to for an initial answer.
  @override
  final FhirInteger? valueInteger;

  /// [valueIntegerElement] Extensions for valueInteger
  @override
  @JsonKey(name: '_valueInteger')
  final PrimitiveElement? valueIntegerElement;

  /// [valueDate] The actual value to for an initial answer.
  @override
  final FhirDate? valueDate;

  /// [valueDateElement] Extensions for valueDate
  @override
  @JsonKey(name: '_valueDate')
  final PrimitiveElement? valueDateElement;

  /// [valueDateTime] The actual value to for an initial answer.
  @override
  final FhirDateTime? valueDateTime;

  /// [valueDateTimeElement] Extensions for valueDateTime
  @override
  @JsonKey(name: '_valueDateTime')
  final PrimitiveElement? valueDateTimeElement;

  /// [valueTime] The actual value to for an initial answer.
  @override
  final FhirTime? valueTime;

  /// [valueTimeElement] Extensions for valueTime
  @override
  @JsonKey(name: '_valueTime')
  final PrimitiveElement? valueTimeElement;

  /// [valueString] The actual value to for an initial answer.
  @override
  final String? valueString;

  /// [valueStringElement] Extensions for valueString
  @override
  @JsonKey(name: '_valueString')
  final PrimitiveElement? valueStringElement;

  /// [valueUri] The actual value to for an initial answer.
  @override
  final FhirUri? valueUri;

  /// [valueUriElement] Extensions for valueUri
  @override
  @JsonKey(name: '_valueUri')
  final PrimitiveElement? valueUriElement;

  /// [valueAttachment] The actual value to for an initial answer.
  @override
  final Attachment? valueAttachment;

  /// [valueCoding] The actual value to for an initial answer.
  @override
  final Coding? valueCoding;

  /// [valueQuantity] The actual value to for an initial answer.
  @override
  final Quantity? valueQuantity;

  /// [valueReference] The actual value to for an initial answer.
  @override
  final Reference? valueReference;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireInitialImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.valueBoolean, valueBoolean) ||
                other.valueBoolean == valueBoolean) &&
            (identical(other.valueBooleanElement, valueBooleanElement) ||
                other.valueBooleanElement == valueBooleanElement) &&
            (identical(other.valueDecimal, valueDecimal) ||
                other.valueDecimal == valueDecimal) &&
            (identical(other.valueDecimalElement, valueDecimalElement) ||
                other.valueDecimalElement == valueDecimalElement) &&
            (identical(other.valueInteger, valueInteger) ||
                other.valueInteger == valueInteger) &&
            (identical(other.valueIntegerElement, valueIntegerElement) ||
                other.valueIntegerElement == valueIntegerElement) &&
            (identical(other.valueDate, valueDate) ||
                other.valueDate == valueDate) &&
            (identical(other.valueDateElement, valueDateElement) ||
                other.valueDateElement == valueDateElement) &&
            (identical(other.valueDateTime, valueDateTime) ||
                other.valueDateTime == valueDateTime) &&
            (identical(other.valueDateTimeElement, valueDateTimeElement) ||
                other.valueDateTimeElement == valueDateTimeElement) &&
            (identical(other.valueTime, valueTime) ||
                other.valueTime == valueTime) &&
            (identical(other.valueTimeElement, valueTimeElement) ||
                other.valueTimeElement == valueTimeElement) &&
            (identical(other.valueString, valueString) ||
                other.valueString == valueString) &&
            (identical(other.valueStringElement, valueStringElement) ||
                other.valueStringElement == valueStringElement) &&
            (identical(other.valueUri, valueUri) ||
                other.valueUri == valueUri) &&
            (identical(other.valueUriElement, valueUriElement) ||
                other.valueUriElement == valueUriElement) &&
            (identical(other.valueAttachment, valueAttachment) ||
                other.valueAttachment == valueAttachment) &&
            (identical(other.valueCoding, valueCoding) ||
                other.valueCoding == valueCoding) &&
            (identical(other.valueQuantity, valueQuantity) ||
                other.valueQuantity == valueQuantity) &&
            (identical(other.valueReference, valueReference) ||
                other.valueReference == valueReference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        valueBoolean,
        valueBooleanElement,
        valueDecimal,
        valueDecimalElement,
        valueInteger,
        valueIntegerElement,
        valueDate,
        valueDateElement,
        valueDateTime,
        valueDateTimeElement,
        valueTime,
        valueTimeElement,
        valueString,
        valueStringElement,
        valueUri,
        valueUriElement,
        valueAttachment,
        valueCoding,
        valueQuantity,
        valueReference
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireInitialImplCopyWith<_$QuestionnaireInitialImpl>
      get copyWith =>
          __$$QuestionnaireInitialImplCopyWithImpl<_$QuestionnaireInitialImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionnaireInitialImplToJson(
      this,
    );
  }
}

abstract class _QuestionnaireInitial extends QuestionnaireInitial {
  const factory _QuestionnaireInitial(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean')
      final PrimitiveElement? valueBooleanElement,
      final FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal')
      final PrimitiveElement? valueDecimalElement,
      final FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger')
      final PrimitiveElement? valueIntegerElement,
      final FhirDate? valueDate,
      @JsonKey(name: '_valueDate') final PrimitiveElement? valueDateElement,
      final FhirDateTime? valueDateTime,
      @JsonKey(name: '_valueDateTime')
      final PrimitiveElement? valueDateTimeElement,
      final FhirTime? valueTime,
      @JsonKey(name: '_valueTime') final PrimitiveElement? valueTimeElement,
      final String? valueString,
      @JsonKey(name: '_valueString') final PrimitiveElement? valueStringElement,
      final FhirUri? valueUri,
      @JsonKey(name: '_valueUri') final PrimitiveElement? valueUriElement,
      final Attachment? valueAttachment,
      final Coding? valueCoding,
      final Quantity? valueQuantity,
      final Reference? valueReference}) = _$QuestionnaireInitialImpl;
  const _QuestionnaireInitial._() : super._();

  factory _QuestionnaireInitial.fromJson(Map<String, dynamic> json) =
      _$QuestionnaireInitialImpl.fromJson;

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

  /// [valueBoolean] The actual value to for an initial answer.
  FhirBoolean? get valueBoolean;
  @override

  /// [valueBooleanElement] Extensions for valueBoolean
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement;
  @override

  /// [valueDecimal] The actual value to for an initial answer.
  FhirDecimal? get valueDecimal;
  @override

  /// [valueDecimalElement] Extensions for valueDecimal
  @JsonKey(name: '_valueDecimal')
  PrimitiveElement? get valueDecimalElement;
  @override

  /// [valueInteger] The actual value to for an initial answer.
  FhirInteger? get valueInteger;
  @override

  /// [valueIntegerElement] Extensions for valueInteger
  @JsonKey(name: '_valueInteger')
  PrimitiveElement? get valueIntegerElement;
  @override

  /// [valueDate] The actual value to for an initial answer.
  FhirDate? get valueDate;
  @override

  /// [valueDateElement] Extensions for valueDate
  @JsonKey(name: '_valueDate')
  PrimitiveElement? get valueDateElement;
  @override

  /// [valueDateTime] The actual value to for an initial answer.
  FhirDateTime? get valueDateTime;
  @override

  /// [valueDateTimeElement] Extensions for valueDateTime
  @JsonKey(name: '_valueDateTime')
  PrimitiveElement? get valueDateTimeElement;
  @override

  /// [valueTime] The actual value to for an initial answer.
  FhirTime? get valueTime;
  @override

  /// [valueTimeElement] Extensions for valueTime
  @JsonKey(name: '_valueTime')
  PrimitiveElement? get valueTimeElement;
  @override

  /// [valueString] The actual value to for an initial answer.
  String? get valueString;
  @override

  /// [valueStringElement] Extensions for valueString
  @JsonKey(name: '_valueString')
  PrimitiveElement? get valueStringElement;
  @override

  /// [valueUri] The actual value to for an initial answer.
  FhirUri? get valueUri;
  @override

  /// [valueUriElement] Extensions for valueUri
  @JsonKey(name: '_valueUri')
  PrimitiveElement? get valueUriElement;
  @override

  /// [valueAttachment] The actual value to for an initial answer.
  Attachment? get valueAttachment;
  @override

  /// [valueCoding] The actual value to for an initial answer.
  Coding? get valueCoding;
  @override

  /// [valueQuantity] The actual value to for an initial answer.
  Quantity? get valueQuantity;
  @override

  /// [valueReference] The actual value to for an initial answer.
  Reference? get valueReference;
  @override
  @JsonKey(ignore: true)
  _$$QuestionnaireInitialImplCopyWith<_$QuestionnaireInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
