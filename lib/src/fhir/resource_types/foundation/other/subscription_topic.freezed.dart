// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubscriptionTopic _$SubscriptionTopicFromJson(Map<String, dynamic> json) {
  return _SubscriptionTopic.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionTopic {
  /// [resourceType] This is a SubscriptionTopic resource;
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

  /// [url] An absolute URI that is used to identify this subscription topic when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this subscription topic is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the subscription topic is stored on different servers.;
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [urlElement] (_url): Extensions for url;
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [identifier] Business identifiers assigned to this subscription topic by the performer and/or other systems.  These identifiers remain constant as the resource is updated and propagates from server to server.;
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [version] The identifier that is used to identify this version of the subscription topic when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the Topic author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions are orderable.;
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] (_version): Extensions for version;
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  /// [title] A short, descriptive, user-friendly title for the SubscriptionTopic, for example, "admission".;
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] (_title): Extensions for title;
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;
  List<FhirCanonical>? get derivedFrom => throw _privateConstructorUsedError;

  /// [status] The current state of the SubscriptionTopic.;
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] (_status): Extensions for status;
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [experimental] A flag to indicate that this TopSubscriptionTopicic is authored for testing purposes (or education/evaluation/marketing), and is not intended to be used for genuine usage.;
  FhirBoolean? get experimental => throw _privateConstructorUsedError;

  /// [experimentalElement] (_experimental): Extensions for experimental;
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement =>
      throw _privateConstructorUsedError;

  /// [date] For draft definitions, indicates the date of initial creation.  For active definitions, represents the date of activation.  For withdrawn definitions, indicates the date of withdrawal.;
  FhirDateTime? get date => throw _privateConstructorUsedError;

  /// [dateElement] (_date): Extensions for date;
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [publisher] Helps establish the "authority/credibility" of the SubscriptionTopic.  May also allow for contact.;
  String? get publisher => throw _privateConstructorUsedError;

  /// [publisherElement] (_publisher): Extensions for publisher;
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement => throw _privateConstructorUsedError;

  /// [contact] Contact details to assist a user in finding and communicating with the publisher.;
  List<ContactDetail>? get contact => throw _privateConstructorUsedError;

  /// [description] A free text natural language description of the Topic from the consumer's perspective.;
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] (_description): Extensions for description;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [useContext] The content was developed with a focus and intent of supporting the contexts that are listed. These terms may be used to assist with indexing and searching of code system definitions.;
  List<UsageContext>? get useContext => throw _privateConstructorUsedError;

  /// [jurisdiction] A jurisdiction in which the Topic is intended to be used.;
  List<CodeableConcept>? get jurisdiction => throw _privateConstructorUsedError;

  /// [purpose] Explains why this Topic is needed and why it has been designed as it has.;
  FhirMarkdown? get purpose => throw _privateConstructorUsedError;

  /// [purposeElement] (_purpose): Extensions for purpose;
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement => throw _privateConstructorUsedError;

  /// [copyright] A copyright statement relating to the SubscriptionTopic and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the SubscriptionTopic.;
  FhirMarkdown? get copyright => throw _privateConstructorUsedError;

  /// [copyrightElement] (_copyright): Extensions for copyright;
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement => throw _privateConstructorUsedError;
  FhirDate? get approvalDate => throw _privateConstructorUsedError;
  @JsonKey(name: '_approvalDate')
  PrimitiveElement? get approvalDateElement =>
      throw _privateConstructorUsedError;
  FhirDate? get lastReviewDate => throw _privateConstructorUsedError;
  @JsonKey(name: '_lastReviewDate')
  PrimitiveElement? get lastReviewDateElement =>
      throw _privateConstructorUsedError;
  Period? get effectivePeriod => throw _privateConstructorUsedError;
  List<SubscriptionTopicResourceTrigger>? get resourceTrigger =>
      throw _privateConstructorUsedError;
  List<SubscriptionTopicEventTrigger>? get eventTrigger =>
      throw _privateConstructorUsedError;
  List<SubscriptionTopicCanFilterBy>? get canFilterBy =>
      throw _privateConstructorUsedError;
  List<SubscriptionTopicNotificationShape>? get notificationShape =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionTopicCopyWith<SubscriptionTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionTopicCopyWith<$Res> {
  factory $SubscriptionTopicCopyWith(
          SubscriptionTopic value, $Res Function(SubscriptionTopic) then) =
      _$SubscriptionTopicCopyWithImpl<$Res, SubscriptionTopic>;
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
      FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      List<Identifier>? identifier,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      List<FhirCanonical>? derivedFrom,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      FhirBoolean? experimental,
      @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
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
      List<SubscriptionTopicResourceTrigger>? resourceTrigger,
      List<SubscriptionTopicEventTrigger>? eventTrigger,
      List<SubscriptionTopicCanFilterBy>? canFilterBy,
      List<SubscriptionTopicNotificationShape>? notificationShape});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $PeriodCopyWith<$Res>? get effectivePeriod;
}

/// @nodoc
class _$SubscriptionTopicCopyWithImpl<$Res, $Val extends SubscriptionTopic>
    implements $SubscriptionTopicCopyWith<$Res> {
  _$SubscriptionTopicCopyWithImpl(this._value, this._then);

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
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? derivedFrom = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? experimental = freezed,
    Object? experimentalElement = freezed,
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
    Object? resourceTrigger = freezed,
    Object? eventTrigger = freezed,
    Object? canFilterBy = freezed,
    Object? notificationShape = freezed,
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
      resourceTrigger: freezed == resourceTrigger
          ? _value.resourceTrigger
          : resourceTrigger // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionTopicResourceTrigger>?,
      eventTrigger: freezed == eventTrigger
          ? _value.eventTrigger
          : eventTrigger // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionTopicEventTrigger>?,
      canFilterBy: freezed == canFilterBy
          ? _value.canFilterBy
          : canFilterBy // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionTopicCanFilterBy>?,
      notificationShape: freezed == notificationShape
          ? _value.notificationShape
          : notificationShape // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionTopicNotificationShape>?,
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
abstract class _$$SubscriptionTopicImplCopyWith<$Res>
    implements $SubscriptionTopicCopyWith<$Res> {
  factory _$$SubscriptionTopicImplCopyWith(_$SubscriptionTopicImpl value,
          $Res Function(_$SubscriptionTopicImpl) then) =
      __$$SubscriptionTopicImplCopyWithImpl<$Res>;
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
      FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      List<Identifier>? identifier,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      List<FhirCanonical>? derivedFrom,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      FhirBoolean? experimental,
      @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
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
      List<SubscriptionTopicResourceTrigger>? resourceTrigger,
      List<SubscriptionTopicEventTrigger>? eventTrigger,
      List<SubscriptionTopicCanFilterBy>? canFilterBy,
      List<SubscriptionTopicNotificationShape>? notificationShape});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $PeriodCopyWith<$Res>? get effectivePeriod;
}

