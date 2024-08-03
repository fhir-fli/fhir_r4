// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_system.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CodeSystem _$CodeSystemFromJson(Map<String, dynamic> json) {
  return _CodeSystem.fromJson(json);
}

/// @nodoc
mixin _$CodeSystem {
  @JsonKey(unknownEnumValue: R4ResourceType.CodeSystem)
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

  /// [url] An absolute URI that is used to identify this code system when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// code system is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the code system is
  /// stored on different servers. This is used in
  ///  [Coding](datatypes.html#Coding).system.
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [identifier] A formal identifier that is used to identify this code
  /// system when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [version] The identifier that is used to identify this version of the
  /// code system when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the code system author and
  /// is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  ///  sequence. This is used in [Coding](datatypes.html#Coding).version.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  /// [name] A natural language name identifying the code system. This name
  /// should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [title] A short, descriptive, user-friendly title for the code system.
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;

  /// [status] The date (and optionally time) when the code system resource was
  ///  created or revised.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [experimental] A Boolean value to indicate that this code system is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  FhirBoolean? get experimental => throw _privateConstructorUsedError;

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement =>
      throw _privateConstructorUsedError;

  /// [date] The date  (and optionally time) when the code system was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the code system changes.
  FhirDateTime? get date => throw _privateConstructorUsedError;

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [publisher] The name of the organization or individual that published the
  ///  code system.
  String? get publisher => throw _privateConstructorUsedError;

  /// [publisherElement] Extensions for publisher
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement => throw _privateConstructorUsedError;

  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  List<ContactDetail>? get contact => throw _privateConstructorUsedError;

  /// [description] A free text natural language description of the code system
  ///  from a consumer's perspective.
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate code system instances.
  List<UsageContext>? get useContext => throw _privateConstructorUsedError;

  /// [jurisdiction] A legal or geographic region in which the code system is
  ///  intended to be used.
  List<CodeableConcept>? get jurisdiction => throw _privateConstructorUsedError;

  /// [purpose] Explanation of why this code system is needed and why it has
  ///  been designed as it has.
  FhirMarkdown? get purpose => throw _privateConstructorUsedError;

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement => throw _privateConstructorUsedError;

  /// [copyright] A copyright statement relating to the code system and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  ///  and publishing of the code system.
  FhirMarkdown? get copyright => throw _privateConstructorUsedError;

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement => throw _privateConstructorUsedError;

  /// [caseSensitive] If code comparison is case sensitive when codes within
  ///  this system are compared to each other.
  FhirBoolean? get caseSensitive => throw _privateConstructorUsedError;

  /// [caseSensitiveElement] Extensions for caseSensitive
  @JsonKey(name: '_caseSensitive')
  PrimitiveElement? get caseSensitiveElement =>
      throw _privateConstructorUsedError;

  /// [valueSet] Canonical reference to the value set that contains the entire
  ///  code system.
  FhirCanonical? get valueSet => throw _privateConstructorUsedError;

  /// [hierarchyMeaning] The meaning of the hierarchy of concepts as
  ///  represented in this resource.
  FhirCode? get hierarchyMeaning => throw _privateConstructorUsedError;

  /// [hierarchyMeaningElement] Extensions for hierarchyMeaning
  @JsonKey(name: '_hierarchyMeaning')
  PrimitiveElement? get hierarchyMeaningElement =>
      throw _privateConstructorUsedError;

  /// [compositional] The code system defines a compositional
  ///  (post-coordination) grammar.
  FhirBoolean? get compositional => throw _privateConstructorUsedError;

  /// [compositionalElement] Extensions for compositional
  @JsonKey(name: '_compositional')
  PrimitiveElement? get compositionalElement =>
      throw _privateConstructorUsedError;

  /// [versionNeeded] This flag is used to signify that the code system does
  /// not commit to concept permanence across versions. If true, a version must
  ///  be specified when referencing this code system.
  FhirBoolean? get versionNeeded => throw _privateConstructorUsedError;

  /// [versionNeededElement] Extensions for versionNeeded
  @JsonKey(name: '_versionNeeded')
  PrimitiveElement? get versionNeededElement =>
      throw _privateConstructorUsedError;

  /// [content] The extent of the content of the code system (the concepts and
  ///  codes it defines) are represented in this resource instance.
  FhirCode? get content => throw _privateConstructorUsedError;

  /// [contentElement] Extensions for content
  @JsonKey(name: '_content')
  PrimitiveElement? get contentElement => throw _privateConstructorUsedError;

  /// [supplements] The canonical URL of the code system that this code system
  ///  supplement is adding designations and properties to.
  FhirCanonical? get supplements => throw _privateConstructorUsedError;

  /// [count] The total number of concepts defined by the code system. Where
  /// the code system has a compositional grammar, the basis of this count is
  ///  defined by the system steward.
  FhirUnsignedInt? get count => throw _privateConstructorUsedError;

  /// [countElement] Extensions for count
  @JsonKey(name: '_count')
  PrimitiveElement? get countElement => throw _privateConstructorUsedError;

  /// [filter] A filter that can be used in a value set compose statement when
  ///  selecting concepts using a filter.
  List<CodeSystemFilter>? get filter => throw _privateConstructorUsedError;

  /// [property] A property defines an additional slot through which additional
  ///  information can be provided about a concept.
  List<CodeSystemProperty>? get property => throw _privateConstructorUsedError;

  /// [concept] Concepts that are in the code system. The concept definitions
  /// are inherently hierarchical, but the definitions must be consulted to
  ///  determine what the meanings of the hierarchical relationships are.
  List<CodeSystemConcept>? get concept => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeSystemCopyWith<CodeSystem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeSystemCopyWith<$Res> {
  factory $CodeSystemCopyWith(
          CodeSystem value, $Res Function(CodeSystem) then) =
      _$CodeSystemCopyWithImpl<$Res, CodeSystem>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.CodeSystem)
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
      FhirBoolean? caseSensitive,
      @JsonKey(name: '_caseSensitive') PrimitiveElement? caseSensitiveElement,
      FhirCanonical? valueSet,
      FhirCode? hierarchyMeaning,
      @JsonKey(name: '_hierarchyMeaning')
      PrimitiveElement? hierarchyMeaningElement,
      FhirBoolean? compositional,
      @JsonKey(name: '_compositional') PrimitiveElement? compositionalElement,
      FhirBoolean? versionNeeded,
      @JsonKey(name: '_versionNeeded') PrimitiveElement? versionNeededElement,
      FhirCode? content,
      @JsonKey(name: '_content') PrimitiveElement? contentElement,
      FhirCanonical? supplements,
      FhirUnsignedInt? count,
      @JsonKey(name: '_count') PrimitiveElement? countElement,
      List<CodeSystemFilter>? filter,
      List<CodeSystemProperty>? property,
      List<CodeSystemConcept>? concept});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
}

/// @nodoc
class _$CodeSystemCopyWithImpl<$Res, $Val extends CodeSystem>
    implements $CodeSystemCopyWith<$Res> {
  _$CodeSystemCopyWithImpl(this._value, this._then);

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
    Object? caseSensitive = freezed,
    Object? caseSensitiveElement = freezed,
    Object? valueSet = freezed,
    Object? hierarchyMeaning = freezed,
    Object? hierarchyMeaningElement = freezed,
    Object? compositional = freezed,
    Object? compositionalElement = freezed,
    Object? versionNeeded = freezed,
    Object? versionNeededElement = freezed,
    Object? content = freezed,
    Object? contentElement = freezed,
    Object? supplements = freezed,
    Object? count = freezed,
    Object? countElement = freezed,
    Object? filter = freezed,
    Object? property = freezed,
    Object? concept = freezed,
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
      caseSensitive: freezed == caseSensitive
          ? _value.caseSensitive
          : caseSensitive // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      caseSensitiveElement: freezed == caseSensitiveElement
          ? _value.caseSensitiveElement
          : caseSensitiveElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueSet: freezed == valueSet
          ? _value.valueSet
          : valueSet // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      hierarchyMeaning: freezed == hierarchyMeaning
          ? _value.hierarchyMeaning
          : hierarchyMeaning // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      hierarchyMeaningElement: freezed == hierarchyMeaningElement
          ? _value.hierarchyMeaningElement
          : hierarchyMeaningElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      compositional: freezed == compositional
          ? _value.compositional
          : compositional // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      compositionalElement: freezed == compositionalElement
          ? _value.compositionalElement
          : compositionalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      versionNeeded: freezed == versionNeeded
          ? _value.versionNeeded
          : versionNeeded // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      versionNeededElement: freezed == versionNeededElement
          ? _value.versionNeededElement
          : versionNeededElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      contentElement: freezed == contentElement
          ? _value.contentElement
          : contentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      supplements: freezed == supplements
          ? _value.supplements
          : supplements // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      countElement: freezed == countElement
          ? _value.countElement
          : countElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<CodeSystemFilter>?,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as List<CodeSystemProperty>?,
      concept: freezed == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as List<CodeSystemConcept>?,
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
}

