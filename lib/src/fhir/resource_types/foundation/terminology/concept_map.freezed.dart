// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'concept_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConceptMap _$ConceptMapFromJson(Map<String, dynamic> json) {
  return _ConceptMap.fromJson(json);
}

/// @nodoc
mixin _$ConceptMap {
  @JsonKey(unknownEnumValue: R4ResourceType.ConceptMap)
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

  /// [url] An absolute URI that is used to identify this concept map when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// concept map is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the concept map is
  ///  stored on different servers.
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [identifier] A formal identifier that is used to identify this concept
  /// map when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  Identifier? get identifier => throw _privateConstructorUsedError;

  /// [version] The identifier that is used to identify this version of the
  /// concept map when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the concept map author and
  /// is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  /// [name] A natural language name identifying the concept map. This name
  /// should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [title] A short, descriptive, user-friendly title for the concept map.
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;

  /// [status] The status of this concept map. Enables tracking the life-cycle
  ///  of the content.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [experimental] A Boolean value to indicate that this concept map is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  FhirBoolean? get experimental => throw _privateConstructorUsedError;

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement =>
      throw _privateConstructorUsedError;

  /// [date] The date  (and optionally time) when the concept map was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the concept map changes.
  FhirDateTime? get date => throw _privateConstructorUsedError;

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [publisher] The name of the organization or individual that published the
  ///  concept map.
  String? get publisher => throw _privateConstructorUsedError;

  /// [publisherElement] Extensions for publisher
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement => throw _privateConstructorUsedError;

  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  List<ContactDetail>? get contact => throw _privateConstructorUsedError;

  /// [description] A free text natural language description of the concept map
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
  ///  and searching for appropriate concept map instances.
  List<UsageContext>? get useContext => throw _privateConstructorUsedError;

  /// [jurisdiction] A legal or geographic region in which the concept map is
  ///  intended to be used.
  List<CodeableConcept>? get jurisdiction => throw _privateConstructorUsedError;

  /// [purpose] Explanation of why this concept map is needed and why it has
  ///  been designed as it has.
  FhirMarkdown? get purpose => throw _privateConstructorUsedError;

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement => throw _privateConstructorUsedError;

  /// [copyright] A copyright statement relating to the concept map and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  ///  and publishing of the concept map.
  FhirMarkdown? get copyright => throw _privateConstructorUsedError;

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement => throw _privateConstructorUsedError;

  /// [sourceUri] Identifier for the source value set that contains the
  ///  concepts that are being mapped and provides context for the mappings.
  FhirUri? get sourceUri => throw _privateConstructorUsedError;

  /// [sourceUriElement] Extensions for sourceUri
  @JsonKey(name: '_sourceUri')
  PrimitiveElement? get sourceUriElement => throw _privateConstructorUsedError;

  /// [sourceCanonical] Identifier for the source value set that contains the
  ///  concepts that are being mapped and provides context for the mappings.
  FhirCanonical? get sourceCanonical => throw _privateConstructorUsedError;

  /// [sourceCanonicalElement] Extensions for sourceCanonical
  @JsonKey(name: '_sourceCanonical')
  PrimitiveElement? get sourceCanonicalElement =>
      throw _privateConstructorUsedError;

  /// [targetUri] The target value set provides context for the mappings. Note
  /// that the mapping is made between concepts, not between value sets, but the
  /// value set provides important context about how the concept mapping choices
  ///  are made.
  FhirUri? get targetUri => throw _privateConstructorUsedError;

  /// [targetUriElement] Extensions for targetUri
  @JsonKey(name: '_targetUri')
  PrimitiveElement? get targetUriElement => throw _privateConstructorUsedError;

  /// [targetCanonical] The target value set provides context for the mappings.
  /// Note that the mapping is made between concepts, not between value sets,
  /// but the value set provides important context about how the concept mapping
  ///  choices are made.
  FhirCanonical? get targetCanonical => throw _privateConstructorUsedError;

  /// [targetCanonicalElement] Extensions for targetCanonical
  @JsonKey(name: '_targetCanonical')
  PrimitiveElement? get targetCanonicalElement =>
      throw _privateConstructorUsedError;

  /// [group] A group of mappings that all have the same source and target
  ///  system.
  List<ConceptMapGroup>? get group => throw _privateConstructorUsedError;

  /// Serializes this ConceptMap to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConceptMap
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConceptMapCopyWith<ConceptMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConceptMapCopyWith<$Res> {
  factory $ConceptMapCopyWith(
          ConceptMap value, $Res Function(ConceptMap) then) =
      _$ConceptMapCopyWithImpl<$Res, ConceptMap>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ConceptMap)
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
      Identifier? identifier,
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
      FhirUri? sourceUri,
      @JsonKey(name: '_sourceUri') PrimitiveElement? sourceUriElement,
      FhirCanonical? sourceCanonical,
      @JsonKey(name: '_sourceCanonical')
      PrimitiveElement? sourceCanonicalElement,
      FhirUri? targetUri,
      @JsonKey(name: '_targetUri') PrimitiveElement? targetUriElement,
      FhirCanonical? targetCanonical,
      @JsonKey(name: '_targetCanonical')
      PrimitiveElement? targetCanonicalElement,
      List<ConceptMapGroup>? group});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $IdentifierCopyWith<$Res>? get identifier;
}

/// @nodoc
class _$ConceptMapCopyWithImpl<$Res, $Val extends ConceptMap>
    implements $ConceptMapCopyWith<$Res> {
  _$ConceptMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConceptMap
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
    Object? sourceUri = freezed,
    Object? sourceUriElement = freezed,
    Object? sourceCanonical = freezed,
    Object? sourceCanonicalElement = freezed,
    Object? targetUri = freezed,
    Object? targetUriElement = freezed,
    Object? targetCanonical = freezed,
    Object? targetCanonicalElement = freezed,
    Object? group = freezed,
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
              as Identifier?,
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
      sourceUri: freezed == sourceUri
          ? _value.sourceUri
          : sourceUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      sourceUriElement: freezed == sourceUriElement
          ? _value.sourceUriElement
          : sourceUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      sourceCanonical: freezed == sourceCanonical
          ? _value.sourceCanonical
          : sourceCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      sourceCanonicalElement: freezed == sourceCanonicalElement
          ? _value.sourceCanonicalElement
          : sourceCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      targetUri: freezed == targetUri
          ? _value.targetUri
          : targetUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      targetUriElement: freezed == targetUriElement
          ? _value.targetUriElement
          : targetUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      targetCanonical: freezed == targetCanonical
          ? _value.targetCanonical
          : targetCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      targetCanonicalElement: freezed == targetCanonicalElement
          ? _value.targetCanonicalElement
          : targetCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as List<ConceptMapGroup>?,
    ) as $Val);
  }

  /// Create a copy of ConceptMap
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

  /// Create a copy of ConceptMap
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

  /// Create a copy of ConceptMap
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
}

/// @nodoc
abstract class _$$ConceptMapImplCopyWith<$Res>
    implements $ConceptMapCopyWith<$Res> {
  factory _$$ConceptMapImplCopyWith(
          _$ConceptMapImpl value, $Res Function(_$ConceptMapImpl) then) =
      __$$ConceptMapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ConceptMap)
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
      Identifier? identifier,
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
      FhirUri? sourceUri,
      @JsonKey(name: '_sourceUri') PrimitiveElement? sourceUriElement,
      FhirCanonical? sourceCanonical,
      @JsonKey(name: '_sourceCanonical')
      PrimitiveElement? sourceCanonicalElement,
      FhirUri? targetUri,
      @JsonKey(name: '_targetUri') PrimitiveElement? targetUriElement,
      FhirCanonical? targetCanonical,
      @JsonKey(name: '_targetCanonical')
      PrimitiveElement? targetCanonicalElement,
      List<ConceptMapGroup>? group});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $IdentifierCopyWith<$Res>? get identifier;
}

