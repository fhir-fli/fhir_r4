// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageDefinition _$MessageDefinitionFromJson(Map<String, dynamic> json) {
  return _MessageDefinition.fromJson(json);
}

/// @nodoc
mixin _$MessageDefinition {
  @JsonKey(unknownEnumValue: R4ResourceType.MessageDefinition)
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

  /// [url] The business identifier that is used to reference the
  /// MessageDefinition and *is* expected to be consistent from server to
  ///  server.
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [identifier] A formal identifier that is used to identify this message
  /// definition when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [version] The identifier that is used to identify this version of the
  /// message definition when it is referenced in a specification, model, design
  /// or instance. This is an arbitrary value managed by the message definition
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There
  /// is also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  /// [name] A natural language name identifying the message definition. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [title] A short, descriptive, user-friendly title for the message
  ///  definition.
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;

  /// [replaces] A MessageDefinition that is superseded by this definition.
  List<FhirCanonical>? get replaces => throw _privateConstructorUsedError;

  /// [status] The status of this message definition. Enables tracking the
  ///  life-cycle of the content.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [experimental] A Boolean value to indicate that this message definition
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  FhirBoolean? get experimental => throw _privateConstructorUsedError;

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement =>
      throw _privateConstructorUsedError;

  /// [date] The date  (and optionally time) when the message definition was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the message definition changes.
  FhirDateTime? get date => throw _privateConstructorUsedError;

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [publisher] The name of the organization or individual that published the
  ///  message definition.
  String? get publisher => throw _privateConstructorUsedError;

  /// [publisherElement] Extensions for publisher
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement => throw _privateConstructorUsedError;

  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  List<ContactDetail>? get contact => throw _privateConstructorUsedError;

  /// [description] A free text natural language description of the message
  ///  definition from a consumer's perspective.
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate message definition instances.
  List<UsageContext>? get useContext => throw _privateConstructorUsedError;

  /// [jurisdiction] A legal or geographic region in which the message
  ///  definition is intended to be used.
  List<CodeableConcept>? get jurisdiction => throw _privateConstructorUsedError;

  /// [purpose] Explanation of why this message definition is needed and why it
  ///  has been designed as it has.
  FhirMarkdown? get purpose => throw _privateConstructorUsedError;

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement => throw _privateConstructorUsedError;

  /// [copyright] A copyright statement relating to the message definition
  /// and/or its contents. Copyright statements are generally legal restrictions
  ///  on the use and publishing of the message definition.
  FhirMarkdown? get copyright => throw _privateConstructorUsedError;

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement => throw _privateConstructorUsedError;

  /// [base] The MessageDefinition that is the basis for the contents of this
  ///  resource.
  FhirCanonical? get base => throw _privateConstructorUsedError;

  /// [parent] Identifies a protocol or workflow that this MessageDefinition
  ///  represents a step in.
  List<FhirCanonical>? get parent => throw _privateConstructorUsedError;

  /// [eventCoding] Event code or link to the EventDefinition.
  Coding? get eventCoding => throw _privateConstructorUsedError;

  /// [eventUri] Event code or link to the EventDefinition.
  FhirUri? get eventUri => throw _privateConstructorUsedError;

  /// [eventUriElement] Extensions for eventUri
  @JsonKey(name: '_eventUri')
  PrimitiveElement? get eventUriElement => throw _privateConstructorUsedError;

  /// [category] The impact of the content of the message.
  FhirCode? get category => throw _privateConstructorUsedError;

  /// [categoryElement] Extensions for category
  @JsonKey(name: '_category')
  PrimitiveElement? get categoryElement => throw _privateConstructorUsedError;

  /// [focus] Identifies the resource (or resources) that are being addressed
  /// by the event.  For example, the Encounter for an admit message or two
  ///  Account records for a merge.
  List<MessageDefinitionFocus>? get focus => throw _privateConstructorUsedError;

  /// [responseRequired] Declare at a message definition level whether a
  ///  response is required or only upon error or success, or never.
  FhirCode? get responseRequired => throw _privateConstructorUsedError;

  /// [responseRequiredElement] Extensions for responseRequired
  @JsonKey(name: '_responseRequired')
  PrimitiveElement? get responseRequiredElement =>
      throw _privateConstructorUsedError;

  /// [allowedResponse] Indicates what types of messages may be sent as an
  ///  application-level response to this message.
  List<MessageDefinitionAllowedResponse>? get allowedResponse =>
      throw _privateConstructorUsedError;

  /// [graph] Canonical reference to a GraphDefinition. If a URL is provided,
  /// it is the canonical reference to a [[[GraphDefinition]]] that it controls
  /// what resources are to be added to the bundle when building the document.
  /// The GraphDefinition can also specify profiles that apply to the various
  ///  resources.
  List<FhirCanonical>? get graph => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageDefinitionCopyWith<MessageDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDefinitionCopyWith<$Res> {
  factory $MessageDefinitionCopyWith(
          MessageDefinition value, $Res Function(MessageDefinition) then) =
      _$MessageDefinitionCopyWithImpl<$Res, MessageDefinition>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.MessageDefinition)
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
      List<FhirCanonical>? replaces,
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
      FhirCanonical? base,
      List<FhirCanonical>? parent,
      Coding? eventCoding,
      FhirUri? eventUri,
      @JsonKey(name: '_eventUri') PrimitiveElement? eventUriElement,
      FhirCode? category,
      @JsonKey(name: '_category') PrimitiveElement? categoryElement,
      List<MessageDefinitionFocus>? focus,
      FhirCode? responseRequired,
      @JsonKey(name: '_responseRequired')
      PrimitiveElement? responseRequiredElement,
      List<MessageDefinitionAllowedResponse>? allowedResponse,
      List<FhirCanonical>? graph});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodingCopyWith<$Res>? get eventCoding;
}