/// @nodoc
abstract class _$$CodeSystemImplCopyWith<$Res>
    implements $CodeSystemCopyWith<$Res> {
  factory _$$CodeSystemImplCopyWith(
          _$CodeSystemImpl value, $Res Function(_$CodeSystemImpl) then) =
      __$$CodeSystemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.CodeSystem)
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
      FhirBoolean? caseSensitive,
      @JsonKey(name: '_caseSensitive') PrimitiveElement? caseSensitiveElement,
      FhirCanonical? valueSet,
      FhirCode? hierarchyMeaning,
      @JsonKey(name: '_hierarchyMeaning')
      PrimitiveElement? hierarchyMeaningElement,
      FhirBoolean? compositional,
      @JsonKey(name: '_compositional') PrimitiveElement? compositionalElement,
      FhirBoolean? versionNeeded,
      @JsonKey(name: '_versionNeeded') PrimitiveElement? versionNeededElement,
      FhirCode? content,
      @JsonKey(name: '_content') PrimitiveElement? contentElement,
      FhirCanonical? supplements,
      FhirUnsignedInt? count,
      @JsonKey(name: '_count') PrimitiveElement? countElement,
      List<CodeSystemFilter>? filter,
      List<CodeSystemProperty>? property,
      List<CodeSystemConcept>? concept});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
}

/// @nodoc
class __$$CodeSystemImplCopyWithImpl<$Res>
    extends _$CodeSystemCopyWithImpl<$Res, _$CodeSystemImpl>
    implements _$$CodeSystemImplCopyWith<$Res> {
  __$$CodeSystemImplCopyWithImpl(
      _$CodeSystemImpl _value, $Res Function(_$CodeSystemImpl) _then)
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
    Object? caseSensitive = freezed,
    Object? caseSensitiveElement = freezed,
    Object? valueSet = freezed,
    Object? hierarchyMeaning = freezed,
    Object? hierarchyMeaningElement = freezed,
    Object? compositional = freezed,
    Object? compositionalElement = freezed,
    Object? versionNeeded = freezed,
    Object? versionNeededElement = freezed,
    Object? content = freezed,
    Object? contentElement = freezed,
    Object? supplements = freezed,
    Object? count = freezed,
    Object? countElement = freezed,
    Object? filter = freezed,
    Object? property = freezed,
    Object? concept = freezed,
  }) {
    return _then(_$CodeSystemImpl(
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
      caseSensitive: freezed == caseSensitive
          ? _value.caseSensitive
          : caseSensitive // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      caseSensitiveElement: freezed == caseSensitiveElement
          ? _value.caseSensitiveElement
          : caseSensitiveElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueSet: freezed == valueSet
          ? _value.valueSet
          : valueSet // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      hierarchyMeaning: freezed == hierarchyMeaning
          ? _value.hierarchyMeaning
          : hierarchyMeaning // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      hierarchyMeaningElement: freezed == hierarchyMeaningElement
          ? _value.hierarchyMeaningElement
          : hierarchyMeaningElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      compositional: freezed == compositional
          ? _value.compositional
          : compositional // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      compositionalElement: freezed == compositionalElement
          ? _value.compositionalElement
          : compositionalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      versionNeeded: freezed == versionNeeded
          ? _value.versionNeeded
          : versionNeeded // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      versionNeededElement: freezed == versionNeededElement
          ? _value.versionNeededElement
          : versionNeededElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      contentElement: freezed == contentElement
          ? _value.contentElement
          : contentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      supplements: freezed == supplements
          ? _value.supplements
          : supplements // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      countElement: freezed == countElement
          ? _value.countElement
          : countElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      filter: freezed == filter
          ? _value._filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<CodeSystemFilter>?,
      property: freezed == property
          ? _value._property
          : property // ignore: cast_nullable_to_non_nullable
              as List<CodeSystemProperty>?,
      concept: freezed == concept
          ? _value._concept
          : concept // ignore: cast_nullable_to_non_nullable
              as List<CodeSystemConcept>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeSystemImpl extends _CodeSystem {
  const _$CodeSystemImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.CodeSystem)
      this.resourceType = R4ResourceType.CodeSystem,
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
      this.caseSensitive,
      @JsonKey(name: '_caseSensitive') this.caseSensitiveElement,
      this.valueSet,
      this.hierarchyMeaning,
      @JsonKey(name: '_hierarchyMeaning') this.hierarchyMeaningElement,
      this.compositional,
      @JsonKey(name: '_compositional') this.compositionalElement,
      this.versionNeeded,
      @JsonKey(name: '_versionNeeded') this.versionNeededElement,
      this.content,
      @JsonKey(name: '_content') this.contentElement,
      this.supplements,
      this.count,
      @JsonKey(name: '_count') this.countElement,
      final List<CodeSystemFilter>? filter,
      final List<CodeSystemProperty>? property,
      final List<CodeSystemConcept>? concept})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _contact = contact,
        _useContext = useContext,
        _jurisdiction = jurisdiction,
        _filter = filter,
        _property = property,
        _concept = concept,
        super._();

  factory _$CodeSystemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeSystemImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.CodeSystem)
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

  /// [url] An absolute URI that is used to identify this code system when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// code system is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the code system is
  /// stored on different servers. This is used in
  ///  [Coding](datatypes.html#Coding).system.
  @override
  final FhirUri? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [identifier] A formal identifier that is used to identify this code
  /// system when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  final List<Identifier>? _identifier;

  /// [identifier] A formal identifier that is used to identify this code
  /// system when it is represented in other formats, or referenced in a
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
  /// code system when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the code system author and
  /// is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  ///  sequence. This is used in [Coding](datatypes.html#Coding).version.
  @override
  final String? version;

  /// [versionElement] Extensions for version
  @override
  @JsonKey(name: '_version')
  final PrimitiveElement? versionElement;

  /// [name] A natural language name identifying the code system. This name
  /// should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [title] A short, descriptive, user-friendly title for the code system.
  @override
  final String? title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;

  /// [status] The date (and optionally time) when the code system resource was
  ///  created or revised.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [experimental] A Boolean value to indicate that this code system is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  @override
  final FhirBoolean? experimental;

  /// [experimentalElement] Extensions for experimental
  @override
  @JsonKey(name: '_experimental')
  final PrimitiveElement? experimentalElement;

  /// [date] The date  (and optionally time) when the code system was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the code system changes.
  @override
  final FhirDateTime? date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [publisher] The name of the organization or individual that published the
  ///  code system.
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

  /// [description] A free text natural language description of the code system
  ///  from a consumer's perspective.
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
  ///  and searching for appropriate code system instances.
  final List<UsageContext>? _useContext;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate code system instances.
  @override
  List<UsageContext>? get useContext {
    final value = _useContext;
    if (value == null) return null;
    if (_useContext is EqualUnmodifiableListView) return _useContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [jurisdiction] A legal or geographic region in which the code system is
  ///  intended to be used.
  final List<CodeableConcept>? _jurisdiction;

  /// [jurisdiction] A legal or geographic region in which the code system is
  ///  intended to be used.
  @override
  List<CodeableConcept>? get jurisdiction {
    final value = _jurisdiction;
    if (value == null) return null;
    if (_jurisdiction is EqualUnmodifiableListView) return _jurisdiction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [purpose] Explanation of why this code system is needed and why it has
  ///  been designed as it has.
  @override
  final FhirMarkdown? purpose;

  /// [purposeElement] Extensions for purpose
  @override
  @JsonKey(name: '_purpose')
  final PrimitiveElement? purposeElement;

  /// [copyright] A copyright statement relating to the code system and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  ///  and publishing of the code system.
  @override
  final FhirMarkdown? copyright;

  /// [copyrightElement] Extensions for copyright
  @override
  @JsonKey(name: '_copyright')
  final PrimitiveElement? copyrightElement;

  /// [caseSensitive] If code comparison is case sensitive when codes within
  ///  this system are compared to each other.
  @override
  final FhirBoolean? caseSensitive;

  /// [caseSensitiveElement] Extensions for caseSensitive
  @override
  @JsonKey(name: '_caseSensitive')
  final PrimitiveElement? caseSensitiveElement;

  /// [valueSet] Canonical reference to the value set that contains the entire
  ///  code system.
  @override
  final FhirCanonical? valueSet;

  /// [hierarchyMeaning] The meaning of the hierarchy of concepts as
  ///  represented in this resource.
  @override
  final FhirCode? hierarchyMeaning;

  /// [hierarchyMeaningElement] Extensions for hierarchyMeaning
  @override
  @JsonKey(name: '_hierarchyMeaning')
  final PrimitiveElement? hierarchyMeaningElement;

  /// [compositional] The code system defines a compositional
  ///  (post-coordination) grammar.
  @override
  final FhirBoolean? compositional;

  /// [compositionalElement] Extensions for compositional
  @override
  @JsonKey(name: '_compositional')
  final PrimitiveElement? compositionalElement;

  /// [versionNeeded] This flag is used to signify that the code system does
  /// not commit to concept permanence across versions. If true, a version must
  ///  be specified when referencing this code system.
  @override
  final FhirBoolean? versionNeeded;

  /// [versionNeededElement] Extensions for versionNeeded
  @override
  @JsonKey(name: '_versionNeeded')
  final PrimitiveElement? versionNeededElement;

  /// [content] The extent of the content of the code system (the concepts and
  ///  codes it defines) are represented in this resource instance.
  @override
  final FhirCode? content;

  /// [contentElement] Extensions for content
  @override
  @JsonKey(name: '_content')
  final PrimitiveElement? contentElement;

  /// [supplements] The canonical URL of the code system that this code system
  ///  supplement is adding designations and properties to.
  @override
  final FhirCanonical? supplements;

  /// [count] The total number of concepts defined by the code system. Where
  /// the code system has a compositional grammar, the basis of this count is
  ///  defined by the system steward.
  @override
  final FhirUnsignedInt? count;

  /// [countElement] Extensions for count
  @override
  @JsonKey(name: '_count')
  final PrimitiveElement? countElement;

  /// [filter] A filter that can be used in a value set compose statement when
  ///  selecting concepts using a filter.
  final List<CodeSystemFilter>? _filter;

  /// [filter] A filter that can be used in a value set compose statement when
  ///  selecting concepts using a filter.
  @override
  List<CodeSystemFilter>? get filter {
    final value = _filter;
    if (value == null) return null;
    if (_filter is EqualUnmodifiableListView) return _filter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [property] A property defines an additional slot through which additional
  ///  information can be provided about a concept.
  final List<CodeSystemProperty>? _property;

  /// [property] A property defines an additional slot through which additional
  ///  information can be provided about a concept.
  @override
  List<CodeSystemProperty>? get property {
    final value = _property;
    if (value == null) return null;
    if (_property is EqualUnmodifiableListView) return _property;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [concept] Concepts that are in the code system. The concept definitions
  /// are inherently hierarchical, but the definitions must be consulted to
  ///  determine what the meanings of the hierarchical relationships are.
  final List<CodeSystemConcept>? _concept;

  /// [concept] Concepts that are in the code system. The concept definitions
  /// are inherently hierarchical, but the definitions must be consulted to
  ///  determine what the meanings of the hierarchical relationships are.
  @override
  List<CodeSystemConcept>? get concept {
    final value = _concept;
    if (value == null) return null;
    if (_concept is EqualUnmodifiableListView) return _concept;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeSystemImpl &&
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
            (identical(other.caseSensitive, caseSensitive) ||
                other.caseSensitive == caseSensitive) &&
            (identical(other.caseSensitiveElement, caseSensitiveElement) ||
                other.caseSensitiveElement == caseSensitiveElement) &&
            (identical(other.valueSet, valueSet) ||
                other.valueSet == valueSet) &&
            (identical(other.hierarchyMeaning, hierarchyMeaning) ||
                other.hierarchyMeaning == hierarchyMeaning) &&
            (identical(
                    other.hierarchyMeaningElement, hierarchyMeaningElement) ||
                other.hierarchyMeaningElement == hierarchyMeaningElement) &&
            (identical(other.compositional, compositional) ||
                other.compositional == compositional) &&
            (identical(other.compositionalElement, compositionalElement) ||
                other.compositionalElement == compositionalElement) &&
            (identical(other.versionNeeded, versionNeeded) ||
                other.versionNeeded == versionNeeded) &&
            (identical(other.versionNeededElement, versionNeededElement) ||
                other.versionNeededElement == versionNeededElement) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.contentElement, contentElement) ||
                other.contentElement == contentElement) &&
            (identical(other.supplements, supplements) ||
                other.supplements == supplements) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.countElement, countElement) ||
                other.countElement == countElement) &&
            const DeepCollectionEquality().equals(other._filter, _filter) &&
            const DeepCollectionEquality().equals(other._property, _property) &&
            const DeepCollectionEquality().equals(other._concept, _concept));
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
        caseSensitive,
        caseSensitiveElement,
        valueSet,
        hierarchyMeaning,
        hierarchyMeaningElement,
        compositional,
        compositionalElement,
        versionNeeded,
        versionNeededElement,
        content,
        contentElement,
        supplements,
        count,
        countElement,
        const DeepCollectionEquality().hash(_filter),
        const DeepCollectionEquality().hash(_property),
        const DeepCollectionEquality().hash(_concept)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeSystemImplCopyWith<_$CodeSystemImpl> get copyWith =>
      __$$CodeSystemImplCopyWithImpl<_$CodeSystemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeSystemImplToJson(
      this,
    );
  }
}