/// @nodoc
class __$$ConceptMapImplCopyWithImpl<$Res>
    extends _$ConceptMapCopyWithImpl<$Res, _$ConceptMapImpl>
    implements _$$ConceptMapImplCopyWith<$Res> {
  __$$ConceptMapImplCopyWithImpl(
      _$ConceptMapImpl _value, $Res Function(_$ConceptMapImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConceptMap
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
    Object? sourceUri = freezed,
    Object? sourceUriElement = freezed,
    Object? sourceCanonical = freezed,
    Object? sourceCanonicalElement = freezed,
    Object? targetUri = freezed,
    Object? targetUriElement = freezed,
    Object? targetCanonical = freezed,
    Object? targetCanonicalElement = freezed,
    Object? group = freezed,
  }) {
    return _then(_$ConceptMapImpl(
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
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
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
      sourceUri: freezed == sourceUri
          ? _value.sourceUri
          : sourceUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      sourceUriElement: freezed == sourceUriElement
          ? _value.sourceUriElement
          : sourceUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      sourceCanonical: freezed == sourceCanonical
          ? _value.sourceCanonical
          : sourceCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      sourceCanonicalElement: freezed == sourceCanonicalElement
          ? _value.sourceCanonicalElement
          : sourceCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      targetUri: freezed == targetUri
          ? _value.targetUri
          : targetUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      targetUriElement: freezed == targetUriElement
          ? _value.targetUriElement
          : targetUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      targetCanonical: freezed == targetCanonical
          ? _value.targetCanonical
          : targetCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      targetCanonicalElement: freezed == targetCanonicalElement
          ? _value.targetCanonicalElement
          : targetCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      group: freezed == group
          ? _value._group
          : group // ignore: cast_nullable_to_non_nullable
              as List<ConceptMapGroup>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConceptMapImpl extends _ConceptMap {
  _$ConceptMapImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.ConceptMap)
      this.resourceType = R4ResourceType.ConceptMap,
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
      this.identifier,
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
      this.sourceUri,
      @JsonKey(name: '_sourceUri') this.sourceUriElement,
      this.sourceCanonical,
      @JsonKey(name: '_sourceCanonical') this.sourceCanonicalElement,
      this.targetUri,
      @JsonKey(name: '_targetUri') this.targetUriElement,
      this.targetCanonical,
      @JsonKey(name: '_targetCanonical') this.targetCanonicalElement,
      final List<ConceptMapGroup>? group})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _contact = contact,
        _useContext = useContext,
        _jurisdiction = jurisdiction,
        _group = group,
        super._();

  factory _$ConceptMapImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConceptMapImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ConceptMap)
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

  /// [url] An absolute URI that is used to identify this concept map when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// concept map is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the concept map is
  ///  stored on different servers.
  @override
  final FhirUri? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [identifier] A formal identifier that is used to identify this concept
  /// map when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  @override
  final Identifier? identifier;

  /// [version] The identifier that is used to identify this version of the
  /// concept map when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the concept map author and
  /// is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  @override
  final String? version;

  /// [versionElement] Extensions for version
  @override
  @JsonKey(name: '_version')
  final PrimitiveElement? versionElement;

  /// [name] A natural language name identifying the concept map. This name
  /// should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [title] A short, descriptive, user-friendly title for the concept map.
  @override
  final String? title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;

  /// [status] The status of this concept map. Enables tracking the life-cycle
  ///  of the content.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [experimental] A Boolean value to indicate that this concept map is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  @override
  final FhirBoolean? experimental;

  /// [experimentalElement] Extensions for experimental
  @override
  @JsonKey(name: '_experimental')
  final PrimitiveElement? experimentalElement;

  /// [date] The date  (and optionally time) when the concept map was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the concept map changes.
  @override
  final FhirDateTime? date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [publisher] The name of the organization or individual that published the
  ///  concept map.
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

  /// [description] A free text natural language description of the concept map
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
  ///  and searching for appropriate concept map instances.
  final List<UsageContext>? _useContext;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate concept map instances.
  @override
  List<UsageContext>? get useContext {
    final value = _useContext;
    if (value == null) return null;
    if (_useContext is EqualUnmodifiableListView) return _useContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [jurisdiction] A legal or geographic region in which the concept map is
  ///  intended to be used.
  final List<CodeableConcept>? _jurisdiction;

  /// [jurisdiction] A legal or geographic region in which the concept map is
  ///  intended to be used.
  @override
  List<CodeableConcept>? get jurisdiction {
    final value = _jurisdiction;
    if (value == null) return null;
    if (_jurisdiction is EqualUnmodifiableListView) return _jurisdiction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [purpose] Explanation of why this concept map is needed and why it has
  ///  been designed as it has.
  @override
  final FhirMarkdown? purpose;

  /// [purposeElement] Extensions for purpose
  @override
  @JsonKey(name: '_purpose')
  final PrimitiveElement? purposeElement;

  /// [copyright] A copyright statement relating to the concept map and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  ///  and publishing of the concept map.
  @override
  final FhirMarkdown? copyright;

  /// [copyrightElement] Extensions for copyright
  @override
  @JsonKey(name: '_copyright')
  final PrimitiveElement? copyrightElement;

  /// [sourceUri] Identifier for the source value set that contains the
  ///  concepts that are being mapped and provides context for the mappings.
  @override
  final FhirUri? sourceUri;

  /// [sourceUriElement] Extensions for sourceUri
  @override
  @JsonKey(name: '_sourceUri')
  final PrimitiveElement? sourceUriElement;

  /// [sourceCanonical] Identifier for the source value set that contains the
  ///  concepts that are being mapped and provides context for the mappings.
  @override
  final FhirCanonical? sourceCanonical;

  /// [sourceCanonicalElement] Extensions for sourceCanonical
  @override
  @JsonKey(name: '_sourceCanonical')
  final PrimitiveElement? sourceCanonicalElement;

  /// [targetUri] The target value set provides context for the mappings. Note
  /// that the mapping is made between concepts, not between value sets, but the
  /// value set provides important context about how the concept mapping choices
  ///  are made.
  @override
  final FhirUri? targetUri;

  /// [targetUriElement] Extensions for targetUri
  @override
  @JsonKey(name: '_targetUri')
  final PrimitiveElement? targetUriElement;

  /// [targetCanonical] The target value set provides context for the mappings.
  /// Note that the mapping is made between concepts, not between value sets,
  /// but the value set provides important context about how the concept mapping
  ///  choices are made.
  @override
  final FhirCanonical? targetCanonical;

  /// [targetCanonicalElement] Extensions for targetCanonical
  @override
  @JsonKey(name: '_targetCanonical')
  final PrimitiveElement? targetCanonicalElement;

  /// [group] A group of mappings that all have the same source and target
  ///  system.
  final List<ConceptMapGroup>? _group;

  /// [group] A group of mappings that all have the same source and target
  ///  system.
  @override
  List<ConceptMapGroup>? get group {
    final value = _group;
    if (value == null) return null;
    if (_group is EqualUnmodifiableListView) return _group;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ConceptMap(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, url: $url, urlElement: $urlElement, identifier: $identifier, version: $version, versionElement: $versionElement, name: $name, nameElement: $nameElement, title: $title, titleElement: $titleElement, status: $status, statusElement: $statusElement, experimental: $experimental, experimentalElement: $experimentalElement, date: $date, dateElement: $dateElement, publisher: $publisher, publisherElement: $publisherElement, contact: $contact, description: $description, descriptionElement: $descriptionElement, useContext: $useContext, jurisdiction: $jurisdiction, purpose: $purpose, purposeElement: $purposeElement, copyright: $copyright, copyrightElement: $copyrightElement, sourceUri: $sourceUri, sourceUriElement: $sourceUriElement, sourceCanonical: $sourceCanonical, sourceCanonicalElement: $sourceCanonicalElement, targetUri: $targetUri, targetUriElement: $targetUriElement, targetCanonical: $targetCanonical, targetCanonicalElement: $targetCanonicalElement, group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConceptMapImpl &&
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
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
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
            (identical(other.sourceUri, sourceUri) ||
                other.sourceUri == sourceUri) &&
            (identical(other.sourceUriElement, sourceUriElement) ||
                other.sourceUriElement == sourceUriElement) &&
            (identical(other.sourceCanonical, sourceCanonical) ||
                other.sourceCanonical == sourceCanonical) &&
            (identical(other.sourceCanonicalElement, sourceCanonicalElement) ||
                other.sourceCanonicalElement == sourceCanonicalElement) &&
            (identical(other.targetUri, targetUri) ||
                other.targetUri == targetUri) &&
            (identical(other.targetUriElement, targetUriElement) ||
                other.targetUriElement == targetUriElement) &&
            (identical(other.targetCanonical, targetCanonical) ||
                other.targetCanonical == targetCanonical) &&
            (identical(other.targetCanonicalElement, targetCanonicalElement) ||
                other.targetCanonicalElement == targetCanonicalElement) &&
            const DeepCollectionEquality().equals(other._group, _group));
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
        url,
        urlElement,
        identifier,
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
        sourceUri,
        sourceUriElement,
        sourceCanonical,
        sourceCanonicalElement,
        targetUri,
        targetUriElement,
        targetCanonical,
        targetCanonicalElement,
        const DeepCollectionEquality().hash(_group)
      ]);

  /// Create a copy of ConceptMap
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConceptMapImplCopyWith<_$ConceptMapImpl> get copyWith =>
      __$$ConceptMapImplCopyWithImpl<_$ConceptMapImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConceptMapImplToJson(
      this,
    );
  }
}