/// @nodoc
class _$MessageDefinitionCopyWithImpl<$Res, $Val extends MessageDefinition>
    implements $MessageDefinitionCopyWith<$Res> {
  _$MessageDefinitionCopyWithImpl(this._value, this._then);

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
    Object? replaces = freezed,
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
    Object? base = freezed,
    Object? parent = freezed,
    Object? eventCoding = freezed,
    Object? eventUri = freezed,
    Object? eventUriElement = freezed,
    Object? category = freezed,
    Object? categoryElement = freezed,
    Object? focus = freezed,
    Object? responseRequired = freezed,
    Object? responseRequiredElement = freezed,
    Object? allowedResponse = freezed,
    Object? graph = freezed,
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
      replaces: freezed == replaces
          ? _value.replaces
          : replaces // ignore: cast_nullable_to_non_nullable
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
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      eventCoding: freezed == eventCoding
          ? _value.eventCoding
          : eventCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      eventUri: freezed == eventUri
          ? _value.eventUri
          : eventUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      eventUriElement: freezed == eventUriElement
          ? _value.eventUriElement
          : eventUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      categoryElement: freezed == categoryElement
          ? _value.categoryElement
          : categoryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      focus: freezed == focus
          ? _value.focus
          : focus // ignore: cast_nullable_to_non_nullable
              as List<MessageDefinitionFocus>?,
      responseRequired: freezed == responseRequired
          ? _value.responseRequired
          : responseRequired // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      responseRequiredElement: freezed == responseRequiredElement
          ? _value.responseRequiredElement
          : responseRequiredElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      allowedResponse: freezed == allowedResponse
          ? _value.allowedResponse
          : allowedResponse // ignore: cast_nullable_to_non_nullable
              as List<MessageDefinitionAllowedResponse>?,
      graph: freezed == graph
          ? _value.graph
          : graph // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
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
  $CodingCopyWith<$Res>? get eventCoding {
    if (_value.eventCoding == null) {
      return null;
    }

    return $CodingCopyWith<$Res>(_value.eventCoding!, (value) {
      return _then(_value.copyWith(eventCoding: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageDefinitionImplCopyWith<$Res>
    implements $MessageDefinitionCopyWith<$Res> {
  factory _$$MessageDefinitionImplCopyWith(_$MessageDefinitionImpl value,
          $Res Function(_$MessageDefinitionImpl) then) =
      __$$MessageDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.MessageDefinition)
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
      List<FhirCanonical>? replaces,
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
      FhirCanonical? base,
      List<FhirCanonical>? parent,
      Coding? eventCoding,
      FhirUri? eventUri,
      @JsonKey(name: '_eventUri') PrimitiveElement? eventUriElement,
      FhirCode? category,
      @JsonKey(name: '_category') PrimitiveElement? categoryElement,
      List<MessageDefinitionFocus>? focus,
      FhirCode? responseRequired,
      @JsonKey(name: '_responseRequired')
      PrimitiveElement? responseRequiredElement,
      List<MessageDefinitionAllowedResponse>? allowedResponse,
      List<FhirCanonical>? graph});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodingCopyWith<$Res>? get eventCoding;
}

/// @nodoc
class __$$MessageDefinitionImplCopyWithImpl<$Res>
    extends _$MessageDefinitionCopyWithImpl<$Res, _$MessageDefinitionImpl>
    implements _$$MessageDefinitionImplCopyWith<$Res> {
  __$$MessageDefinitionImplCopyWithImpl(_$MessageDefinitionImpl _value,
      $Res Function(_$MessageDefinitionImpl) _then)
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
    Object? replaces = freezed,
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
    Object? base = freezed,
    Object? parent = freezed,
    Object? eventCoding = freezed,
    Object? eventUri = freezed,
    Object? eventUriElement = freezed,
    Object? category = freezed,
    Object? categoryElement = freezed,
    Object? focus = freezed,
    Object? responseRequired = freezed,
    Object? responseRequiredElement = freezed,
    Object? allowedResponse = freezed,
    Object? graph = freezed,
  }) {
    return _then(_$MessageDefinitionImpl(
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
      replaces: freezed == replaces
          ? _value._replaces
          : replaces // ignore: cast_nullable_to_non_nullable
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
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      parent: freezed == parent
          ? _value._parent
          : parent // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      eventCoding: freezed == eventCoding
          ? _value.eventCoding
          : eventCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      eventUri: freezed == eventUri
          ? _value.eventUri
          : eventUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      eventUriElement: freezed == eventUriElement
          ? _value.eventUriElement
          : eventUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      categoryElement: freezed == categoryElement
          ? _value.categoryElement
          : categoryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      focus: freezed == focus
          ? _value._focus
          : focus // ignore: cast_nullable_to_non_nullable
              as List<MessageDefinitionFocus>?,
      responseRequired: freezed == responseRequired
          ? _value.responseRequired
          : responseRequired // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      responseRequiredElement: freezed == responseRequiredElement
          ? _value.responseRequiredElement
          : responseRequiredElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      allowedResponse: freezed == allowedResponse
          ? _value._allowedResponse
          : allowedResponse // ignore: cast_nullable_to_non_nullable
              as List<MessageDefinitionAllowedResponse>?,
      graph: freezed == graph
          ? _value._graph
          : graph // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageDefinitionImpl extends _MessageDefinition {
  const _$MessageDefinitionImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.MessageDefinition)
      this.resourceType = R4ResourceType.MessageDefinition,
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
      final List<FhirCanonical>? replaces,
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
      this.base,
      final List<FhirCanonical>? parent,
      this.eventCoding,
      this.eventUri,
      @JsonKey(name: '_eventUri') this.eventUriElement,
      this.category,
      @JsonKey(name: '_category') this.categoryElement,
      final List<MessageDefinitionFocus>? focus,
      this.responseRequired,
      @JsonKey(name: '_responseRequired') this.responseRequiredElement,
      final List<MessageDefinitionAllowedResponse>? allowedResponse,
      final List<FhirCanonical>? graph})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _replaces = replaces,
        _contact = contact,
        _useContext = useContext,
        _jurisdiction = jurisdiction,
        _parent = parent,
        _focus = focus,
        _allowedResponse = allowedResponse,
        _graph = graph,
        super._();

  factory _$MessageDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageDefinitionImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.MessageDefinition)
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

  /// [url] The business identifier that is used to reference the
  /// MessageDefinition and *is* expected to be consistent from server to
  ///  server.
  @override
  final FhirUri? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [identifier] A formal identifier that is used to identify this message
  /// definition when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  final List<Identifier>? _identifier;

  /// [identifier] A formal identifier that is used to identify this message
  /// definition when it is represented in other formats, or referenced in a
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
  /// message definition when it is referenced in a specification, model, design
  /// or instance. This is an arbitrary value managed by the message definition
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There
  /// is also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  @override
  final String? version;

  /// [versionElement] Extensions for version
  @override
  @JsonKey(name: '_version')
  final PrimitiveElement? versionElement;

  /// [name] A natural language name identifying the message definition. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [title] A short, descriptive, user-friendly title for the message
  ///  definition.
  @override
  final String? title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;

  /// [replaces] A MessageDefinition that is superseded by this definition.
  final List<FhirCanonical>? _replaces;

  /// [replaces] A MessageDefinition that is superseded by this definition.
  @override
  List<FhirCanonical>? get replaces {
    final value = _replaces;
    if (value == null) return null;
    if (_replaces is EqualUnmodifiableListView) return _replaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The status of this message definition. Enables tracking the
  ///  life-cycle of the content.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [experimental] A Boolean value to indicate that this message definition
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  @override
  final FhirBoolean? experimental;

  /// [experimentalElement] Extensions for experimental
  @override
  @JsonKey(name: '_experimental')
  final PrimitiveElement? experimentalElement;

  /// [date] The date  (and optionally time) when the message definition was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the message definition changes.
  @override
  final FhirDateTime? date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [publisher] The name of the organization or individual that published the
  ///  message definition.
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

  /// [description] A free text natural language description of the message
  ///  definition from a consumer's perspective.
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
  ///  and searching for appropriate message definition instances.
  final List<UsageContext>? _useContext;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate message definition instances.
  @override
  List<UsageContext>? get useContext {
    final value = _useContext;
    if (value == null) return null;
    if (_useContext is EqualUnmodifiableListView) return _useContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [jurisdiction] A legal or geographic region in which the message
  ///  definition is intended to be used.
  final List<CodeableConcept>? _jurisdiction;

  /// [jurisdiction] A legal or geographic region in which the message
  ///  definition is intended to be used.
  @override
  List<CodeableConcept>? get jurisdiction {
    final value = _jurisdiction;
    if (value == null) return null;
    if (_jurisdiction is EqualUnmodifiableListView) return _jurisdiction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [purpose] Explanation of why this message definition is needed and why it
  ///  has been designed as it has.
  @override
  final FhirMarkdown? purpose;

  /// [purposeElement] Extensions for purpose
  @override
  @JsonKey(name: '_purpose')
  final PrimitiveElement? purposeElement;

  /// [copyright] A copyright statement relating to the message definition
  /// and/or its contents. Copyright statements are generally legal restrictions
  ///  on the use and publishing of the message definition.
  @override
  final FhirMarkdown? copyright;

  /// [copyrightElement] Extensions for copyright
  @override
  @JsonKey(name: '_copyright')
  final PrimitiveElement? copyrightElement;

  /// [base] The MessageDefinition that is the basis for the contents of this
  ///  resource.
  @override
  final FhirCanonical? base;

  /// [parent] Identifies a protocol or workflow that this MessageDefinition
  ///  represents a step in.
  final List<FhirCanonical>? _parent;

  /// [parent] Identifies a protocol or workflow that this MessageDefinition
  ///  represents a step in.
  @override
  List<FhirCanonical>? get parent {
    final value = _parent;
    if (value == null) return null;
    if (_parent is EqualUnmodifiableListView) return _parent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [eventCoding] Event code or link to the EventDefinition.
  @override
  final Coding? eventCoding;

  /// [eventUri] Event code or link to the EventDefinition.
  @override
  final FhirUri? eventUri;

  /// [eventUriElement] Extensions for eventUri
  @override
  @JsonKey(name: '_eventUri')
  final PrimitiveElement? eventUriElement;

  /// [category] The impact of the content of the message.
  @override
  final FhirCode? category;

  /// [categoryElement] Extensions for category
  @override
  @JsonKey(name: '_category')
  final PrimitiveElement? categoryElement;

  /// [focus] Identifies the resource (or resources) that are being addressed
  /// by the event.  For example, the Encounter for an admit message or two
  ///  Account records for a merge.
  final List<MessageDefinitionFocus>? _focus;

  /// [focus] Identifies the resource (or resources) that are being addressed
  /// by the event.  For example, the Encounter for an admit message or two
  ///  Account records for a merge.
  @override
  List<MessageDefinitionFocus>? get focus {
    final value = _focus;
    if (value == null) return null;
    if (_focus is EqualUnmodifiableListView) return _focus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [responseRequired] Declare at a message definition level whether a
  ///  response is required or only upon error or success, or never.
  @override
  final FhirCode? responseRequired;

  /// [responseRequiredElement] Extensions for responseRequired
  @override
  @JsonKey(name: '_responseRequired')
  final PrimitiveElement? responseRequiredElement;

  /// [allowedResponse] Indicates what types of messages may be sent as an
  ///  application-level response to this message.
  final List<MessageDefinitionAllowedResponse>? _allowedResponse;

  /// [allowedResponse] Indicates what types of messages may be sent as an
  ///  application-level response to this message.
  @override
  List<MessageDefinitionAllowedResponse>? get allowedResponse {
    final value = _allowedResponse;
    if (value == null) return null;
    if (_allowedResponse is EqualUnmodifiableListView) return _allowedResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [graph] Canonical reference to a GraphDefinition. If a URL is provided,
  /// it is the canonical reference to a [[[GraphDefinition]]] that it controls
  /// what resources are to be added to the bundle when building the document.
  /// The GraphDefinition can also specify profiles that apply to the various
  ///  resources.
  final List<FhirCanonical>? _graph;

  /// [graph] Canonical reference to a GraphDefinition. If a URL is provided,
  /// it is the canonical reference to a [[[GraphDefinition]]] that it controls
  /// what resources are to be added to the bundle when building the document.
  /// The GraphDefinition can also specify profiles that apply to the various
  ///  resources.
  @override
  List<FhirCanonical>? get graph {
    final value = _graph;
    if (value == null) return null;
    if (_graph is EqualUnmodifiableListView) return _graph;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDefinitionImpl &&
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
            const DeepCollectionEquality().equals(other._replaces, _replaces) &&
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
            (identical(other.base, base) || other.base == base) &&
            const DeepCollectionEquality().equals(other._parent, _parent) &&
            (identical(other.eventCoding, eventCoding) ||
                other.eventCoding == eventCoding) &&
            (identical(other.eventUri, eventUri) ||
                other.eventUri == eventUri) &&
            (identical(other.eventUriElement, eventUriElement) ||
                other.eventUriElement == eventUriElement) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.categoryElement, categoryElement) ||
                other.categoryElement == categoryElement) &&
            const DeepCollectionEquality().equals(other._focus, _focus) &&
            (identical(other.responseRequired, responseRequired) ||
                other.responseRequired == responseRequired) &&
            (identical(
                    other.responseRequiredElement, responseRequiredElement) ||
                other.responseRequiredElement == responseRequiredElement) &&
            const DeepCollectionEquality()
                .equals(other._allowedResponse, _allowedResponse) &&
            const DeepCollectionEquality().equals(other._graph, _graph));
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
        const DeepCollectionEquality().hash(_replaces),
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
        base,
        const DeepCollectionEquality().hash(_parent),
        eventCoding,
        eventUri,
        eventUriElement,
        category,
        categoryElement,
        const DeepCollectionEquality().hash(_focus),
        responseRequired,
        responseRequiredElement,
        const DeepCollectionEquality().hash(_allowedResponse),
        const DeepCollectionEquality().hash(_graph)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDefinitionImplCopyWith<_$MessageDefinitionImpl> get copyWith =>
      __$$MessageDefinitionImplCopyWithImpl<_$MessageDefinitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageDefinitionImplToJson(
      this,
    );
  }
}

abstract class _MessageDefinition extends MessageDefinition {
  const factory _MessageDefinition(
      {@JsonKey(unknownEnumValue: R4ResourceType.MessageDefinition)
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
      final List<FhirCanonical>? replaces,
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
      final FhirCanonical? base,
      final List<FhirCanonical>? parent,
      final Coding? eventCoding,
      final FhirUri? eventUri,
      @JsonKey(name: '_eventUri') final PrimitiveElement? eventUriElement,
      final FhirCode? category,
      @JsonKey(name: '_category') final PrimitiveElement? categoryElement,
      final List<MessageDefinitionFocus>? focus,
      final FhirCode? responseRequired,
      @JsonKey(name: '_responseRequired')
      final PrimitiveElement? responseRequiredElement,
      final List<MessageDefinitionAllowedResponse>? allowedResponse,
      final List<FhirCanonical>? graph}) = _$MessageDefinitionImpl;
  const _MessageDefinition._() : super._();

  factory _MessageDefinition.fromJson(Map<String, dynamic> json) =
      _$MessageDefinitionImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.MessageDefinition)
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

  /// [url] The business identifier that is used to reference the
  /// MessageDefinition and *is* expected to be consistent from server to
  ///  server.
  FhirUri? get url;
  @override

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override

  /// [identifier] A formal identifier that is used to identify this message
  /// definition when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  List<Identifier>? get identifier;
  @override

  /// [version] The identifier that is used to identify this version of the
  /// message definition when it is referenced in a specification, model, design
  /// or instance. This is an arbitrary value managed by the message definition
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There
  /// is also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  String? get version;
  @override

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement;
  @override

  /// [name] A natural language name identifying the message definition. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [title] A short, descriptive, user-friendly title for the message
  ///  definition.
  String? get title;
  @override

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;
  @override

  /// [replaces] A MessageDefinition that is superseded by this definition.
  List<FhirCanonical>? get replaces;
  @override

  /// [status] The status of this message definition. Enables tracking the
  ///  life-cycle of the content.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [experimental] A Boolean value to indicate that this message definition
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  FhirBoolean? get experimental;
  @override

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement;
  @override

  /// [date] The date  (and optionally time) when the message definition was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the message definition changes.
  FhirDateTime? get date;
  @override

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override

  /// [publisher] The name of the organization or individual that published the
  ///  message definition.
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

  /// [description] A free text natural language description of the message
  ///  definition from a consumer's perspective.
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
  ///  and searching for appropriate message definition instances.
  List<UsageContext>? get useContext;
  @override

  /// [jurisdiction] A legal or geographic region in which the message
  ///  definition is intended to be used.
  List<CodeableConcept>? get jurisdiction;
  @override

  /// [purpose] Explanation of why this message definition is needed and why it
  ///  has been designed as it has.
  FhirMarkdown? get purpose;
  @override

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement;
  @override

  /// [copyright] A copyright statement relating to the message definition
  /// and/or its contents. Copyright statements are generally legal restrictions
  ///  on the use and publishing of the message definition.
  FhirMarkdown? get copyright;
  @override

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement;
  @override

  /// [base] The MessageDefinition that is the basis for the contents of this
  ///  resource.
  FhirCanonical? get base;
  @override

  /// [parent] Identifies a protocol or workflow that this MessageDefinition
  ///  represents a step in.
  List<FhirCanonical>? get parent;
  @override

  /// [eventCoding] Event code or link to the EventDefinition.
  Coding? get eventCoding;
  @override

  /// [eventUri] Event code or link to the EventDefinition.
  FhirUri? get eventUri;
  @override

  /// [eventUriElement] Extensions for eventUri
  @JsonKey(name: '_eventUri')
  PrimitiveElement? get eventUriElement;
  @override

  /// [category] The impact of the content of the message.
  FhirCode? get category;
  @override

  /// [categoryElement] Extensions for category
  @JsonKey(name: '_category')
  PrimitiveElement? get categoryElement;
  @override

  /// [focus] Identifies the resource (or resources) that are being addressed
  /// by the event.  For example, the Encounter for an admit message or two
  ///  Account records for a merge.
  List<MessageDefinitionFocus>? get focus;
  @override

  /// [responseRequired] Declare at a message definition level whether a
  ///  response is required or only upon error or success, or never.
  FhirCode? get responseRequired;
  @override

  /// [responseRequiredElement] Extensions for responseRequired
  @JsonKey(name: '_responseRequired')
  PrimitiveElement? get responseRequiredElement;
  @override

  /// [allowedResponse] Indicates what types of messages may be sent as an
  ///  application-level response to this message.
  List<MessageDefinitionAllowedResponse>? get allowedResponse;
  @override

  /// [graph] Canonical reference to a GraphDefinition. If a URL is provided,
  /// it is the canonical reference to a [[[GraphDefinition]]] that it controls
  /// what resources are to be added to the bundle when building the document.
  /// The GraphDefinition can also specify profiles that apply to the various
  ///  resources.
  List<FhirCanonical>? get graph;
  @override
  @JsonKey(ignore: true)
  _$$MessageDefinitionImplCopyWith<_$MessageDefinitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageDefinitionFocus _$MessageDefinitionFocusFromJson(
    Map<String, dynamic> json) {
  return _MessageDefinitionFocus.fromJson(json);
}

/// @nodoc
mixin _$MessageDefinitionFocus {
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

  /// [code] The kind of resource that must be the focus for this message.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement => throw _privateConstructorUsedError;

  /// [profile] A profile that reflects constraints for the focal resource (and
  ///  potentially for related resources).
  FhirCanonical? get profile => throw _privateConstructorUsedError;

  /// [min] Identifies the minimum number of resources of this type that must
  /// be pointed to by a message in order for it to be valid against this
  ///  MessageDefinition.
  FhirUnsignedInt? get min => throw _privateConstructorUsedError;

  /// [minElement] Extensions for min
  @JsonKey(name: '_min')
  PrimitiveElement? get minElement => throw _privateConstructorUsedError;

  /// [max] Identifies the maximum number of resources of this type that must
  /// be pointed to by a message in order for it to be valid against this
  ///  MessageDefinition.
  String? get max => throw _privateConstructorUsedError;

  /// [maxElement] Extensions for max
  @JsonKey(name: '_max')
  PrimitiveElement? get maxElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageDefinitionFocusCopyWith<MessageDefinitionFocus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDefinitionFocusCopyWith<$Res> {
  factory $MessageDefinitionFocusCopyWith(MessageDefinitionFocus value,
          $Res Function(MessageDefinitionFocus) then) =
      _$MessageDefinitionFocusCopyWithImpl<$Res, MessageDefinitionFocus>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      FhirCanonical? profile,
      FhirUnsignedInt? min,
      @JsonKey(name: '_min') PrimitiveElement? minElement,
      String? max,
      @JsonKey(name: '_max') PrimitiveElement? maxElement});
}

/// @nodoc
class _$MessageDefinitionFocusCopyWithImpl<$Res,
        $Val extends MessageDefinitionFocus>
    implements $MessageDefinitionFocusCopyWith<$Res> {
  _$MessageDefinitionFocusCopyWithImpl(this._value, this._then);

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
    Object? codeElement = freezed,
    Object? profile = freezed,
    Object? min = freezed,
    Object? minElement = freezed,
    Object? max = freezed,
    Object? maxElement = freezed,
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
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      minElement: freezed == minElement
          ? _value.minElement
          : minElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as String?,
      maxElement: freezed == maxElement
          ? _value.maxElement
          : maxElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageDefinitionFocusImplCopyWith<$Res>
    implements $MessageDefinitionFocusCopyWith<$Res> {
  factory _$$MessageDefinitionFocusImplCopyWith(
          _$MessageDefinitionFocusImpl value,
          $Res Function(_$MessageDefinitionFocusImpl) then) =
      __$$MessageDefinitionFocusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      FhirCanonical? profile,
      FhirUnsignedInt? min,
      @JsonKey(name: '_min') PrimitiveElement? minElement,
      String? max,
      @JsonKey(name: '_max') PrimitiveElement? maxElement});
}

/// @nodoc
class __$$MessageDefinitionFocusImplCopyWithImpl<$Res>
    extends _$MessageDefinitionFocusCopyWithImpl<$Res,
        _$MessageDefinitionFocusImpl>
    implements _$$MessageDefinitionFocusImplCopyWith<$Res> {
  __$$MessageDefinitionFocusImplCopyWithImpl(
      _$MessageDefinitionFocusImpl _value,
      $Res Function(_$MessageDefinitionFocusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? profile = freezed,
    Object? min = freezed,
    Object? minElement = freezed,
    Object? max = freezed,
    Object? maxElement = freezed,
  }) {
    return _then(_$MessageDefinitionFocusImpl(
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
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      minElement: freezed == minElement
          ? _value.minElement
          : minElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as String?,
      maxElement: freezed == maxElement
          ? _value.maxElement
          : maxElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageDefinitionFocusImpl extends _MessageDefinitionFocus {
  const _$MessageDefinitionFocusImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      this.profile,
      this.min,
      @JsonKey(name: '_min') this.minElement,
      this.max,
      @JsonKey(name: '_max') this.maxElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MessageDefinitionFocusImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageDefinitionFocusImplFromJson(json);

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

  /// [code] The kind of resource that must be the focus for this message.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final PrimitiveElement? codeElement;

  /// [profile] A profile that reflects constraints for the focal resource (and
  ///  potentially for related resources).
  @override
  final FhirCanonical? profile;

  /// [min] Identifies the minimum number of resources of this type that must
  /// be pointed to by a message in order for it to be valid against this
  ///  MessageDefinition.
  @override
  final FhirUnsignedInt? min;

  /// [minElement] Extensions for min
  @override
  @JsonKey(name: '_min')
  final PrimitiveElement? minElement;

  /// [max] Identifies the maximum number of resources of this type that must
  /// be pointed to by a message in order for it to be valid against this
  ///  MessageDefinition.
  @override
  final String? max;

  /// [maxElement] Extensions for max
  @override
  @JsonKey(name: '_max')
  final PrimitiveElement? maxElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDefinitionFocusImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.minElement, minElement) ||
                other.minElement == minElement) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.maxElement, maxElement) ||
                other.maxElement == maxElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      code,
      codeElement,
      profile,
      min,
      minElement,
      max,
      maxElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDefinitionFocusImplCopyWith<_$MessageDefinitionFocusImpl>
      get copyWith => __$$MessageDefinitionFocusImplCopyWithImpl<
          _$MessageDefinitionFocusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageDefinitionFocusImplToJson(
      this,
    );
  }
}

abstract class _MessageDefinitionFocus extends MessageDefinitionFocus {
  const factory _MessageDefinitionFocus(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCode? code,
          @JsonKey(name: '_code') final PrimitiveElement? codeElement,
          final FhirCanonical? profile,
          final FhirUnsignedInt? min,
          @JsonKey(name: '_min') final PrimitiveElement? minElement,
          final String? max,
          @JsonKey(name: '_max') final PrimitiveElement? maxElement}) =
      _$MessageDefinitionFocusImpl;
  const _MessageDefinitionFocus._() : super._();

  factory _MessageDefinitionFocus.fromJson(Map<String, dynamic> json) =
      _$MessageDefinitionFocusImpl.fromJson;

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

  /// [code] The kind of resource that must be the focus for this message.
  FhirCode? get code;
  @override

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement;
  @override

  /// [profile] A profile that reflects constraints for the focal resource (and
  ///  potentially for related resources).
  FhirCanonical? get profile;
  @override

  /// [min] Identifies the minimum number of resources of this type that must
  /// be pointed to by a message in order for it to be valid against this
  ///  MessageDefinition.
  FhirUnsignedInt? get min;
  @override

  /// [minElement] Extensions for min
  @JsonKey(name: '_min')
  PrimitiveElement? get minElement;
  @override

  /// [max] Identifies the maximum number of resources of this type that must
  /// be pointed to by a message in order for it to be valid against this
  ///  MessageDefinition.
  String? get max;
  @override

  /// [maxElement] Extensions for max
  @JsonKey(name: '_max')
  PrimitiveElement? get maxElement;
  @override
  @JsonKey(ignore: true)
  _$$MessageDefinitionFocusImplCopyWith<_$MessageDefinitionFocusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MessageDefinitionAllowedResponse _$MessageDefinitionAllowedResponseFromJson(
    Map<String, dynamic> json) {
  return _MessageDefinitionAllowedResponse.fromJson(json);
}

/// @nodoc
mixin _$MessageDefinitionAllowedResponse {
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

  /// [message] A reference to the message definition that must be adhered to
  ///  by this supported response.
  FhirCanonical get message => throw _privateConstructorUsedError;

  /// [situation] Provides a description of the circumstances in which this
  ///  response should be used (as opposed to one of the alternative responses).
  FhirMarkdown? get situation => throw _privateConstructorUsedError;

  /// [situationElement] Extensions for situation
  @JsonKey(name: '_situation')
  PrimitiveElement? get situationElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageDefinitionAllowedResponseCopyWith<MessageDefinitionAllowedResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDefinitionAllowedResponseCopyWith<$Res> {
  factory $MessageDefinitionAllowedResponseCopyWith(
          MessageDefinitionAllowedResponse value,
          $Res Function(MessageDefinitionAllowedResponse) then) =
      _$MessageDefinitionAllowedResponseCopyWithImpl<$Res,
          MessageDefinitionAllowedResponse>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCanonical message,
      FhirMarkdown? situation,
      @JsonKey(name: '_situation') PrimitiveElement? situationElement});
}