abstract class _CodeSystem extends CodeSystem {
  const factory _CodeSystem(
      {@JsonKey(unknownEnumValue: R4ResourceType.CodeSystem)
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
      final FhirBoolean? caseSensitive,
      @JsonKey(name: '_caseSensitive')
      final PrimitiveElement? caseSensitiveElement,
      final FhirCanonical? valueSet,
      final FhirCode? hierarchyMeaning,
      @JsonKey(name: '_hierarchyMeaning')
      final PrimitiveElement? hierarchyMeaningElement,
      final FhirBoolean? compositional,
      @JsonKey(name: '_compositional')
      final PrimitiveElement? compositionalElement,
      final FhirBoolean? versionNeeded,
      @JsonKey(name: '_versionNeeded')
      final PrimitiveElement? versionNeededElement,
      final FhirCode? content,
      @JsonKey(name: '_content') final PrimitiveElement? contentElement,
      final FhirCanonical? supplements,
      final FhirUnsignedInt? count,
      @JsonKey(name: '_count') final PrimitiveElement? countElement,
      final List<CodeSystemFilter>? filter,
      final List<CodeSystemProperty>? property,
      final List<CodeSystemConcept>? concept}) = _$CodeSystemImpl;
  const _CodeSystem._() : super._();

  factory _CodeSystem.fromJson(Map<String, dynamic> json) =
      _$CodeSystemImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.CodeSystem)
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

  /// [url] An absolute URI that is used to identify this code system when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// code system is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the code system is
  /// stored on different servers. This is used in
  ///  [Coding](datatypes.html#Coding).system.
  FhirUri? get url;
  @override

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override

  /// [identifier] A formal identifier that is used to identify this code
  /// system when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  List<Identifier>? get identifier;
  @override

  /// [version] The identifier that is used to identify this version of the
  /// code system when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the code system author and
  /// is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  ///  sequence. This is used in [Coding](datatypes.html#Coding).version.
  String? get version;
  @override

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement;
  @override

  /// [name] A natural language name identifying the code system. This name
  /// should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [title] A short, descriptive, user-friendly title for the code system.
  String? get title;
  @override

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;
  @override

  /// [status] The date (and optionally time) when the code system resource was
  ///  created or revised.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [experimental] A Boolean value to indicate that this code system is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  FhirBoolean? get experimental;
  @override

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement;
  @override

  /// [date] The date  (and optionally time) when the code system was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the code system changes.
  FhirDateTime? get date;
  @override

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override

  /// [publisher] The name of the organization or individual that published the
  ///  code system.
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

  /// [description] A free text natural language description of the code system
  ///  from a consumer's perspective.
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
  ///  and searching for appropriate code system instances.
  List<UsageContext>? get useContext;
  @override

  /// [jurisdiction] A legal or geographic region in which the code system is
  ///  intended to be used.
  List<CodeableConcept>? get jurisdiction;
  @override

  /// [purpose] Explanation of why this code system is needed and why it has
  ///  been designed as it has.
  FhirMarkdown? get purpose;
  @override

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement;
  @override

  /// [copyright] A copyright statement relating to the code system and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  ///  and publishing of the code system.
  FhirMarkdown? get copyright;
  @override

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement;
  @override

  /// [caseSensitive] If code comparison is case sensitive when codes within
  ///  this system are compared to each other.
  FhirBoolean? get caseSensitive;
  @override

  /// [caseSensitiveElement] Extensions for caseSensitive
  @JsonKey(name: '_caseSensitive')
  PrimitiveElement? get caseSensitiveElement;
  @override

  /// [valueSet] Canonical reference to the value set that contains the entire
  ///  code system.
  FhirCanonical? get valueSet;
  @override

  /// [hierarchyMeaning] The meaning of the hierarchy of concepts as
  ///  represented in this resource.
  FhirCode? get hierarchyMeaning;
  @override

  /// [hierarchyMeaningElement] Extensions for hierarchyMeaning
  @JsonKey(name: '_hierarchyMeaning')
  PrimitiveElement? get hierarchyMeaningElement;
  @override

  /// [compositional] The code system defines a compositional
  ///  (post-coordination) grammar.
  FhirBoolean? get compositional;
  @override

  /// [compositionalElement] Extensions for compositional
  @JsonKey(name: '_compositional')
  PrimitiveElement? get compositionalElement;
  @override

  /// [versionNeeded] This flag is used to signify that the code system does
  /// not commit to concept permanence across versions. If true, a version must
  ///  be specified when referencing this code system.
  FhirBoolean? get versionNeeded;
  @override

  /// [versionNeededElement] Extensions for versionNeeded
  @JsonKey(name: '_versionNeeded')
  PrimitiveElement? get versionNeededElement;
  @override

  /// [content] The extent of the content of the code system (the concepts and
  ///  codes it defines) are represented in this resource instance.
  FhirCode? get content;
  @override

  /// [contentElement] Extensions for content
  @JsonKey(name: '_content')
  PrimitiveElement? get contentElement;
  @override

  /// [supplements] The canonical URL of the code system that this code system
  ///  supplement is adding designations and properties to.
  FhirCanonical? get supplements;
  @override

  /// [count] The total number of concepts defined by the code system. Where
  /// the code system has a compositional grammar, the basis of this count is
  ///  defined by the system steward.
  FhirUnsignedInt? get count;
  @override

  /// [countElement] Extensions for count
  @JsonKey(name: '_count')
  PrimitiveElement? get countElement;
  @override

  /// [filter] A filter that can be used in a value set compose statement when
  ///  selecting concepts using a filter.
  List<CodeSystemFilter>? get filter;
  @override

  /// [property] A property defines an additional slot through which additional
  ///  information can be provided about a concept.
  List<CodeSystemProperty>? get property;
  @override

  /// [concept] Concepts that are in the code system. The concept definitions
  /// are inherently hierarchical, but the definitions must be consulted to
  ///  determine what the meanings of the hierarchical relationships are.
  List<CodeSystemConcept>? get concept;
  @override
  @JsonKey(ignore: true)
  _$$CodeSystemImplCopyWith<_$CodeSystemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CodeSystemFilter _$CodeSystemFilterFromJson(Map<String, dynamic> json) {
  return _CodeSystemFilter.fromJson(json);
}