abstract class _ConceptMap extends ConceptMap {
  factory _ConceptMap(
      {@JsonKey(unknownEnumValue: R4ResourceType.ConceptMap)
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
      final Identifier? identifier,
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
      final FhirUri? sourceUri,
      @JsonKey(name: '_sourceUri') final PrimitiveElement? sourceUriElement,
      final FhirCanonical? sourceCanonical,
      @JsonKey(name: '_sourceCanonical')
      final PrimitiveElement? sourceCanonicalElement,
      final FhirUri? targetUri,
      @JsonKey(name: '_targetUri') final PrimitiveElement? targetUriElement,
      final FhirCanonical? targetCanonical,
      @JsonKey(name: '_targetCanonical')
      final PrimitiveElement? targetCanonicalElement,
      final List<ConceptMapGroup>? group}) = _$ConceptMapImpl;
  _ConceptMap._() : super._();

  factory _ConceptMap.fromJson(Map<String, dynamic> json) =
      _$ConceptMapImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ConceptMap)
  R4ResourceType get resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  @override
  String? get id;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  @override
  FhirMeta? get meta;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  @override
  FhirUri? get implicitRules;

  /// [implicitRulesElement] Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  FhirCode? get language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  @override
  Narrative? get text;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  @override
  List<Resource>? get contained;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

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
  List<FhirExtension>? get modifierExtension;

  /// [url] An absolute URI that is used to identify this concept map when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// concept map is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the concept map is
  ///  stored on different servers.
  @override
  FhirUri? get url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;

  /// [identifier] A formal identifier that is used to identify this concept
  /// map when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  @override
  Identifier? get identifier;

  /// [version] The identifier that is used to identify this version of the
  /// concept map when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the concept map author and
  /// is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  @override
  String? get version;

  /// [versionElement] Extensions for version
  @override
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement;

  /// [name] A natural language name identifying the concept map. This name
  /// should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  @override
  String? get name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;

  /// [title] A short, descriptive, user-friendly title for the concept map.
  @override
  String? get title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;

  /// [status] The status of this concept map. Enables tracking the life-cycle
  ///  of the content.
  @override
  FhirCode? get status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;

  /// [experimental] A Boolean value to indicate that this concept map is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  @override
  FhirBoolean? get experimental;

  /// [experimentalElement] Extensions for experimental
  @override
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement;

  /// [date] The date  (and optionally time) when the concept map was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the concept map changes.
  @override
  FhirDateTime? get date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;

  /// [publisher] The name of the organization or individual that published the
  ///  concept map.
  @override
  String? get publisher;

  /// [publisherElement] Extensions for publisher
  @override
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement;

  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  @override
  List<ContactDetail>? get contact;

  /// [description] A free text natural language description of the concept map
  ///  from a consumer's perspective.
  @override
  FhirMarkdown? get description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate concept map instances.
  @override
  List<UsageContext>? get useContext;

  /// [jurisdiction] A legal or geographic region in which the concept map is
  ///  intended to be used.
  @override
  List<CodeableConcept>? get jurisdiction;

  /// [purpose] Explanation of why this concept map is needed and why it has
  ///  been designed as it has.
  @override
  FhirMarkdown? get purpose;

  /// [purposeElement] Extensions for purpose
  @override
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement;

  /// [copyright] A copyright statement relating to the concept map and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  ///  and publishing of the concept map.
  @override
  FhirMarkdown? get copyright;

  /// [copyrightElement] Extensions for copyright
  @override
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement;

  /// [sourceUri] Identifier for the source value set that contains the
  ///  concepts that are being mapped and provides context for the mappings.
  @override
  FhirUri? get sourceUri;

  /// [sourceUriElement] Extensions for sourceUri
  @override
  @JsonKey(name: '_sourceUri')
  PrimitiveElement? get sourceUriElement;

  /// [sourceCanonical] Identifier for the source value set that contains the
  ///  concepts that are being mapped and provides context for the mappings.
  @override
  FhirCanonical? get sourceCanonical;

  /// [sourceCanonicalElement] Extensions for sourceCanonical
  @override
  @JsonKey(name: '_sourceCanonical')
  PrimitiveElement? get sourceCanonicalElement;

  /// [targetUri] The target value set provides context for the mappings. Note
  /// that the mapping is made between concepts, not between value sets, but the
  /// value set provides important context about how the concept mapping choices
  ///  are made.
  @override
  FhirUri? get targetUri;

  /// [targetUriElement] Extensions for targetUri
  @override
  @JsonKey(name: '_targetUri')
  PrimitiveElement? get targetUriElement;

  /// [targetCanonical] The target value set provides context for the mappings.
  /// Note that the mapping is made between concepts, not between value sets,
  /// but the value set provides important context about how the concept mapping
  ///  choices are made.
  @override
  FhirCanonical? get targetCanonical;

  /// [targetCanonicalElement] Extensions for targetCanonical
  @override
  @JsonKey(name: '_targetCanonical')
  PrimitiveElement? get targetCanonicalElement;

  /// [group] A group of mappings that all have the same source and target
  ///  system.
  @override
  List<ConceptMapGroup>? get group;

  /// Create a copy of ConceptMap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConceptMapImplCopyWith<_$ConceptMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConceptMapGroup _$ConceptMapGroupFromJson(Map<String, dynamic> json) {
  return _ConceptMapGroup.fromJson(json);
}

/// @nodoc
mixin _$ConceptMapGroup {
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

  /// [source] An absolute URI that identifies the source system where the
  ///  concepts to be mapped are defined.
  FhirUri? get source => throw _privateConstructorUsedError;

  /// [sourceElement] Extensions for source
  @JsonKey(name: '_source')
  PrimitiveElement? get sourceElement => throw _privateConstructorUsedError;

  /// [sourceVersion] The specific version of the code system, as determined by
  ///  the code system authority.
  String? get sourceVersion => throw _privateConstructorUsedError;

  /// [sourceVersionElement] Extensions for sourceVersion
  @JsonKey(name: '_sourceVersion')
  PrimitiveElement? get sourceVersionElement =>
      throw _privateConstructorUsedError;

  /// [target] An absolute URI that identifies the target system that the
  ///  concepts will be mapped to.
  FhirUri? get target => throw _privateConstructorUsedError;

  /// [targetElement] Extensions for target
  @JsonKey(name: '_target')
  PrimitiveElement? get targetElement => throw _privateConstructorUsedError;

  /// [targetVersion] The specific version of the code system, as determined by
  ///  the code system authority.
  String? get targetVersion => throw _privateConstructorUsedError;

  /// [targetVersionElement] Extensions for targetVersion
  @JsonKey(name: '_targetVersion')
  PrimitiveElement? get targetVersionElement =>
      throw _privateConstructorUsedError;

  /// [element] Mappings for an individual concept in the source to one or more
  ///  concepts in the target.
  List<ConceptMapElement> get element => throw _privateConstructorUsedError;

  /// [unmapped] What to do when there is no mapping for the source concept.
  /// "Unmapped" does not include codes that are unmatched, and the unmapped
  /// element is ignored in a code is specified to have equivalence =
  ///  unmatched.
  ConceptMapUnmapped? get unmapped => throw _privateConstructorUsedError;

  /// Serializes this ConceptMapGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConceptMapGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConceptMapGroupCopyWith<ConceptMapGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConceptMapGroupCopyWith<$Res> {
  factory $ConceptMapGroupCopyWith(
          ConceptMapGroup value, $Res Function(ConceptMapGroup) then) =
      _$ConceptMapGroupCopyWithImpl<$Res, ConceptMapGroup>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirUri? source,
      @JsonKey(name: '_source') PrimitiveElement? sourceElement,
      String? sourceVersion,
      @JsonKey(name: '_sourceVersion') PrimitiveElement? sourceVersionElement,
      FhirUri? target,
      @JsonKey(name: '_target') PrimitiveElement? targetElement,
      String? targetVersion,
      @JsonKey(name: '_targetVersion') PrimitiveElement? targetVersionElement,
      List<ConceptMapElement> element,
      ConceptMapUnmapped? unmapped});

  $ConceptMapUnmappedCopyWith<$Res>? get unmapped;
}