/// @nodoc
class _$MessageDefinitionAllowedResponseCopyWithImpl<$Res,
        $Val extends MessageDefinitionAllowedResponse>
    implements $MessageDefinitionAllowedResponseCopyWith<$Res> {
  _$MessageDefinitionAllowedResponseCopyWithImpl(this._value, this._then);

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
    Object? message = null,
    Object? situation = freezed,
    Object? situationElement = freezed,
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
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
      situation: freezed == situation
          ? _value.situation
          : situation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      situationElement: freezed == situationElement
          ? _value.situationElement
          : situationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageDefinitionAllowedResponseImplCopyWith<$Res>
    implements $MessageDefinitionAllowedResponseCopyWith<$Res> {
  factory _$$MessageDefinitionAllowedResponseImplCopyWith(
          _$MessageDefinitionAllowedResponseImpl value,
          $Res Function(_$MessageDefinitionAllowedResponseImpl) then) =
      __$$MessageDefinitionAllowedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCanonical message,
      FhirMarkdown? situation,
      @JsonKey(name: '_situation') PrimitiveElement? situationElement});
}

/// @nodoc
class __$$MessageDefinitionAllowedResponseImplCopyWithImpl<$Res>
    extends _$MessageDefinitionAllowedResponseCopyWithImpl<$Res,
        _$MessageDefinitionAllowedResponseImpl>
    implements _$$MessageDefinitionAllowedResponseImplCopyWith<$Res> {
  __$$MessageDefinitionAllowedResponseImplCopyWithImpl(
      _$MessageDefinitionAllowedResponseImpl _value,
      $Res Function(_$MessageDefinitionAllowedResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? message = null,
    Object? situation = freezed,
    Object? situationElement = freezed,
  }) {
    return _then(_$MessageDefinitionAllowedResponseImpl(
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
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
      situation: freezed == situation
          ? _value.situation
          : situation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      situationElement: freezed == situationElement
          ? _value.situationElement
          : situationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageDefinitionAllowedResponseImpl
    extends _MessageDefinitionAllowedResponse {
  const _$MessageDefinitionAllowedResponseImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.message,
      this.situation,
      @JsonKey(name: '_situation') this.situationElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MessageDefinitionAllowedResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MessageDefinitionAllowedResponseImplFromJson(json);

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

  /// [message] A reference to the message definition that must be adhered to
  ///  by this supported response.
  @override
  final FhirCanonical message;

  /// [situation] Provides a description of the circumstances in which this
  ///  response should be used (as opposed to one of the alternative responses).
  @override
  final FhirMarkdown? situation;

  /// [situationElement] Extensions for situation
  @override
  @JsonKey(name: '_situation')
  final PrimitiveElement? situationElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDefinitionAllowedResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.situation, situation) ||
                other.situation == situation) &&
            (identical(other.situationElement, situationElement) ||
                other.situationElement == situationElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      message,
      situation,
      situationElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDefinitionAllowedResponseImplCopyWith<
          _$MessageDefinitionAllowedResponseImpl>
      get copyWith => __$$MessageDefinitionAllowedResponseImplCopyWithImpl<
          _$MessageDefinitionAllowedResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageDefinitionAllowedResponseImplToJson(
      this,
    );
  }
}

abstract class _MessageDefinitionAllowedResponse
    extends MessageDefinitionAllowedResponse {
  const factory _MessageDefinitionAllowedResponse(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final FhirCanonical message,
          final FhirMarkdown? situation,
          @JsonKey(name: '_situation')
          final PrimitiveElement? situationElement}) =
      _$MessageDefinitionAllowedResponseImpl;
  const _MessageDefinitionAllowedResponse._() : super._();

  factory _MessageDefinitionAllowedResponse.fromJson(
          Map<String, dynamic> json) =
      _$MessageDefinitionAllowedResponseImpl.fromJson;

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

  /// [message] A reference to the message definition that must be adhered to
  ///  by this supported response.
  FhirCanonical get message;
  @override

  /// [situation] Provides a description of the circumstances in which this
  ///  response should be used (as opposed to one of the alternative responses).
  FhirMarkdown? get situation;
  @override

  /// [situationElement] Extensions for situation
  @JsonKey(name: '_situation')
  PrimitiveElement? get situationElement;
  @override
  @JsonKey(ignore: true)
  _$$MessageDefinitionAllowedResponseImplCopyWith<
          _$MessageDefinitionAllowedResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