/// @nodoc
mixin _$CodeSystemFilter {
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

  /// [code] The code that identifies this filter when it is used as a filter
  ///  in [[[ValueSet]]].compose.include.filter.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement => throw _privateConstructorUsedError;

  /// [description] A description of how or why the filter is used.
  String? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [operator] A list of operators that can be used with the filter.
  @JsonKey(name: 'operator')
  List<FhirCode>? get operator_ => throw _privateConstructorUsedError;

  /// [operatorElement] Extensions for operator
  @JsonKey(name: '_operator')
  List<PrimitiveElement>? get operatorElement =>
      throw _privateConstructorUsedError;

  /// [value] A description of what the value for the filter should be.
  String? get value => throw _privateConstructorUsedError;

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeSystemFilterCopyWith<CodeSystemFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeSystemFilterCopyWith<$Res> {
  factory $CodeSystemFilterCopyWith(
          CodeSystemFilter value, $Res Function(CodeSystemFilter) then) =
      _$CodeSystemFilterCopyWithImpl<$Res, CodeSystemFilter>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      @JsonKey(name: 'operator') List<FhirCode>? operator_,
      @JsonKey(name: '_operator') List<PrimitiveElement>? operatorElement,
      String? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement});
}

/// @nodoc
class _$CodeSystemFilterCopyWithImpl<$Res, $Val extends CodeSystemFilter>
    implements $CodeSystemFilterCopyWith<$Res> {
  _$CodeSystemFilterCopyWithImpl(this._value, this._then);

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
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? operator_ = freezed,
    Object? operatorElement = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      operator_: freezed == operator_
          ? _value.operator_
          : operator_ // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      operatorElement: freezed == operatorElement
          ? _value.operatorElement
          : operatorElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CodeSystemFilterImplCopyWith<$Res>
    implements $CodeSystemFilterCopyWith<$Res> {
  factory _$$CodeSystemFilterImplCopyWith(_$CodeSystemFilterImpl value,
          $Res Function(_$CodeSystemFilterImpl) then) =
      __$$CodeSystemFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      @JsonKey(name: 'operator') List<FhirCode>? operator_,
      @JsonKey(name: '_operator') List<PrimitiveElement>? operatorElement,
      String? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement});
}

/// @nodoc
class __$$CodeSystemFilterImplCopyWithImpl<$Res>
    extends _$CodeSystemFilterCopyWithImpl<$Res, _$CodeSystemFilterImpl>
    implements _$$CodeSystemFilterImplCopyWith<$Res> {
  __$$CodeSystemFilterImplCopyWithImpl(_$CodeSystemFilterImpl _value,
      $Res Function(_$CodeSystemFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? operator_ = freezed,
    Object? operatorElement = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
  }) {
    return _then(_$CodeSystemFilterImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      operator_: freezed == operator_
          ? _value._operator_
          : operator_ // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      operatorElement: freezed == operatorElement
          ? _value._operatorElement
          : operatorElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeSystemFilterImpl extends _CodeSystemFilter {
  const _$CodeSystemFilterImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      @JsonKey(name: 'operator') final List<FhirCode>? operator_,
      @JsonKey(name: '_operator') final List<PrimitiveElement>? operatorElement,
      this.value,
      @JsonKey(name: '_value') this.valueElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _operator_ = operator_,
        _operatorElement = operatorElement,
        super._();

  factory _$CodeSystemFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeSystemFilterImplFromJson(json);

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

  /// [code] The code that identifies this filter when it is used as a filter
  ///  in [[[ValueSet]]].compose.include.filter.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final PrimitiveElement? codeElement;

  /// [description] A description of how or why the filter is used.
  @override
  final String? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [operator] A list of operators that can be used with the filter.
  final List<FhirCode>? _operator_;

  /// [operator] A list of operators that can be used with the filter.
  @override
  @JsonKey(name: 'operator')
  List<FhirCode>? get operator_ {
    final value = _operator_;
    if (value == null) return null;
    if (_operator_ is EqualUnmodifiableListView) return _operator_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [operatorElement] Extensions for operator
  final List<PrimitiveElement>? _operatorElement;

  /// [operatorElement] Extensions for operator
  @override
  @JsonKey(name: '_operator')
  List<PrimitiveElement>? get operatorElement {
    final value = _operatorElement;
    if (value == null) return null;
    if (_operatorElement is EqualUnmodifiableListView) return _operatorElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [value] A description of what the value for the filter should be.
  @override
  final String? value;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  final PrimitiveElement? valueElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeSystemFilterImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            const DeepCollectionEquality()
                .equals(other._operator_, _operator_) &&
            const DeepCollectionEquality()
                .equals(other._operatorElement, _operatorElement) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueElement, valueElement) ||
                other.valueElement == valueElement));
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
      description,
      descriptionElement,
      const DeepCollectionEquality().hash(_operator_),
      const DeepCollectionEquality().hash(_operatorElement),
      value,
      valueElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeSystemFilterImplCopyWith<_$CodeSystemFilterImpl> get copyWith =>
      __$$CodeSystemFilterImplCopyWithImpl<_$CodeSystemFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeSystemFilterImplToJson(
      this,
    );
  }
}

abstract class _CodeSystemFilter extends CodeSystemFilter {
  const factory _CodeSystemFilter(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirCode? code,
      @JsonKey(name: '_code') final PrimitiveElement? codeElement,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      @JsonKey(name: 'operator') final List<FhirCode>? operator_,
      @JsonKey(name: '_operator') final List<PrimitiveElement>? operatorElement,
      final String? value,
      @JsonKey(name: '_value')
      final PrimitiveElement? valueElement}) = _$CodeSystemFilterImpl;
  const _CodeSystemFilter._() : super._();

  factory _CodeSystemFilter.fromJson(Map<String, dynamic> json) =
      _$CodeSystemFilterImpl.fromJson;

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

  /// [code] The code that identifies this filter when it is used as a filter
  ///  in [[[ValueSet]]].compose.include.filter.
  FhirCode? get code;
  @override

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement;
  @override

  /// [description] A description of how or why the filter is used.
  String? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [operator] A list of operators that can be used with the filter.
  @JsonKey(name: 'operator')
  List<FhirCode>? get operator_;
  @override

  /// [operatorElement] Extensions for operator
  @JsonKey(name: '_operator')
  List<PrimitiveElement>? get operatorElement;
  @override

  /// [value] A description of what the value for the filter should be.
  String? get value;
  @override

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement;
  @override
  @JsonKey(ignore: true)
  _$$CodeSystemFilterImplCopyWith<_$CodeSystemFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CodeSystemProperty _$CodeSystemPropertyFromJson(Map<String, dynamic> json) {
  return _CodeSystemProperty.fromJson(json);
}

/// @nodoc
mixin _$CodeSystemProperty {
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

  /// [code] A code that is used to identify the property. The code is used
  /// internally (in CodeSystem.concept.property.code) and also externally, such
  ///  as in property filters.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement => throw _privateConstructorUsedError;

  /// [uri] Reference to the formal meaning of the property. One possible
  /// source of meaning is the [Concept
  ///  Properties](codesystem-concept-properties.html) code system.
  FhirUri? get uri => throw _privateConstructorUsedError;

  /// [uriElement] Extensions for uri
  @JsonKey(name: '_uri')
  PrimitiveElement? get uriElement => throw _privateConstructorUsedError;

  /// [description] A description of the property- why it is defined, and how
  ///  its value might be used.
  String? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [type] The type of the property value. Properties of type "code" contain
  /// a code defined by the code system (e.g. a reference to another defined
  ///  concept).
  FhirCode? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeSystemPropertyCopyWith<CodeSystemProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeSystemPropertyCopyWith<$Res> {
  factory $CodeSystemPropertyCopyWith(
          CodeSystemProperty value, $Res Function(CodeSystemProperty) then) =
      _$CodeSystemPropertyCopyWithImpl<$Res, CodeSystemProperty>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      FhirUri? uri,
      @JsonKey(name: '_uri') PrimitiveElement? uriElement,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement});
}