/// @nodoc
class _$ConceptMapGroupCopyWithImpl<$Res, $Val extends ConceptMapGroup>
    implements $ConceptMapGroupCopyWith<$Res> {
  _$ConceptMapGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConceptMapGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? source = freezed,
    Object? sourceElement = freezed,
    Object? sourceVersion = freezed,
    Object? sourceVersionElement = freezed,
    Object? target = freezed,
    Object? targetElement = freezed,
    Object? targetVersion = freezed,
    Object? targetVersionElement = freezed,
    Object? element = null,
    Object? unmapped = freezed,
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
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      sourceElement: freezed == sourceElement
          ? _value.sourceElement
          : sourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      sourceVersion: freezed == sourceVersion
          ? _value.sourceVersion
          : sourceVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceVersionElement: freezed == sourceVersionElement
          ? _value.sourceVersionElement
          : sourceVersionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      targetElement: freezed == targetElement
          ? _value.targetElement
          : targetElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      targetVersion: freezed == targetVersion
          ? _value.targetVersion
          : targetVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      targetVersionElement: freezed == targetVersionElement
          ? _value.targetVersionElement
          : targetVersionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      element: null == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as List<ConceptMapElement>,
      unmapped: freezed == unmapped
          ? _value.unmapped
          : unmapped // ignore: cast_nullable_to_non_nullable
              as ConceptMapUnmapped?,
    ) as $Val);
  }

  /// Create a copy of ConceptMapGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConceptMapUnmappedCopyWith<$Res>? get unmapped {
    if (_value.unmapped == null) {
      return null;
    }

    return $ConceptMapUnmappedCopyWith<$Res>(_value.unmapped!, (value) {
      return _then(_value.copyWith(unmapped: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConceptMapGroupImplCopyWith<$Res>
    implements $ConceptMapGroupCopyWith<$Res> {
  factory _$$ConceptMapGroupImplCopyWith(_$ConceptMapGroupImpl value,
          $Res Function(_$ConceptMapGroupImpl) then) =
      __$$ConceptMapGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirUri? source,
      @JsonKey(name: '_source') PrimitiveElement? sourceElement,
      String? sourceVersion,
      @JsonKey(name: '_sourceVersion') PrimitiveElement? sourceVersionElement,
      FhirUri? target,
      @JsonKey(name: '_target') PrimitiveElement? targetElement,
      String? targetVersion,
      @JsonKey(name: '_targetVersion') PrimitiveElement? targetVersionElement,
      List<ConceptMapElement> element,
      ConceptMapUnmapped? unmapped});

  @override
  $ConceptMapUnmappedCopyWith<$Res>? get unmapped;
}

/// @nodoc
class __$$ConceptMapGroupImplCopyWithImpl<$Res>
    extends _$ConceptMapGroupCopyWithImpl<$Res, _$ConceptMapGroupImpl>
    implements _$$ConceptMapGroupImplCopyWith<$Res> {
  __$$ConceptMapGroupImplCopyWithImpl(
      _$ConceptMapGroupImpl _value, $Res Function(_$ConceptMapGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConceptMapGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? source = freezed,
    Object? sourceElement = freezed,
    Object? sourceVersion = freezed,
    Object? sourceVersionElement = freezed,
    Object? target = freezed,
    Object? targetElement = freezed,
    Object? targetVersion = freezed,
    Object? targetVersionElement = freezed,
    Object? element = null,
    Object? unmapped = freezed,
  }) {
    return _then(_$ConceptMapGroupImpl(
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
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      sourceElement: freezed == sourceElement
          ? _value.sourceElement
          : sourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      sourceVersion: freezed == sourceVersion
          ? _value.sourceVersion
          : sourceVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceVersionElement: freezed == sourceVersionElement
          ? _value.sourceVersionElement
          : sourceVersionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      targetElement: freezed == targetElement
          ? _value.targetElement
          : targetElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      targetVersion: freezed == targetVersion
          ? _value.targetVersion
          : targetVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      targetVersionElement: freezed == targetVersionElement
          ? _value.targetVersionElement
          : targetVersionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      element: null == element
          ? _value._element
          : element // ignore: cast_nullable_to_non_nullable
              as List<ConceptMapElement>,
      unmapped: freezed == unmapped
          ? _value.unmapped
          : unmapped // ignore: cast_nullable_to_non_nullable
              as ConceptMapUnmapped?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConceptMapGroupImpl extends _ConceptMapGroup {
  _$ConceptMapGroupImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.source,
      @JsonKey(name: '_source') this.sourceElement,
      this.sourceVersion,
      @JsonKey(name: '_sourceVersion') this.sourceVersionElement,
      this.target,
      @JsonKey(name: '_target') this.targetElement,
      this.targetVersion,
      @JsonKey(name: '_targetVersion') this.targetVersionElement,
      required final List<ConceptMapElement> element,
      this.unmapped})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _element = element,
        super._();

  factory _$ConceptMapGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConceptMapGroupImplFromJson(json);

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

  /// [source] An absolute URI that identifies the source system where the
  ///  concepts to be mapped are defined.
  @override
  final FhirUri? source;

  /// [sourceElement] Extensions for source
  @override
  @JsonKey(name: '_source')
  final PrimitiveElement? sourceElement;

  /// [sourceVersion] The specific version of the code system, as determined by
  ///  the code system authority.
  @override
  final String? sourceVersion;

  /// [sourceVersionElement] Extensions for sourceVersion
  @override
  @JsonKey(name: '_sourceVersion')
  final PrimitiveElement? sourceVersionElement;

  /// [target] An absolute URI that identifies the target system that the
  ///  concepts will be mapped to.
  @override
  final FhirUri? target;

  /// [targetElement] Extensions for target
  @override
  @JsonKey(name: '_target')
  final PrimitiveElement? targetElement;

  /// [targetVersion] The specific version of the code system, as determined by
  ///  the code system authority.
  @override
  final String? targetVersion;

  /// [targetVersionElement] Extensions for targetVersion
  @override
  @JsonKey(name: '_targetVersion')
  final PrimitiveElement? targetVersionElement;

  /// [element] Mappings for an individual concept in the source to one or more
  ///  concepts in the target.
  final List<ConceptMapElement> _element;

  /// [element] Mappings for an individual concept in the source to one or more
  ///  concepts in the target.
  @override
  List<ConceptMapElement> get element {
    if (_element is EqualUnmodifiableListView) return _element;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_element);
  }

  /// [unmapped] What to do when there is no mapping for the source concept.
  /// "Unmapped" does not include codes that are unmatched, and the unmapped
  /// element is ignored in a code is specified to have equivalence =
  ///  unmatched.
  @override
  final ConceptMapUnmapped? unmapped;

  @override
  String toString() {
    return 'ConceptMapGroup(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, source: $source, sourceElement: $sourceElement, sourceVersion: $sourceVersion, sourceVersionElement: $sourceVersionElement, target: $target, targetElement: $targetElement, targetVersion: $targetVersion, targetVersionElement: $targetVersionElement, element: $element, unmapped: $unmapped)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConceptMapGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourceElement, sourceElement) ||
                other.sourceElement == sourceElement) &&
            (identical(other.sourceVersion, sourceVersion) ||
                other.sourceVersion == sourceVersion) &&
            (identical(other.sourceVersionElement, sourceVersionElement) ||
                other.sourceVersionElement == sourceVersionElement) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.targetElement, targetElement) ||
                other.targetElement == targetElement) &&
            (identical(other.targetVersion, targetVersion) ||
                other.targetVersion == targetVersion) &&
            (identical(other.targetVersionElement, targetVersionElement) ||
                other.targetVersionElement == targetVersionElement) &&
            const DeepCollectionEquality().equals(other._element, _element) &&
            (identical(other.unmapped, unmapped) ||
                other.unmapped == unmapped));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      source,
      sourceElement,
      sourceVersion,
      sourceVersionElement,
      target,
      targetElement,
      targetVersion,
      targetVersionElement,
      const DeepCollectionEquality().hash(_element),
      unmapped);

  /// Create a copy of ConceptMapGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConceptMapGroupImplCopyWith<_$ConceptMapGroupImpl> get copyWith =>
      __$$ConceptMapGroupImplCopyWithImpl<_$ConceptMapGroupImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConceptMapGroupImplToJson(
      this,
    );
  }
}