/// @nodoc
class __$$SubscriptionTopicImplCopyWithImpl<$Res>
    extends _$SubscriptionTopicCopyWithImpl<$Res, _$SubscriptionTopicImpl>
    implements _$$SubscriptionTopicImplCopyWith<$Res> {
  __$$SubscriptionTopicImplCopyWithImpl(_$SubscriptionTopicImpl _value,
      $Res Function(_$SubscriptionTopicImpl) _then)
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
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? derivedFrom = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? experimental = freezed,
    Object? experimentalElement = freezed,
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
    Object? resourceTrigger = freezed,
    Object? eventTrigger = freezed,
    Object? canFilterBy = freezed,
    Object? notificationShape = freezed,
  }) {
    return _then(_$SubscriptionTopicImpl(
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
      resourceTrigger: freezed == resourceTrigger
          ? _value._resourceTrigger
          : resourceTrigger // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionTopicResourceTrigger>?,
      eventTrigger: freezed == eventTrigger
          ? _value._eventTrigger
          : eventTrigger // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionTopicEventTrigger>?,
      canFilterBy: freezed == canFilterBy
          ? _value._canFilterBy
          : canFilterBy // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionTopicCanFilterBy>?,
      notificationShape: freezed == notificationShape
          ? _value._notificationShape
          : notificationShape // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionTopicNotificationShape>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionTopicImpl extends _SubscriptionTopic {
  const _$SubscriptionTopicImpl(
      {this.resourceType = R4ResourceType.SubscriptionTopic,
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
      this.title,
      @JsonKey(name: '_title') this.titleElement,
      final List<FhirCanonical>? derivedFrom,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.experimental,
      @JsonKey(name: '_experimental') this.experimentalElement,
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
      final List<SubscriptionTopicResourceTrigger>? resourceTrigger,
      final List<SubscriptionTopicEventTrigger>? eventTrigger,
      final List<SubscriptionTopicCanFilterBy>? canFilterBy,
      final List<SubscriptionTopicNotificationShape>? notificationShape})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _derivedFrom = derivedFrom,
        _contact = contact,
        _useContext = useContext,
        _jurisdiction = jurisdiction,
        _resourceTrigger = resourceTrigger,
        _eventTrigger = eventTrigger,
        _canFilterBy = canFilterBy,
        _notificationShape = notificationShape,
        super._();

  factory _$SubscriptionTopicImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionTopicImplFromJson(json);

  /// [resourceType] This is a SubscriptionTopic resource;
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

  /// [url] An absolute URI that is used to identify this subscription topic when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this subscription topic is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the subscription topic is stored on different servers.;
  @override
  final FhirUri? url;

  /// [urlElement] (_url): Extensions for url;
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [identifier] Business identifiers assigned to this subscription topic by the performer and/or other systems.  These identifiers remain constant as the resource is updated and propagates from server to server.;
  final List<Identifier>? _identifier;

  /// [identifier] Business identifiers assigned to this subscription topic by the performer and/or other systems.  These identifiers remain constant as the resource is updated and propagates from server to server.;
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [version] The identifier that is used to identify this version of the subscription topic when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the Topic author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions are orderable.;
  @override
  final String? version;

  /// [versionElement] (_version): Extensions for version;
  @override
  @JsonKey(name: '_version')
  final PrimitiveElement? versionElement;

  /// [title] A short, descriptive, user-friendly title for the SubscriptionTopic, for example, "admission".;
  @override
  final String? title;

  /// [titleElement] (_title): Extensions for title;
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;
  final List<FhirCanonical>? _derivedFrom;
  @override
  List<FhirCanonical>? get derivedFrom {
    final value = _derivedFrom;
    if (value == null) return null;
    if (_derivedFrom is EqualUnmodifiableListView) return _derivedFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The current state of the SubscriptionTopic.;
  @override
  final FhirCode? status;

  /// [statusElement] (_status): Extensions for status;
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [experimental] A flag to indicate that this TopSubscriptionTopicic is authored for testing purposes (or education/evaluation/marketing), and is not intended to be used for genuine usage.;
  @override
  final FhirBoolean? experimental;

  /// [experimentalElement] (_experimental): Extensions for experimental;
  @override
  @JsonKey(name: '_experimental')
  final PrimitiveElement? experimentalElement;

  /// [date] For draft definitions, indicates the date of initial creation.  For active definitions, represents the date of activation.  For withdrawn definitions, indicates the date of withdrawal.;
  @override
  final FhirDateTime? date;

  /// [dateElement] (_date): Extensions for date;
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [publisher] Helps establish the "authority/credibility" of the SubscriptionTopic.  May also allow for contact.;
  @override
  final String? publisher;

  /// [publisherElement] (_publisher): Extensions for publisher;
  @override
  @JsonKey(name: '_publisher')
  final PrimitiveElement? publisherElement;

  /// [contact] Contact details to assist a user in finding and communicating with the publisher.;
  final List<ContactDetail>? _contact;

  /// [contact] Contact details to assist a user in finding and communicating with the publisher.;
  @override
  List<ContactDetail>? get contact {
    final value = _contact;
    if (value == null) return null;
    if (_contact is EqualUnmodifiableListView) return _contact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [description] A free text natural language description of the Topic from the consumer's perspective.;
  @override
  final FhirMarkdown? description;

  /// [descriptionElement] (_description): Extensions for description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [useContext] The content was developed with a focus and intent of supporting the contexts that are listed. These terms may be used to assist with indexing and searching of code system definitions.;
  final List<UsageContext>? _useContext;

  /// [useContext] The content was developed with a focus and intent of supporting the contexts that are listed. These terms may be used to assist with indexing and searching of code system definitions.;
  @override
  List<UsageContext>? get useContext {
    final value = _useContext;
    if (value == null) return null;
    if (_useContext is EqualUnmodifiableListView) return _useContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [jurisdiction] A jurisdiction in which the Topic is intended to be used.;
  final List<CodeableConcept>? _jurisdiction;

  /// [jurisdiction] A jurisdiction in which the Topic is intended to be used.;
  @override
  List<CodeableConcept>? get jurisdiction {
    final value = _jurisdiction;
    if (value == null) return null;
    if (_jurisdiction is EqualUnmodifiableListView) return _jurisdiction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [purpose] Explains why this Topic is needed and why it has been designed as it has.;
  @override
  final FhirMarkdown? purpose;

  /// [purposeElement] (_purpose): Extensions for purpose;
  @override
  @JsonKey(name: '_purpose')
  final PrimitiveElement? purposeElement;

  /// [copyright] A copyright statement relating to the SubscriptionTopic and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the SubscriptionTopic.;
  @override
  final FhirMarkdown? copyright;

  /// [copyrightElement] (_copyright): Extensions for copyright;
  @override
  @JsonKey(name: '_copyright')
  final PrimitiveElement? copyrightElement;
  @override
  final FhirDate? approvalDate;
  @override
  @JsonKey(name: '_approvalDate')
  final PrimitiveElement? approvalDateElement;
  @override
  final FhirDate? lastReviewDate;
  @override
  @JsonKey(name: '_lastReviewDate')
  final PrimitiveElement? lastReviewDateElement;
  @override
  final Period? effectivePeriod;
  final List<SubscriptionTopicResourceTrigger>? _resourceTrigger;
  @override
  List<SubscriptionTopicResourceTrigger>? get resourceTrigger {
    final value = _resourceTrigger;
    if (value == null) return null;
    if (_resourceTrigger is EqualUnmodifiableListView) return _resourceTrigger;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SubscriptionTopicEventTrigger>? _eventTrigger;
  @override
  List<SubscriptionTopicEventTrigger>? get eventTrigger {
    final value = _eventTrigger;
    if (value == null) return null;
    if (_eventTrigger is EqualUnmodifiableListView) return _eventTrigger;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SubscriptionTopicCanFilterBy>? _canFilterBy;
  @override
  List<SubscriptionTopicCanFilterBy>? get canFilterBy {
    final value = _canFilterBy;
    if (value == null) return null;
    if (_canFilterBy is EqualUnmodifiableListView) return _canFilterBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SubscriptionTopicNotificationShape>? _notificationShape;
  @override
  List<SubscriptionTopicNotificationShape>? get notificationShape {
    final value = _notificationShape;
    if (value == null) return null;
    if (_notificationShape is EqualUnmodifiableListView)
      return _notificationShape;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionTopicImpl &&
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
            const DeepCollectionEquality()
                .equals(other._resourceTrigger, _resourceTrigger) &&
            const DeepCollectionEquality()
                .equals(other._eventTrigger, _eventTrigger) &&
            const DeepCollectionEquality()
                .equals(other._canFilterBy, _canFilterBy) &&
            const DeepCollectionEquality()
                .equals(other._notificationShape, _notificationShape));
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
        title,
        titleElement,
        const DeepCollectionEquality().hash(_derivedFrom),
        status,
        statusElement,
        experimental,
        experimentalElement,
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
        const DeepCollectionEquality().hash(_resourceTrigger),
        const DeepCollectionEquality().hash(_eventTrigger),
        const DeepCollectionEquality().hash(_canFilterBy),
        const DeepCollectionEquality().hash(_notificationShape)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionTopicImplCopyWith<_$SubscriptionTopicImpl> get copyWith =>
      __$$SubscriptionTopicImplCopyWithImpl<_$SubscriptionTopicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionTopicImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionTopic extends SubscriptionTopic {
  const factory _SubscriptionTopic(
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
      final FhirUri? url,
      @JsonKey(name: '_url') final PrimitiveElement? urlElement,
      final List<Identifier>? identifier,
      final String? version,
      @JsonKey(name: '_version') final PrimitiveElement? versionElement,
      final String? title,
      @JsonKey(name: '_title') final PrimitiveElement? titleElement,
      final List<FhirCanonical>? derivedFrom,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final FhirBoolean? experimental,
      @JsonKey(name: '_experimental')
      final PrimitiveElement? experimentalElement,
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
      final List<SubscriptionTopicResourceTrigger>? resourceTrigger,
      final List<SubscriptionTopicEventTrigger>? eventTrigger,
      final List<SubscriptionTopicCanFilterBy>? canFilterBy,
      final List<SubscriptionTopicNotificationShape>?
          notificationShape}) = _$SubscriptionTopicImpl;
  const _SubscriptionTopic._() : super._();

  factory _SubscriptionTopic.fromJson(Map<String, dynamic> json) =
      _$SubscriptionTopicImpl.fromJson;

  @override

  /// [resourceType] This is a SubscriptionTopic resource;
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

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [url] An absolute URI that is used to identify this subscription topic when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this subscription topic is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the subscription topic is stored on different servers.;
  FhirUri? get url;
  @override

  /// [urlElement] (_url): Extensions for url;
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override

  /// [identifier] Business identifiers assigned to this subscription topic by the performer and/or other systems.  These identifiers remain constant as the resource is updated and propagates from server to server.;
  List<Identifier>? get identifier;
  @override

  /// [version] The identifier that is used to identify this version of the subscription topic when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the Topic author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions are orderable.;
  String? get version;
  @override

  /// [versionElement] (_version): Extensions for version;
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement;
  @override

  /// [title] A short, descriptive, user-friendly title for the SubscriptionTopic, for example, "admission".;
  String? get title;
  @override

  /// [titleElement] (_title): Extensions for title;
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;
  @override
  List<FhirCanonical>? get derivedFrom;
  @override

  /// [status] The current state of the SubscriptionTopic.;
  FhirCode? get status;
  @override

  /// [statusElement] (_status): Extensions for status;
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [experimental] A flag to indicate that this TopSubscriptionTopicic is authored for testing purposes (or education/evaluation/marketing), and is not intended to be used for genuine usage.;
  FhirBoolean? get experimental;
  @override

  /// [experimentalElement] (_experimental): Extensions for experimental;
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement;
  @override

  /// [date] For draft definitions, indicates the date of initial creation.  For active definitions, represents the date of activation.  For withdrawn definitions, indicates the date of withdrawal.;
  FhirDateTime? get date;
  @override

  /// [dateElement] (_date): Extensions for date;
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override

  /// [publisher] Helps establish the "authority/credibility" of the SubscriptionTopic.  May also allow for contact.;
  String? get publisher;
  @override

  /// [publisherElement] (_publisher): Extensions for publisher;
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement;
  @override

  /// [contact] Contact details to assist a user in finding and communicating with the publisher.;
  List<ContactDetail>? get contact;
  @override

  /// [description] A free text natural language description of the Topic from the consumer's perspective.;
  FhirMarkdown? get description;
  @override

  /// [descriptionElement] (_description): Extensions for description;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [useContext] The content was developed with a focus and intent of supporting the contexts that are listed. These terms may be used to assist with indexing and searching of code system definitions.;
  List<UsageContext>? get useContext;
  @override

  /// [jurisdiction] A jurisdiction in which the Topic is intended to be used.;
  List<CodeableConcept>? get jurisdiction;
  @override

  /// [purpose] Explains why this Topic is needed and why it has been designed as it has.;
  FhirMarkdown? get purpose;
  @override

  /// [purposeElement] (_purpose): Extensions for purpose;
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement;
  @override

  /// [copyright] A copyright statement relating to the SubscriptionTopic and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the SubscriptionTopic.;
  FhirMarkdown? get copyright;
  @override

  /// [copyrightElement] (_copyright): Extensions for copyright;
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement;
  @override
  FhirDate? get approvalDate;
  @override
  @JsonKey(name: '_approvalDate')
  PrimitiveElement? get approvalDateElement;
  @override
  FhirDate? get lastReviewDate;
  @override
  @JsonKey(name: '_lastReviewDate')
  PrimitiveElement? get lastReviewDateElement;
  @override
  Period? get effectivePeriod;
  @override
  List<SubscriptionTopicResourceTrigger>? get resourceTrigger;
  @override
  List<SubscriptionTopicEventTrigger>? get eventTrigger;
  @override
  List<SubscriptionTopicCanFilterBy>? get canFilterBy;
  @override
  List<SubscriptionTopicNotificationShape>? get notificationShape;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionTopicImplCopyWith<_$SubscriptionTopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubscriptionTopicResourceTrigger _$SubscriptionTopicResourceTriggerFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionTopicResourceTrigger.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionTopicResourceTrigger {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  FhirMarkdown? get description => throw _privateConstructorUsedError;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;
  FhirUri? get resource => throw _privateConstructorUsedError;
  @JsonKey(name: '_resource')
  PrimitiveElement? get resourceElement => throw _privateConstructorUsedError;
  List<FhirCode>? get supportedInteraction =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_supportedInteraction')
  List<PrimitiveElement>? get supportedInteractionElement =>
      throw _privateConstructorUsedError;
  SubscriptionTopicQueryCriteria? get queryCriteria =>
      throw _privateConstructorUsedError;
  String? get fhirPathCriteria => throw _privateConstructorUsedError;
  @JsonKey(name: '_fhirPathCriteria')
  PrimitiveElement? get fhirPathCriteriaElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionTopicResourceTriggerCopyWith<SubscriptionTopicResourceTrigger>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionTopicResourceTriggerCopyWith<$Res> {
  factory $SubscriptionTopicResourceTriggerCopyWith(
          SubscriptionTopicResourceTrigger value,
          $Res Function(SubscriptionTopicResourceTrigger) then) =
      _$SubscriptionTopicResourceTriggerCopyWithImpl<$Res,
          SubscriptionTopicResourceTrigger>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirUri? resource,
      @JsonKey(name: '_resource') PrimitiveElement? resourceElement,
      List<FhirCode>? supportedInteraction,
      @JsonKey(name: '_supportedInteraction')
      List<PrimitiveElement>? supportedInteractionElement,
      SubscriptionTopicQueryCriteria? queryCriteria,
      String? fhirPathCriteria,
      @JsonKey(name: '_fhirPathCriteria')
      PrimitiveElement? fhirPathCriteriaElement});

  $SubscriptionTopicQueryCriteriaCopyWith<$Res>? get queryCriteria;
}

/// @nodoc
class _$SubscriptionTopicResourceTriggerCopyWithImpl<$Res,
        $Val extends SubscriptionTopicResourceTrigger>
    implements $SubscriptionTopicResourceTriggerCopyWith<$Res> {
  _$SubscriptionTopicResourceTriggerCopyWithImpl(this._value, this._then);

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
    Object? resource = freezed,
    Object? resourceElement = freezed,
    Object? supportedInteraction = freezed,
    Object? supportedInteractionElement = freezed,
    Object? queryCriteria = freezed,
    Object? fhirPathCriteria = freezed,
    Object? fhirPathCriteriaElement = freezed,
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
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      resourceElement: freezed == resourceElement
          ? _value.resourceElement
          : resourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      supportedInteraction: freezed == supportedInteraction
          ? _value.supportedInteraction
          : supportedInteraction // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      supportedInteractionElement: freezed == supportedInteractionElement
          ? _value.supportedInteractionElement
          : supportedInteractionElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      queryCriteria: freezed == queryCriteria
          ? _value.queryCriteria
          : queryCriteria // ignore: cast_nullable_to_non_nullable
              as SubscriptionTopicQueryCriteria?,
      fhirPathCriteria: freezed == fhirPathCriteria
          ? _value.fhirPathCriteria
          : fhirPathCriteria // ignore: cast_nullable_to_non_nullable
              as String?,
      fhirPathCriteriaElement: freezed == fhirPathCriteriaElement
          ? _value.fhirPathCriteriaElement
          : fhirPathCriteriaElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubscriptionTopicQueryCriteriaCopyWith<$Res>? get queryCriteria {
    if (_value.queryCriteria == null) {
      return null;
    }

    return $SubscriptionTopicQueryCriteriaCopyWith<$Res>(_value.queryCriteria!,
        (value) {
      return _then(_value.copyWith(queryCriteria: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionTopicResourceTriggerImplCopyWith<$Res>
    implements $SubscriptionTopicResourceTriggerCopyWith<$Res> {
  factory _$$SubscriptionTopicResourceTriggerImplCopyWith(
          _$SubscriptionTopicResourceTriggerImpl value,
          $Res Function(_$SubscriptionTopicResourceTriggerImpl) then) =
      __$$SubscriptionTopicResourceTriggerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirUri? resource,
      @JsonKey(name: '_resource') PrimitiveElement? resourceElement,
      List<FhirCode>? supportedInteraction,
      @JsonKey(name: '_supportedInteraction')
      List<PrimitiveElement>? supportedInteractionElement,
      SubscriptionTopicQueryCriteria? queryCriteria,
      String? fhirPathCriteria,
      @JsonKey(name: '_fhirPathCriteria')
      PrimitiveElement? fhirPathCriteriaElement});

  @override
  $SubscriptionTopicQueryCriteriaCopyWith<$Res>? get queryCriteria;
}

/// @nodoc
class __$$SubscriptionTopicResourceTriggerImplCopyWithImpl<$Res>
    extends _$SubscriptionTopicResourceTriggerCopyWithImpl<$Res,
        _$SubscriptionTopicResourceTriggerImpl>
    implements _$$SubscriptionTopicResourceTriggerImplCopyWith<$Res> {
  __$$SubscriptionTopicResourceTriggerImplCopyWithImpl(
      _$SubscriptionTopicResourceTriggerImpl _value,
      $Res Function(_$SubscriptionTopicResourceTriggerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? resource = freezed,
    Object? resourceElement = freezed,
    Object? supportedInteraction = freezed,
    Object? supportedInteractionElement = freezed,
    Object? queryCriteria = freezed,
    Object? fhirPathCriteria = freezed,
    Object? fhirPathCriteriaElement = freezed,
  }) {
    return _then(_$SubscriptionTopicResourceTriggerImpl(
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
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      resourceElement: freezed == resourceElement
          ? _value.resourceElement
          : resourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      supportedInteraction: freezed == supportedInteraction
          ? _value._supportedInteraction
          : supportedInteraction // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      supportedInteractionElement: freezed == supportedInteractionElement
          ? _value._supportedInteractionElement
          : supportedInteractionElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      queryCriteria: freezed == queryCriteria
          ? _value.queryCriteria
          : queryCriteria // ignore: cast_nullable_to_non_nullable
              as SubscriptionTopicQueryCriteria?,
      fhirPathCriteria: freezed == fhirPathCriteria
          ? _value.fhirPathCriteria
          : fhirPathCriteria // ignore: cast_nullable_to_non_nullable
              as String?,
      fhirPathCriteriaElement: freezed == fhirPathCriteriaElement
          ? _value.fhirPathCriteriaElement
          : fhirPathCriteriaElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionTopicResourceTriggerImpl
    extends _SubscriptionTopicResourceTrigger {
  const _$SubscriptionTopicResourceTriggerImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.resource,
      @JsonKey(name: '_resource') this.resourceElement,
      final List<FhirCode>? supportedInteraction,
      @JsonKey(name: '_supportedInteraction')
      final List<PrimitiveElement>? supportedInteractionElement,
      this.queryCriteria,
      this.fhirPathCriteria,
      @JsonKey(name: '_fhirPathCriteria') this.fhirPathCriteriaElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _supportedInteraction = supportedInteraction,
        _supportedInteractionElement = supportedInteractionElement,
        super._();

  factory _$SubscriptionTopicResourceTriggerImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionTopicResourceTriggerImplFromJson(json);

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
  final FhirMarkdown? description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;
  @override
  final FhirUri? resource;
  @override
  @JsonKey(name: '_resource')
  final PrimitiveElement? resourceElement;
  final List<FhirCode>? _supportedInteraction;
  @override
  List<FhirCode>? get supportedInteraction {
    final value = _supportedInteraction;
    if (value == null) return null;
    if (_supportedInteraction is EqualUnmodifiableListView)
      return _supportedInteraction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PrimitiveElement>? _supportedInteractionElement;
  @override
  @JsonKey(name: '_supportedInteraction')
  List<PrimitiveElement>? get supportedInteractionElement {
    final value = _supportedInteractionElement;
    if (value == null) return null;
    if (_supportedInteractionElement is EqualUnmodifiableListView)
      return _supportedInteractionElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SubscriptionTopicQueryCriteria? queryCriteria;
  @override
  final String? fhirPathCriteria;
  @override
  @JsonKey(name: '_fhirPathCriteria')
  final PrimitiveElement? fhirPathCriteriaElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionTopicResourceTriggerImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            (identical(other.resourceElement, resourceElement) ||
                other.resourceElement == resourceElement) &&
            const DeepCollectionEquality()
                .equals(other._supportedInteraction, _supportedInteraction) &&
            const DeepCollectionEquality().equals(
                other._supportedInteractionElement,
                _supportedInteractionElement) &&
            (identical(other.queryCriteria, queryCriteria) ||
                other.queryCriteria == queryCriteria) &&
            (identical(other.fhirPathCriteria, fhirPathCriteria) ||
                other.fhirPathCriteria == fhirPathCriteria) &&
            (identical(
                    other.fhirPathCriteriaElement, fhirPathCriteriaElement) ||
                other.fhirPathCriteriaElement == fhirPathCriteriaElement));
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
      resource,
      resourceElement,
      const DeepCollectionEquality().hash(_supportedInteraction),
      const DeepCollectionEquality().hash(_supportedInteractionElement),
      queryCriteria,
      fhirPathCriteria,
      fhirPathCriteriaElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionTopicResourceTriggerImplCopyWith<
          _$SubscriptionTopicResourceTriggerImpl>
      get copyWith => __$$SubscriptionTopicResourceTriggerImplCopyWithImpl<
          _$SubscriptionTopicResourceTriggerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionTopicResourceTriggerImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionTopicResourceTrigger
    extends SubscriptionTopicResourceTrigger {
  const factory _SubscriptionTopicResourceTrigger(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final FhirUri? resource,
      @JsonKey(name: '_resource') final PrimitiveElement? resourceElement,
      final List<FhirCode>? supportedInteraction,
      @JsonKey(name: '_supportedInteraction')
      final List<PrimitiveElement>? supportedInteractionElement,
      final SubscriptionTopicQueryCriteria? queryCriteria,
      final String? fhirPathCriteria,
      @JsonKey(name: '_fhirPathCriteria')
      final PrimitiveElement?
          fhirPathCriteriaElement}) = _$SubscriptionTopicResourceTriggerImpl;
  const _SubscriptionTopicResourceTrigger._() : super._();

  factory _SubscriptionTopicResourceTrigger.fromJson(
          Map<String, dynamic> json) =
      _$SubscriptionTopicResourceTriggerImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  FhirMarkdown? get description;
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override
  FhirUri? get resource;
  @override
  @JsonKey(name: '_resource')
  PrimitiveElement? get resourceElement;
  @override
  List<FhirCode>? get supportedInteraction;
  @override
  @JsonKey(name: '_supportedInteraction')
  List<PrimitiveElement>? get supportedInteractionElement;
  @override
  SubscriptionTopicQueryCriteria? get queryCriteria;
  @override
  String? get fhirPathCriteria;
  @override
  @JsonKey(name: '_fhirPathCriteria')
  PrimitiveElement? get fhirPathCriteriaElement;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionTopicResourceTriggerImplCopyWith<
          _$SubscriptionTopicResourceTriggerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionTopicQueryCriteria _$SubscriptionTopicQueryCriteriaFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionTopicQueryCriteria.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionTopicQueryCriteria {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  @JsonKey(name: '_previous')
  PrimitiveElement? get previousElement => throw _privateConstructorUsedError;
  FhirCode? get resultForCreate => throw _privateConstructorUsedError;
  @JsonKey(name: '_resultForCreate')
  PrimitiveElement? get resultForCreateElement =>
      throw _privateConstructorUsedError;
  String? get current => throw _privateConstructorUsedError;
  @JsonKey(name: '_current')
  PrimitiveElement? get currentElement => throw _privateConstructorUsedError;
  FhirCode? get resultForDelete => throw _privateConstructorUsedError;
  @JsonKey(name: '_resultForDelete')
  PrimitiveElement? get resultForDeleteElement =>
      throw _privateConstructorUsedError;
  FhirBoolean? get requireBoth => throw _privateConstructorUsedError;
  @JsonKey(name: '_requireBoth')
  PrimitiveElement? get requireBothElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionTopicQueryCriteriaCopyWith<SubscriptionTopicQueryCriteria>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionTopicQueryCriteriaCopyWith<$Res> {
  factory $SubscriptionTopicQueryCriteriaCopyWith(
          SubscriptionTopicQueryCriteria value,
          $Res Function(SubscriptionTopicQueryCriteria) then) =
      _$SubscriptionTopicQueryCriteriaCopyWithImpl<$Res,
          SubscriptionTopicQueryCriteria>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? previous,
      @JsonKey(name: '_previous') PrimitiveElement? previousElement,
      FhirCode? resultForCreate,
      @JsonKey(name: '_resultForCreate')
      PrimitiveElement? resultForCreateElement,
      String? current,
      @JsonKey(name: '_current') PrimitiveElement? currentElement,
      FhirCode? resultForDelete,
      @JsonKey(name: '_resultForDelete')
      PrimitiveElement? resultForDeleteElement,
      FhirBoolean? requireBoth,
      @JsonKey(name: '_requireBoth') PrimitiveElement? requireBothElement});
}

/// @nodoc
class _$SubscriptionTopicQueryCriteriaCopyWithImpl<$Res,
        $Val extends SubscriptionTopicQueryCriteria>
    implements $SubscriptionTopicQueryCriteriaCopyWith<$Res> {
  _$SubscriptionTopicQueryCriteriaCopyWithImpl(this._value, this._then);

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
    Object? previous = freezed,
    Object? previousElement = freezed,
    Object? resultForCreate = freezed,
    Object? resultForCreateElement = freezed,
    Object? current = freezed,
    Object? currentElement = freezed,
    Object? resultForDelete = freezed,
    Object? resultForDeleteElement = freezed,
    Object? requireBoth = freezed,
    Object? requireBothElement = freezed,
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
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      previousElement: freezed == previousElement
          ? _value.previousElement
          : previousElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      resultForCreate: freezed == resultForCreate
          ? _value.resultForCreate
          : resultForCreate // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      resultForCreateElement: freezed == resultForCreateElement
          ? _value.resultForCreateElement
          : resultForCreateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String?,
      currentElement: freezed == currentElement
          ? _value.currentElement
          : currentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      resultForDelete: freezed == resultForDelete
          ? _value.resultForDelete
          : resultForDelete // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      resultForDeleteElement: freezed == resultForDeleteElement
          ? _value.resultForDeleteElement
          : resultForDeleteElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      requireBoth: freezed == requireBoth
          ? _value.requireBoth
          : requireBoth // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      requireBothElement: freezed == requireBothElement
          ? _value.requireBothElement
          : requireBothElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionTopicQueryCriteriaImplCopyWith<$Res>
    implements $SubscriptionTopicQueryCriteriaCopyWith<$Res> {
  factory _$$SubscriptionTopicQueryCriteriaImplCopyWith(
          _$SubscriptionTopicQueryCriteriaImpl value,
          $Res Function(_$SubscriptionTopicQueryCriteriaImpl) then) =
      __$$SubscriptionTopicQueryCriteriaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? previous,
      @JsonKey(name: '_previous') PrimitiveElement? previousElement,
      FhirCode? resultForCreate,
      @JsonKey(name: '_resultForCreate')
      PrimitiveElement? resultForCreateElement,
      String? current,
      @JsonKey(name: '_current') PrimitiveElement? currentElement,
      FhirCode? resultForDelete,
      @JsonKey(name: '_resultForDelete')
      PrimitiveElement? resultForDeleteElement,
      FhirBoolean? requireBoth,
      @JsonKey(name: '_requireBoth') PrimitiveElement? requireBothElement});
}

/// @nodoc
class __$$SubscriptionTopicQueryCriteriaImplCopyWithImpl<$Res>
    extends _$SubscriptionTopicQueryCriteriaCopyWithImpl<$Res,
        _$SubscriptionTopicQueryCriteriaImpl>
    implements _$$SubscriptionTopicQueryCriteriaImplCopyWith<$Res> {
  __$$SubscriptionTopicQueryCriteriaImplCopyWithImpl(
      _$SubscriptionTopicQueryCriteriaImpl _value,
      $Res Function(_$SubscriptionTopicQueryCriteriaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? previous = freezed,
    Object? previousElement = freezed,
    Object? resultForCreate = freezed,
    Object? resultForCreateElement = freezed,
    Object? current = freezed,
    Object? currentElement = freezed,
    Object? resultForDelete = freezed,
    Object? resultForDeleteElement = freezed,
    Object? requireBoth = freezed,
    Object? requireBothElement = freezed,
  }) {
    return _then(_$SubscriptionTopicQueryCriteriaImpl(
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
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      previousElement: freezed == previousElement
          ? _value.previousElement
          : previousElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      resultForCreate: freezed == resultForCreate
          ? _value.resultForCreate
          : resultForCreate // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      resultForCreateElement: freezed == resultForCreateElement
          ? _value.resultForCreateElement
          : resultForCreateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String?,
      currentElement: freezed == currentElement
          ? _value.currentElement
          : currentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      resultForDelete: freezed == resultForDelete
          ? _value.resultForDelete
          : resultForDelete // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      resultForDeleteElement: freezed == resultForDeleteElement
          ? _value.resultForDeleteElement
          : resultForDeleteElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      requireBoth: freezed == requireBoth
          ? _value.requireBoth
          : requireBoth // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      requireBothElement: freezed == requireBothElement
          ? _value.requireBothElement
          : requireBothElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionTopicQueryCriteriaImpl
    extends _SubscriptionTopicQueryCriteria {
  const _$SubscriptionTopicQueryCriteriaImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.previous,
      @JsonKey(name: '_previous') this.previousElement,
      this.resultForCreate,
      @JsonKey(name: '_resultForCreate') this.resultForCreateElement,
      this.current,
      @JsonKey(name: '_current') this.currentElement,
      this.resultForDelete,
      @JsonKey(name: '_resultForDelete') this.resultForDeleteElement,
      this.requireBoth,
      @JsonKey(name: '_requireBoth') this.requireBothElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$SubscriptionTopicQueryCriteriaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionTopicQueryCriteriaImplFromJson(json);

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
  final String? previous;
  @override
  @JsonKey(name: '_previous')
  final PrimitiveElement? previousElement;
  @override
  final FhirCode? resultForCreate;
  @override
  @JsonKey(name: '_resultForCreate')
  final PrimitiveElement? resultForCreateElement;
  @override
  final String? current;
  @override
  @JsonKey(name: '_current')
  final PrimitiveElement? currentElement;
  @override
  final FhirCode? resultForDelete;
  @override
  @JsonKey(name: '_resultForDelete')
  final PrimitiveElement? resultForDeleteElement;
  @override
  final FhirBoolean? requireBoth;
  @override
  @JsonKey(name: '_requireBoth')
  final PrimitiveElement? requireBothElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionTopicQueryCriteriaImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            (identical(other.previousElement, previousElement) ||
                other.previousElement == previousElement) &&
            (identical(other.resultForCreate, resultForCreate) ||
                other.resultForCreate == resultForCreate) &&
            (identical(other.resultForCreateElement, resultForCreateElement) ||
                other.resultForCreateElement == resultForCreateElement) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.currentElement, currentElement) ||
                other.currentElement == currentElement) &&
            (identical(other.resultForDelete, resultForDelete) ||
                other.resultForDelete == resultForDelete) &&
            (identical(other.resultForDeleteElement, resultForDeleteElement) ||
                other.resultForDeleteElement == resultForDeleteElement) &&
            (identical(other.requireBoth, requireBoth) ||
                other.requireBoth == requireBoth) &&
            (identical(other.requireBothElement, requireBothElement) ||
                other.requireBothElement == requireBothElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      previous,
      previousElement,
      resultForCreate,
      resultForCreateElement,
      current,
      currentElement,
      resultForDelete,
      resultForDeleteElement,
      requireBoth,
      requireBothElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionTopicQueryCriteriaImplCopyWith<
          _$SubscriptionTopicQueryCriteriaImpl>
      get copyWith => __$$SubscriptionTopicQueryCriteriaImplCopyWithImpl<
          _$SubscriptionTopicQueryCriteriaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionTopicQueryCriteriaImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionTopicQueryCriteria
    extends SubscriptionTopicQueryCriteria {
  const factory _SubscriptionTopicQueryCriteria(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final String? previous,
          @JsonKey(name: '_previous') final PrimitiveElement? previousElement,
          final FhirCode? resultForCreate,
          @JsonKey(name: '_resultForCreate')
          final PrimitiveElement? resultForCreateElement,
          final String? current,
          @JsonKey(name: '_current') final PrimitiveElement? currentElement,
          final FhirCode? resultForDelete,
          @JsonKey(name: '_resultForDelete')
          final PrimitiveElement? resultForDeleteElement,
          final FhirBoolean? requireBoth,
          @JsonKey(name: '_requireBoth')
          final PrimitiveElement? requireBothElement}) =
      _$SubscriptionTopicQueryCriteriaImpl;
  const _SubscriptionTopicQueryCriteria._() : super._();

  factory _SubscriptionTopicQueryCriteria.fromJson(Map<String, dynamic> json) =
      _$SubscriptionTopicQueryCriteriaImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  String? get previous;
  @override
  @JsonKey(name: '_previous')
  PrimitiveElement? get previousElement;
  @override
  FhirCode? get resultForCreate;
  @override
  @JsonKey(name: '_resultForCreate')
  PrimitiveElement? get resultForCreateElement;
  @override
  String? get current;
  @override
  @JsonKey(name: '_current')
  PrimitiveElement? get currentElement;
  @override
  FhirCode? get resultForDelete;
  @override
  @JsonKey(name: '_resultForDelete')
  PrimitiveElement? get resultForDeleteElement;
  @override
  FhirBoolean? get requireBoth;
  @override
  @JsonKey(name: '_requireBoth')
  PrimitiveElement? get requireBothElement;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionTopicQueryCriteriaImplCopyWith<
          _$SubscriptionTopicQueryCriteriaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionTopicEventTrigger _$SubscriptionTopicEventTriggerFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionTopicEventTrigger.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionTopicEventTrigger {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  FhirMarkdown? get description => throw _privateConstructorUsedError;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;
  CodeableConcept get event => throw _privateConstructorUsedError;
  FhirUri? get resource => throw _privateConstructorUsedError;
  @JsonKey(name: '_resource')
  PrimitiveElement? get resourceElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionTopicEventTriggerCopyWith<SubscriptionTopicEventTrigger>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionTopicEventTriggerCopyWith<$Res> {
  factory $SubscriptionTopicEventTriggerCopyWith(
          SubscriptionTopicEventTrigger value,
          $Res Function(SubscriptionTopicEventTrigger) then) =
      _$SubscriptionTopicEventTriggerCopyWithImpl<$Res,
          SubscriptionTopicEventTrigger>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      CodeableConcept event,
      FhirUri? resource,
      @JsonKey(name: '_resource') PrimitiveElement? resourceElement});

  $CodeableConceptCopyWith<$Res> get event;
}

/// @nodoc
class _$SubscriptionTopicEventTriggerCopyWithImpl<$Res,
        $Val extends SubscriptionTopicEventTrigger>
    implements $SubscriptionTopicEventTriggerCopyWith<$Res> {
  _$SubscriptionTopicEventTriggerCopyWithImpl(this._value, this._then);

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
    Object? event = null,
    Object? resource = freezed,
    Object? resourceElement = freezed,
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
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      resourceElement: freezed == resourceElement
          ? _value.resourceElement
          : resourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get event {
    return $CodeableConceptCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionTopicEventTriggerImplCopyWith<$Res>
    implements $SubscriptionTopicEventTriggerCopyWith<$Res> {
  factory _$$SubscriptionTopicEventTriggerImplCopyWith(
          _$SubscriptionTopicEventTriggerImpl value,
          $Res Function(_$SubscriptionTopicEventTriggerImpl) then) =
      __$$SubscriptionTopicEventTriggerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      CodeableConcept event,
      FhirUri? resource,
      @JsonKey(name: '_resource') PrimitiveElement? resourceElement});

  @override
  $CodeableConceptCopyWith<$Res> get event;
}

/// @nodoc
class __$$SubscriptionTopicEventTriggerImplCopyWithImpl<$Res>
    extends _$SubscriptionTopicEventTriggerCopyWithImpl<$Res,
        _$SubscriptionTopicEventTriggerImpl>
    implements _$$SubscriptionTopicEventTriggerImplCopyWith<$Res> {
  __$$SubscriptionTopicEventTriggerImplCopyWithImpl(
      _$SubscriptionTopicEventTriggerImpl _value,
      $Res Function(_$SubscriptionTopicEventTriggerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? event = null,
    Object? resource = freezed,
    Object? resourceElement = freezed,
  }) {
    return _then(_$SubscriptionTopicEventTriggerImpl(
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
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      resourceElement: freezed == resourceElement
          ? _value.resourceElement
          : resourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionTopicEventTriggerImpl
    extends _SubscriptionTopicEventTrigger {
  const _$SubscriptionTopicEventTriggerImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      required this.event,
      this.resource,
      @JsonKey(name: '_resource') this.resourceElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$SubscriptionTopicEventTriggerImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionTopicEventTriggerImplFromJson(json);

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
  final FhirMarkdown? description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;
  @override
  final CodeableConcept event;
  @override
  final FhirUri? resource;
  @override
  @JsonKey(name: '_resource')
  final PrimitiveElement? resourceElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionTopicEventTriggerImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            (identical(other.resourceElement, resourceElement) ||
                other.resourceElement == resourceElement));
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
      event,
      resource,
      resourceElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionTopicEventTriggerImplCopyWith<
          _$SubscriptionTopicEventTriggerImpl>
      get copyWith => __$$SubscriptionTopicEventTriggerImplCopyWithImpl<
          _$SubscriptionTopicEventTriggerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionTopicEventTriggerImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionTopicEventTrigger
    extends SubscriptionTopicEventTrigger {
  const factory _SubscriptionTopicEventTrigger(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      required final CodeableConcept event,
      final FhirUri? resource,
      @JsonKey(name: '_resource')
      final PrimitiveElement?
          resourceElement}) = _$SubscriptionTopicEventTriggerImpl;
  const _SubscriptionTopicEventTrigger._() : super._();

  factory _SubscriptionTopicEventTrigger.fromJson(Map<String, dynamic> json) =
      _$SubscriptionTopicEventTriggerImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  FhirMarkdown? get description;
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override
  CodeableConcept get event;
  @override
  FhirUri? get resource;
  @override
  @JsonKey(name: '_resource')
  PrimitiveElement? get resourceElement;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionTopicEventTriggerImplCopyWith<
          _$SubscriptionTopicEventTriggerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionTopicCanFilterBy _$SubscriptionTopicCanFilterByFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionTopicCanFilterBy.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionTopicCanFilterBy {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  FhirMarkdown? get description => throw _privateConstructorUsedError;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;
  FhirUri? get resource => throw _privateConstructorUsedError;
  @JsonKey(name: '_resource')
  PrimitiveElement? get resourceElement => throw _privateConstructorUsedError;
  String? get filterParameter => throw _privateConstructorUsedError;
  @JsonKey(name: '_filterParameter')
  PrimitiveElement? get filterParameterElement =>
      throw _privateConstructorUsedError;
  FhirUri? get filterDefinition => throw _privateConstructorUsedError;
  @JsonKey(name: '_filterDefinition')
  PrimitiveElement? get filterDefinitionElement =>
      throw _privateConstructorUsedError;
  List<FhirCode>? get modifier => throw _privateConstructorUsedError;
  @JsonKey(name: '_modifier')
  List<PrimitiveElement>? get modifierElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionTopicCanFilterByCopyWith<SubscriptionTopicCanFilterBy>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionTopicCanFilterByCopyWith<$Res> {
  factory $SubscriptionTopicCanFilterByCopyWith(
          SubscriptionTopicCanFilterBy value,
          $Res Function(SubscriptionTopicCanFilterBy) then) =
      _$SubscriptionTopicCanFilterByCopyWithImpl<$Res,
          SubscriptionTopicCanFilterBy>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirUri? resource,
      @JsonKey(name: '_resource') PrimitiveElement? resourceElement,
      String? filterParameter,
      @JsonKey(name: '_filterParameter')
      PrimitiveElement? filterParameterElement,
      FhirUri? filterDefinition,
      @JsonKey(name: '_filterDefinition')
      PrimitiveElement? filterDefinitionElement,
      List<FhirCode>? modifier,
      @JsonKey(name: '_modifier') List<PrimitiveElement>? modifierElement});
}

/// @nodoc
class _$SubscriptionTopicCanFilterByCopyWithImpl<$Res,
        $Val extends SubscriptionTopicCanFilterBy>
    implements $SubscriptionTopicCanFilterByCopyWith<$Res> {
  _$SubscriptionTopicCanFilterByCopyWithImpl(this._value, this._then);

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
    Object? resource = freezed,
    Object? resourceElement = freezed,
    Object? filterParameter = freezed,
    Object? filterParameterElement = freezed,
    Object? filterDefinition = freezed,
    Object? filterDefinitionElement = freezed,
    Object? modifier = freezed,
    Object? modifierElement = freezed,
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
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      resourceElement: freezed == resourceElement
          ? _value.resourceElement
          : resourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      filterParameter: freezed == filterParameter
          ? _value.filterParameter
          : filterParameter // ignore: cast_nullable_to_non_nullable
              as String?,
      filterParameterElement: freezed == filterParameterElement
          ? _value.filterParameterElement
          : filterParameterElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      filterDefinition: freezed == filterDefinition
          ? _value.filterDefinition
          : filterDefinition // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      filterDefinitionElement: freezed == filterDefinitionElement
          ? _value.filterDefinitionElement
          : filterDefinitionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      modifier: freezed == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      modifierElement: freezed == modifierElement
          ? _value.modifierElement
          : modifierElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionTopicCanFilterByImplCopyWith<$Res>
    implements $SubscriptionTopicCanFilterByCopyWith<$Res> {
  factory _$$SubscriptionTopicCanFilterByImplCopyWith(
          _$SubscriptionTopicCanFilterByImpl value,
          $Res Function(_$SubscriptionTopicCanFilterByImpl) then) =
      __$$SubscriptionTopicCanFilterByImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirUri? resource,
      @JsonKey(name: '_resource') PrimitiveElement? resourceElement,
      String? filterParameter,
      @JsonKey(name: '_filterParameter')
      PrimitiveElement? filterParameterElement,
      FhirUri? filterDefinition,
      @JsonKey(name: '_filterDefinition')
      PrimitiveElement? filterDefinitionElement,
      List<FhirCode>? modifier,
      @JsonKey(name: '_modifier') List<PrimitiveElement>? modifierElement});
}

/// @nodoc
class __$$SubscriptionTopicCanFilterByImplCopyWithImpl<$Res>
    extends _$SubscriptionTopicCanFilterByCopyWithImpl<$Res,
        _$SubscriptionTopicCanFilterByImpl>
    implements _$$SubscriptionTopicCanFilterByImplCopyWith<$Res> {
  __$$SubscriptionTopicCanFilterByImplCopyWithImpl(
      _$SubscriptionTopicCanFilterByImpl _value,
      $Res Function(_$SubscriptionTopicCanFilterByImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? resource = freezed,
    Object? resourceElement = freezed,
    Object? filterParameter = freezed,
    Object? filterParameterElement = freezed,
    Object? filterDefinition = freezed,
    Object? filterDefinitionElement = freezed,
    Object? modifier = freezed,
    Object? modifierElement = freezed,
  }) {
    return _then(_$SubscriptionTopicCanFilterByImpl(
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
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      resourceElement: freezed == resourceElement
          ? _value.resourceElement
          : resourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      filterParameter: freezed == filterParameter
          ? _value.filterParameter
          : filterParameter // ignore: cast_nullable_to_non_nullable
              as String?,
      filterParameterElement: freezed == filterParameterElement
          ? _value.filterParameterElement
          : filterParameterElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      filterDefinition: freezed == filterDefinition
          ? _value.filterDefinition
          : filterDefinition // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      filterDefinitionElement: freezed == filterDefinitionElement
          ? _value.filterDefinitionElement
          : filterDefinitionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      modifier: freezed == modifier
          ? _value._modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      modifierElement: freezed == modifierElement
          ? _value._modifierElement
          : modifierElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionTopicCanFilterByImpl extends _SubscriptionTopicCanFilterBy {
  const _$SubscriptionTopicCanFilterByImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.resource,
      @JsonKey(name: '_resource') this.resourceElement,
      this.filterParameter,
      @JsonKey(name: '_filterParameter') this.filterParameterElement,
      this.filterDefinition,
      @JsonKey(name: '_filterDefinition') this.filterDefinitionElement,
      final List<FhirCode>? modifier,
      @JsonKey(name: '_modifier')
      final List<PrimitiveElement>? modifierElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _modifier = modifier,
        _modifierElement = modifierElement,
        super._();

  factory _$SubscriptionTopicCanFilterByImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionTopicCanFilterByImplFromJson(json);

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
  final FhirMarkdown? description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;
  @override
  final FhirUri? resource;
  @override
  @JsonKey(name: '_resource')
  final PrimitiveElement? resourceElement;
  @override
  final String? filterParameter;
  @override
  @JsonKey(name: '_filterParameter')
  final PrimitiveElement? filterParameterElement;
  @override
  final FhirUri? filterDefinition;
  @override
  @JsonKey(name: '_filterDefinition')
  final PrimitiveElement? filterDefinitionElement;
  final List<FhirCode>? _modifier;
  @override
  List<FhirCode>? get modifier {
    final value = _modifier;
    if (value == null) return null;
    if (_modifier is EqualUnmodifiableListView) return _modifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PrimitiveElement>? _modifierElement;
  @override
  @JsonKey(name: '_modifier')
  List<PrimitiveElement>? get modifierElement {
    final value = _modifierElement;
    if (value == null) return null;
    if (_modifierElement is EqualUnmodifiableListView) return _modifierElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionTopicCanFilterByImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            (identical(other.resourceElement, resourceElement) ||
                other.resourceElement == resourceElement) &&
            (identical(other.filterParameter, filterParameter) ||
                other.filterParameter == filterParameter) &&
            (identical(other.filterParameterElement, filterParameterElement) ||
                other.filterParameterElement == filterParameterElement) &&
            (identical(other.filterDefinition, filterDefinition) ||
                other.filterDefinition == filterDefinition) &&
            (identical(
                    other.filterDefinitionElement, filterDefinitionElement) ||
                other.filterDefinitionElement == filterDefinitionElement) &&
            const DeepCollectionEquality().equals(other._modifier, _modifier) &&
            const DeepCollectionEquality()
                .equals(other._modifierElement, _modifierElement));
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
      resource,
      resourceElement,
      filterParameter,
      filterParameterElement,
      filterDefinition,
      filterDefinitionElement,
      const DeepCollectionEquality().hash(_modifier),
      const DeepCollectionEquality().hash(_modifierElement));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionTopicCanFilterByImplCopyWith<
          _$SubscriptionTopicCanFilterByImpl>
      get copyWith => __$$SubscriptionTopicCanFilterByImplCopyWithImpl<
          _$SubscriptionTopicCanFilterByImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionTopicCanFilterByImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionTopicCanFilterBy
    extends SubscriptionTopicCanFilterBy {
  const factory _SubscriptionTopicCanFilterBy(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final FhirUri? resource,
      @JsonKey(name: '_resource') final PrimitiveElement? resourceElement,
      final String? filterParameter,
      @JsonKey(name: '_filterParameter')
      final PrimitiveElement? filterParameterElement,
      final FhirUri? filterDefinition,
      @JsonKey(name: '_filterDefinition')
      final PrimitiveElement? filterDefinitionElement,
      final List<FhirCode>? modifier,
      @JsonKey(name: '_modifier')
      final List<PrimitiveElement>?
          modifierElement}) = _$SubscriptionTopicCanFilterByImpl;
  const _SubscriptionTopicCanFilterBy._() : super._();

  factory _SubscriptionTopicCanFilterBy.fromJson(Map<String, dynamic> json) =
      _$SubscriptionTopicCanFilterByImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  FhirMarkdown? get description;
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override
  FhirUri? get resource;
  @override
  @JsonKey(name: '_resource')
  PrimitiveElement? get resourceElement;
  @override
  String? get filterParameter;
  @override
  @JsonKey(name: '_filterParameter')
  PrimitiveElement? get filterParameterElement;
  @override
  FhirUri? get filterDefinition;
  @override
  @JsonKey(name: '_filterDefinition')
  PrimitiveElement? get filterDefinitionElement;
  @override
  List<FhirCode>? get modifier;
  @override
  @JsonKey(name: '_modifier')
  List<PrimitiveElement>? get modifierElement;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionTopicCanFilterByImplCopyWith<
          _$SubscriptionTopicCanFilterByImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionTopicNotificationShape _$SubscriptionTopicNotificationShapeFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionTopicNotificationShape.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionTopicNotificationShape {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  FhirUri? get resource => throw _privateConstructorUsedError;
  @JsonKey(name: '_resource')
  PrimitiveElement? get resourceElement => throw _privateConstructorUsedError;
  List<String>? get include => throw _privateConstructorUsedError;
  @JsonKey(name: '_include')
  List<PrimitiveElement>? get includeElement =>
      throw _privateConstructorUsedError;
  List<String>? get revInclude => throw _privateConstructorUsedError;
  @JsonKey(name: '_revInclude')
  List<PrimitiveElement>? get revIncludeElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionTopicNotificationShapeCopyWith<
          SubscriptionTopicNotificationShape>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionTopicNotificationShapeCopyWith<$Res> {
  factory $SubscriptionTopicNotificationShapeCopyWith(
          SubscriptionTopicNotificationShape value,
          $Res Function(SubscriptionTopicNotificationShape) then) =
      _$SubscriptionTopicNotificationShapeCopyWithImpl<$Res,
          SubscriptionTopicNotificationShape>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirUri? resource,
      @JsonKey(name: '_resource') PrimitiveElement? resourceElement,
      List<String>? include,
      @JsonKey(name: '_include') List<PrimitiveElement>? includeElement,
      List<String>? revInclude,
      @JsonKey(name: '_revInclude') List<PrimitiveElement>? revIncludeElement});
}

/// @nodoc
class _$SubscriptionTopicNotificationShapeCopyWithImpl<$Res,
        $Val extends SubscriptionTopicNotificationShape>
    implements $SubscriptionTopicNotificationShapeCopyWith<$Res> {
  _$SubscriptionTopicNotificationShapeCopyWithImpl(this._value, this._then);

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
    Object? resource = freezed,
    Object? resourceElement = freezed,
    Object? include = freezed,
    Object? includeElement = freezed,
    Object? revInclude = freezed,
    Object? revIncludeElement = freezed,
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
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      resourceElement: freezed == resourceElement
          ? _value.resourceElement
          : resourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      include: freezed == include
          ? _value.include
          : include // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      includeElement: freezed == includeElement
          ? _value.includeElement
          : includeElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      revInclude: freezed == revInclude
          ? _value.revInclude
          : revInclude // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      revIncludeElement: freezed == revIncludeElement
          ? _value.revIncludeElement
          : revIncludeElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionTopicNotificationShapeImplCopyWith<$Res>
    implements $SubscriptionTopicNotificationShapeCopyWith<$Res> {
  factory _$$SubscriptionTopicNotificationShapeImplCopyWith(
          _$SubscriptionTopicNotificationShapeImpl value,
          $Res Function(_$SubscriptionTopicNotificationShapeImpl) then) =
      __$$SubscriptionTopicNotificationShapeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirUri? resource,
      @JsonKey(name: '_resource') PrimitiveElement? resourceElement,
      List<String>? include,
      @JsonKey(name: '_include') List<PrimitiveElement>? includeElement,
      List<String>? revInclude,
      @JsonKey(name: '_revInclude') List<PrimitiveElement>? revIncludeElement});
}

/// @nodoc
class __$$SubscriptionTopicNotificationShapeImplCopyWithImpl<$Res>
    extends _$SubscriptionTopicNotificationShapeCopyWithImpl<$Res,
        _$SubscriptionTopicNotificationShapeImpl>
    implements _$$SubscriptionTopicNotificationShapeImplCopyWith<$Res> {
  __$$SubscriptionTopicNotificationShapeImplCopyWithImpl(
      _$SubscriptionTopicNotificationShapeImpl _value,
      $Res Function(_$SubscriptionTopicNotificationShapeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? resource = freezed,
    Object? resourceElement = freezed,
    Object? include = freezed,
    Object? includeElement = freezed,
    Object? revInclude = freezed,
    Object? revIncludeElement = freezed,
  }) {
    return _then(_$SubscriptionTopicNotificationShapeImpl(
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
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      resourceElement: freezed == resourceElement
          ? _value.resourceElement
          : resourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      include: freezed == include
          ? _value._include
          : include // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      includeElement: freezed == includeElement
          ? _value._includeElement
          : includeElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      revInclude: freezed == revInclude
          ? _value._revInclude
          : revInclude // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      revIncludeElement: freezed == revIncludeElement
          ? _value._revIncludeElement
          : revIncludeElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionTopicNotificationShapeImpl
    extends _SubscriptionTopicNotificationShape {
  const _$SubscriptionTopicNotificationShapeImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.resource,
      @JsonKey(name: '_resource') this.resourceElement,
      final List<String>? include,
      @JsonKey(name: '_include') final List<PrimitiveElement>? includeElement,
      final List<String>? revInclude,
      @JsonKey(name: '_revInclude')
      final List<PrimitiveElement>? revIncludeElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _include = include,
        _includeElement = includeElement,
        _revInclude = revInclude,
        _revIncludeElement = revIncludeElement,
        super._();

  factory _$SubscriptionTopicNotificationShapeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionTopicNotificationShapeImplFromJson(json);

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
  final FhirUri? resource;
  @override
  @JsonKey(name: '_resource')
  final PrimitiveElement? resourceElement;
  final List<String>? _include;
  @override
  List<String>? get include {
    final value = _include;
    if (value == null) return null;
    if (_include is EqualUnmodifiableListView) return _include;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PrimitiveElement>? _includeElement;
  @override
  @JsonKey(name: '_include')
  List<PrimitiveElement>? get includeElement {
    final value = _includeElement;
    if (value == null) return null;
    if (_includeElement is EqualUnmodifiableListView) return _includeElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _revInclude;
  @override
  List<String>? get revInclude {
    final value = _revInclude;
    if (value == null) return null;
    if (_revInclude is EqualUnmodifiableListView) return _revInclude;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PrimitiveElement>? _revIncludeElement;
  @override
  @JsonKey(name: '_revInclude')
  List<PrimitiveElement>? get revIncludeElement {
    final value = _revIncludeElement;
    if (value == null) return null;
    if (_revIncludeElement is EqualUnmodifiableListView)
      return _revIncludeElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionTopicNotificationShapeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            (identical(other.resourceElement, resourceElement) ||
                other.resourceElement == resourceElement) &&
            const DeepCollectionEquality().equals(other._include, _include) &&
            const DeepCollectionEquality()
                .equals(other._includeElement, _includeElement) &&
            const DeepCollectionEquality()
                .equals(other._revInclude, _revInclude) &&
            const DeepCollectionEquality()
                .equals(other._revIncludeElement, _revIncludeElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      resource,
      resourceElement,
      const DeepCollectionEquality().hash(_include),
      const DeepCollectionEquality().hash(_includeElement),
      const DeepCollectionEquality().hash(_revInclude),
      const DeepCollectionEquality().hash(_revIncludeElement));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionTopicNotificationShapeImplCopyWith<
          _$SubscriptionTopicNotificationShapeImpl>
      get copyWith => __$$SubscriptionTopicNotificationShapeImplCopyWithImpl<
          _$SubscriptionTopicNotificationShapeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionTopicNotificationShapeImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionTopicNotificationShape
    extends SubscriptionTopicNotificationShape {
  const factory _SubscriptionTopicNotificationShape(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirUri? resource,
      @JsonKey(name: '_resource') final PrimitiveElement? resourceElement,
      final List<String>? include,
      @JsonKey(name: '_include') final List<PrimitiveElement>? includeElement,
      final List<String>? revInclude,
      @JsonKey(name: '_revInclude')
      final List<PrimitiveElement>?
          revIncludeElement}) = _$SubscriptionTopicNotificationShapeImpl;
  const _SubscriptionTopicNotificationShape._() : super._();

  factory _SubscriptionTopicNotificationShape.fromJson(
          Map<String, dynamic> json) =
      _$SubscriptionTopicNotificationShapeImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  FhirUri? get resource;
  @override
  @JsonKey(name: '_resource')
  PrimitiveElement? get resourceElement;
  @override
  List<String>? get include;
  @override
  @JsonKey(name: '_include')
  List<PrimitiveElement>? get includeElement;
  @override
  List<String>? get revInclude;
  @override
  @JsonKey(name: '_revInclude')
  List<PrimitiveElement>? get revIncludeElement;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionTopicNotificationShapeImplCopyWith<
          _$SubscriptionTopicNotificationShapeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