/// @nodoc
class _$CodeSystemPropertyCopyWithImpl<$Res, $Val extends CodeSystemProperty>
    implements $CodeSystemPropertyCopyWith<$Res> {
  _$CodeSystemPropertyCopyWithImpl(this._value, this._then);

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
    Object? uri = freezed,
    Object? uriElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
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
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      uriElement: freezed == uriElement
          ? _value.uriElement
          : uriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CodeSystemPropertyImplCopyWith<$Res>
    implements $CodeSystemPropertyCopyWith<$Res> {
  factory _$$CodeSystemPropertyImplCopyWith(_$CodeSystemPropertyImpl value,
          $Res Function(_$CodeSystemPropertyImpl) then) =
      __$$CodeSystemPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      FhirUri? uri,
      @JsonKey(name: '_uri') PrimitiveElement? uriElement,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement});
}

/// @nodoc
class __$$CodeSystemPropertyImplCopyWithImpl<$Res>
    extends _$CodeSystemPropertyCopyWithImpl<$Res, _$CodeSystemPropertyImpl>
    implements _$$CodeSystemPropertyImplCopyWith<$Res> {
  __$$CodeSystemPropertyImplCopyWithImpl(_$CodeSystemPropertyImpl _value,
      $Res Function(_$CodeSystemPropertyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? uri = freezed,
    Object? uriElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
  }) {
    return _then(_$CodeSystemPropertyImpl(
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
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      uriElement: freezed == uriElement
          ? _value.uriElement
          : uriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeSystemPropertyImpl extends _CodeSystemProperty {
  const _$CodeSystemPropertyImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      this.uri,
      @JsonKey(name: '_uri') this.uriElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.type,
      @JsonKey(name: '_type') this.typeElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CodeSystemPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeSystemPropertyImplFromJson(json);

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

  /// [code] A code that is used to identify the property. The code is used
  /// internally (in CodeSystem.concept.property.code) and also externally, such
  ///  as in property filters.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final PrimitiveElement? codeElement;

  /// [uri] Reference to the formal meaning of the property. One possible
  /// source of meaning is the [Concept
  ///  Properties](codesystem-concept-properties.html) code system.
  @override
  final FhirUri? uri;

  /// [uriElement] Extensions for uri
  @override
  @JsonKey(name: '_uri')
  final PrimitiveElement? uriElement;

  /// [description] A description of the property- why it is defined, and how
  ///  its value might be used.
  @override
  final String? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [type] The type of the property value. Properties of type "code" contain
  /// a code defined by the code system (e.g. a reference to another defined
  ///  concept).
  @override
  final FhirCode? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeSystemPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.uriElement, uriElement) ||
                other.uriElement == uriElement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement));
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
      uri,
      uriElement,
      description,
      descriptionElement,
      type,
      typeElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeSystemPropertyImplCopyWith<_$CodeSystemPropertyImpl> get copyWith =>
      __$$CodeSystemPropertyImplCopyWithImpl<_$CodeSystemPropertyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeSystemPropertyImplToJson(
      this,
    );
  }
}

abstract class _CodeSystemProperty extends CodeSystemProperty {
  const factory _CodeSystemProperty(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirCode? code,
      @JsonKey(name: '_code') final PrimitiveElement? codeElement,
      final FhirUri? uri,
      @JsonKey(name: '_uri') final PrimitiveElement? uriElement,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final FhirCode? type,
      @JsonKey(name: '_type')
      final PrimitiveElement? typeElement}) = _$CodeSystemPropertyImpl;
  const _CodeSystemProperty._() : super._();

  factory _CodeSystemProperty.fromJson(Map<String, dynamic> json) =
      _$CodeSystemPropertyImpl.fromJson;

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

  /// [code] A code that is used to identify the property. The code is used
  /// internally (in CodeSystem.concept.property.code) and also externally, such
  ///  as in property filters.
  FhirCode? get code;
  @override

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement;
  @override

  /// [uri] Reference to the formal meaning of the property. One possible
  /// source of meaning is the [Concept
  ///  Properties](codesystem-concept-properties.html) code system.
  FhirUri? get uri;
  @override

  /// [uriElement] Extensions for uri
  @JsonKey(name: '_uri')
  PrimitiveElement? get uriElement;
  @override

  /// [description] A description of the property- why it is defined, and how
  ///  its value might be used.
  String? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [type] The type of the property value. Properties of type "code" contain
  /// a code defined by the code system (e.g. a reference to another defined
  ///  concept).
  FhirCode? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override
  @JsonKey(ignore: true)
  _$$CodeSystemPropertyImplCopyWith<_$CodeSystemPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CodeSystemConcept _$CodeSystemConceptFromJson(Map<String, dynamic> json) {
  return _CodeSystemConcept.fromJson(json);
}

/// @nodoc
mixin _$CodeSystemConcept {
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

  /// [code] A code - a text symbol - that uniquely identifies the concept
  ///  within the code system.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement => throw _privateConstructorUsedError;

  /// [display] A human readable string that is the recommended default way to
  ///  present this concept to a user.
  String? get display => throw _privateConstructorUsedError;

  /// [displayElement] Extensions for display
  @JsonKey(name: '_display')
  PrimitiveElement? get displayElement => throw _privateConstructorUsedError;

  /// [definition] The formal definition of the concept. The code system
  /// resource does not make formal definitions required, because of the
  /// prevalence of legacy systems. However, they are highly recommended, as
  ///  without them there is no formal meaning associated with the concept.
  String? get definition => throw _privateConstructorUsedError;

  /// [definitionElement] Extensions for definition
  @JsonKey(name: '_definition')
  PrimitiveElement? get definitionElement => throw _privateConstructorUsedError;

  /// [designation] Additional representations for the concept - other
  /// languages, aliases, specialized purposes, used for particular purposes,
  ///  etc.
  List<CodeSystemDesignation>? get designation =>
      throw _privateConstructorUsedError;

  /// [property] A property value for this concept.
  List<CodeSystemProperty1>? get property => throw _privateConstructorUsedError;

  /// [concept] Defines children of a concept to produce a hierarchy of
  /// concepts. The nature of the relationships is variable
  ///  (is-a/contains/categorizes) - see hierarchyMeaning.
  List<CodeSystemConcept>? get concept => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeSystemConceptCopyWith<CodeSystemConcept> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeSystemConceptCopyWith<$Res> {
  factory $CodeSystemConceptCopyWith(
          CodeSystemConcept value, $Res Function(CodeSystemConcept) then) =
      _$CodeSystemConceptCopyWithImpl<$Res, CodeSystemConcept>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      String? display,
      @JsonKey(name: '_display') PrimitiveElement? displayElement,
      String? definition,
      @JsonKey(name: '_definition') PrimitiveElement? definitionElement,
      List<CodeSystemDesignation>? designation,
      List<CodeSystemProperty1>? property,
      List<CodeSystemConcept>? concept});
}

/// @nodoc
class _$CodeSystemConceptCopyWithImpl<$Res, $Val extends CodeSystemConcept>
    implements $CodeSystemConceptCopyWith<$Res> {
  _$CodeSystemConceptCopyWithImpl(this._value, this._then);

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
    Object? display = freezed,
    Object? displayElement = freezed,
    Object? definition = freezed,
    Object? definitionElement = freezed,
    Object? designation = freezed,
    Object? property = freezed,
    Object? concept = freezed,
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
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      displayElement: freezed == displayElement
          ? _value.displayElement
          : displayElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String?,
      definitionElement: freezed == definitionElement
          ? _value.definitionElement
          : definitionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as List<CodeSystemDesignation>?,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as List<CodeSystemProperty1>?,
      concept: freezed == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as List<CodeSystemConcept>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CodeSystemConceptImplCopyWith<$Res>
    implements $CodeSystemConceptCopyWith<$Res> {
  factory _$$CodeSystemConceptImplCopyWith(_$CodeSystemConceptImpl value,
          $Res Function(_$CodeSystemConceptImpl) then) =
      __$$CodeSystemConceptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      String? display,
      @JsonKey(name: '_display') PrimitiveElement? displayElement,
      String? definition,
      @JsonKey(name: '_definition') PrimitiveElement? definitionElement,
      List<CodeSystemDesignation>? designation,
      List<CodeSystemProperty1>? property,
      List<CodeSystemConcept>? concept});
}