abstract class _ConceptMapGroup extends ConceptMapGroup {
  factory _ConceptMapGroup(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirUri? source,
      @JsonKey(name: '_source') final PrimitiveElement? sourceElement,
      final String? sourceVersion,
      @JsonKey(name: '_sourceVersion')
      final PrimitiveElement? sourceVersionElement,
      final FhirUri? target,
      @JsonKey(name: '_target') final PrimitiveElement? targetElement,
      final String? targetVersion,
      @JsonKey(name: '_targetVersion')
      final PrimitiveElement? targetVersionElement,
      required final List<ConceptMapElement> element,
      final ConceptMapUnmapped? unmapped}) = _$ConceptMapGroupImpl;
  _ConceptMapGroup._() : super._();

  factory _ConceptMapGroup.fromJson(Map<String, dynamic> json) =
      _$ConceptMapGroupImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

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
  List<FhirExtension>? get modifierExtension;

  /// [source] An absolute URI that identifies the source system where the
  ///  concepts to be mapped are defined.
  @override
  FhirUri? get source;

  /// [sourceElement] Extensions for source
  @override
  @JsonKey(name: '_source')
  PrimitiveElement? get sourceElement;

  /// [sourceVersion] The specific version of the code system, as determined by
  ///  the code system authority.
  @override
  String? get sourceVersion;

  /// [sourceVersionElement] Extensions for sourceVersion
  @override
  @JsonKey(name: '_sourceVersion')
  PrimitiveElement? get sourceVersionElement;

  /// [target] An absolute URI that identifies the target system that the
  ///  concepts will be mapped to.
  @override
  FhirUri? get target;

  /// [targetElement] Extensions for target
  @override
  @JsonKey(name: '_target')
  PrimitiveElement? get targetElement;

  /// [targetVersion] The specific version of the code system, as determined by
  ///  the code system authority.
  @override
  String? get targetVersion;

  /// [targetVersionElement] Extensions for targetVersion
  @override
  @JsonKey(name: '_targetVersion')
  PrimitiveElement? get targetVersionElement;

  /// [element] Mappings for an individual concept in the source to one or more
  ///  concepts in the target.
  @override
  List<ConceptMapElement> get element;

  /// [unmapped] What to do when there is no mapping for the source concept.
  /// "Unmapped" does not include codes that are unmatched, and the unmapped
  /// element is ignored in a code is specified to have equivalence =
  ///  unmatched.
  @override
  ConceptMapUnmapped? get unmapped;

  /// Create a copy of ConceptMapGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConceptMapGroupImplCopyWith<_$ConceptMapGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConceptMapElement _$ConceptMapElementFromJson(Map<String, dynamic> json) {
  return _ConceptMapElement.fromJson(json);
}

/// @nodoc
mixin _$ConceptMapElement {
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

  /// [code] Identity (code or path) or the element/item being mapped.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement => throw _privateConstructorUsedError;

  /// [display] The display for the code. The display is only provided to help
  ///  editors when editing the concept map.
  String? get display => throw _privateConstructorUsedError;

  /// [displayElement] Extensions for display
  @JsonKey(name: '_display')
  PrimitiveElement? get displayElement => throw _privateConstructorUsedError;

  /// [target] A concept from the target value set that this concept maps to.
  List<ConceptMapTarget>? get target => throw _privateConstructorUsedError;

  /// Serializes this ConceptMapElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConceptMapElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConceptMapElementCopyWith<ConceptMapElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConceptMapElementCopyWith<$Res> {
  factory $ConceptMapElementCopyWith(
          ConceptMapElement value, $Res Function(ConceptMapElement) then) =
      _$ConceptMapElementCopyWithImpl<$Res, ConceptMapElement>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      String? display,
      @JsonKey(name: '_display') PrimitiveElement? displayElement,
      List<ConceptMapTarget>? target});
}

/// @nodoc
class _$ConceptMapElementCopyWithImpl<$Res, $Val extends ConceptMapElement>
    implements $ConceptMapElementCopyWith<$Res> {
  _$ConceptMapElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConceptMapElement
  /// with the given fields replaced by the non-null parameter values.
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
    Object? target = freezed,
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
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as List<ConceptMapTarget>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConceptMapElementImplCopyWith<$Res>
    implements $ConceptMapElementCopyWith<$Res> {
  factory _$$ConceptMapElementImplCopyWith(_$ConceptMapElementImpl value,
          $Res Function(_$ConceptMapElementImpl) then) =
      __$$ConceptMapElementImplCopyWithImpl<$Res>;
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
      List<ConceptMapTarget>? target});
}

/// @nodoc
class __$$ConceptMapElementImplCopyWithImpl<$Res>
    extends _$ConceptMapElementCopyWithImpl<$Res, _$ConceptMapElementImpl>
    implements _$$ConceptMapElementImplCopyWith<$Res> {
  __$$ConceptMapElementImplCopyWithImpl(_$ConceptMapElementImpl _value,
      $Res Function(_$ConceptMapElementImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConceptMapElement
  /// with the given fields replaced by the non-null parameter values.
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
    Object? target = freezed,
  }) {
    return _then(_$ConceptMapElementImpl(
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
      target: freezed == target
          ? _value._target
          : target // ignore: cast_nullable_to_non_nullable
              as List<ConceptMapTarget>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConceptMapElementImpl extends _ConceptMapElement {
  _$ConceptMapElementImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      this.display,
      @JsonKey(name: '_display') this.displayElement,
      final List<ConceptMapTarget>? target})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _target = target,
        super._();

  factory _$ConceptMapElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConceptMapElementImplFromJson(json);

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

  /// [code] Identity (code or path) or the element/item being mapped.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final PrimitiveElement? codeElement;

  /// [display] The display for the code. The display is only provided to help
  ///  editors when editing the concept map.
  @override
  final String? display;

  /// [displayElement] Extensions for display
  @override
  @JsonKey(name: '_display')
  final PrimitiveElement? displayElement;

  /// [target] A concept from the target value set that this concept maps to.
  final List<ConceptMapTarget>? _target;

  /// [target] A concept from the target value set that this concept maps to.
  @override
  List<ConceptMapTarget>? get target {
    final value = _target;
    if (value == null) return null;
    if (_target is EqualUnmodifiableListView) return _target;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ConceptMapElement(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, code: $code, codeElement: $codeElement, display: $display, displayElement: $displayElement, target: $target)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConceptMapElementImpl &&
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
            const DeepCollectionEquality().equals(other._target, _target));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(_target));

  /// Create a copy of ConceptMapElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConceptMapElementImplCopyWith<_$ConceptMapElementImpl> get copyWith =>
      __$$ConceptMapElementImplCopyWithImpl<_$ConceptMapElementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConceptMapElementImplToJson(
      this,
    );
  }
}

abstract class _ConceptMapElement extends ConceptMapElement {
  factory _ConceptMapElement(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirCode? code,
      @JsonKey(name: '_code') final PrimitiveElement? codeElement,
      final String? display,
      @JsonKey(name: '_display') final PrimitiveElement? displayElement,
      final List<ConceptMapTarget>? target}) = _$ConceptMapElementImpl;
  _ConceptMapElement._() : super._();

  factory _ConceptMapElement.fromJson(Map<String, dynamic> json) =
      _$ConceptMapElementImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

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
  List<FhirExtension>? get modifierExtension;

  /// [code] Identity (code or path) or the element/item being mapped.
  @override
  FhirCode? get code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement;

  /// [display] The display for the code. The display is only provided to help
  ///  editors when editing the concept map.
  @override
  String? get display;

  /// [displayElement] Extensions for display
  @override
  @JsonKey(name: '_display')
  PrimitiveElement? get displayElement;

  /// [target] A concept from the target value set that this concept maps to.
  @override
  List<ConceptMapTarget>? get target;

  /// Create a copy of ConceptMapElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConceptMapElementImplCopyWith<_$ConceptMapElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConceptMapTarget _$ConceptMapTargetFromJson(Map<String, dynamic> json) {
  return _ConceptMapTarget.fromJson(json);
}

/// @nodoc
mixin _$ConceptMapTarget {
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

  /// [code] Identity (code or path) or the element/item that the map refers
  ///  to.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement => throw _privateConstructorUsedError;

  /// [display] The display for the code. The display is only provided to help
  ///  editors when editing the concept map.
  String? get display => throw _privateConstructorUsedError;

  /// [displayElement] Extensions for display
  @JsonKey(name: '_display')
  PrimitiveElement? get displayElement => throw _privateConstructorUsedError;

  /// [equivalence] The equivalence between the source and target concepts
  /// (counting for the dependencies and products). The equivalence is read from
  ///  target to source (e.g. the target is 'wider' than the source).
  FhirCode? get equivalence => throw _privateConstructorUsedError;

  /// [equivalenceElement] Extensions for equivalence
  @JsonKey(name: '_equivalence')
  PrimitiveElement? get equivalenceElement =>
      throw _privateConstructorUsedError;

  /// [comment] A description of status/issues in mapping that conveys
  ///  additional information not represented in  the structured data.
  String? get comment => throw _privateConstructorUsedError;

  /// [commentElement] Extensions for comment
  @JsonKey(name: '_comment')
  PrimitiveElement? get commentElement => throw _privateConstructorUsedError;

  /// [dependsOn] A set of additional dependencies for this mapping to hold.
  /// This mapping is only applicable if the specified element can be resolved,
  ///  and it has the specified value.
  List<ConceptMapDependsOn>? get dependsOn =>
      throw _privateConstructorUsedError;

  /// [product] A set of additional outcomes from this mapping to other
  /// elements. To properly execute this mapping, the specified element must be
  /// mapped to some data element or source that is in context. The mapping may
  /// still be useful without a place for the additional data elements, but the
  ///  equivalence cannot be relied on.
  List<ConceptMapDependsOn>? get product => throw _privateConstructorUsedError;

  /// Serializes this ConceptMapTarget to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConceptMapTarget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConceptMapTargetCopyWith<ConceptMapTarget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConceptMapTargetCopyWith<$Res> {
  factory $ConceptMapTargetCopyWith(
          ConceptMapTarget value, $Res Function(ConceptMapTarget) then) =
      _$ConceptMapTargetCopyWithImpl<$Res, ConceptMapTarget>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      String? display,
      @JsonKey(name: '_display') PrimitiveElement? displayElement,
      FhirCode? equivalence,
      @JsonKey(name: '_equivalence') PrimitiveElement? equivalenceElement,
      String? comment,
      @JsonKey(name: '_comment') PrimitiveElement? commentElement,
      List<ConceptMapDependsOn>? dependsOn,
      List<ConceptMapDependsOn>? product});
}

/// @nodoc
class _$ConceptMapTargetCopyWithImpl<$Res, $Val extends ConceptMapTarget>
    implements $ConceptMapTargetCopyWith<$Res> {
  _$ConceptMapTargetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConceptMapTarget
  /// with the given fields replaced by the non-null parameter values.
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
    Object? equivalence = freezed,
    Object? equivalenceElement = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
    Object? dependsOn = freezed,
    Object? product = freezed,
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
      equivalence: freezed == equivalence
          ? _value.equivalence
          : equivalence // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      equivalenceElement: freezed == equivalenceElement
          ? _value.equivalenceElement
          : equivalenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      commentElement: freezed == commentElement
          ? _value.commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      dependsOn: freezed == dependsOn
          ? _value.dependsOn
          : dependsOn // ignore: cast_nullable_to_non_nullable
              as List<ConceptMapDependsOn>?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ConceptMapDependsOn>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConceptMapTargetImplCopyWith<$Res>
    implements $ConceptMapTargetCopyWith<$Res> {
  factory _$$ConceptMapTargetImplCopyWith(_$ConceptMapTargetImpl value,
          $Res Function(_$ConceptMapTargetImpl) then) =
      __$$ConceptMapTargetImplCopyWithImpl<$Res>;
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
      FhirCode? equivalence,
      @JsonKey(name: '_equivalence') PrimitiveElement? equivalenceElement,
      String? comment,
      @JsonKey(name: '_comment') PrimitiveElement? commentElement,
      List<ConceptMapDependsOn>? dependsOn,
      List<ConceptMapDependsOn>? product});
}

/// @nodoc
class __$$ConceptMapTargetImplCopyWithImpl<$Res>
    extends _$ConceptMapTargetCopyWithImpl<$Res, _$ConceptMapTargetImpl>
    implements _$$ConceptMapTargetImplCopyWith<$Res> {
  __$$ConceptMapTargetImplCopyWithImpl(_$ConceptMapTargetImpl _value,
      $Res Function(_$ConceptMapTargetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConceptMapTarget
  /// with the given fields replaced by the non-null parameter values.
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
    Object? equivalence = freezed,
    Object? equivalenceElement = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
    Object? dependsOn = freezed,
    Object? product = freezed,
  }) {
    return _then(_$ConceptMapTargetImpl(
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
      equivalence: freezed == equivalence
          ? _value.equivalence
          : equivalence // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      equivalenceElement: freezed == equivalenceElement
          ? _value.equivalenceElement
          : equivalenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      commentElement: freezed == commentElement
          ? _value.commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      dependsOn: freezed == dependsOn
          ? _value._dependsOn
          : dependsOn // ignore: cast_nullable_to_non_nullable
              as List<ConceptMapDependsOn>?,
      product: freezed == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ConceptMapDependsOn>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConceptMapTargetImpl extends _ConceptMapTarget {
  _$ConceptMapTargetImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      this.display,
      @JsonKey(name: '_display') this.displayElement,
      this.equivalence,
      @JsonKey(name: '_equivalence') this.equivalenceElement,
      this.comment,
      @JsonKey(name: '_comment') this.commentElement,
      final List<ConceptMapDependsOn>? dependsOn,
      final List<ConceptMapDependsOn>? product})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _dependsOn = dependsOn,
        _product = product,
        super._();

  factory _$ConceptMapTargetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConceptMapTargetImplFromJson(json);

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

  /// [code] Identity (code or path) or the element/item that the map refers
  ///  to.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final PrimitiveElement? codeElement;

  /// [display] The display for the code. The display is only provided to help
  ///  editors when editing the concept map.
  @override
  final String? display;

  /// [displayElement] Extensions for display
  @override
  @JsonKey(name: '_display')
  final PrimitiveElement? displayElement;

  /// [equivalence] The equivalence between the source and target concepts
  /// (counting for the dependencies and products). The equivalence is read from
  ///  target to source (e.g. the target is 'wider' than the source).
  @override
  final FhirCode? equivalence;

  /// [equivalenceElement] Extensions for equivalence
  @override
  @JsonKey(name: '_equivalence')
  final PrimitiveElement? equivalenceElement;

  /// [comment] A description of status/issues in mapping that conveys
  ///  additional information not represented in  the structured data.
  @override
  final String? comment;

  /// [commentElement] Extensions for comment
  @override
  @JsonKey(name: '_comment')
  final PrimitiveElement? commentElement;

  /// [dependsOn] A set of additional dependencies for this mapping to hold.
  /// This mapping is only applicable if the specified element can be resolved,
  ///  and it has the specified value.
  final List<ConceptMapDependsOn>? _dependsOn;

  /// [dependsOn] A set of additional dependencies for this mapping to hold.
  /// This mapping is only applicable if the specified element can be resolved,
  ///  and it has the specified value.
  @override
  List<ConceptMapDependsOn>? get dependsOn {
    final value = _dependsOn;
    if (value == null) return null;
    if (_dependsOn is EqualUnmodifiableListView) return _dependsOn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [product] A set of additional outcomes from this mapping to other
  /// elements. To properly execute this mapping, the specified element must be
  /// mapped to some data element or source that is in context. The mapping may
  /// still be useful without a place for the additional data elements, but the
  ///  equivalence cannot be relied on.
  final List<ConceptMapDependsOn>? _product;

  /// [product] A set of additional outcomes from this mapping to other
  /// elements. To properly execute this mapping, the specified element must be
  /// mapped to some data element or source that is in context. The mapping may
  /// still be useful without a place for the additional data elements, but the
  ///  equivalence cannot be relied on.
  @override
  List<ConceptMapDependsOn>? get product {
    final value = _product;
    if (value == null) return null;
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ConceptMapTarget(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, code: $code, codeElement: $codeElement, display: $display, displayElement: $displayElement, equivalence: $equivalence, equivalenceElement: $equivalenceElement, comment: $comment, commentElement: $commentElement, dependsOn: $dependsOn, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConceptMapTargetImpl &&
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
            (identical(other.equivalence, equivalence) ||
                other.equivalence == equivalence) &&
            (identical(other.equivalenceElement, equivalenceElement) ||
                other.equivalenceElement == equivalenceElement) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.commentElement, commentElement) ||
                other.commentElement == commentElement) &&
            const DeepCollectionEquality()
                .equals(other._dependsOn, _dependsOn) &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      equivalence,
      equivalenceElement,
      comment,
      commentElement,
      const DeepCollectionEquality().hash(_dependsOn),
      const DeepCollectionEquality().hash(_product));

  /// Create a copy of ConceptMapTarget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConceptMapTargetImplCopyWith<_$ConceptMapTargetImpl> get copyWith =>
      __$$ConceptMapTargetImplCopyWithImpl<_$ConceptMapTargetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConceptMapTargetImplToJson(
      this,
    );
  }
}

abstract class _ConceptMapTarget extends ConceptMapTarget {
  factory _ConceptMapTarget(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirCode? code,
      @JsonKey(name: '_code') final PrimitiveElement? codeElement,
      final String? display,
      @JsonKey(name: '_display') final PrimitiveElement? displayElement,
      final FhirCode? equivalence,
      @JsonKey(name: '_equivalence') final PrimitiveElement? equivalenceElement,
      final String? comment,
      @JsonKey(name: '_comment') final PrimitiveElement? commentElement,
      final List<ConceptMapDependsOn>? dependsOn,
      final List<ConceptMapDependsOn>? product}) = _$ConceptMapTargetImpl;
  _ConceptMapTarget._() : super._();

  factory _ConceptMapTarget.fromJson(Map<String, dynamic> json) =
      _$ConceptMapTargetImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

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
  List<FhirExtension>? get modifierExtension;

  /// [code] Identity (code or path) or the element/item that the map refers
  ///  to.
  @override
  FhirCode? get code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement;

  /// [display] The display for the code. The display is only provided to help
  ///  editors when editing the concept map.
  @override
  String? get display;

  /// [displayElement] Extensions for display
  @override
  @JsonKey(name: '_display')
  PrimitiveElement? get displayElement;

  /// [equivalence] The equivalence between the source and target concepts
  /// (counting for the dependencies and products). The equivalence is read from
  ///  target to source (e.g. the target is 'wider' than the source).
  @override
  FhirCode? get equivalence;

  /// [equivalenceElement] Extensions for equivalence
  @override
  @JsonKey(name: '_equivalence')
  PrimitiveElement? get equivalenceElement;

  /// [comment] A description of status/issues in mapping that conveys
  ///  additional information not represented in  the structured data.
  @override
  String? get comment;

  /// [commentElement] Extensions for comment
  @override
  @JsonKey(name: '_comment')
  PrimitiveElement? get commentElement;

  /// [dependsOn] A set of additional dependencies for this mapping to hold.
  /// This mapping is only applicable if the specified element can be resolved,
  ///  and it has the specified value.
  @override
  List<ConceptMapDependsOn>? get dependsOn;

  /// [product] A set of additional outcomes from this mapping to other
  /// elements. To properly execute this mapping, the specified element must be
  /// mapped to some data element or source that is in context. The mapping may
  /// still be useful without a place for the additional data elements, but the
  ///  equivalence cannot be relied on.
  @override
  List<ConceptMapDependsOn>? get product;

  /// Create a copy of ConceptMapTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConceptMapTargetImplCopyWith<_$ConceptMapTargetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConceptMapDependsOn _$ConceptMapDependsOnFromJson(Map<String, dynamic> json) {
  return _ConceptMapDependsOn.fromJson(json);
}