/// @nodoc
class __$$CodeSystemConceptImplCopyWithImpl<$Res>
    extends _$CodeSystemConceptCopyWithImpl<$Res, _$CodeSystemConceptImpl>
    implements _$$CodeSystemConceptImplCopyWith<$Res> {
  __$$CodeSystemConceptImplCopyWithImpl(_$CodeSystemConceptImpl _value,
      $Res Function(_$CodeSystemConceptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? display = freezed,
    Object? displayElement = freezed,
    Object? definition = freezed,
    Object? definitionElement = freezed,
    Object? designation = freezed,
    Object? property = freezed,
    Object? concept = freezed,
  }) {
    return _then(_$CodeSystemConceptImpl(
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
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      displayElement: freezed == displayElement
          ? _value.displayElement
          : displayElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String?,
      definitionElement: freezed == definitionElement
          ? _value.definitionElement
          : definitionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      designation: freezed == designation
          ? _value._designation
          : designation // ignore: cast_nullable_to_non_nullable
              as List<CodeSystemDesignation>?,
      property: freezed == property
          ? _value._property
          : property // ignore: cast_nullable_to_non_nullable
              as List<CodeSystemProperty1>?,
      concept: freezed == concept
          ? _value._concept
          : concept // ignore: cast_nullable_to_non_nullable
              as List<CodeSystemConcept>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeSystemConceptImpl extends _CodeSystemConcept {
  const _$CodeSystemConceptImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      this.display,
      @JsonKey(name: '_display') this.displayElement,
      this.definition,
      @JsonKey(name: '_definition') this.definitionElement,
      final List<CodeSystemDesignation>? designation,
      final List<CodeSystemProperty1>? property,
      final List<CodeSystemConcept>? concept})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _designation = designation,
        _property = property,
        _concept = concept,
        super._();

  factory _$CodeSystemConceptImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeSystemConceptImplFromJson(json);

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

  /// [code] A code - a text symbol - that uniquely identifies the concept
  ///  within the code system.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final PrimitiveElement? codeElement;

  /// [display] A human readable string that is the recommended default way to
  ///  present this concept to a user.
  @override
  final String? display;

  /// [displayElement] Extensions for display
  @override
  @JsonKey(name: '_display')
  final PrimitiveElement? displayElement;

  /// [definition] The formal definition of the concept. The code system
  /// resource does not make formal definitions required, because of the
  /// prevalence of legacy systems. However, they are highly recommended, as
  ///  without them there is no formal meaning associated with the concept.
  @override
  final String? definition;

  /// [definitionElement] Extensions for definition
  @override
  @JsonKey(name: '_definition')
  final PrimitiveElement? definitionElement;

  /// [designation] Additional representations for the concept - other
  /// languages, aliases, specialized purposes, used for particular purposes,
  ///  etc.
  final List<CodeSystemDesignation>? _designation;

  /// [designation] Additional representations for the concept - other
  /// languages, aliases, specialized purposes, used for particular purposes,
  ///  etc.
  @override
  List<CodeSystemDesignation>? get designation {
    final value = _designation;
    if (value == null) return null;
    if (_designation is EqualUnmodifiableListView) return _designation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [property] A property value for this concept.
  final List<CodeSystemProperty1>? _property;

  /// [property] A property value for this concept.
  @override
  List<CodeSystemProperty1>? get property {
    final value = _property;
    if (value == null) return null;
    if (_property is EqualUnmodifiableListView) return _property;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [concept] Defines children of a concept to produce a hierarchy of
  /// concepts. The nature of the relationships is variable
  ///  (is-a/contains/categorizes) - see hierarchyMeaning.
  final List<CodeSystemConcept>? _concept;

  /// [concept] Defines children of a concept to produce a hierarchy of
  /// concepts. The nature of the relationships is variable
  ///  (is-a/contains/categorizes) - see hierarchyMeaning.
  @override
  List<CodeSystemConcept>? get concept {
    final value = _concept;
    if (value == null) return null;
    if (_concept is EqualUnmodifiableListView) return _concept;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeSystemConceptImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.displayElement, displayElement) ||
                other.displayElement == displayElement) &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            (identical(other.definitionElement, definitionElement) ||
                other.definitionElement == definitionElement) &&
            const DeepCollectionEquality()
                .equals(other._designation, _designation) &&
            const DeepCollectionEquality().equals(other._property, _property) &&
            const DeepCollectionEquality().equals(other._concept, _concept));
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
      display,
      displayElement,
      definition,
      definitionElement,
      const DeepCollectionEquality().hash(_designation),
      const DeepCollectionEquality().hash(_property),
      const DeepCollectionEquality().hash(_concept));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeSystemConceptImplCopyWith<_$CodeSystemConceptImpl> get copyWith =>
      __$$CodeSystemConceptImplCopyWithImpl<_$CodeSystemConceptImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeSystemConceptImplToJson(
      this,
    );
  }
}

abstract class _CodeSystemConcept extends CodeSystemConcept {
  const factory _CodeSystemConcept(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirCode? code,
      @JsonKey(name: '_code') final PrimitiveElement? codeElement,
      final String? display,
      @JsonKey(name: '_display') final PrimitiveElement? displayElement,
      final String? definition,
      @JsonKey(name: '_definition') final PrimitiveElement? definitionElement,
      final List<CodeSystemDesignation>? designation,
      final List<CodeSystemProperty1>? property,
      final List<CodeSystemConcept>? concept}) = _$CodeSystemConceptImpl;
  const _CodeSystemConcept._() : super._();

  factory _CodeSystemConcept.fromJson(Map<String, dynamic> json) =
      _$CodeSystemConceptImpl.fromJson;

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

  /// [code] A code - a text symbol - that uniquely identifies the concept
  ///  within the code system.
  FhirCode? get code;
  @override

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement;
  @override

  /// [display] A human readable string that is the recommended default way to
  ///  present this concept to a user.
  String? get display;
  @override

  /// [displayElement] Extensions for display
  @JsonKey(name: '_display')
  PrimitiveElement? get displayElement;
  @override

  /// [definition] The formal definition of the concept. The code system
  /// resource does not make formal definitions required, because of the
  /// prevalence of legacy systems. However, they are highly recommended, as
  ///  without them there is no formal meaning associated with the concept.
  String? get definition;
  @override

  /// [definitionElement] Extensions for definition
  @JsonKey(name: '_definition')
  PrimitiveElement? get definitionElement;
  @override

  /// [designation] Additional representations for the concept - other
  /// languages, aliases, specialized purposes, used for particular purposes,
  ///  etc.
  List<CodeSystemDesignation>? get designation;
  @override

  /// [property] A property value for this concept.
  List<CodeSystemProperty1>? get property;
  @override

  /// [concept] Defines children of a concept to produce a hierarchy of
  /// concepts. The nature of the relationships is variable
  ///  (is-a/contains/categorizes) - see hierarchyMeaning.
  List<CodeSystemConcept>? get concept;
  @override
  @JsonKey(ignore: true)
  _$$CodeSystemConceptImplCopyWith<_$CodeSystemConceptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CodeSystemDesignation _$CodeSystemDesignationFromJson(
    Map<String, dynamic> json) {
  return _CodeSystemDesignation.fromJson(json);
}

/// @nodoc
mixin _$CodeSystemDesignation {
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

  /// [language] The language this designation is defined for.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [use] A code that details how this designation would be used.
  Coding? get use => throw _privateConstructorUsedError;

  /// [value] The text value for this designation.
  String? get value => throw _privateConstructorUsedError;

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeSystemDesignationCopyWith<CodeSystemDesignation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeSystemDesignationCopyWith<$Res> {
  factory $CodeSystemDesignationCopyWith(CodeSystemDesignation value,
          $Res Function(CodeSystemDesignation) then) =
      _$CodeSystemDesignationCopyWithImpl<$Res, CodeSystemDesignation>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Coding? use,
      String? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement});

  $CodingCopyWith<$Res>? get use;
}

/// @nodoc
class _$CodeSystemDesignationCopyWithImpl<$Res,
        $Val extends CodeSystemDesignation>
    implements $CodeSystemDesignationCopyWith<$Res> {
  _$CodeSystemDesignationCopyWithImpl(this._value, this._then);

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
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? use = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
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
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as Coding?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodingCopyWith<$Res>? get use {
    if (_value.use == null) {
      return null;
    }

    return $CodingCopyWith<$Res>(_value.use!, (value) {
      return _then(_value.copyWith(use: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CodeSystemDesignationImplCopyWith<$Res>
    implements $CodeSystemDesignationCopyWith<$Res> {
  factory _$$CodeSystemDesignationImplCopyWith(
          _$CodeSystemDesignationImpl value,
          $Res Function(_$CodeSystemDesignationImpl) then) =
      __$$CodeSystemDesignationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Coding? use,
      String? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement});

  @override
  $CodingCopyWith<$Res>? get use;
}

/// @nodoc
class __$$CodeSystemDesignationImplCopyWithImpl<$Res>
    extends _$CodeSystemDesignationCopyWithImpl<$Res,
        _$CodeSystemDesignationImpl>
    implements _$$CodeSystemDesignationImplCopyWith<$Res> {
  __$$CodeSystemDesignationImplCopyWithImpl(_$CodeSystemDesignationImpl _value,
      $Res Function(_$CodeSystemDesignationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? use = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
  }) {
    return _then(_$CodeSystemDesignationImpl(
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
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as Coding?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeSystemDesignationImpl extends _CodeSystemDesignation {
  const _$CodeSystemDesignationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.use,
      this.value,
      @JsonKey(name: '_value') this.valueElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CodeSystemDesignationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeSystemDesignationImplFromJson(json);

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

  /// [language] The language this designation is defined for.
  @override
  final FhirCode? language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [use] A code that details how this designation would be used.
  @override
  final Coding? use;

  /// [value] The text value for this designation.
  @override
  final String? value;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  final PrimitiveElement? valueElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeSystemDesignationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.use, use) || other.use == use) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueElement, valueElement) ||
                other.valueElement == valueElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      language,
      languageElement,
      use,
      value,
      valueElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeSystemDesignationImplCopyWith<_$CodeSystemDesignationImpl>
      get copyWith => __$$CodeSystemDesignationImplCopyWithImpl<
          _$CodeSystemDesignationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeSystemDesignationImplToJson(
      this,
    );
  }
}

abstract class _CodeSystemDesignation extends CodeSystemDesignation {
  const factory _CodeSystemDesignation(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCode? language,
          @JsonKey(name: '_language') final PrimitiveElement? languageElement,
          final Coding? use,
          final String? value,
          @JsonKey(name: '_value') final PrimitiveElement? valueElement}) =
      _$CodeSystemDesignationImpl;
  const _CodeSystemDesignation._() : super._();

  factory _CodeSystemDesignation.fromJson(Map<String, dynamic> json) =
      _$CodeSystemDesignationImpl.fromJson;

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

  /// [language] The language this designation is defined for.
  FhirCode? get language;
  @override

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override

  /// [use] A code that details how this designation would be used.
  Coding? get use;
  @override

  /// [value] The text value for this designation.
  String? get value;
  @override

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement;
  @override
  @JsonKey(ignore: true)
  _$$CodeSystemDesignationImplCopyWith<_$CodeSystemDesignationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CodeSystemProperty1 _$CodeSystemProperty1FromJson(Map<String, dynamic> json) {
  return _CodeSystemProperty1.fromJson(json);
}

/// @nodoc
mixin _$CodeSystemProperty1 {
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

  /// [code] A code that is a reference to CodeSystem.property.code.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement => throw _privateConstructorUsedError;

  /// [valueCode] The value of this property.
  FhirCode? get valueCode => throw _privateConstructorUsedError;

  /// [valueCodeElement] Extensions for valueCode
  @JsonKey(name: '_valueCode')
  PrimitiveElement? get valueCodeElement => throw _privateConstructorUsedError;

  /// [valueCoding] The value of this property.
  Coding? get valueCoding => throw _privateConstructorUsedError;

  /// [valueString] The value of this property.
  String? get valueString => throw _privateConstructorUsedError;

  /// [valueStringElement] Extensions for valueString
  @JsonKey(name: '_valueString')
  PrimitiveElement? get valueStringElement =>
      throw _privateConstructorUsedError;

  /// [valueInteger] The value of this property.
  FhirInteger? get valueInteger => throw _privateConstructorUsedError;

  /// [valueIntegerElement] Extensions for valueInteger
  @JsonKey(name: '_valueInteger')
  PrimitiveElement? get valueIntegerElement =>
      throw _privateConstructorUsedError;

  /// [valueBoolean] The value of this property.
  FhirBoolean? get valueBoolean => throw _privateConstructorUsedError;

  /// [valueBooleanElement] Extensions for valueBoolean
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement =>
      throw _privateConstructorUsedError;

  /// [valueDateTime] The value of this property.
  FhirDateTime? get valueDateTime => throw _privateConstructorUsedError;

  /// [valueDateTimeElement] Extensions for valueDateTime
  @JsonKey(name: '_valueDateTime')
  PrimitiveElement? get valueDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [valueDecimal] The value of this property.
  FhirDecimal? get valueDecimal => throw _privateConstructorUsedError;

  /// [valueDecimalElement] Extensions for valueDecimal
  @JsonKey(name: '_valueDecimal')
  PrimitiveElement? get valueDecimalElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeSystemProperty1CopyWith<CodeSystemProperty1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeSystemProperty1CopyWith<$Res> {
  factory $CodeSystemProperty1CopyWith(
          CodeSystemProperty1 value, $Res Function(CodeSystemProperty1) then) =
      _$CodeSystemProperty1CopyWithImpl<$Res, CodeSystemProperty1>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      FhirCode? valueCode,
      @JsonKey(name: '_valueCode') PrimitiveElement? valueCodeElement,
      Coding? valueCoding,
      String? valueString,
      @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
      FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
      FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
      FhirDateTime? valueDateTime,
      @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
      FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement});

  $CodingCopyWith<$Res>? get valueCoding;
}

/// @nodoc
class _$CodeSystemProperty1CopyWithImpl<$Res, $Val extends CodeSystemProperty1>
    implements $CodeSystemProperty1CopyWith<$Res> {
  _$CodeSystemProperty1CopyWithImpl(this._value, this._then);

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
    Object? valueCode = freezed,
    Object? valueCodeElement = freezed,
    Object? valueCoding = freezed,
    Object? valueString = freezed,
    Object? valueStringElement = freezed,
    Object? valueInteger = freezed,
    Object? valueIntegerElement = freezed,
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueDateTime = freezed,
    Object? valueDateTimeElement = freezed,
    Object? valueDecimal = freezed,
    Object? valueDecimalElement = freezed,
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
      valueCode: freezed == valueCode
          ? _value.valueCode
          : valueCode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      valueCodeElement: freezed == valueCodeElement
          ? _value.valueCodeElement
          : valueCodeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueCoding: freezed == valueCoding
          ? _value.valueCoding
          : valueCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      valueString: freezed == valueString
          ? _value.valueString
          : valueString // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStringElement: freezed == valueStringElement
          ? _value.valueStringElement
          : valueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueInteger: freezed == valueInteger
          ? _value.valueInteger
          : valueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      valueIntegerElement: freezed == valueIntegerElement
          ? _value.valueIntegerElement
          : valueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDateTime: freezed == valueDateTime
          ? _value.valueDateTime
          : valueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      valueDateTimeElement: freezed == valueDateTimeElement
          ? _value.valueDateTimeElement
          : valueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDecimal: freezed == valueDecimal
          ? _value.valueDecimal
          : valueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueDecimalElement: freezed == valueDecimalElement
          ? _value.valueDecimalElement
          : valueDecimalElement // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$CodeSystemProperty1ImplCopyWith<$Res>
    implements $CodeSystemProperty1CopyWith<$Res> {
  factory _$$CodeSystemProperty1ImplCopyWith(_$CodeSystemProperty1Impl value,
          $Res Function(_$CodeSystemProperty1Impl) then) =
      __$$CodeSystemProperty1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      FhirCode? valueCode,
      @JsonKey(name: '_valueCode') PrimitiveElement? valueCodeElement,
      Coding? valueCoding,
      String? valueString,
      @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
      FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
      FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
      FhirDateTime? valueDateTime,
      @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
      FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement});

  @override
  $CodingCopyWith<$Res>? get valueCoding;
}

/// @nodoc
class __$$CodeSystemProperty1ImplCopyWithImpl<$Res>
    extends _$CodeSystemProperty1CopyWithImpl<$Res, _$CodeSystemProperty1Impl>
    implements _$$CodeSystemProperty1ImplCopyWith<$Res> {
  __$$CodeSystemProperty1ImplCopyWithImpl(_$CodeSystemProperty1Impl _value,
      $Res Function(_$CodeSystemProperty1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? valueCode = freezed,
    Object? valueCodeElement = freezed,
    Object? valueCoding = freezed,
    Object? valueString = freezed,
    Object? valueStringElement = freezed,
    Object? valueInteger = freezed,
    Object? valueIntegerElement = freezed,
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueDateTime = freezed,
    Object? valueDateTimeElement = freezed,
    Object? valueDecimal = freezed,
    Object? valueDecimalElement = freezed,
  }) {
    return _then(_$CodeSystemProperty1Impl(
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
      valueCode: freezed == valueCode
          ? _value.valueCode
          : valueCode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      valueCodeElement: freezed == valueCodeElement
          ? _value.valueCodeElement
          : valueCodeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueCoding: freezed == valueCoding
          ? _value.valueCoding
          : valueCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      valueString: freezed == valueString
          ? _value.valueString
          : valueString // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStringElement: freezed == valueStringElement
          ? _value.valueStringElement
          : valueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueInteger: freezed == valueInteger
          ? _value.valueInteger
          : valueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      valueIntegerElement: freezed == valueIntegerElement
          ? _value.valueIntegerElement
          : valueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDateTime: freezed == valueDateTime
          ? _value.valueDateTime
          : valueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      valueDateTimeElement: freezed == valueDateTimeElement
          ? _value.valueDateTimeElement
          : valueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueDecimal: freezed == valueDecimal
          ? _value.valueDecimal
          : valueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueDecimalElement: freezed == valueDecimalElement
          ? _value.valueDecimalElement
          : valueDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeSystemProperty1Impl extends _CodeSystemProperty1 {
  const _$CodeSystemProperty1Impl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      this.valueCode,
      @JsonKey(name: '_valueCode') this.valueCodeElement,
      this.valueCoding,
      this.valueString,
      @JsonKey(name: '_valueString') this.valueStringElement,
      this.valueInteger,
      @JsonKey(name: '_valueInteger') this.valueIntegerElement,
      this.valueBoolean,
      @JsonKey(name: '_valueBoolean') this.valueBooleanElement,
      this.valueDateTime,
      @JsonKey(name: '_valueDateTime') this.valueDateTimeElement,
      this.valueDecimal,
      @JsonKey(name: '_valueDecimal') this.valueDecimalElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CodeSystemProperty1Impl.fromJson(Map<String, dynamic> json) =>
      _$$CodeSystemProperty1ImplFromJson(json);

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

  /// [code] A code that is a reference to CodeSystem.property.code.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final PrimitiveElement? codeElement;

  /// [valueCode] The value of this property.
  @override
  final FhirCode? valueCode;

  /// [valueCodeElement] Extensions for valueCode
  @override
  @JsonKey(name: '_valueCode')
  final PrimitiveElement? valueCodeElement;

  /// [valueCoding] The value of this property.
  @override
  final Coding? valueCoding;

  /// [valueString] The value of this property.
  @override
  final String? valueString;

  /// [valueStringElement] Extensions for valueString
  @override
  @JsonKey(name: '_valueString')
  final PrimitiveElement? valueStringElement;

  /// [valueInteger] The value of this property.
  @override
  final FhirInteger? valueInteger;

  /// [valueIntegerElement] Extensions for valueInteger
  @override
  @JsonKey(name: '_valueInteger')
  final PrimitiveElement? valueIntegerElement;

  /// [valueBoolean] The value of this property.
  @override
  final FhirBoolean? valueBoolean;

  /// [valueBooleanElement] Extensions for valueBoolean
  @override
  @JsonKey(name: '_valueBoolean')
  final PrimitiveElement? valueBooleanElement;

  /// [valueDateTime] The value of this property.
  @override
  final FhirDateTime? valueDateTime;

  /// [valueDateTimeElement] Extensions for valueDateTime
  @override
  @JsonKey(name: '_valueDateTime')
  final PrimitiveElement? valueDateTimeElement;

  /// [valueDecimal] The value of this property.
  @override
  final FhirDecimal? valueDecimal;

  /// [valueDecimalElement] Extensions for valueDecimal
  @override
  @JsonKey(name: '_valueDecimal')
  final PrimitiveElement? valueDecimalElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeSystemProperty1Impl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement) &&
            (identical(other.valueCode, valueCode) ||
                other.valueCode == valueCode) &&
            (identical(other.valueCodeElement, valueCodeElement) ||
                other.valueCodeElement == valueCodeElement) &&
            (identical(other.valueCoding, valueCoding) ||
                other.valueCoding == valueCoding) &&
            (identical(other.valueString, valueString) ||
                other.valueString == valueString) &&
            (identical(other.valueStringElement, valueStringElement) ||
                other.valueStringElement == valueStringElement) &&
            (identical(other.valueInteger, valueInteger) ||
                other.valueInteger == valueInteger) &&
            (identical(other.valueIntegerElement, valueIntegerElement) ||
                other.valueIntegerElement == valueIntegerElement) &&
            (identical(other.valueBoolean, valueBoolean) ||
                other.valueBoolean == valueBoolean) &&
            (identical(other.valueBooleanElement, valueBooleanElement) ||
                other.valueBooleanElement == valueBooleanElement) &&
            (identical(other.valueDateTime, valueDateTime) ||
                other.valueDateTime == valueDateTime) &&
            (identical(other.valueDateTimeElement, valueDateTimeElement) ||
                other.valueDateTimeElement == valueDateTimeElement) &&
            (identical(other.valueDecimal, valueDecimal) ||
                other.valueDecimal == valueDecimal) &&
            (identical(other.valueDecimalElement, valueDecimalElement) ||
                other.valueDecimalElement == valueDecimalElement));
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
      valueCode,
      valueCodeElement,
      valueCoding,
      valueString,
      valueStringElement,
      valueInteger,
      valueIntegerElement,
      valueBoolean,
      valueBooleanElement,
      valueDateTime,
      valueDateTimeElement,
      valueDecimal,
      valueDecimalElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeSystemProperty1ImplCopyWith<_$CodeSystemProperty1Impl> get copyWith =>
      __$$CodeSystemProperty1ImplCopyWithImpl<_$CodeSystemProperty1Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeSystemProperty1ImplToJson(
      this,
    );
  }
}

abstract class _CodeSystemProperty1 extends CodeSystemProperty1 {
  const factory _CodeSystemProperty1(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirCode? code,
      @JsonKey(name: '_code') final PrimitiveElement? codeElement,
      final FhirCode? valueCode,
      @JsonKey(name: '_valueCode') final PrimitiveElement? valueCodeElement,
      final Coding? valueCoding,
      final String? valueString,
      @JsonKey(name: '_valueString') final PrimitiveElement? valueStringElement,
      final FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger')
      final PrimitiveElement? valueIntegerElement,
      final FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean')
      final PrimitiveElement? valueBooleanElement,
      final FhirDateTime? valueDateTime,
      @JsonKey(name: '_valueDateTime')
      final PrimitiveElement? valueDateTimeElement,
      final FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal')
      final PrimitiveElement? valueDecimalElement}) = _$CodeSystemProperty1Impl;
  const _CodeSystemProperty1._() : super._();

  factory _CodeSystemProperty1.fromJson(Map<String, dynamic> json) =
      _$CodeSystemProperty1Impl.fromJson;

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

  /// [code] A code that is a reference to CodeSystem.property.code.
  FhirCode? get code;
  @override

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement;
  @override

  /// [valueCode] The value of this property.
  FhirCode? get valueCode;
  @override

  /// [valueCodeElement] Extensions for valueCode
  @JsonKey(name: '_valueCode')
  PrimitiveElement? get valueCodeElement;
  @override

  /// [valueCoding] The value of this property.
  Coding? get valueCoding;
  @override

  /// [valueString] The value of this property.
  String? get valueString;
  @override

  /// [valueStringElement] Extensions for valueString
  @JsonKey(name: '_valueString')
  PrimitiveElement? get valueStringElement;
  @override

  /// [valueInteger] The value of this property.
  FhirInteger? get valueInteger;
  @override

  /// [valueIntegerElement] Extensions for valueInteger
  @JsonKey(name: '_valueInteger')
  PrimitiveElement? get valueIntegerElement;
  @override

  /// [valueBoolean] The value of this property.
  FhirBoolean? get valueBoolean;
  @override

  /// [valueBooleanElement] Extensions for valueBoolean
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement;
  @override

  /// [valueDateTime] The value of this property.
  FhirDateTime? get valueDateTime;
  @override

  /// [valueDateTimeElement] Extensions for valueDateTime
  @JsonKey(name: '_valueDateTime')
  PrimitiveElement? get valueDateTimeElement;
  @override

  /// [valueDecimal] The value of this property.
  FhirDecimal? get valueDecimal;
  @override

  /// [valueDecimalElement] Extensions for valueDecimal
  @JsonKey(name: '_valueDecimal')
  PrimitiveElement? get valueDecimalElement;
  @override
  @JsonKey(ignore: true)
  _$$CodeSystemProperty1ImplCopyWith<_$CodeSystemProperty1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