/// @nodoc
mixin _$ConceptMapDependsOn {
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

  /// [property] A reference to an element that holds a coded value that
  /// corresponds to a code system property. The idea is that the information
  /// model carries an element somewhere that is labeled to correspond with a
  ///  code system property.
  FhirUri? get property => throw _privateConstructorUsedError;

  /// [propertyElement] Extensions for property
  @JsonKey(name: '_property')
  PrimitiveElement? get propertyElement => throw _privateConstructorUsedError;

  /// [system] An absolute URI that identifies the code system of the
  /// dependency code (if the source/dependency is a value set that crosses code
  ///  systems).
  FhirCanonical? get system => throw _privateConstructorUsedError;

  /// [value] Identity (code or path) or the element/item/ValueSet/text that
  ///  the map depends on / refers to.
  String? get value => throw _privateConstructorUsedError;

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement => throw _privateConstructorUsedError;

  /// [display] The display for the code. The display is only provided to help
  ///  editors when editing the concept map.
  String? get display => throw _privateConstructorUsedError;

  /// [displayElement] Extensions for display
  @JsonKey(name: '_display')
  PrimitiveElement? get displayElement => throw _privateConstructorUsedError;

  /// Serializes this ConceptMapDependsOn to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConceptMapDependsOn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConceptMapDependsOnCopyWith<ConceptMapDependsOn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConceptMapDependsOnCopyWith<$Res> {
  factory $ConceptMapDependsOnCopyWith(
          ConceptMapDependsOn value, $Res Function(ConceptMapDependsOn) then) =
      _$ConceptMapDependsOnCopyWithImpl<$Res, ConceptMapDependsOn>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirUri? property,
      @JsonKey(name: '_property') PrimitiveElement? propertyElement,
      FhirCanonical? system,
      String? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement,
      String? display,
      @JsonKey(name: '_display') PrimitiveElement? displayElement});
}

/// @nodoc
class _$ConceptMapDependsOnCopyWithImpl<$Res, $Val extends ConceptMapDependsOn>
    implements $ConceptMapDependsOnCopyWith<$Res> {
  _$ConceptMapDependsOnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConceptMapDependsOn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? property = freezed,
    Object? propertyElement = freezed,
    Object? system = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? display = freezed,
    Object? displayElement = freezed,
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
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      propertyElement: freezed == propertyElement
          ? _value.propertyElement
          : propertyElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      displayElement: freezed == displayElement
          ? _value.displayElement
          : displayElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConceptMapDependsOnImplCopyWith<$Res>
    implements $ConceptMapDependsOnCopyWith<$Res> {
  factory _$$ConceptMapDependsOnImplCopyWith(_$ConceptMapDependsOnImpl value,
          $Res Function(_$ConceptMapDependsOnImpl) then) =
      __$$ConceptMapDependsOnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirUri? property,
      @JsonKey(name: '_property') PrimitiveElement? propertyElement,
      FhirCanonical? system,
      String? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement,
      String? display,
      @JsonKey(name: '_display') PrimitiveElement? displayElement});
}

/// @nodoc
class __$$ConceptMapDependsOnImplCopyWithImpl<$Res>
    extends _$ConceptMapDependsOnCopyWithImpl<$Res, _$ConceptMapDependsOnImpl>
    implements _$$ConceptMapDependsOnImplCopyWith<$Res> {
  __$$ConceptMapDependsOnImplCopyWithImpl(_$ConceptMapDependsOnImpl _value,
      $Res Function(_$ConceptMapDependsOnImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConceptMapDependsOn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? property = freezed,
    Object? propertyElement = freezed,
    Object? system = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? display = freezed,
    Object? displayElement = freezed,
  }) {
    return _then(_$ConceptMapDependsOnImpl(
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
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      propertyElement: freezed == propertyElement
          ? _value.propertyElement
          : propertyElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      displayElement: freezed == displayElement
          ? _value.displayElement
          : displayElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConceptMapDependsOnImpl extends _ConceptMapDependsOn {
  _$ConceptMapDependsOnImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.property,
      @JsonKey(name: '_property') this.propertyElement,
      this.system,
      this.value,
      @JsonKey(name: '_value') this.valueElement,
      this.display,
      @JsonKey(name: '_display') this.displayElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ConceptMapDependsOnImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConceptMapDependsOnImplFromJson(json);

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

  /// [property] A reference to an element that holds a coded value that
  /// corresponds to a code system property. The idea is that the information
  /// model carries an element somewhere that is labeled to correspond with a
  ///  code system property.
  @override
  final FhirUri? property;

  /// [propertyElement] Extensions for property
  @override
  @JsonKey(name: '_property')
  final PrimitiveElement? propertyElement;

  /// [system] An absolute URI that identifies the code system of the
  /// dependency code (if the source/dependency is a value set that crosses code
  ///  systems).
  @override
  final FhirCanonical? system;

  /// [value] Identity (code or path) or the element/item/ValueSet/text that
  ///  the map depends on / refers to.
  @override
  final String? value;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  final PrimitiveElement? valueElement;

  /// [display] The display for the code. The display is only provided to help
  ///  editors when editing the concept map.
  @override
  final String? display;

  /// [displayElement] Extensions for display
  @override
  @JsonKey(name: '_display')
  final PrimitiveElement? displayElement;

  @override
  String toString() {
    return 'ConceptMapDependsOn(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, property: $property, propertyElement: $propertyElement, system: $system, value: $value, valueElement: $valueElement, display: $display, displayElement: $displayElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConceptMapDependsOnImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.property, property) ||
                other.property == property) &&
            (identical(other.propertyElement, propertyElement) ||
                other.propertyElement == propertyElement) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueElement, valueElement) ||
                other.valueElement == valueElement) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.displayElement, displayElement) ||
                other.displayElement == displayElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      property,
      propertyElement,
      system,
      value,
      valueElement,
      display,
      displayElement);

  /// Create a copy of ConceptMapDependsOn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConceptMapDependsOnImplCopyWith<_$ConceptMapDependsOnImpl> get copyWith =>
      __$$ConceptMapDependsOnImplCopyWithImpl<_$ConceptMapDependsOnImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConceptMapDependsOnImplToJson(
      this,
    );
  }
}

abstract class _ConceptMapDependsOn extends ConceptMapDependsOn {
  factory _ConceptMapDependsOn(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirUri? property,
          @JsonKey(name: '_property') final PrimitiveElement? propertyElement,
          final FhirCanonical? system,
          final String? value,
          @JsonKey(name: '_value') final PrimitiveElement? valueElement,
          final String? display,
          @JsonKey(name: '_display') final PrimitiveElement? displayElement}) =
      _$ConceptMapDependsOnImpl;
  _ConceptMapDependsOn._() : super._();

  factory _ConceptMapDependsOn.fromJson(Map<String, dynamic> json) =
      _$ConceptMapDependsOnImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

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
  List<FhirExtension>? get modifierExtension;

  /// [property] A reference to an element that holds a coded value that
  /// corresponds to a code system property. The idea is that the information
  /// model carries an element somewhere that is labeled to correspond with a
  ///  code system property.
  @override
  FhirUri? get property;

  /// [propertyElement] Extensions for property
  @override
  @JsonKey(name: '_property')
  PrimitiveElement? get propertyElement;

  /// [system] An absolute URI that identifies the code system of the
  /// dependency code (if the source/dependency is a value set that crosses code
  ///  systems).
  @override
  FhirCanonical? get system;

  /// [value] Identity (code or path) or the element/item/ValueSet/text that
  ///  the map depends on / refers to.
  @override
  String? get value;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement;

  /// [display] The display for the code. The display is only provided to help
  ///  editors when editing the concept map.
  @override
  String? get display;

  /// [displayElement] Extensions for display
  @override
  @JsonKey(name: '_display')
  PrimitiveElement? get displayElement;

  /// Create a copy of ConceptMapDependsOn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConceptMapDependsOnImplCopyWith<_$ConceptMapDependsOnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConceptMapUnmapped _$ConceptMapUnmappedFromJson(Map<String, dynamic> json) {
  return _ConceptMapUnmapped.fromJson(json);
}

/// @nodoc
mixin _$ConceptMapUnmapped {
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

  /// [mode] Defines which action to take if there is no match for the source
  /// concept in the target system designated for the group. One of 3 actions
  /// are possible: use the unmapped code (this is useful when doing a mapping
  /// between versions, and only a few codes have changed), use a fixed code (a
  /// default code), or alternatively, a reference to a different concept map
  ///  can be provided (by canonical URL).
  FhirCode? get mode => throw _privateConstructorUsedError;

  /// [modeElement] Extensions for mode
  @JsonKey(name: '_mode')
  PrimitiveElement? get modeElement => throw _privateConstructorUsedError;

  /// [code] The fixed code to use when the mode = 'fixed'  - all unmapped
  ///  codes are mapped to a single fixed code.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement => throw _privateConstructorUsedError;

  /// [display] The display for the code. The display is only provided to help
  ///  editors when editing the concept map.
  String? get display => throw _privateConstructorUsedError;

  /// [displayElement] Extensions for display
  @JsonKey(name: '_display')
  PrimitiveElement? get displayElement => throw _privateConstructorUsedError;

  /// [url] The canonical reference to an additional ConceptMap resource
  /// instance to use for mapping if this ConceptMap resource contains no
  ///  matching mapping for the source concept.
  FhirCanonical? get url => throw _privateConstructorUsedError;

  /// Serializes this ConceptMapUnmapped to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConceptMapUnmapped
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConceptMapUnmappedCopyWith<ConceptMapUnmapped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConceptMapUnmappedCopyWith<$Res> {
  factory $ConceptMapUnmappedCopyWith(
          ConceptMapUnmapped value, $Res Function(ConceptMapUnmapped) then) =
      _$ConceptMapUnmappedCopyWithImpl<$Res, ConceptMapUnmapped>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? mode,
      @JsonKey(name: '_mode') PrimitiveElement? modeElement,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      String? display,
      @JsonKey(name: '_display') PrimitiveElement? displayElement,
      FhirCanonical? url});
}

/// @nodoc
class _$ConceptMapUnmappedCopyWithImpl<$Res, $Val extends ConceptMapUnmapped>
    implements $ConceptMapUnmappedCopyWith<$Res> {
  _$ConceptMapUnmappedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConceptMapUnmapped
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? mode = freezed,
    Object? modeElement = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? display = freezed,
    Object? displayElement = freezed,
    Object? url = freezed,
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
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      modeElement: freezed == modeElement
          ? _value.modeElement
          : modeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConceptMapUnmappedImplCopyWith<$Res>
    implements $ConceptMapUnmappedCopyWith<$Res> {
  factory _$$ConceptMapUnmappedImplCopyWith(_$ConceptMapUnmappedImpl value,
          $Res Function(_$ConceptMapUnmappedImpl) then) =
      __$$ConceptMapUnmappedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? mode,
      @JsonKey(name: '_mode') PrimitiveElement? modeElement,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      String? display,
      @JsonKey(name: '_display') PrimitiveElement? displayElement,
      FhirCanonical? url});
}

/// @nodoc
class __$$ConceptMapUnmappedImplCopyWithImpl<$Res>
    extends _$ConceptMapUnmappedCopyWithImpl<$Res, _$ConceptMapUnmappedImpl>
    implements _$$ConceptMapUnmappedImplCopyWith<$Res> {
  __$$ConceptMapUnmappedImplCopyWithImpl(_$ConceptMapUnmappedImpl _value,
      $Res Function(_$ConceptMapUnmappedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConceptMapUnmapped
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? mode = freezed,
    Object? modeElement = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? display = freezed,
    Object? displayElement = freezed,
    Object? url = freezed,
  }) {
    return _then(_$ConceptMapUnmappedImpl(
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
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      modeElement: freezed == modeElement
          ? _value.modeElement
          : modeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConceptMapUnmappedImpl extends _ConceptMapUnmapped {
  _$ConceptMapUnmappedImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.mode,
      @JsonKey(name: '_mode') this.modeElement,
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      this.display,
      @JsonKey(name: '_display') this.displayElement,
      this.url})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ConceptMapUnmappedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConceptMapUnmappedImplFromJson(json);

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

  /// [mode] Defines which action to take if there is no match for the source
  /// concept in the target system designated for the group. One of 3 actions
  /// are possible: use the unmapped code (this is useful when doing a mapping
  /// between versions, and only a few codes have changed), use a fixed code (a
  /// default code), or alternatively, a reference to a different concept map
  ///  can be provided (by canonical URL).
  @override
  final FhirCode? mode;

  /// [modeElement] Extensions for mode
  @override
  @JsonKey(name: '_mode')
  final PrimitiveElement? modeElement;

  /// [code] The fixed code to use when the mode = 'fixed'  - all unmapped
  ///  codes are mapped to a single fixed code.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final PrimitiveElement? codeElement;

  /// [display] The display for the code. The display is only provided to help
  ///  editors when editing the concept map.
  @override
  final String? display;

  /// [displayElement] Extensions for display
  @override
  @JsonKey(name: '_display')
  final PrimitiveElement? displayElement;

  /// [url] The canonical reference to an additional ConceptMap resource
  /// instance to use for mapping if this ConceptMap resource contains no
  ///  matching mapping for the source concept.
  @override
  final FhirCanonical? url;

  @override
  String toString() {
    return 'ConceptMapUnmapped(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, mode: $mode, modeElement: $modeElement, code: $code, codeElement: $codeElement, display: $display, displayElement: $displayElement, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConceptMapUnmappedImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.modeElement, modeElement) ||
                other.modeElement == modeElement) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.displayElement, displayElement) ||
                other.displayElement == displayElement) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      mode,
      modeElement,
      code,
      codeElement,
      display,
      displayElement,
      url);

  /// Create a copy of ConceptMapUnmapped
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConceptMapUnmappedImplCopyWith<_$ConceptMapUnmappedImpl> get copyWith =>
      __$$ConceptMapUnmappedImplCopyWithImpl<_$ConceptMapUnmappedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConceptMapUnmappedImplToJson(
      this,
    );
  }
}

abstract class _ConceptMapUnmapped extends ConceptMapUnmapped {
  factory _ConceptMapUnmapped(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirCode? mode,
      @JsonKey(name: '_mode') final PrimitiveElement? modeElement,
      final FhirCode? code,
      @JsonKey(name: '_code') final PrimitiveElement? codeElement,
      final String? display,
      @JsonKey(name: '_display') final PrimitiveElement? displayElement,
      final FhirCanonical? url}) = _$ConceptMapUnmappedImpl;
  _ConceptMapUnmapped._() : super._();

  factory _ConceptMapUnmapped.fromJson(Map<String, dynamic> json) =
      _$ConceptMapUnmappedImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

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
  List<FhirExtension>? get modifierExtension;

  /// [mode] Defines which action to take if there is no match for the source
  /// concept in the target system designated for the group. One of 3 actions
  /// are possible: use the unmapped code (this is useful when doing a mapping
  /// between versions, and only a few codes have changed), use a fixed code (a
  /// default code), or alternatively, a reference to a different concept map
  ///  can be provided (by canonical URL).
  @override
  FhirCode? get mode;

  /// [modeElement] Extensions for mode
  @override
  @JsonKey(name: '_mode')
  PrimitiveElement? get modeElement;

  /// [code] The fixed code to use when the mode = 'fixed'  - all unmapped
  ///  codes are mapped to a single fixed code.
  @override
  FhirCode? get code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement;

  /// [display] The display for the code. The display is only provided to help
  ///  editors when editing the concept map.
  @override
  String? get display;

  /// [displayElement] Extensions for display
  @override
  @JsonKey(name: '_display')
  PrimitiveElement? get displayElement;

  /// [url] The canonical reference to an additional ConceptMap resource
  /// instance to use for mapping if this ConceptMap resource contains no
  ///  matching mapping for the source concept.
  @override
  FhirCanonical? get url;

  /// Create a copy of ConceptMapUnmapped
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConceptMapUnmappedImplCopyWith<_$ConceptMapUnmappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
