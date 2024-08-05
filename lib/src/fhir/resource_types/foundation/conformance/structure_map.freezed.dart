// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'structure_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StructureMap _$StructureMapFromJson(Map<String, dynamic> json) {
  return _StructureMap.fromJson(json);
}

/// @nodoc
mixin _$StructureMap {
  @JsonKey(unknownEnumValue: R4ResourceType.StructureMap)
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

  /// [url] An absolute URI that is used to identify this structure map when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// structure map is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the structure map is
  ///  stored on different servers.
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [identifier] A formal identifier that is used to identify this structure
  /// map when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [version] The identifier that is used to identify this version of the
  /// structure map when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the structure map author
  /// and is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  /// [name] A natural language name identifying the structure map. This name
  /// should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [title] A short, descriptive, user-friendly title for the structure map.
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;

  /// [status] The status of this structure map. Enables tracking the
  ///  life-cycle of the content.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [experimental] A Boolean value to indicate that this structure map is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  FhirBoolean? get experimental => throw _privateConstructorUsedError;

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement =>
      throw _privateConstructorUsedError;

  /// [date] The date  (and optionally time) when the structure map was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the structure map changes.
  FhirDateTime? get date => throw _privateConstructorUsedError;

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [publisher] The name of the organization or individual that published the
  ///  structure map.
  String? get publisher => throw _privateConstructorUsedError;

  /// [publisherElement] Extensions for publisher
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement => throw _privateConstructorUsedError;

  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  List<ContactDetail>? get contact => throw _privateConstructorUsedError;

  /// [description] A free text natural language description of the structure
  ///  map from a consumer's perspective.
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate structure map instances.
  List<UsageContext>? get useContext => throw _privateConstructorUsedError;

  /// [jurisdiction] A legal or geographic region in which the structure map is
  ///  intended to be used.
  List<CodeableConcept>? get jurisdiction => throw _privateConstructorUsedError;

  /// [purpose] Explanation of why this structure map is needed and why it has
  ///  been designed as it has.
  FhirMarkdown? get purpose => throw _privateConstructorUsedError;

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement => throw _privateConstructorUsedError;

  /// [copyright] A copyright statement relating to the structure map and/or
  /// its contents. Copyright statements are generally legal restrictions on the
  ///  use and publishing of the structure map.
  FhirMarkdown? get copyright => throw _privateConstructorUsedError;

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement => throw _privateConstructorUsedError;

  /// [structure] A structure definition used by this map. The structure
  /// definition may describe instances that are converted, or the instances
  ///  that are produced.
  List<StructureMapStructure>? get structure =>
      throw _privateConstructorUsedError;

  /// [import] Other maps used by this map (canonical URLs).
  @JsonKey(name: 'import')
  List<FhirCanonical>? get import_ => throw _privateConstructorUsedError;

  /// [group] Organizes the mapping into manageable chunks for human
  ///  review/ease of maintenance.
  List<StructureMapGroup> get group => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructureMapCopyWith<StructureMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructureMapCopyWith<$Res> {
  factory $StructureMapCopyWith(
          StructureMap value, $Res Function(StructureMap) then) =
      _$StructureMapCopyWithImpl<$Res, StructureMap>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.StructureMap)
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
      List<StructureMapStructure>? structure,
      @JsonKey(name: 'import') List<FhirCanonical>? import_,
      List<StructureMapGroup> group});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
}

/// @nodoc
class _$StructureMapCopyWithImpl<$Res, $Val extends StructureMap>
    implements $StructureMapCopyWith<$Res> {
  _$StructureMapCopyWithImpl(this._value, this._then);

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
    Object? structure = freezed,
    Object? import_ = freezed,
    Object? group = null,
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
      structure: freezed == structure
          ? _value.structure
          : structure // ignore: cast_nullable_to_non_nullable
              as List<StructureMapStructure>?,
      import_: freezed == import_
          ? _value.import_
          : import_ // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as List<StructureMapGroup>,
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
abstract class _$$StructureMapImplCopyWith<$Res>
    implements $StructureMapCopyWith<$Res> {
  factory _$$StructureMapImplCopyWith(
          _$StructureMapImpl value, $Res Function(_$StructureMapImpl) then) =
      __$$StructureMapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.StructureMap)
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
      List<StructureMapStructure>? structure,
      @JsonKey(name: 'import') List<FhirCanonical>? import_,
      List<StructureMapGroup> group});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
}

/// @nodoc
class __$$StructureMapImplCopyWithImpl<$Res>
    extends _$StructureMapCopyWithImpl<$Res, _$StructureMapImpl>
    implements _$$StructureMapImplCopyWith<$Res> {
  __$$StructureMapImplCopyWithImpl(
      _$StructureMapImpl _value, $Res Function(_$StructureMapImpl) _then)
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
    Object? structure = freezed,
    Object? import_ = freezed,
    Object? group = null,
  }) {
    return _then(_$StructureMapImpl(
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
      structure: freezed == structure
          ? _value._structure
          : structure // ignore: cast_nullable_to_non_nullable
              as List<StructureMapStructure>?,
      import_: freezed == import_
          ? _value._import_
          : import_ // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      group: null == group
          ? _value._group
          : group // ignore: cast_nullable_to_non_nullable
              as List<StructureMapGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructureMapImpl extends _StructureMap {
  _$StructureMapImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.StructureMap)
      this.resourceType = R4ResourceType.StructureMap,
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
      final List<StructureMapStructure>? structure,
      @JsonKey(name: 'import') final List<FhirCanonical>? import_,
      required final List<StructureMapGroup> group})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _contact = contact,
        _useContext = useContext,
        _jurisdiction = jurisdiction,
        _structure = structure,
        _import_ = import_,
        _group = group,
        super._();

  factory _$StructureMapImpl.fromJson(Map<String, dynamic> json) =>
      _$$StructureMapImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.StructureMap)
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

  /// [url] An absolute URI that is used to identify this structure map when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// structure map is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the structure map is
  ///  stored on different servers.
  @override
  final FhirUri? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [identifier] A formal identifier that is used to identify this structure
  /// map when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  final List<Identifier>? _identifier;

  /// [identifier] A formal identifier that is used to identify this structure
  /// map when it is represented in other formats, or referenced in a
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
  /// structure map when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the structure map author
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

  /// [name] A natural language name identifying the structure map. This name
  /// should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [title] A short, descriptive, user-friendly title for the structure map.
  @override
  final String? title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;

  /// [status] The status of this structure map. Enables tracking the
  ///  life-cycle of the content.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [experimental] A Boolean value to indicate that this structure map is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  @override
  final FhirBoolean? experimental;

  /// [experimentalElement] Extensions for experimental
  @override
  @JsonKey(name: '_experimental')
  final PrimitiveElement? experimentalElement;

  /// [date] The date  (and optionally time) when the structure map was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the structure map changes.
  @override
  final FhirDateTime? date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [publisher] The name of the organization or individual that published the
  ///  structure map.
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

  /// [description] A free text natural language description of the structure
  ///  map from a consumer's perspective.
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
  ///  and searching for appropriate structure map instances.
  final List<UsageContext>? _useContext;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate structure map instances.
  @override
  List<UsageContext>? get useContext {
    final value = _useContext;
    if (value == null) return null;
    if (_useContext is EqualUnmodifiableListView) return _useContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [jurisdiction] A legal or geographic region in which the structure map is
  ///  intended to be used.
  final List<CodeableConcept>? _jurisdiction;

  /// [jurisdiction] A legal or geographic region in which the structure map is
  ///  intended to be used.
  @override
  List<CodeableConcept>? get jurisdiction {
    final value = _jurisdiction;
    if (value == null) return null;
    if (_jurisdiction is EqualUnmodifiableListView) return _jurisdiction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [purpose] Explanation of why this structure map is needed and why it has
  ///  been designed as it has.
  @override
  final FhirMarkdown? purpose;

  /// [purposeElement] Extensions for purpose
  @override
  @JsonKey(name: '_purpose')
  final PrimitiveElement? purposeElement;

  /// [copyright] A copyright statement relating to the structure map and/or
  /// its contents. Copyright statements are generally legal restrictions on the
  ///  use and publishing of the structure map.
  @override
  final FhirMarkdown? copyright;

  /// [copyrightElement] Extensions for copyright
  @override
  @JsonKey(name: '_copyright')
  final PrimitiveElement? copyrightElement;

  /// [structure] A structure definition used by this map. The structure
  /// definition may describe instances that are converted, or the instances
  ///  that are produced.
  final List<StructureMapStructure>? _structure;

  /// [structure] A structure definition used by this map. The structure
  /// definition may describe instances that are converted, or the instances
  ///  that are produced.
  @override
  List<StructureMapStructure>? get structure {
    final value = _structure;
    if (value == null) return null;
    if (_structure is EqualUnmodifiableListView) return _structure;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [import] Other maps used by this map (canonical URLs).
  final List<FhirCanonical>? _import_;

  /// [import] Other maps used by this map (canonical URLs).
  @override
  @JsonKey(name: 'import')
  List<FhirCanonical>? get import_ {
    final value = _import_;
    if (value == null) return null;
    if (_import_ is EqualUnmodifiableListView) return _import_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [group] Organizes the mapping into manageable chunks for human
  ///  review/ease of maintenance.
  final List<StructureMapGroup> _group;

  /// [group] Organizes the mapping into manageable chunks for human
  ///  review/ease of maintenance.
  @override
  List<StructureMapGroup> get group {
    if (_group is EqualUnmodifiableListView) return _group;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_group);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructureMapImpl &&
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
            const DeepCollectionEquality()
                .equals(other._structure, _structure) &&
            const DeepCollectionEquality().equals(other._import_, _import_) &&
            const DeepCollectionEquality().equals(other._group, _group));
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
        const DeepCollectionEquality().hash(_structure),
        const DeepCollectionEquality().hash(_import_),
        const DeepCollectionEquality().hash(_group)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureMapImplCopyWith<_$StructureMapImpl> get copyWith =>
      __$$StructureMapImplCopyWithImpl<_$StructureMapImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructureMapImplToJson(
      this,
    );
  }
}

abstract class _StructureMap extends StructureMap {
  factory _StructureMap(
      {@JsonKey(unknownEnumValue: R4ResourceType.StructureMap)
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
      final List<StructureMapStructure>? structure,
      @JsonKey(name: 'import') final List<FhirCanonical>? import_,
      required final List<StructureMapGroup> group}) = _$StructureMapImpl;
  _StructureMap._() : super._();

  factory _StructureMap.fromJson(Map<String, dynamic> json) =
      _$StructureMapImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.StructureMap)
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

  /// [url] An absolute URI that is used to identify this structure map when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// structure map is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the structure map is
  ///  stored on different servers.
  FhirUri? get url;
  @override

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override

  /// [identifier] A formal identifier that is used to identify this structure
  /// map when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  List<Identifier>? get identifier;
  @override

  /// [version] The identifier that is used to identify this version of the
  /// structure map when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the structure map author
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

  /// [name] A natural language name identifying the structure map. This name
  /// should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [title] A short, descriptive, user-friendly title for the structure map.
  String? get title;
  @override

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;
  @override

  /// [status] The status of this structure map. Enables tracking the
  ///  life-cycle of the content.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [experimental] A Boolean value to indicate that this structure map is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  FhirBoolean? get experimental;
  @override

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement;
  @override

  /// [date] The date  (and optionally time) when the structure map was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the structure map changes.
  FhirDateTime? get date;
  @override

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override

  /// [publisher] The name of the organization or individual that published the
  ///  structure map.
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

  /// [description] A free text natural language description of the structure
  ///  map from a consumer's perspective.
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
  ///  and searching for appropriate structure map instances.
  List<UsageContext>? get useContext;
  @override

  /// [jurisdiction] A legal or geographic region in which the structure map is
  ///  intended to be used.
  List<CodeableConcept>? get jurisdiction;
  @override

  /// [purpose] Explanation of why this structure map is needed and why it has
  ///  been designed as it has.
  FhirMarkdown? get purpose;
  @override

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement;
  @override

  /// [copyright] A copyright statement relating to the structure map and/or
  /// its contents. Copyright statements are generally legal restrictions on the
  ///  use and publishing of the structure map.
  FhirMarkdown? get copyright;
  @override

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement;
  @override

  /// [structure] A structure definition used by this map. The structure
  /// definition may describe instances that are converted, or the instances
  ///  that are produced.
  List<StructureMapStructure>? get structure;
  @override

  /// [import] Other maps used by this map (canonical URLs).
  @JsonKey(name: 'import')
  List<FhirCanonical>? get import_;
  @override

  /// [group] Organizes the mapping into manageable chunks for human
  ///  review/ease of maintenance.
  List<StructureMapGroup> get group;
  @override
  @JsonKey(ignore: true)
  _$$StructureMapImplCopyWith<_$StructureMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StructureMapStructure _$StructureMapStructureFromJson(
    Map<String, dynamic> json) {
  return _StructureMapStructure.fromJson(json);
}

/// @nodoc
mixin _$StructureMapStructure {
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

  /// [url] The canonical reference to the structure.
  FhirCanonical get url => throw _privateConstructorUsedError;

  /// [mode] How the referenced structure is used in this mapping.
  FhirCode? get mode => throw _privateConstructorUsedError;

  /// [modeElement] Extensions for mode
  @JsonKey(name: '_mode')
  PrimitiveElement? get modeElement => throw _privateConstructorUsedError;

  /// [alias] The name used for this type in the map.
  String? get alias => throw _privateConstructorUsedError;

  /// [aliasElement] Extensions for alias
  @JsonKey(name: '_alias')
  PrimitiveElement? get aliasElement => throw _privateConstructorUsedError;

  /// [documentation] Documentation that describes how the structure is used in
  ///  the mapping.
  String? get documentation => throw _privateConstructorUsedError;

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructureMapStructureCopyWith<StructureMapStructure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructureMapStructureCopyWith<$Res> {
  factory $StructureMapStructureCopyWith(StructureMapStructure value,
          $Res Function(StructureMapStructure) then) =
      _$StructureMapStructureCopyWithImpl<$Res, StructureMapStructure>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCanonical url,
      FhirCode? mode,
      @JsonKey(name: '_mode') PrimitiveElement? modeElement,
      String? alias,
      @JsonKey(name: '_alias') PrimitiveElement? aliasElement,
      String? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement});
}

/// @nodoc
class _$StructureMapStructureCopyWithImpl<$Res,
        $Val extends StructureMapStructure>
    implements $StructureMapStructureCopyWith<$Res> {
  _$StructureMapStructureCopyWithImpl(this._value, this._then);

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
    Object? url = null,
    Object? mode = freezed,
    Object? modeElement = freezed,
    Object? alias = freezed,
    Object? aliasElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
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
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      modeElement: freezed == modeElement
          ? _value.modeElement
          : modeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      aliasElement: freezed == aliasElement
          ? _value.aliasElement
          : aliasElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StructureMapStructureImplCopyWith<$Res>
    implements $StructureMapStructureCopyWith<$Res> {
  factory _$$StructureMapStructureImplCopyWith(
          _$StructureMapStructureImpl value,
          $Res Function(_$StructureMapStructureImpl) then) =
      __$$StructureMapStructureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCanonical url,
      FhirCode? mode,
      @JsonKey(name: '_mode') PrimitiveElement? modeElement,
      String? alias,
      @JsonKey(name: '_alias') PrimitiveElement? aliasElement,
      String? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement});
}

/// @nodoc
class __$$StructureMapStructureImplCopyWithImpl<$Res>
    extends _$StructureMapStructureCopyWithImpl<$Res,
        _$StructureMapStructureImpl>
    implements _$$StructureMapStructureImplCopyWith<$Res> {
  __$$StructureMapStructureImplCopyWithImpl(_$StructureMapStructureImpl _value,
      $Res Function(_$StructureMapStructureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? url = null,
    Object? mode = freezed,
    Object? modeElement = freezed,
    Object? alias = freezed,
    Object? aliasElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
  }) {
    return _then(_$StructureMapStructureImpl(
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
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      modeElement: freezed == modeElement
          ? _value.modeElement
          : modeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      aliasElement: freezed == aliasElement
          ? _value.aliasElement
          : aliasElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructureMapStructureImpl extends _StructureMapStructure {
  _$StructureMapStructureImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.url,
      this.mode,
      @JsonKey(name: '_mode') this.modeElement,
      this.alias,
      @JsonKey(name: '_alias') this.aliasElement,
      this.documentation,
      @JsonKey(name: '_documentation') this.documentationElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$StructureMapStructureImpl.fromJson(Map<String, dynamic> json) =>
      _$$StructureMapStructureImplFromJson(json);

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

  /// [url] The canonical reference to the structure.
  @override
  final FhirCanonical url;

  /// [mode] How the referenced structure is used in this mapping.
  @override
  final FhirCode? mode;

  /// [modeElement] Extensions for mode
  @override
  @JsonKey(name: '_mode')
  final PrimitiveElement? modeElement;

  /// [alias] The name used for this type in the map.
  @override
  final String? alias;

  /// [aliasElement] Extensions for alias
  @override
  @JsonKey(name: '_alias')
  final PrimitiveElement? aliasElement;

  /// [documentation] Documentation that describes how the structure is used in
  ///  the mapping.
  @override
  final String? documentation;

  /// [documentationElement] Extensions for documentation
  @override
  @JsonKey(name: '_documentation')
  final PrimitiveElement? documentationElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructureMapStructureImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.modeElement, modeElement) ||
                other.modeElement == modeElement) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.aliasElement, aliasElement) ||
                other.aliasElement == aliasElement) &&
            (identical(other.documentation, documentation) ||
                other.documentation == documentation) &&
            (identical(other.documentationElement, documentationElement) ||
                other.documentationElement == documentationElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      url,
      mode,
      modeElement,
      alias,
      aliasElement,
      documentation,
      documentationElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureMapStructureImplCopyWith<_$StructureMapStructureImpl>
      get copyWith => __$$StructureMapStructureImplCopyWithImpl<
          _$StructureMapStructureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructureMapStructureImplToJson(
      this,
    );
  }
}

abstract class _StructureMapStructure extends StructureMapStructure {
  factory _StructureMapStructure(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final FhirCanonical url,
          final FhirCode? mode,
          @JsonKey(name: '_mode') final PrimitiveElement? modeElement,
          final String? alias,
          @JsonKey(name: '_alias') final PrimitiveElement? aliasElement,
          final String? documentation,
          @JsonKey(name: '_documentation')
          final PrimitiveElement? documentationElement}) =
      _$StructureMapStructureImpl;
  _StructureMapStructure._() : super._();

  factory _StructureMapStructure.fromJson(Map<String, dynamic> json) =
      _$StructureMapStructureImpl.fromJson;

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

  /// [url] The canonical reference to the structure.
  FhirCanonical get url;
  @override

  /// [mode] How the referenced structure is used in this mapping.
  FhirCode? get mode;
  @override

  /// [modeElement] Extensions for mode
  @JsonKey(name: '_mode')
  PrimitiveElement? get modeElement;
  @override

  /// [alias] The name used for this type in the map.
  String? get alias;
  @override

  /// [aliasElement] Extensions for alias
  @JsonKey(name: '_alias')
  PrimitiveElement? get aliasElement;
  @override

  /// [documentation] Documentation that describes how the structure is used in
  ///  the mapping.
  String? get documentation;
  @override

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement;
  @override
  @JsonKey(ignore: true)
  _$$StructureMapStructureImplCopyWith<_$StructureMapStructureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StructureMapGroup _$StructureMapGroupFromJson(Map<String, dynamic> json) {
  return _StructureMapGroup.fromJson(json);
}

/// @nodoc
mixin _$StructureMapGroup {
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

  /// [name] A unique name for the group for the convenience of human readers.
  FhirId? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [extends] Another group that this group adds rules to.
  @JsonKey(name: 'extends')
  FhirId? get extends_ => throw _privateConstructorUsedError;

  /// [extendsElement] Extensions for extends
  @JsonKey(name: '_extends')
  PrimitiveElement? get extendsElement => throw _privateConstructorUsedError;

  /// [typeMode] If this is the default rule set to apply for the source type
  ///  or this combination of types.
  FhirCode? get typeMode => throw _privateConstructorUsedError;

  /// [typeModeElement] Extensions for typeMode
  @JsonKey(name: '_typeMode')
  PrimitiveElement? get typeModeElement => throw _privateConstructorUsedError;

  /// [documentation] Additional supporting documentation that explains the
  ///  purpose of the group and the types of mappings within it.
  String? get documentation => throw _privateConstructorUsedError;

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement =>
      throw _privateConstructorUsedError;

  /// [input] A name assigned to an instance of data. The instance must be
  ///  provided when the mapping is invoked.
  List<StructureMapInput> get input => throw _privateConstructorUsedError;

  /// [rule] Transform Rule from source to target.
  List<StructureMapRule> get rule => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructureMapGroupCopyWith<StructureMapGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructureMapGroupCopyWith<$Res> {
  factory $StructureMapGroupCopyWith(
          StructureMapGroup value, $Res Function(StructureMapGroup) then) =
      _$StructureMapGroupCopyWithImpl<$Res, StructureMapGroup>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      @JsonKey(name: 'extends') FhirId? extends_,
      @JsonKey(name: '_extends') PrimitiveElement? extendsElement,
      FhirCode? typeMode,
      @JsonKey(name: '_typeMode') PrimitiveElement? typeModeElement,
      String? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
      List<StructureMapInput> input,
      List<StructureMapRule> rule});
}

/// @nodoc
class _$StructureMapGroupCopyWithImpl<$Res, $Val extends StructureMapGroup>
    implements $StructureMapGroupCopyWith<$Res> {
  _$StructureMapGroupCopyWithImpl(this._value, this._then);

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
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? extends_ = freezed,
    Object? extendsElement = freezed,
    Object? typeMode = freezed,
    Object? typeModeElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
    Object? input = null,
    Object? rule = null,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      extends_: freezed == extends_
          ? _value.extends_
          : extends_ // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      extendsElement: freezed == extendsElement
          ? _value.extendsElement
          : extendsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      typeMode: freezed == typeMode
          ? _value.typeMode
          : typeMode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeModeElement: freezed == typeModeElement
          ? _value.typeModeElement
          : typeModeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as List<StructureMapInput>,
      rule: null == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as List<StructureMapRule>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StructureMapGroupImplCopyWith<$Res>
    implements $StructureMapGroupCopyWith<$Res> {
  factory _$$StructureMapGroupImplCopyWith(_$StructureMapGroupImpl value,
          $Res Function(_$StructureMapGroupImpl) then) =
      __$$StructureMapGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      @JsonKey(name: 'extends') FhirId? extends_,
      @JsonKey(name: '_extends') PrimitiveElement? extendsElement,
      FhirCode? typeMode,
      @JsonKey(name: '_typeMode') PrimitiveElement? typeModeElement,
      String? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
      List<StructureMapInput> input,
      List<StructureMapRule> rule});
}

/// @nodoc
class __$$StructureMapGroupImplCopyWithImpl<$Res>
    extends _$StructureMapGroupCopyWithImpl<$Res, _$StructureMapGroupImpl>
    implements _$$StructureMapGroupImplCopyWith<$Res> {
  __$$StructureMapGroupImplCopyWithImpl(_$StructureMapGroupImpl _value,
      $Res Function(_$StructureMapGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? extends_ = freezed,
    Object? extendsElement = freezed,
    Object? typeMode = freezed,
    Object? typeModeElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
    Object? input = null,
    Object? rule = null,
  }) {
    return _then(_$StructureMapGroupImpl(
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      extends_: freezed == extends_
          ? _value.extends_
          : extends_ // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      extendsElement: freezed == extendsElement
          ? _value.extendsElement
          : extendsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      typeMode: freezed == typeMode
          ? _value.typeMode
          : typeMode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeModeElement: freezed == typeModeElement
          ? _value.typeModeElement
          : typeModeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      input: null == input
          ? _value._input
          : input // ignore: cast_nullable_to_non_nullable
              as List<StructureMapInput>,
      rule: null == rule
          ? _value._rule
          : rule // ignore: cast_nullable_to_non_nullable
              as List<StructureMapRule>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructureMapGroupImpl extends _StructureMapGroup {
  _$StructureMapGroupImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      @JsonKey(name: 'extends') this.extends_,
      @JsonKey(name: '_extends') this.extendsElement,
      this.typeMode,
      @JsonKey(name: '_typeMode') this.typeModeElement,
      this.documentation,
      @JsonKey(name: '_documentation') this.documentationElement,
      required final List<StructureMapInput> input,
      required final List<StructureMapRule> rule})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _input = input,
        _rule = rule,
        super._();

  factory _$StructureMapGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$StructureMapGroupImplFromJson(json);

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

  /// [name] A unique name for the group for the convenience of human readers.
  @override
  final FhirId? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [extends] Another group that this group adds rules to.
  @override
  @JsonKey(name: 'extends')
  final FhirId? extends_;

  /// [extendsElement] Extensions for extends
  @override
  @JsonKey(name: '_extends')
  final PrimitiveElement? extendsElement;

  /// [typeMode] If this is the default rule set to apply for the source type
  ///  or this combination of types.
  @override
  final FhirCode? typeMode;

  /// [typeModeElement] Extensions for typeMode
  @override
  @JsonKey(name: '_typeMode')
  final PrimitiveElement? typeModeElement;

  /// [documentation] Additional supporting documentation that explains the
  ///  purpose of the group and the types of mappings within it.
  @override
  final String? documentation;

  /// [documentationElement] Extensions for documentation
  @override
  @JsonKey(name: '_documentation')
  final PrimitiveElement? documentationElement;

  /// [input] A name assigned to an instance of data. The instance must be
  ///  provided when the mapping is invoked.
  final List<StructureMapInput> _input;

  /// [input] A name assigned to an instance of data. The instance must be
  ///  provided when the mapping is invoked.
  @override
  List<StructureMapInput> get input {
    if (_input is EqualUnmodifiableListView) return _input;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_input);
  }

  /// [rule] Transform Rule from source to target.
  final List<StructureMapRule> _rule;

  /// [rule] Transform Rule from source to target.
  @override
  List<StructureMapRule> get rule {
    if (_rule is EqualUnmodifiableListView) return _rule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rule);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructureMapGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.extends_, extends_) ||
                other.extends_ == extends_) &&
            (identical(other.extendsElement, extendsElement) ||
                other.extendsElement == extendsElement) &&
            (identical(other.typeMode, typeMode) ||
                other.typeMode == typeMode) &&
            (identical(other.typeModeElement, typeModeElement) ||
                other.typeModeElement == typeModeElement) &&
            (identical(other.documentation, documentation) ||
                other.documentation == documentation) &&
            (identical(other.documentationElement, documentationElement) ||
                other.documentationElement == documentationElement) &&
            const DeepCollectionEquality().equals(other._input, _input) &&
            const DeepCollectionEquality().equals(other._rule, _rule));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      name,
      nameElement,
      extends_,
      extendsElement,
      typeMode,
      typeModeElement,
      documentation,
      documentationElement,
      const DeepCollectionEquality().hash(_input),
      const DeepCollectionEquality().hash(_rule));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureMapGroupImplCopyWith<_$StructureMapGroupImpl> get copyWith =>
      __$$StructureMapGroupImplCopyWithImpl<_$StructureMapGroupImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructureMapGroupImplToJson(
      this,
    );
  }
}

abstract class _StructureMapGroup extends StructureMapGroup {
  factory _StructureMapGroup(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirId? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      @JsonKey(name: 'extends') final FhirId? extends_,
      @JsonKey(name: '_extends') final PrimitiveElement? extendsElement,
      final FhirCode? typeMode,
      @JsonKey(name: '_typeMode') final PrimitiveElement? typeModeElement,
      final String? documentation,
      @JsonKey(name: '_documentation')
      final PrimitiveElement? documentationElement,
      required final List<StructureMapInput> input,
      required final List<StructureMapRule> rule}) = _$StructureMapGroupImpl;
  _StructureMapGroup._() : super._();

  factory _StructureMapGroup.fromJson(Map<String, dynamic> json) =
      _$StructureMapGroupImpl.fromJson;

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

  /// [name] A unique name for the group for the convenience of human readers.
  FhirId? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [extends] Another group that this group adds rules to.
  @JsonKey(name: 'extends')
  FhirId? get extends_;
  @override

  /// [extendsElement] Extensions for extends
  @JsonKey(name: '_extends')
  PrimitiveElement? get extendsElement;
  @override

  /// [typeMode] If this is the default rule set to apply for the source type
  ///  or this combination of types.
  FhirCode? get typeMode;
  @override

  /// [typeModeElement] Extensions for typeMode
  @JsonKey(name: '_typeMode')
  PrimitiveElement? get typeModeElement;
  @override

  /// [documentation] Additional supporting documentation that explains the
  ///  purpose of the group and the types of mappings within it.
  String? get documentation;
  @override

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement;
  @override

  /// [input] A name assigned to an instance of data. The instance must be
  ///  provided when the mapping is invoked.
  List<StructureMapInput> get input;
  @override

  /// [rule] Transform Rule from source to target.
  List<StructureMapRule> get rule;
  @override
  @JsonKey(ignore: true)
  _$$StructureMapGroupImplCopyWith<_$StructureMapGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StructureMapInput _$StructureMapInputFromJson(Map<String, dynamic> json) {
  return _StructureMapInput.fromJson(json);
}

/// @nodoc
mixin _$StructureMapInput {
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

  /// [name] Name for this instance of data.
  FhirId? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [type] Type for this instance of data.
  String? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [mode] Mode for this instance of data.
  FhirCode? get mode => throw _privateConstructorUsedError;

  /// [modeElement] Extensions for mode
  @JsonKey(name: '_mode')
  PrimitiveElement? get modeElement => throw _privateConstructorUsedError;

  /// [documentation] Documentation for this instance of data.
  String? get documentation => throw _privateConstructorUsedError;

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructureMapInputCopyWith<StructureMapInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructureMapInputCopyWith<$Res> {
  factory $StructureMapInputCopyWith(
          StructureMapInput value, $Res Function(StructureMapInput) then) =
      _$StructureMapInputCopyWithImpl<$Res, StructureMapInput>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirCode? mode,
      @JsonKey(name: '_mode') PrimitiveElement? modeElement,
      String? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement});
}

/// @nodoc
class _$StructureMapInputCopyWithImpl<$Res, $Val extends StructureMapInput>
    implements $StructureMapInputCopyWith<$Res> {
  _$StructureMapInputCopyWithImpl(this._value, this._then);

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
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? mode = freezed,
    Object? modeElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      modeElement: freezed == modeElement
          ? _value.modeElement
          : modeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StructureMapInputImplCopyWith<$Res>
    implements $StructureMapInputCopyWith<$Res> {
  factory _$$StructureMapInputImplCopyWith(_$StructureMapInputImpl value,
          $Res Function(_$StructureMapInputImpl) then) =
      __$$StructureMapInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirCode? mode,
      @JsonKey(name: '_mode') PrimitiveElement? modeElement,
      String? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement});
}

/// @nodoc
class __$$StructureMapInputImplCopyWithImpl<$Res>
    extends _$StructureMapInputCopyWithImpl<$Res, _$StructureMapInputImpl>
    implements _$$StructureMapInputImplCopyWith<$Res> {
  __$$StructureMapInputImplCopyWithImpl(_$StructureMapInputImpl _value,
      $Res Function(_$StructureMapInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? mode = freezed,
    Object? modeElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
  }) {
    return _then(_$StructureMapInputImpl(
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      modeElement: freezed == modeElement
          ? _value.modeElement
          : modeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructureMapInputImpl extends _StructureMapInput {
  _$StructureMapInputImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.mode,
      @JsonKey(name: '_mode') this.modeElement,
      this.documentation,
      @JsonKey(name: '_documentation') this.documentationElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$StructureMapInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$StructureMapInputImplFromJson(json);

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

  /// [name] Name for this instance of data.
  @override
  final FhirId? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [type] Type for this instance of data.
  @override
  final String? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [mode] Mode for this instance of data.
  @override
  final FhirCode? mode;

  /// [modeElement] Extensions for mode
  @override
  @JsonKey(name: '_mode')
  final PrimitiveElement? modeElement;

  /// [documentation] Documentation for this instance of data.
  @override
  final String? documentation;

  /// [documentationElement] Extensions for documentation
  @override
  @JsonKey(name: '_documentation')
  final PrimitiveElement? documentationElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructureMapInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.modeElement, modeElement) ||
                other.modeElement == modeElement) &&
            (identical(other.documentation, documentation) ||
                other.documentation == documentation) &&
            (identical(other.documentationElement, documentationElement) ||
                other.documentationElement == documentationElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      name,
      nameElement,
      type,
      typeElement,
      mode,
      modeElement,
      documentation,
      documentationElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureMapInputImplCopyWith<_$StructureMapInputImpl> get copyWith =>
      __$$StructureMapInputImplCopyWithImpl<_$StructureMapInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructureMapInputImplToJson(
      this,
    );
  }
}

abstract class _StructureMapInput extends StructureMapInput {
  factory _StructureMapInput(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirId? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      final String? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      final FhirCode? mode,
      @JsonKey(name: '_mode') final PrimitiveElement? modeElement,
      final String? documentation,
      @JsonKey(name: '_documentation')
      final PrimitiveElement? documentationElement}) = _$StructureMapInputImpl;
  _StructureMapInput._() : super._();

  factory _StructureMapInput.fromJson(Map<String, dynamic> json) =
      _$StructureMapInputImpl.fromJson;

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

  /// [name] Name for this instance of data.
  FhirId? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [type] Type for this instance of data.
  String? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [mode] Mode for this instance of data.
  FhirCode? get mode;
  @override

  /// [modeElement] Extensions for mode
  @JsonKey(name: '_mode')
  PrimitiveElement? get modeElement;
  @override

  /// [documentation] Documentation for this instance of data.
  String? get documentation;
  @override

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement;
  @override
  @JsonKey(ignore: true)
  _$$StructureMapInputImplCopyWith<_$StructureMapInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StructureMapRule _$StructureMapRuleFromJson(Map<String, dynamic> json) {
  return _StructureMapRule.fromJson(json);
}

/// @nodoc
mixin _$StructureMapRule {
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

  /// [name] Name of the rule for internal references.
  FhirId? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [source] Source inputs to the mapping.
  List<StructureMapSource> get source => throw _privateConstructorUsedError;

  /// [target] Content to create because of this mapping rule.
  List<StructureMapTarget>? get target => throw _privateConstructorUsedError;

  /// [rule] Rules contained in this rule.
  List<StructureMapRule>? get rule => throw _privateConstructorUsedError;

  /// [dependent] Which other rules to apply in the context of this rule.
  List<StructureMapDependent>? get dependent =>
      throw _privateConstructorUsedError;

  /// [documentation] Documentation for this instance of data.
  String? get documentation => throw _privateConstructorUsedError;

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructureMapRuleCopyWith<StructureMapRule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructureMapRuleCopyWith<$Res> {
  factory $StructureMapRuleCopyWith(
          StructureMapRule value, $Res Function(StructureMapRule) then) =
      _$StructureMapRuleCopyWithImpl<$Res, StructureMapRule>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      List<StructureMapSource> source,
      List<StructureMapTarget>? target,
      List<StructureMapRule>? rule,
      List<StructureMapDependent>? dependent,
      String? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement});
}

/// @nodoc
class _$StructureMapRuleCopyWithImpl<$Res, $Val extends StructureMapRule>
    implements $StructureMapRuleCopyWith<$Res> {
  _$StructureMapRuleCopyWithImpl(this._value, this._then);

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
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? source = null,
    Object? target = freezed,
    Object? rule = freezed,
    Object? dependent = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as List<StructureMapSource>,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as List<StructureMapTarget>?,
      rule: freezed == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as List<StructureMapRule>?,
      dependent: freezed == dependent
          ? _value.dependent
          : dependent // ignore: cast_nullable_to_non_nullable
              as List<StructureMapDependent>?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StructureMapRuleImplCopyWith<$Res>
    implements $StructureMapRuleCopyWith<$Res> {
  factory _$$StructureMapRuleImplCopyWith(_$StructureMapRuleImpl value,
          $Res Function(_$StructureMapRuleImpl) then) =
      __$$StructureMapRuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      List<StructureMapSource> source,
      List<StructureMapTarget>? target,
      List<StructureMapRule>? rule,
      List<StructureMapDependent>? dependent,
      String? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement});
}

/// @nodoc
class __$$StructureMapRuleImplCopyWithImpl<$Res>
    extends _$StructureMapRuleCopyWithImpl<$Res, _$StructureMapRuleImpl>
    implements _$$StructureMapRuleImplCopyWith<$Res> {
  __$$StructureMapRuleImplCopyWithImpl(_$StructureMapRuleImpl _value,
      $Res Function(_$StructureMapRuleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? source = null,
    Object? target = freezed,
    Object? rule = freezed,
    Object? dependent = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
  }) {
    return _then(_$StructureMapRuleImpl(
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      source: null == source
          ? _value._source
          : source // ignore: cast_nullable_to_non_nullable
              as List<StructureMapSource>,
      target: freezed == target
          ? _value._target
          : target // ignore: cast_nullable_to_non_nullable
              as List<StructureMapTarget>?,
      rule: freezed == rule
          ? _value._rule
          : rule // ignore: cast_nullable_to_non_nullable
              as List<StructureMapRule>?,
      dependent: freezed == dependent
          ? _value._dependent
          : dependent // ignore: cast_nullable_to_non_nullable
              as List<StructureMapDependent>?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructureMapRuleImpl extends _StructureMapRule {
  _$StructureMapRuleImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      required final List<StructureMapSource> source,
      final List<StructureMapTarget>? target,
      final List<StructureMapRule>? rule,
      final List<StructureMapDependent>? dependent,
      this.documentation,
      @JsonKey(name: '_documentation') this.documentationElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _source = source,
        _target = target,
        _rule = rule,
        _dependent = dependent,
        super._();

  factory _$StructureMapRuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$StructureMapRuleImplFromJson(json);

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

  /// [name] Name of the rule for internal references.
  @override
  final FhirId? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [source] Source inputs to the mapping.
  final List<StructureMapSource> _source;

  /// [source] Source inputs to the mapping.
  @override
  List<StructureMapSource> get source {
    if (_source is EqualUnmodifiableListView) return _source;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_source);
  }

  /// [target] Content to create because of this mapping rule.
  final List<StructureMapTarget>? _target;

  /// [target] Content to create because of this mapping rule.
  @override
  List<StructureMapTarget>? get target {
    final value = _target;
    if (value == null) return null;
    if (_target is EqualUnmodifiableListView) return _target;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [rule] Rules contained in this rule.
  final List<StructureMapRule>? _rule;

  /// [rule] Rules contained in this rule.
  @override
  List<StructureMapRule>? get rule {
    final value = _rule;
    if (value == null) return null;
    if (_rule is EqualUnmodifiableListView) return _rule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [dependent] Which other rules to apply in the context of this rule.
  final List<StructureMapDependent>? _dependent;

  /// [dependent] Which other rules to apply in the context of this rule.
  @override
  List<StructureMapDependent>? get dependent {
    final value = _dependent;
    if (value == null) return null;
    if (_dependent is EqualUnmodifiableListView) return _dependent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [documentation] Documentation for this instance of data.
  @override
  final String? documentation;

  /// [documentationElement] Extensions for documentation
  @override
  @JsonKey(name: '_documentation')
  final PrimitiveElement? documentationElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructureMapRuleImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            const DeepCollectionEquality().equals(other._source, _source) &&
            const DeepCollectionEquality().equals(other._target, _target) &&
            const DeepCollectionEquality().equals(other._rule, _rule) &&
            const DeepCollectionEquality()
                .equals(other._dependent, _dependent) &&
            (identical(other.documentation, documentation) ||
                other.documentation == documentation) &&
            (identical(other.documentationElement, documentationElement) ||
                other.documentationElement == documentationElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      name,
      nameElement,
      const DeepCollectionEquality().hash(_source),
      const DeepCollectionEquality().hash(_target),
      const DeepCollectionEquality().hash(_rule),
      const DeepCollectionEquality().hash(_dependent),
      documentation,
      documentationElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureMapRuleImplCopyWith<_$StructureMapRuleImpl> get copyWith =>
      __$$StructureMapRuleImplCopyWithImpl<_$StructureMapRuleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructureMapRuleImplToJson(
      this,
    );
  }
}

abstract class _StructureMapRule extends StructureMapRule {
  factory _StructureMapRule(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirId? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      required final List<StructureMapSource> source,
      final List<StructureMapTarget>? target,
      final List<StructureMapRule>? rule,
      final List<StructureMapDependent>? dependent,
      final String? documentation,
      @JsonKey(name: '_documentation')
      final PrimitiveElement? documentationElement}) = _$StructureMapRuleImpl;
  _StructureMapRule._() : super._();

  factory _StructureMapRule.fromJson(Map<String, dynamic> json) =
      _$StructureMapRuleImpl.fromJson;

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

  /// [name] Name of the rule for internal references.
  FhirId? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [source] Source inputs to the mapping.
  List<StructureMapSource> get source;
  @override

  /// [target] Content to create because of this mapping rule.
  List<StructureMapTarget>? get target;
  @override

  /// [rule] Rules contained in this rule.
  List<StructureMapRule>? get rule;
  @override

  /// [dependent] Which other rules to apply in the context of this rule.
  List<StructureMapDependent>? get dependent;
  @override

  /// [documentation] Documentation for this instance of data.
  String? get documentation;
  @override

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement;
  @override
  @JsonKey(ignore: true)
  _$$StructureMapRuleImplCopyWith<_$StructureMapRuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StructureMapSource _$StructureMapSourceFromJson(Map<String, dynamic> json) {
  return _StructureMapSource.fromJson(json);
}

/// @nodoc
mixin _$StructureMapSource {
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

  /// [context] Type or variable this rule applies to.
  FhirId? get context => throw _privateConstructorUsedError;

  /// [contextElement] Extensions for context
  @JsonKey(name: '_context')
  PrimitiveElement? get contextElement => throw _privateConstructorUsedError;

  /// [min] Specified minimum cardinality for the element. This is optional; if
  ///  present, it acts an implicit check on the input content.
  FhirInteger? get min => throw _privateConstructorUsedError;

  /// [minElement] Extensions for min
  @JsonKey(name: '_min')
  PrimitiveElement? get minElement => throw _privateConstructorUsedError;

  /// [max] Specified maximum cardinality for the element - a number or a "*".
  /// This is optional; if present, it acts an implicit check on the input
  ///  content (* just serves as documentation; it's the default value).
  String? get max => throw _privateConstructorUsedError;

  /// [maxElement] Extensions for max
  @JsonKey(name: '_max')
  PrimitiveElement? get maxElement => throw _privateConstructorUsedError;

  /// [type] Specified type for the element. This works as a condition on the
  ///  mapping - use for polymorphic elements.
  String? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [defaultValueBase64Binary] A value to use if there is no existing value
  ///  in the source object.
  FhirBase64Binary? get defaultValueBase64Binary =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_defaultValueBase64Binary')
  PrimitiveElement? get defaultValueBase64BinaryElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueBoolean] A value to use if there is no existing value in the
  ///  source object.
  FhirBoolean? get defaultValueBoolean => throw _privateConstructorUsedError;

  /// [defaultValueBooleanElement] Extensions for defaultValueBoolean
  @JsonKey(name: '_defaultValueBoolean')
  PrimitiveElement? get defaultValueBooleanElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueCanonical] A value to use if there is no existing value in
  ///  the source object.
  FhirCanonical? get defaultValueCanonical =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_defaultValueCanonical')
  PrimitiveElement? get defaultValueCanonicalElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueCode] A value to use if there is no existing value in the
  ///  source object.
  FhirCode? get defaultValueCode => throw _privateConstructorUsedError;

  /// [defaultValueCodeElement] Extensions for defaultValueCode
  @JsonKey(name: '_defaultValueCode')
  PrimitiveElement? get defaultValueCodeElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueDate] A value to use if there is no existing value in the
  ///  source object.
  FhirDate? get defaultValueDate => throw _privateConstructorUsedError;

  /// [defaultValueDateElement] Extensions for defaultValueDate
  @JsonKey(name: '_defaultValueDate')
  PrimitiveElement? get defaultValueDateElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueDateTime] A value to use if there is no existing value in
  ///  the source object.
  FhirDateTime? get defaultValueDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: '_defaultValueDateTime')
  PrimitiveElement? get defaultValueDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueDecimal] A value to use if there is no existing value in the
  ///  source object.
  FhirDecimal? get defaultValueDecimal => throw _privateConstructorUsedError;

  /// [defaultValueDecimalElement] Extensions for defaultValueDecimal
  @JsonKey(name: '_defaultValueDecimal')
  PrimitiveElement? get defaultValueDecimalElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueId] A value to use if there is no existing value in the
  ///  source object.
  FhirId? get defaultValueId => throw _privateConstructorUsedError;

  /// [defaultValueIdElement] Extensions for defaultValueId
  @JsonKey(name: '_defaultValueId')
  PrimitiveElement? get defaultValueIdElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueInstant] A value to use if there is no existing value in the
  ///  source object.
  FhirInstant? get defaultValueInstant => throw _privateConstructorUsedError;

  /// [defaultValueInstantElement] Extensions for defaultValueInstant
  @JsonKey(name: '_defaultValueInstant')
  PrimitiveElement? get defaultValueInstantElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueInteger] A value to use if there is no existing value in the
  ///  source object.
  FhirInteger? get defaultValueInteger => throw _privateConstructorUsedError;

  /// [defaultValueIntegerElement] Extensions for defaultValueInteger
  @JsonKey(name: '_defaultValueInteger')
  PrimitiveElement? get defaultValueIntegerElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueMarkdown] A value to use if there is no existing value in
  ///  the source object.
  FhirMarkdown? get defaultValueMarkdown => throw _privateConstructorUsedError;
  @JsonKey(name: '_defaultValueMarkdown')
  PrimitiveElement? get defaultValueMarkdownElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueOid] A value to use if there is no existing value in the
  ///  source object.
  FhirOid? get defaultValueOid => throw _privateConstructorUsedError;

  /// [defaultValueOidElement] Extensions for defaultValueOid
  @JsonKey(name: '_defaultValueOid')
  PrimitiveElement? get defaultValueOidElement =>
      throw _privateConstructorUsedError;

  /// [defaultValuePositiveInt] A value to use if there is no existing value in
  ///  the source object.
  FhirPositiveInt? get defaultValuePositiveInt =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_defaultValuePositiveInt')
  PrimitiveElement? get defaultValuePositiveIntElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueString] A value to use if there is no existing value in the
  ///  source object.
  String? get defaultValueString => throw _privateConstructorUsedError;

  /// [defaultValueStringElement] Extensions for defaultValueString
  @JsonKey(name: '_defaultValueString')
  PrimitiveElement? get defaultValueStringElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueTime] A value to use if there is no existing value in the
  ///  source object.
  FhirTime? get defaultValueTime => throw _privateConstructorUsedError;

  /// [defaultValueTimeElement] Extensions for defaultValueTime
  @JsonKey(name: '_defaultValueTime')
  PrimitiveElement? get defaultValueTimeElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueUnsignedInt] A value to use if there is no existing value in
  ///  the source object.
  FhirUnsignedInt? get defaultValueUnsignedInt =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_defaultValueUnsignedInt')
  PrimitiveElement? get defaultValueUnsignedIntElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueUri] A value to use if there is no existing value in the
  ///  source object.
  FhirUri? get defaultValueUri => throw _privateConstructorUsedError;

  /// [defaultValueUriElement] Extensions for defaultValueUri
  @JsonKey(name: '_defaultValueUri')
  PrimitiveElement? get defaultValueUriElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueUrl] A value to use if there is no existing value in the
  ///  source object.
  FhirUrl? get defaultValueUrl => throw _privateConstructorUsedError;

  /// [defaultValueUrlElement] Extensions for defaultValueUrl
  @JsonKey(name: '_defaultValueUrl')
  PrimitiveElement? get defaultValueUrlElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueUuid] A value to use if there is no existing value in the
  ///  source object.
  FhirUuid? get defaultValueUuid => throw _privateConstructorUsedError;

  /// [defaultValueUuidElement] Extensions for defaultValueUuid
  @JsonKey(name: '_defaultValueUuid')
  PrimitiveElement? get defaultValueUuidElement =>
      throw _privateConstructorUsedError;

  /// [defaultValueAddress] A value to use if there is no existing value in the
  ///  source object.
  Address? get defaultValueAddress => throw _privateConstructorUsedError;

  /// [defaultValueAge] A value to use if there is no existing value in the
  ///  source object.
  Age? get defaultValueAge => throw _privateConstructorUsedError;

  /// [defaultValueAnnotation] A value to use if there is no existing value in
  ///  the source object.
  Annotation? get defaultValueAnnotation => throw _privateConstructorUsedError;

  /// [defaultValueAttachment] A value to use if there is no existing value in
  ///  the source object.
  Attachment? get defaultValueAttachment => throw _privateConstructorUsedError;

  /// [defaultValueCodeableConcept] A value to use if there is no existing
  ///  value in the source object.
  CodeableConcept? get defaultValueCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [defaultValueCoding] A value to use if there is no existing value in the
  ///  source object.
  Coding? get defaultValueCoding => throw _privateConstructorUsedError;

  /// [defaultValueContactPoint] A value to use if there is no existing value
  ///  in the source object.
  ContactPoint? get defaultValueContactPoint =>
      throw _privateConstructorUsedError;

  /// [defaultValueCount] A value to use if there is no existing value in the
  ///  source object.
  Count? get defaultValueCount => throw _privateConstructorUsedError;

  /// [defaultValueDistance] A value to use if there is no existing value in
  ///  the source object.
  Distance? get defaultValueDistance => throw _privateConstructorUsedError;

  /// [defaultValueDuration] A value to use if there is no existing value in
  ///  the source object.
  FhirDuration? get defaultValueDuration => throw _privateConstructorUsedError;

  /// [defaultValueHumanName] A value to use if there is no existing value in
  ///  the source object.
  HumanName? get defaultValueHumanName => throw _privateConstructorUsedError;

  /// [defaultValueIdentifier] A value to use if there is no existing value in
  ///  the source object.
  Identifier? get defaultValueIdentifier => throw _privateConstructorUsedError;

  /// [defaultValueMoney] A value to use if there is no existing value in the
  ///  source object.
  Money? get defaultValueMoney => throw _privateConstructorUsedError;

  /// [defaultValuePeriod] A value to use if there is no existing value in the
  ///  source object.
  Period? get defaultValuePeriod => throw _privateConstructorUsedError;

  /// [defaultValueQuantity] A value to use if there is no existing value in
  ///  the source object.
  Quantity? get defaultValueQuantity => throw _privateConstructorUsedError;

  /// [defaultValueRange] A value to use if there is no existing value in the
  ///  source object.
  Range? get defaultValueRange => throw _privateConstructorUsedError;

  /// [defaultValueRatio] A value to use if there is no existing value in the
  ///  source object.
  Ratio? get defaultValueRatio => throw _privateConstructorUsedError;

  /// [defaultValueReference] A value to use if there is no existing value in
  ///  the source object.
  Reference? get defaultValueReference => throw _privateConstructorUsedError;

  /// [defaultValueSampledData] A value to use if there is no existing value in
  ///  the source object.
  SampledData? get defaultValueSampledData =>
      throw _privateConstructorUsedError;

  /// [defaultValueSignature] A value to use if there is no existing value in
  ///  the source object.
  Signature? get defaultValueSignature => throw _privateConstructorUsedError;

  /// [defaultValueTiming] A value to use if there is no existing value in the
  ///  source object.
  Timing? get defaultValueTiming => throw _privateConstructorUsedError;

  /// [defaultValueContactDetail] A value to use if there is no existing value
  ///  in the source object.
  ContactDetail? get defaultValueContactDetail =>
      throw _privateConstructorUsedError;

  /// [defaultValueContributor] A value to use if there is no existing value in
  ///  the source object.
  Contributor? get defaultValueContributor =>
      throw _privateConstructorUsedError;

  /// [defaultValueDataRequirement] A value to use if there is no existing
  ///  value in the source object.
  DataRequirement? get defaultValueDataRequirement =>
      throw _privateConstructorUsedError;

  /// [defaultValueExpression] A value to use if there is no existing value in
  ///  the source object.
  FhirExpression? get defaultValueExpression =>
      throw _privateConstructorUsedError;

  /// [defaultValueParameterDefinition] A value to use if there is no existing
  ///  value in the source object.
  ParameterDefinition? get defaultValueParameterDefinition =>
      throw _privateConstructorUsedError;

  /// [defaultValueRelatedArtifact] A value to use if there is no existing
  ///  value in the source object.
  RelatedArtifact? get defaultValueRelatedArtifact =>
      throw _privateConstructorUsedError;

  /// [defaultValueTriggerDefinition] A value to use if there is no existing
  ///  value in the source object.
  TriggerDefinition? get defaultValueTriggerDefinition =>
      throw _privateConstructorUsedError;

  /// [defaultValueUsageContext] A value to use if there is no existing value
  ///  in the source object.
  UsageContext? get defaultValueUsageContext =>
      throw _privateConstructorUsedError;

  /// [defaultValueDosage] A value to use if there is no existing value in the
  ///  source object.
  Dosage? get defaultValueDosage => throw _privateConstructorUsedError;

  /// [defaultValueMeta] A value to use if there is no existing value in the
  ///  source object.
  FhirMeta? get defaultValueMeta => throw _privateConstructorUsedError;

  /// [element] Optional field for this source.
  String? get element => throw _privateConstructorUsedError;

  /// [elementElement] Extensions for element
  @JsonKey(name: '_element')
  PrimitiveElement? get elementElement => throw _privateConstructorUsedError;

  /// [listMode] How to handle the list mode for this element.
  FhirCode? get listMode => throw _privateConstructorUsedError;

  /// [listModeElement] Extensions for listMode
  @JsonKey(name: '_listMode')
  PrimitiveElement? get listModeElement => throw _privateConstructorUsedError;

  /// [variable] Named context for field, if a field is specified.
  FhirId? get variable => throw _privateConstructorUsedError;

  /// [variableElement] Extensions for variable
  @JsonKey(name: '_variable')
  PrimitiveElement? get variableElement => throw _privateConstructorUsedError;

  /// [condition] FHIRPath expression  - must be true or the rule does not
  ///  apply.
  String? get condition => throw _privateConstructorUsedError;

  /// [conditionElement] Extensions for condition
  @JsonKey(name: '_condition')
  PrimitiveElement? get conditionElement => throw _privateConstructorUsedError;

  /// [check] FHIRPath expression  - must be true or the mapping engine throws
  ///  an error instead of completing.
  String? get check => throw _privateConstructorUsedError;

  /// [checkElement] Extensions for check
  @JsonKey(name: '_check')
  PrimitiveElement? get checkElement => throw _privateConstructorUsedError;

  /// [logMessage] A FHIRPath expression which specifies a message to put in
  ///  the transform log when content matching the source rule is found.
  String? get logMessage => throw _privateConstructorUsedError;

  /// [logMessageElement] Extensions for logMessage
  @JsonKey(name: '_logMessage')
  PrimitiveElement? get logMessageElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructureMapSourceCopyWith<StructureMapSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructureMapSourceCopyWith<$Res> {
  factory $StructureMapSourceCopyWith(
          StructureMapSource value, $Res Function(StructureMapSource) then) =
      _$StructureMapSourceCopyWithImpl<$Res, StructureMapSource>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? context,
      @JsonKey(name: '_context') PrimitiveElement? contextElement,
      FhirInteger? min,
      @JsonKey(name: '_min') PrimitiveElement? minElement,
      String? max,
      @JsonKey(name: '_max') PrimitiveElement? maxElement,
      String? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirBase64Binary? defaultValueBase64Binary,
      @JsonKey(name: '_defaultValueBase64Binary')
      PrimitiveElement? defaultValueBase64BinaryElement,
      FhirBoolean? defaultValueBoolean,
      @JsonKey(name: '_defaultValueBoolean')
      PrimitiveElement? defaultValueBooleanElement,
      FhirCanonical? defaultValueCanonical,
      @JsonKey(name: '_defaultValueCanonical')
      PrimitiveElement? defaultValueCanonicalElement,
      FhirCode? defaultValueCode,
      @JsonKey(name: '_defaultValueCode')
      PrimitiveElement? defaultValueCodeElement,
      FhirDate? defaultValueDate,
      @JsonKey(name: '_defaultValueDate')
      PrimitiveElement? defaultValueDateElement,
      FhirDateTime? defaultValueDateTime,
      @JsonKey(name: '_defaultValueDateTime')
      PrimitiveElement? defaultValueDateTimeElement,
      FhirDecimal? defaultValueDecimal,
      @JsonKey(name: '_defaultValueDecimal')
      PrimitiveElement? defaultValueDecimalElement,
      FhirId? defaultValueId,
      @JsonKey(name: '_defaultValueId') PrimitiveElement? defaultValueIdElement,
      FhirInstant? defaultValueInstant,
      @JsonKey(name: '_defaultValueInstant')
      PrimitiveElement? defaultValueInstantElement,
      FhirInteger? defaultValueInteger,
      @JsonKey(name: '_defaultValueInteger')
      PrimitiveElement? defaultValueIntegerElement,
      FhirMarkdown? defaultValueMarkdown,
      @JsonKey(name: '_defaultValueMarkdown')
      PrimitiveElement? defaultValueMarkdownElement,
      FhirOid? defaultValueOid,
      @JsonKey(name: '_defaultValueOid')
      PrimitiveElement? defaultValueOidElement,
      FhirPositiveInt? defaultValuePositiveInt,
      @JsonKey(name: '_defaultValuePositiveInt')
      PrimitiveElement? defaultValuePositiveIntElement,
      String? defaultValueString,
      @JsonKey(name: '_defaultValueString')
      PrimitiveElement? defaultValueStringElement,
      FhirTime? defaultValueTime,
      @JsonKey(name: '_defaultValueTime')
      PrimitiveElement? defaultValueTimeElement,
      FhirUnsignedInt? defaultValueUnsignedInt,
      @JsonKey(name: '_defaultValueUnsignedInt')
      PrimitiveElement? defaultValueUnsignedIntElement,
      FhirUri? defaultValueUri,
      @JsonKey(name: '_defaultValueUri')
      PrimitiveElement? defaultValueUriElement,
      FhirUrl? defaultValueUrl,
      @JsonKey(name: '_defaultValueUrl')
      PrimitiveElement? defaultValueUrlElement,
      FhirUuid? defaultValueUuid,
      @JsonKey(name: '_defaultValueUuid')
      PrimitiveElement? defaultValueUuidElement,
      Address? defaultValueAddress,
      Age? defaultValueAge,
      Annotation? defaultValueAnnotation,
      Attachment? defaultValueAttachment,
      CodeableConcept? defaultValueCodeableConcept,
      Coding? defaultValueCoding,
      ContactPoint? defaultValueContactPoint,
      Count? defaultValueCount,
      Distance? defaultValueDistance,
      FhirDuration? defaultValueDuration,
      HumanName? defaultValueHumanName,
      Identifier? defaultValueIdentifier,
      Money? defaultValueMoney,
      Period? defaultValuePeriod,
      Quantity? defaultValueQuantity,
      Range? defaultValueRange,
      Ratio? defaultValueRatio,
      Reference? defaultValueReference,
      SampledData? defaultValueSampledData,
      Signature? defaultValueSignature,
      Timing? defaultValueTiming,
      ContactDetail? defaultValueContactDetail,
      Contributor? defaultValueContributor,
      DataRequirement? defaultValueDataRequirement,
      FhirExpression? defaultValueExpression,
      ParameterDefinition? defaultValueParameterDefinition,
      RelatedArtifact? defaultValueRelatedArtifact,
      TriggerDefinition? defaultValueTriggerDefinition,
      UsageContext? defaultValueUsageContext,
      Dosage? defaultValueDosage,
      FhirMeta? defaultValueMeta,
      String? element,
      @JsonKey(name: '_element') PrimitiveElement? elementElement,
      FhirCode? listMode,
      @JsonKey(name: '_listMode') PrimitiveElement? listModeElement,
      FhirId? variable,
      @JsonKey(name: '_variable') PrimitiveElement? variableElement,
      String? condition,
      @JsonKey(name: '_condition') PrimitiveElement? conditionElement,
      String? check,
      @JsonKey(name: '_check') PrimitiveElement? checkElement,
      String? logMessage,
      @JsonKey(name: '_logMessage') PrimitiveElement? logMessageElement});

  $AddressCopyWith<$Res>? get defaultValueAddress;
  $AgeCopyWith<$Res>? get defaultValueAge;
  $AnnotationCopyWith<$Res>? get defaultValueAnnotation;
  $AttachmentCopyWith<$Res>? get defaultValueAttachment;
  $CodeableConceptCopyWith<$Res>? get defaultValueCodeableConcept;
  $CodingCopyWith<$Res>? get defaultValueCoding;
  $ContactPointCopyWith<$Res>? get defaultValueContactPoint;
  $CountCopyWith<$Res>? get defaultValueCount;
  $DistanceCopyWith<$Res>? get defaultValueDistance;
  $FhirDurationCopyWith<$Res>? get defaultValueDuration;
  $HumanNameCopyWith<$Res>? get defaultValueHumanName;
  $IdentifierCopyWith<$Res>? get defaultValueIdentifier;
  $MoneyCopyWith<$Res>? get defaultValueMoney;
  $PeriodCopyWith<$Res>? get defaultValuePeriod;
  $QuantityCopyWith<$Res>? get defaultValueQuantity;
  $RangeCopyWith<$Res>? get defaultValueRange;
  $RatioCopyWith<$Res>? get defaultValueRatio;
  $ReferenceCopyWith<$Res>? get defaultValueReference;
  $SampledDataCopyWith<$Res>? get defaultValueSampledData;
  $SignatureCopyWith<$Res>? get defaultValueSignature;
  $TimingCopyWith<$Res>? get defaultValueTiming;
  $ContactDetailCopyWith<$Res>? get defaultValueContactDetail;
  $ContributorCopyWith<$Res>? get defaultValueContributor;
  $DataRequirementCopyWith<$Res>? get defaultValueDataRequirement;
  $FhirExpressionCopyWith<$Res>? get defaultValueExpression;
  $ParameterDefinitionCopyWith<$Res>? get defaultValueParameterDefinition;
  $RelatedArtifactCopyWith<$Res>? get defaultValueRelatedArtifact;
  $TriggerDefinitionCopyWith<$Res>? get defaultValueTriggerDefinition;
  $UsageContextCopyWith<$Res>? get defaultValueUsageContext;
  $DosageCopyWith<$Res>? get defaultValueDosage;
  $FhirMetaCopyWith<$Res>? get defaultValueMeta;
}

/// @nodoc
class _$StructureMapSourceCopyWithImpl<$Res, $Val extends StructureMapSource>
    implements $StructureMapSourceCopyWith<$Res> {
  _$StructureMapSourceCopyWithImpl(this._value, this._then);

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
    Object? context = freezed,
    Object? contextElement = freezed,
    Object? min = freezed,
    Object? minElement = freezed,
    Object? max = freezed,
    Object? maxElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? defaultValueBase64Binary = freezed,
    Object? defaultValueBase64BinaryElement = freezed,
    Object? defaultValueBoolean = freezed,
    Object? defaultValueBooleanElement = freezed,
    Object? defaultValueCanonical = freezed,
    Object? defaultValueCanonicalElement = freezed,
    Object? defaultValueCode = freezed,
    Object? defaultValueCodeElement = freezed,
    Object? defaultValueDate = freezed,
    Object? defaultValueDateElement = freezed,
    Object? defaultValueDateTime = freezed,
    Object? defaultValueDateTimeElement = freezed,
    Object? defaultValueDecimal = freezed,
    Object? defaultValueDecimalElement = freezed,
    Object? defaultValueId = freezed,
    Object? defaultValueIdElement = freezed,
    Object? defaultValueInstant = freezed,
    Object? defaultValueInstantElement = freezed,
    Object? defaultValueInteger = freezed,
    Object? defaultValueIntegerElement = freezed,
    Object? defaultValueMarkdown = freezed,
    Object? defaultValueMarkdownElement = freezed,
    Object? defaultValueOid = freezed,
    Object? defaultValueOidElement = freezed,
    Object? defaultValuePositiveInt = freezed,
    Object? defaultValuePositiveIntElement = freezed,
    Object? defaultValueString = freezed,
    Object? defaultValueStringElement = freezed,
    Object? defaultValueTime = freezed,
    Object? defaultValueTimeElement = freezed,
    Object? defaultValueUnsignedInt = freezed,
    Object? defaultValueUnsignedIntElement = freezed,
    Object? defaultValueUri = freezed,
    Object? defaultValueUriElement = freezed,
    Object? defaultValueUrl = freezed,
    Object? defaultValueUrlElement = freezed,
    Object? defaultValueUuid = freezed,
    Object? defaultValueUuidElement = freezed,
    Object? defaultValueAddress = freezed,
    Object? defaultValueAge = freezed,
    Object? defaultValueAnnotation = freezed,
    Object? defaultValueAttachment = freezed,
    Object? defaultValueCodeableConcept = freezed,
    Object? defaultValueCoding = freezed,
    Object? defaultValueContactPoint = freezed,
    Object? defaultValueCount = freezed,
    Object? defaultValueDistance = freezed,
    Object? defaultValueDuration = freezed,
    Object? defaultValueHumanName = freezed,
    Object? defaultValueIdentifier = freezed,
    Object? defaultValueMoney = freezed,
    Object? defaultValuePeriod = freezed,
    Object? defaultValueQuantity = freezed,
    Object? defaultValueRange = freezed,
    Object? defaultValueRatio = freezed,
    Object? defaultValueReference = freezed,
    Object? defaultValueSampledData = freezed,
    Object? defaultValueSignature = freezed,
    Object? defaultValueTiming = freezed,
    Object? defaultValueContactDetail = freezed,
    Object? defaultValueContributor = freezed,
    Object? defaultValueDataRequirement = freezed,
    Object? defaultValueExpression = freezed,
    Object? defaultValueParameterDefinition = freezed,
    Object? defaultValueRelatedArtifact = freezed,
    Object? defaultValueTriggerDefinition = freezed,
    Object? defaultValueUsageContext = freezed,
    Object? defaultValueDosage = freezed,
    Object? defaultValueMeta = freezed,
    Object? element = freezed,
    Object? elementElement = freezed,
    Object? listMode = freezed,
    Object? listModeElement = freezed,
    Object? variable = freezed,
    Object? variableElement = freezed,
    Object? condition = freezed,
    Object? conditionElement = freezed,
    Object? check = freezed,
    Object? checkElement = freezed,
    Object? logMessage = freezed,
    Object? logMessageElement = freezed,
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
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      contextElement: freezed == contextElement
          ? _value.contextElement
          : contextElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueBase64Binary: freezed == defaultValueBase64Binary
          ? _value.defaultValueBase64Binary
          : defaultValueBase64Binary // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      defaultValueBase64BinaryElement: freezed ==
              defaultValueBase64BinaryElement
          ? _value.defaultValueBase64BinaryElement
          : defaultValueBase64BinaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueBoolean: freezed == defaultValueBoolean
          ? _value.defaultValueBoolean
          : defaultValueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      defaultValueBooleanElement: freezed == defaultValueBooleanElement
          ? _value.defaultValueBooleanElement
          : defaultValueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueCanonical: freezed == defaultValueCanonical
          ? _value.defaultValueCanonical
          : defaultValueCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      defaultValueCanonicalElement: freezed == defaultValueCanonicalElement
          ? _value.defaultValueCanonicalElement
          : defaultValueCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueCode: freezed == defaultValueCode
          ? _value.defaultValueCode
          : defaultValueCode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      defaultValueCodeElement: freezed == defaultValueCodeElement
          ? _value.defaultValueCodeElement
          : defaultValueCodeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueDate: freezed == defaultValueDate
          ? _value.defaultValueDate
          : defaultValueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      defaultValueDateElement: freezed == defaultValueDateElement
          ? _value.defaultValueDateElement
          : defaultValueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueDateTime: freezed == defaultValueDateTime
          ? _value.defaultValueDateTime
          : defaultValueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      defaultValueDateTimeElement: freezed == defaultValueDateTimeElement
          ? _value.defaultValueDateTimeElement
          : defaultValueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueDecimal: freezed == defaultValueDecimal
          ? _value.defaultValueDecimal
          : defaultValueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      defaultValueDecimalElement: freezed == defaultValueDecimalElement
          ? _value.defaultValueDecimalElement
          : defaultValueDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueId: freezed == defaultValueId
          ? _value.defaultValueId
          : defaultValueId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      defaultValueIdElement: freezed == defaultValueIdElement
          ? _value.defaultValueIdElement
          : defaultValueIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueInstant: freezed == defaultValueInstant
          ? _value.defaultValueInstant
          : defaultValueInstant // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      defaultValueInstantElement: freezed == defaultValueInstantElement
          ? _value.defaultValueInstantElement
          : defaultValueInstantElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueInteger: freezed == defaultValueInteger
          ? _value.defaultValueInteger
          : defaultValueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      defaultValueIntegerElement: freezed == defaultValueIntegerElement
          ? _value.defaultValueIntegerElement
          : defaultValueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueMarkdown: freezed == defaultValueMarkdown
          ? _value.defaultValueMarkdown
          : defaultValueMarkdown // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      defaultValueMarkdownElement: freezed == defaultValueMarkdownElement
          ? _value.defaultValueMarkdownElement
          : defaultValueMarkdownElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueOid: freezed == defaultValueOid
          ? _value.defaultValueOid
          : defaultValueOid // ignore: cast_nullable_to_non_nullable
              as FhirOid?,
      defaultValueOidElement: freezed == defaultValueOidElement
          ? _value.defaultValueOidElement
          : defaultValueOidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValuePositiveInt: freezed == defaultValuePositiveInt
          ? _value.defaultValuePositiveInt
          : defaultValuePositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      defaultValuePositiveIntElement: freezed == defaultValuePositiveIntElement
          ? _value.defaultValuePositiveIntElement
          : defaultValuePositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueString: freezed == defaultValueString
          ? _value.defaultValueString
          : defaultValueString // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultValueStringElement: freezed == defaultValueStringElement
          ? _value.defaultValueStringElement
          : defaultValueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueTime: freezed == defaultValueTime
          ? _value.defaultValueTime
          : defaultValueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      defaultValueTimeElement: freezed == defaultValueTimeElement
          ? _value.defaultValueTimeElement
          : defaultValueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueUnsignedInt: freezed == defaultValueUnsignedInt
          ? _value.defaultValueUnsignedInt
          : defaultValueUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      defaultValueUnsignedIntElement: freezed == defaultValueUnsignedIntElement
          ? _value.defaultValueUnsignedIntElement
          : defaultValueUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueUri: freezed == defaultValueUri
          ? _value.defaultValueUri
          : defaultValueUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      defaultValueUriElement: freezed == defaultValueUriElement
          ? _value.defaultValueUriElement
          : defaultValueUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueUrl: freezed == defaultValueUrl
          ? _value.defaultValueUrl
          : defaultValueUrl // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      defaultValueUrlElement: freezed == defaultValueUrlElement
          ? _value.defaultValueUrlElement
          : defaultValueUrlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueUuid: freezed == defaultValueUuid
          ? _value.defaultValueUuid
          : defaultValueUuid // ignore: cast_nullable_to_non_nullable
              as FhirUuid?,
      defaultValueUuidElement: freezed == defaultValueUuidElement
          ? _value.defaultValueUuidElement
          : defaultValueUuidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueAddress: freezed == defaultValueAddress
          ? _value.defaultValueAddress
          : defaultValueAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      defaultValueAge: freezed == defaultValueAge
          ? _value.defaultValueAge
          : defaultValueAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      defaultValueAnnotation: freezed == defaultValueAnnotation
          ? _value.defaultValueAnnotation
          : defaultValueAnnotation // ignore: cast_nullable_to_non_nullable
              as Annotation?,
      defaultValueAttachment: freezed == defaultValueAttachment
          ? _value.defaultValueAttachment
          : defaultValueAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      defaultValueCodeableConcept: freezed == defaultValueCodeableConcept
          ? _value.defaultValueCodeableConcept
          : defaultValueCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      defaultValueCoding: freezed == defaultValueCoding
          ? _value.defaultValueCoding
          : defaultValueCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      defaultValueContactPoint: freezed == defaultValueContactPoint
          ? _value.defaultValueContactPoint
          : defaultValueContactPoint // ignore: cast_nullable_to_non_nullable
              as ContactPoint?,
      defaultValueCount: freezed == defaultValueCount
          ? _value.defaultValueCount
          : defaultValueCount // ignore: cast_nullable_to_non_nullable
              as Count?,
      defaultValueDistance: freezed == defaultValueDistance
          ? _value.defaultValueDistance
          : defaultValueDistance // ignore: cast_nullable_to_non_nullable
              as Distance?,
      defaultValueDuration: freezed == defaultValueDuration
          ? _value.defaultValueDuration
          : defaultValueDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      defaultValueHumanName: freezed == defaultValueHumanName
          ? _value.defaultValueHumanName
          : defaultValueHumanName // ignore: cast_nullable_to_non_nullable
              as HumanName?,
      defaultValueIdentifier: freezed == defaultValueIdentifier
          ? _value.defaultValueIdentifier
          : defaultValueIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      defaultValueMoney: freezed == defaultValueMoney
          ? _value.defaultValueMoney
          : defaultValueMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      defaultValuePeriod: freezed == defaultValuePeriod
          ? _value.defaultValuePeriod
          : defaultValuePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      defaultValueQuantity: freezed == defaultValueQuantity
          ? _value.defaultValueQuantity
          : defaultValueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      defaultValueRange: freezed == defaultValueRange
          ? _value.defaultValueRange
          : defaultValueRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      defaultValueRatio: freezed == defaultValueRatio
          ? _value.defaultValueRatio
          : defaultValueRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      defaultValueReference: freezed == defaultValueReference
          ? _value.defaultValueReference
          : defaultValueReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      defaultValueSampledData: freezed == defaultValueSampledData
          ? _value.defaultValueSampledData
          : defaultValueSampledData // ignore: cast_nullable_to_non_nullable
              as SampledData?,
      defaultValueSignature: freezed == defaultValueSignature
          ? _value.defaultValueSignature
          : defaultValueSignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
      defaultValueTiming: freezed == defaultValueTiming
          ? _value.defaultValueTiming
          : defaultValueTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      defaultValueContactDetail: freezed == defaultValueContactDetail
          ? _value.defaultValueContactDetail
          : defaultValueContactDetail // ignore: cast_nullable_to_non_nullable
              as ContactDetail?,
      defaultValueContributor: freezed == defaultValueContributor
          ? _value.defaultValueContributor
          : defaultValueContributor // ignore: cast_nullable_to_non_nullable
              as Contributor?,
      defaultValueDataRequirement: freezed == defaultValueDataRequirement
          ? _value.defaultValueDataRequirement
          : defaultValueDataRequirement // ignore: cast_nullable_to_non_nullable
              as DataRequirement?,
      defaultValueExpression: freezed == defaultValueExpression
          ? _value.defaultValueExpression
          : defaultValueExpression // ignore: cast_nullable_to_non_nullable
              as FhirExpression?,
      defaultValueParameterDefinition: freezed ==
              defaultValueParameterDefinition
          ? _value.defaultValueParameterDefinition
          : defaultValueParameterDefinition // ignore: cast_nullable_to_non_nullable
              as ParameterDefinition?,
      defaultValueRelatedArtifact: freezed == defaultValueRelatedArtifact
          ? _value.defaultValueRelatedArtifact
          : defaultValueRelatedArtifact // ignore: cast_nullable_to_non_nullable
              as RelatedArtifact?,
      defaultValueTriggerDefinition: freezed == defaultValueTriggerDefinition
          ? _value.defaultValueTriggerDefinition
          : defaultValueTriggerDefinition // ignore: cast_nullable_to_non_nullable
              as TriggerDefinition?,
      defaultValueUsageContext: freezed == defaultValueUsageContext
          ? _value.defaultValueUsageContext
          : defaultValueUsageContext // ignore: cast_nullable_to_non_nullable
              as UsageContext?,
      defaultValueDosage: freezed == defaultValueDosage
          ? _value.defaultValueDosage
          : defaultValueDosage // ignore: cast_nullable_to_non_nullable
              as Dosage?,
      defaultValueMeta: freezed == defaultValueMeta
          ? _value.defaultValueMeta
          : defaultValueMeta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      element: freezed == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as String?,
      elementElement: freezed == elementElement
          ? _value.elementElement
          : elementElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      listMode: freezed == listMode
          ? _value.listMode
          : listMode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      listModeElement: freezed == listModeElement
          ? _value.listModeElement
          : listModeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      variable: freezed == variable
          ? _value.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      variableElement: freezed == variableElement
          ? _value.variableElement
          : variableElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      conditionElement: freezed == conditionElement
          ? _value.conditionElement
          : conditionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      check: freezed == check
          ? _value.check
          : check // ignore: cast_nullable_to_non_nullable
              as String?,
      checkElement: freezed == checkElement
          ? _value.checkElement
          : checkElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      logMessage: freezed == logMessage
          ? _value.logMessage
          : logMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      logMessageElement: freezed == logMessageElement
          ? _value.logMessageElement
          : logMessageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get defaultValueAddress {
    if (_value.defaultValueAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.defaultValueAddress!, (value) {
      return _then(_value.copyWith(defaultValueAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgeCopyWith<$Res>? get defaultValueAge {
    if (_value.defaultValueAge == null) {
      return null;
    }

    return $AgeCopyWith<$Res>(_value.defaultValueAge!, (value) {
      return _then(_value.copyWith(defaultValueAge: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnnotationCopyWith<$Res>? get defaultValueAnnotation {
    if (_value.defaultValueAnnotation == null) {
      return null;
    }

    return $AnnotationCopyWith<$Res>(_value.defaultValueAnnotation!, (value) {
      return _then(_value.copyWith(defaultValueAnnotation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get defaultValueAttachment {
    if (_value.defaultValueAttachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.defaultValueAttachment!, (value) {
      return _then(_value.copyWith(defaultValueAttachment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get defaultValueCodeableConcept {
    if (_value.defaultValueCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.defaultValueCodeableConcept!,
        (value) {
      return _then(_value.copyWith(defaultValueCodeableConcept: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodingCopyWith<$Res>? get defaultValueCoding {
    if (_value.defaultValueCoding == null) {
      return null;
    }

    return $CodingCopyWith<$Res>(_value.defaultValueCoding!, (value) {
      return _then(_value.copyWith(defaultValueCoding: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactPointCopyWith<$Res>? get defaultValueContactPoint {
    if (_value.defaultValueContactPoint == null) {
      return null;
    }

    return $ContactPointCopyWith<$Res>(_value.defaultValueContactPoint!,
        (value) {
      return _then(_value.copyWith(defaultValueContactPoint: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CountCopyWith<$Res>? get defaultValueCount {
    if (_value.defaultValueCount == null) {
      return null;
    }

    return $CountCopyWith<$Res>(_value.defaultValueCount!, (value) {
      return _then(_value.copyWith(defaultValueCount: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DistanceCopyWith<$Res>? get defaultValueDistance {
    if (_value.defaultValueDistance == null) {
      return null;
    }

    return $DistanceCopyWith<$Res>(_value.defaultValueDistance!, (value) {
      return _then(_value.copyWith(defaultValueDistance: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirDurationCopyWith<$Res>? get defaultValueDuration {
    if (_value.defaultValueDuration == null) {
      return null;
    }

    return $FhirDurationCopyWith<$Res>(_value.defaultValueDuration!, (value) {
      return _then(_value.copyWith(defaultValueDuration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HumanNameCopyWith<$Res>? get defaultValueHumanName {
    if (_value.defaultValueHumanName == null) {
      return null;
    }

    return $HumanNameCopyWith<$Res>(_value.defaultValueHumanName!, (value) {
      return _then(_value.copyWith(defaultValueHumanName: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdentifierCopyWith<$Res>? get defaultValueIdentifier {
    if (_value.defaultValueIdentifier == null) {
      return null;
    }

    return $IdentifierCopyWith<$Res>(_value.defaultValueIdentifier!, (value) {
      return _then(_value.copyWith(defaultValueIdentifier: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get defaultValueMoney {
    if (_value.defaultValueMoney == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.defaultValueMoney!, (value) {
      return _then(_value.copyWith(defaultValueMoney: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get defaultValuePeriod {
    if (_value.defaultValuePeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.defaultValuePeriod!, (value) {
      return _then(_value.copyWith(defaultValuePeriod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get defaultValueQuantity {
    if (_value.defaultValueQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.defaultValueQuantity!, (value) {
      return _then(_value.copyWith(defaultValueQuantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get defaultValueRange {
    if (_value.defaultValueRange == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.defaultValueRange!, (value) {
      return _then(_value.copyWith(defaultValueRange: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatioCopyWith<$Res>? get defaultValueRatio {
    if (_value.defaultValueRatio == null) {
      return null;
    }

    return $RatioCopyWith<$Res>(_value.defaultValueRatio!, (value) {
      return _then(_value.copyWith(defaultValueRatio: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get defaultValueReference {
    if (_value.defaultValueReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.defaultValueReference!, (value) {
      return _then(_value.copyWith(defaultValueReference: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SampledDataCopyWith<$Res>? get defaultValueSampledData {
    if (_value.defaultValueSampledData == null) {
      return null;
    }

    return $SampledDataCopyWith<$Res>(_value.defaultValueSampledData!, (value) {
      return _then(_value.copyWith(defaultValueSampledData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SignatureCopyWith<$Res>? get defaultValueSignature {
    if (_value.defaultValueSignature == null) {
      return null;
    }

    return $SignatureCopyWith<$Res>(_value.defaultValueSignature!, (value) {
      return _then(_value.copyWith(defaultValueSignature: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimingCopyWith<$Res>? get defaultValueTiming {
    if (_value.defaultValueTiming == null) {
      return null;
    }

    return $TimingCopyWith<$Res>(_value.defaultValueTiming!, (value) {
      return _then(_value.copyWith(defaultValueTiming: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactDetailCopyWith<$Res>? get defaultValueContactDetail {
    if (_value.defaultValueContactDetail == null) {
      return null;
    }

    return $ContactDetailCopyWith<$Res>(_value.defaultValueContactDetail!,
        (value) {
      return _then(_value.copyWith(defaultValueContactDetail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContributorCopyWith<$Res>? get defaultValueContributor {
    if (_value.defaultValueContributor == null) {
      return null;
    }

    return $ContributorCopyWith<$Res>(_value.defaultValueContributor!, (value) {
      return _then(_value.copyWith(defaultValueContributor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataRequirementCopyWith<$Res>? get defaultValueDataRequirement {
    if (_value.defaultValueDataRequirement == null) {
      return null;
    }

    return $DataRequirementCopyWith<$Res>(_value.defaultValueDataRequirement!,
        (value) {
      return _then(_value.copyWith(defaultValueDataRequirement: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirExpressionCopyWith<$Res>? get defaultValueExpression {
    if (_value.defaultValueExpression == null) {
      return null;
    }

    return $FhirExpressionCopyWith<$Res>(_value.defaultValueExpression!,
        (value) {
      return _then(_value.copyWith(defaultValueExpression: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParameterDefinitionCopyWith<$Res>? get defaultValueParameterDefinition {
    if (_value.defaultValueParameterDefinition == null) {
      return null;
    }

    return $ParameterDefinitionCopyWith<$Res>(
        _value.defaultValueParameterDefinition!, (value) {
      return _then(
          _value.copyWith(defaultValueParameterDefinition: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RelatedArtifactCopyWith<$Res>? get defaultValueRelatedArtifact {
    if (_value.defaultValueRelatedArtifact == null) {
      return null;
    }

    return $RelatedArtifactCopyWith<$Res>(_value.defaultValueRelatedArtifact!,
        (value) {
      return _then(_value.copyWith(defaultValueRelatedArtifact: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TriggerDefinitionCopyWith<$Res>? get defaultValueTriggerDefinition {
    if (_value.defaultValueTriggerDefinition == null) {
      return null;
    }

    return $TriggerDefinitionCopyWith<$Res>(
        _value.defaultValueTriggerDefinition!, (value) {
      return _then(
          _value.copyWith(defaultValueTriggerDefinition: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UsageContextCopyWith<$Res>? get defaultValueUsageContext {
    if (_value.defaultValueUsageContext == null) {
      return null;
    }

    return $UsageContextCopyWith<$Res>(_value.defaultValueUsageContext!,
        (value) {
      return _then(_value.copyWith(defaultValueUsageContext: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DosageCopyWith<$Res>? get defaultValueDosage {
    if (_value.defaultValueDosage == null) {
      return null;
    }

    return $DosageCopyWith<$Res>(_value.defaultValueDosage!, (value) {
      return _then(_value.copyWith(defaultValueDosage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get defaultValueMeta {
    if (_value.defaultValueMeta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.defaultValueMeta!, (value) {
      return _then(_value.copyWith(defaultValueMeta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StructureMapSourceImplCopyWith<$Res>
    implements $StructureMapSourceCopyWith<$Res> {
  factory _$$StructureMapSourceImplCopyWith(_$StructureMapSourceImpl value,
          $Res Function(_$StructureMapSourceImpl) then) =
      __$$StructureMapSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? context,
      @JsonKey(name: '_context') PrimitiveElement? contextElement,
      FhirInteger? min,
      @JsonKey(name: '_min') PrimitiveElement? minElement,
      String? max,
      @JsonKey(name: '_max') PrimitiveElement? maxElement,
      String? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirBase64Binary? defaultValueBase64Binary,
      @JsonKey(name: '_defaultValueBase64Binary')
      PrimitiveElement? defaultValueBase64BinaryElement,
      FhirBoolean? defaultValueBoolean,
      @JsonKey(name: '_defaultValueBoolean')
      PrimitiveElement? defaultValueBooleanElement,
      FhirCanonical? defaultValueCanonical,
      @JsonKey(name: '_defaultValueCanonical')
      PrimitiveElement? defaultValueCanonicalElement,
      FhirCode? defaultValueCode,
      @JsonKey(name: '_defaultValueCode')
      PrimitiveElement? defaultValueCodeElement,
      FhirDate? defaultValueDate,
      @JsonKey(name: '_defaultValueDate')
      PrimitiveElement? defaultValueDateElement,
      FhirDateTime? defaultValueDateTime,
      @JsonKey(name: '_defaultValueDateTime')
      PrimitiveElement? defaultValueDateTimeElement,
      FhirDecimal? defaultValueDecimal,
      @JsonKey(name: '_defaultValueDecimal')
      PrimitiveElement? defaultValueDecimalElement,
      FhirId? defaultValueId,
      @JsonKey(name: '_defaultValueId') PrimitiveElement? defaultValueIdElement,
      FhirInstant? defaultValueInstant,
      @JsonKey(name: '_defaultValueInstant')
      PrimitiveElement? defaultValueInstantElement,
      FhirInteger? defaultValueInteger,
      @JsonKey(name: '_defaultValueInteger')
      PrimitiveElement? defaultValueIntegerElement,
      FhirMarkdown? defaultValueMarkdown,
      @JsonKey(name: '_defaultValueMarkdown')
      PrimitiveElement? defaultValueMarkdownElement,
      FhirOid? defaultValueOid,
      @JsonKey(name: '_defaultValueOid')
      PrimitiveElement? defaultValueOidElement,
      FhirPositiveInt? defaultValuePositiveInt,
      @JsonKey(name: '_defaultValuePositiveInt')
      PrimitiveElement? defaultValuePositiveIntElement,
      String? defaultValueString,
      @JsonKey(name: '_defaultValueString')
      PrimitiveElement? defaultValueStringElement,
      FhirTime? defaultValueTime,
      @JsonKey(name: '_defaultValueTime')
      PrimitiveElement? defaultValueTimeElement,
      FhirUnsignedInt? defaultValueUnsignedInt,
      @JsonKey(name: '_defaultValueUnsignedInt')
      PrimitiveElement? defaultValueUnsignedIntElement,
      FhirUri? defaultValueUri,
      @JsonKey(name: '_defaultValueUri')
      PrimitiveElement? defaultValueUriElement,
      FhirUrl? defaultValueUrl,
      @JsonKey(name: '_defaultValueUrl')
      PrimitiveElement? defaultValueUrlElement,
      FhirUuid? defaultValueUuid,
      @JsonKey(name: '_defaultValueUuid')
      PrimitiveElement? defaultValueUuidElement,
      Address? defaultValueAddress,
      Age? defaultValueAge,
      Annotation? defaultValueAnnotation,
      Attachment? defaultValueAttachment,
      CodeableConcept? defaultValueCodeableConcept,
      Coding? defaultValueCoding,
      ContactPoint? defaultValueContactPoint,
      Count? defaultValueCount,
      Distance? defaultValueDistance,
      FhirDuration? defaultValueDuration,
      HumanName? defaultValueHumanName,
      Identifier? defaultValueIdentifier,
      Money? defaultValueMoney,
      Period? defaultValuePeriod,
      Quantity? defaultValueQuantity,
      Range? defaultValueRange,
      Ratio? defaultValueRatio,
      Reference? defaultValueReference,
      SampledData? defaultValueSampledData,
      Signature? defaultValueSignature,
      Timing? defaultValueTiming,
      ContactDetail? defaultValueContactDetail,
      Contributor? defaultValueContributor,
      DataRequirement? defaultValueDataRequirement,
      FhirExpression? defaultValueExpression,
      ParameterDefinition? defaultValueParameterDefinition,
      RelatedArtifact? defaultValueRelatedArtifact,
      TriggerDefinition? defaultValueTriggerDefinition,
      UsageContext? defaultValueUsageContext,
      Dosage? defaultValueDosage,
      FhirMeta? defaultValueMeta,
      String? element,
      @JsonKey(name: '_element') PrimitiveElement? elementElement,
      FhirCode? listMode,
      @JsonKey(name: '_listMode') PrimitiveElement? listModeElement,
      FhirId? variable,
      @JsonKey(name: '_variable') PrimitiveElement? variableElement,
      String? condition,
      @JsonKey(name: '_condition') PrimitiveElement? conditionElement,
      String? check,
      @JsonKey(name: '_check') PrimitiveElement? checkElement,
      String? logMessage,
      @JsonKey(name: '_logMessage') PrimitiveElement? logMessageElement});

  @override
  $AddressCopyWith<$Res>? get defaultValueAddress;
  @override
  $AgeCopyWith<$Res>? get defaultValueAge;
  @override
  $AnnotationCopyWith<$Res>? get defaultValueAnnotation;
  @override
  $AttachmentCopyWith<$Res>? get defaultValueAttachment;
  @override
  $CodeableConceptCopyWith<$Res>? get defaultValueCodeableConcept;
  @override
  $CodingCopyWith<$Res>? get defaultValueCoding;
  @override
  $ContactPointCopyWith<$Res>? get defaultValueContactPoint;
  @override
  $CountCopyWith<$Res>? get defaultValueCount;
  @override
  $DistanceCopyWith<$Res>? get defaultValueDistance;
  @override
  $FhirDurationCopyWith<$Res>? get defaultValueDuration;
  @override
  $HumanNameCopyWith<$Res>? get defaultValueHumanName;
  @override
  $IdentifierCopyWith<$Res>? get defaultValueIdentifier;
  @override
  $MoneyCopyWith<$Res>? get defaultValueMoney;
  @override
  $PeriodCopyWith<$Res>? get defaultValuePeriod;
  @override
  $QuantityCopyWith<$Res>? get defaultValueQuantity;
  @override
  $RangeCopyWith<$Res>? get defaultValueRange;
  @override
  $RatioCopyWith<$Res>? get defaultValueRatio;
  @override
  $ReferenceCopyWith<$Res>? get defaultValueReference;
  @override
  $SampledDataCopyWith<$Res>? get defaultValueSampledData;
  @override
  $SignatureCopyWith<$Res>? get defaultValueSignature;
  @override
  $TimingCopyWith<$Res>? get defaultValueTiming;
  @override
  $ContactDetailCopyWith<$Res>? get defaultValueContactDetail;
  @override
  $ContributorCopyWith<$Res>? get defaultValueContributor;
  @override
  $DataRequirementCopyWith<$Res>? get defaultValueDataRequirement;
  @override
  $FhirExpressionCopyWith<$Res>? get defaultValueExpression;
  @override
  $ParameterDefinitionCopyWith<$Res>? get defaultValueParameterDefinition;
  @override
  $RelatedArtifactCopyWith<$Res>? get defaultValueRelatedArtifact;
  @override
  $TriggerDefinitionCopyWith<$Res>? get defaultValueTriggerDefinition;
  @override
  $UsageContextCopyWith<$Res>? get defaultValueUsageContext;
  @override
  $DosageCopyWith<$Res>? get defaultValueDosage;
  @override
  $FhirMetaCopyWith<$Res>? get defaultValueMeta;
}

/// @nodoc
class __$$StructureMapSourceImplCopyWithImpl<$Res>
    extends _$StructureMapSourceCopyWithImpl<$Res, _$StructureMapSourceImpl>
    implements _$$StructureMapSourceImplCopyWith<$Res> {
  __$$StructureMapSourceImplCopyWithImpl(_$StructureMapSourceImpl _value,
      $Res Function(_$StructureMapSourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? context = freezed,
    Object? contextElement = freezed,
    Object? min = freezed,
    Object? minElement = freezed,
    Object? max = freezed,
    Object? maxElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? defaultValueBase64Binary = freezed,
    Object? defaultValueBase64BinaryElement = freezed,
    Object? defaultValueBoolean = freezed,
    Object? defaultValueBooleanElement = freezed,
    Object? defaultValueCanonical = freezed,
    Object? defaultValueCanonicalElement = freezed,
    Object? defaultValueCode = freezed,
    Object? defaultValueCodeElement = freezed,
    Object? defaultValueDate = freezed,
    Object? defaultValueDateElement = freezed,
    Object? defaultValueDateTime = freezed,
    Object? defaultValueDateTimeElement = freezed,
    Object? defaultValueDecimal = freezed,
    Object? defaultValueDecimalElement = freezed,
    Object? defaultValueId = freezed,
    Object? defaultValueIdElement = freezed,
    Object? defaultValueInstant = freezed,
    Object? defaultValueInstantElement = freezed,
    Object? defaultValueInteger = freezed,
    Object? defaultValueIntegerElement = freezed,
    Object? defaultValueMarkdown = freezed,
    Object? defaultValueMarkdownElement = freezed,
    Object? defaultValueOid = freezed,
    Object? defaultValueOidElement = freezed,
    Object? defaultValuePositiveInt = freezed,
    Object? defaultValuePositiveIntElement = freezed,
    Object? defaultValueString = freezed,
    Object? defaultValueStringElement = freezed,
    Object? defaultValueTime = freezed,
    Object? defaultValueTimeElement = freezed,
    Object? defaultValueUnsignedInt = freezed,
    Object? defaultValueUnsignedIntElement = freezed,
    Object? defaultValueUri = freezed,
    Object? defaultValueUriElement = freezed,
    Object? defaultValueUrl = freezed,
    Object? defaultValueUrlElement = freezed,
    Object? defaultValueUuid = freezed,
    Object? defaultValueUuidElement = freezed,
    Object? defaultValueAddress = freezed,
    Object? defaultValueAge = freezed,
    Object? defaultValueAnnotation = freezed,
    Object? defaultValueAttachment = freezed,
    Object? defaultValueCodeableConcept = freezed,
    Object? defaultValueCoding = freezed,
    Object? defaultValueContactPoint = freezed,
    Object? defaultValueCount = freezed,
    Object? defaultValueDistance = freezed,
    Object? defaultValueDuration = freezed,
    Object? defaultValueHumanName = freezed,
    Object? defaultValueIdentifier = freezed,
    Object? defaultValueMoney = freezed,
    Object? defaultValuePeriod = freezed,
    Object? defaultValueQuantity = freezed,
    Object? defaultValueRange = freezed,
    Object? defaultValueRatio = freezed,
    Object? defaultValueReference = freezed,
    Object? defaultValueSampledData = freezed,
    Object? defaultValueSignature = freezed,
    Object? defaultValueTiming = freezed,
    Object? defaultValueContactDetail = freezed,
    Object? defaultValueContributor = freezed,
    Object? defaultValueDataRequirement = freezed,
    Object? defaultValueExpression = freezed,
    Object? defaultValueParameterDefinition = freezed,
    Object? defaultValueRelatedArtifact = freezed,
    Object? defaultValueTriggerDefinition = freezed,
    Object? defaultValueUsageContext = freezed,
    Object? defaultValueDosage = freezed,
    Object? defaultValueMeta = freezed,
    Object? element = freezed,
    Object? elementElement = freezed,
    Object? listMode = freezed,
    Object? listModeElement = freezed,
    Object? variable = freezed,
    Object? variableElement = freezed,
    Object? condition = freezed,
    Object? conditionElement = freezed,
    Object? check = freezed,
    Object? checkElement = freezed,
    Object? logMessage = freezed,
    Object? logMessageElement = freezed,
  }) {
    return _then(_$StructureMapSourceImpl(
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
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      contextElement: freezed == contextElement
          ? _value.contextElement
          : contextElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueBase64Binary: freezed == defaultValueBase64Binary
          ? _value.defaultValueBase64Binary
          : defaultValueBase64Binary // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      defaultValueBase64BinaryElement: freezed ==
              defaultValueBase64BinaryElement
          ? _value.defaultValueBase64BinaryElement
          : defaultValueBase64BinaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueBoolean: freezed == defaultValueBoolean
          ? _value.defaultValueBoolean
          : defaultValueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      defaultValueBooleanElement: freezed == defaultValueBooleanElement
          ? _value.defaultValueBooleanElement
          : defaultValueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueCanonical: freezed == defaultValueCanonical
          ? _value.defaultValueCanonical
          : defaultValueCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      defaultValueCanonicalElement: freezed == defaultValueCanonicalElement
          ? _value.defaultValueCanonicalElement
          : defaultValueCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueCode: freezed == defaultValueCode
          ? _value.defaultValueCode
          : defaultValueCode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      defaultValueCodeElement: freezed == defaultValueCodeElement
          ? _value.defaultValueCodeElement
          : defaultValueCodeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueDate: freezed == defaultValueDate
          ? _value.defaultValueDate
          : defaultValueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      defaultValueDateElement: freezed == defaultValueDateElement
          ? _value.defaultValueDateElement
          : defaultValueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueDateTime: freezed == defaultValueDateTime
          ? _value.defaultValueDateTime
          : defaultValueDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      defaultValueDateTimeElement: freezed == defaultValueDateTimeElement
          ? _value.defaultValueDateTimeElement
          : defaultValueDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueDecimal: freezed == defaultValueDecimal
          ? _value.defaultValueDecimal
          : defaultValueDecimal // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      defaultValueDecimalElement: freezed == defaultValueDecimalElement
          ? _value.defaultValueDecimalElement
          : defaultValueDecimalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueId: freezed == defaultValueId
          ? _value.defaultValueId
          : defaultValueId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      defaultValueIdElement: freezed == defaultValueIdElement
          ? _value.defaultValueIdElement
          : defaultValueIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueInstant: freezed == defaultValueInstant
          ? _value.defaultValueInstant
          : defaultValueInstant // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      defaultValueInstantElement: freezed == defaultValueInstantElement
          ? _value.defaultValueInstantElement
          : defaultValueInstantElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueInteger: freezed == defaultValueInteger
          ? _value.defaultValueInteger
          : defaultValueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      defaultValueIntegerElement: freezed == defaultValueIntegerElement
          ? _value.defaultValueIntegerElement
          : defaultValueIntegerElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueMarkdown: freezed == defaultValueMarkdown
          ? _value.defaultValueMarkdown
          : defaultValueMarkdown // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      defaultValueMarkdownElement: freezed == defaultValueMarkdownElement
          ? _value.defaultValueMarkdownElement
          : defaultValueMarkdownElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueOid: freezed == defaultValueOid
          ? _value.defaultValueOid
          : defaultValueOid // ignore: cast_nullable_to_non_nullable
              as FhirOid?,
      defaultValueOidElement: freezed == defaultValueOidElement
          ? _value.defaultValueOidElement
          : defaultValueOidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValuePositiveInt: freezed == defaultValuePositiveInt
          ? _value.defaultValuePositiveInt
          : defaultValuePositiveInt // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      defaultValuePositiveIntElement: freezed == defaultValuePositiveIntElement
          ? _value.defaultValuePositiveIntElement
          : defaultValuePositiveIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueString: freezed == defaultValueString
          ? _value.defaultValueString
          : defaultValueString // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultValueStringElement: freezed == defaultValueStringElement
          ? _value.defaultValueStringElement
          : defaultValueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueTime: freezed == defaultValueTime
          ? _value.defaultValueTime
          : defaultValueTime // ignore: cast_nullable_to_non_nullable
              as FhirTime?,
      defaultValueTimeElement: freezed == defaultValueTimeElement
          ? _value.defaultValueTimeElement
          : defaultValueTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueUnsignedInt: freezed == defaultValueUnsignedInt
          ? _value.defaultValueUnsignedInt
          : defaultValueUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      defaultValueUnsignedIntElement: freezed == defaultValueUnsignedIntElement
          ? _value.defaultValueUnsignedIntElement
          : defaultValueUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueUri: freezed == defaultValueUri
          ? _value.defaultValueUri
          : defaultValueUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      defaultValueUriElement: freezed == defaultValueUriElement
          ? _value.defaultValueUriElement
          : defaultValueUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueUrl: freezed == defaultValueUrl
          ? _value.defaultValueUrl
          : defaultValueUrl // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      defaultValueUrlElement: freezed == defaultValueUrlElement
          ? _value.defaultValueUrlElement
          : defaultValueUrlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueUuid: freezed == defaultValueUuid
          ? _value.defaultValueUuid
          : defaultValueUuid // ignore: cast_nullable_to_non_nullable
              as FhirUuid?,
      defaultValueUuidElement: freezed == defaultValueUuidElement
          ? _value.defaultValueUuidElement
          : defaultValueUuidElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      defaultValueAddress: freezed == defaultValueAddress
          ? _value.defaultValueAddress
          : defaultValueAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      defaultValueAge: freezed == defaultValueAge
          ? _value.defaultValueAge
          : defaultValueAge // ignore: cast_nullable_to_non_nullable
              as Age?,
      defaultValueAnnotation: freezed == defaultValueAnnotation
          ? _value.defaultValueAnnotation
          : defaultValueAnnotation // ignore: cast_nullable_to_non_nullable
              as Annotation?,
      defaultValueAttachment: freezed == defaultValueAttachment
          ? _value.defaultValueAttachment
          : defaultValueAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      defaultValueCodeableConcept: freezed == defaultValueCodeableConcept
          ? _value.defaultValueCodeableConcept
          : defaultValueCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      defaultValueCoding: freezed == defaultValueCoding
          ? _value.defaultValueCoding
          : defaultValueCoding // ignore: cast_nullable_to_non_nullable
              as Coding?,
      defaultValueContactPoint: freezed == defaultValueContactPoint
          ? _value.defaultValueContactPoint
          : defaultValueContactPoint // ignore: cast_nullable_to_non_nullable
              as ContactPoint?,
      defaultValueCount: freezed == defaultValueCount
          ? _value.defaultValueCount
          : defaultValueCount // ignore: cast_nullable_to_non_nullable
              as Count?,
      defaultValueDistance: freezed == defaultValueDistance
          ? _value.defaultValueDistance
          : defaultValueDistance // ignore: cast_nullable_to_non_nullable
              as Distance?,
      defaultValueDuration: freezed == defaultValueDuration
          ? _value.defaultValueDuration
          : defaultValueDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      defaultValueHumanName: freezed == defaultValueHumanName
          ? _value.defaultValueHumanName
          : defaultValueHumanName // ignore: cast_nullable_to_non_nullable
              as HumanName?,
      defaultValueIdentifier: freezed == defaultValueIdentifier
          ? _value.defaultValueIdentifier
          : defaultValueIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      defaultValueMoney: freezed == defaultValueMoney
          ? _value.defaultValueMoney
          : defaultValueMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      defaultValuePeriod: freezed == defaultValuePeriod
          ? _value.defaultValuePeriod
          : defaultValuePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      defaultValueQuantity: freezed == defaultValueQuantity
          ? _value.defaultValueQuantity
          : defaultValueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      defaultValueRange: freezed == defaultValueRange
          ? _value.defaultValueRange
          : defaultValueRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      defaultValueRatio: freezed == defaultValueRatio
          ? _value.defaultValueRatio
          : defaultValueRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      defaultValueReference: freezed == defaultValueReference
          ? _value.defaultValueReference
          : defaultValueReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      defaultValueSampledData: freezed == defaultValueSampledData
          ? _value.defaultValueSampledData
          : defaultValueSampledData // ignore: cast_nullable_to_non_nullable
              as SampledData?,
      defaultValueSignature: freezed == defaultValueSignature
          ? _value.defaultValueSignature
          : defaultValueSignature // ignore: cast_nullable_to_non_nullable
              as Signature?,
      defaultValueTiming: freezed == defaultValueTiming
          ? _value.defaultValueTiming
          : defaultValueTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      defaultValueContactDetail: freezed == defaultValueContactDetail
          ? _value.defaultValueContactDetail
          : defaultValueContactDetail // ignore: cast_nullable_to_non_nullable
              as ContactDetail?,
      defaultValueContributor: freezed == defaultValueContributor
          ? _value.defaultValueContributor
          : defaultValueContributor // ignore: cast_nullable_to_non_nullable
              as Contributor?,
      defaultValueDataRequirement: freezed == defaultValueDataRequirement
          ? _value.defaultValueDataRequirement
          : defaultValueDataRequirement // ignore: cast_nullable_to_non_nullable
              as DataRequirement?,
      defaultValueExpression: freezed == defaultValueExpression
          ? _value.defaultValueExpression
          : defaultValueExpression // ignore: cast_nullable_to_non_nullable
              as FhirExpression?,
      defaultValueParameterDefinition: freezed ==
              defaultValueParameterDefinition
          ? _value.defaultValueParameterDefinition
          : defaultValueParameterDefinition // ignore: cast_nullable_to_non_nullable
              as ParameterDefinition?,
      defaultValueRelatedArtifact: freezed == defaultValueRelatedArtifact
          ? _value.defaultValueRelatedArtifact
          : defaultValueRelatedArtifact // ignore: cast_nullable_to_non_nullable
              as RelatedArtifact?,
      defaultValueTriggerDefinition: freezed == defaultValueTriggerDefinition
          ? _value.defaultValueTriggerDefinition
          : defaultValueTriggerDefinition // ignore: cast_nullable_to_non_nullable
              as TriggerDefinition?,
      defaultValueUsageContext: freezed == defaultValueUsageContext
          ? _value.defaultValueUsageContext
          : defaultValueUsageContext // ignore: cast_nullable_to_non_nullable
              as UsageContext?,
      defaultValueDosage: freezed == defaultValueDosage
          ? _value.defaultValueDosage
          : defaultValueDosage // ignore: cast_nullable_to_non_nullable
              as Dosage?,
      defaultValueMeta: freezed == defaultValueMeta
          ? _value.defaultValueMeta
          : defaultValueMeta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      element: freezed == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as String?,
      elementElement: freezed == elementElement
          ? _value.elementElement
          : elementElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      listMode: freezed == listMode
          ? _value.listMode
          : listMode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      listModeElement: freezed == listModeElement
          ? _value.listModeElement
          : listModeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      variable: freezed == variable
          ? _value.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      variableElement: freezed == variableElement
          ? _value.variableElement
          : variableElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      conditionElement: freezed == conditionElement
          ? _value.conditionElement
          : conditionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      check: freezed == check
          ? _value.check
          : check // ignore: cast_nullable_to_non_nullable
              as String?,
      checkElement: freezed == checkElement
          ? _value.checkElement
          : checkElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      logMessage: freezed == logMessage
          ? _value.logMessage
          : logMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      logMessageElement: freezed == logMessageElement
          ? _value.logMessageElement
          : logMessageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructureMapSourceImpl extends _StructureMapSource {
  _$StructureMapSourceImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.context,
      @JsonKey(name: '_context') this.contextElement,
      this.min,
      @JsonKey(name: '_min') this.minElement,
      this.max,
      @JsonKey(name: '_max') this.maxElement,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.defaultValueBase64Binary,
      @JsonKey(name: '_defaultValueBase64Binary')
      this.defaultValueBase64BinaryElement,
      this.defaultValueBoolean,
      @JsonKey(name: '_defaultValueBoolean') this.defaultValueBooleanElement,
      this.defaultValueCanonical,
      @JsonKey(name: '_defaultValueCanonical')
      this.defaultValueCanonicalElement,
      this.defaultValueCode,
      @JsonKey(name: '_defaultValueCode') this.defaultValueCodeElement,
      this.defaultValueDate,
      @JsonKey(name: '_defaultValueDate') this.defaultValueDateElement,
      this.defaultValueDateTime,
      @JsonKey(name: '_defaultValueDateTime') this.defaultValueDateTimeElement,
      this.defaultValueDecimal,
      @JsonKey(name: '_defaultValueDecimal') this.defaultValueDecimalElement,
      this.defaultValueId,
      @JsonKey(name: '_defaultValueId') this.defaultValueIdElement,
      this.defaultValueInstant,
      @JsonKey(name: '_defaultValueInstant') this.defaultValueInstantElement,
      this.defaultValueInteger,
      @JsonKey(name: '_defaultValueInteger') this.defaultValueIntegerElement,
      this.defaultValueMarkdown,
      @JsonKey(name: '_defaultValueMarkdown') this.defaultValueMarkdownElement,
      this.defaultValueOid,
      @JsonKey(name: '_defaultValueOid') this.defaultValueOidElement,
      this.defaultValuePositiveInt,
      @JsonKey(name: '_defaultValuePositiveInt')
      this.defaultValuePositiveIntElement,
      this.defaultValueString,
      @JsonKey(name: '_defaultValueString') this.defaultValueStringElement,
      this.defaultValueTime,
      @JsonKey(name: '_defaultValueTime') this.defaultValueTimeElement,
      this.defaultValueUnsignedInt,
      @JsonKey(name: '_defaultValueUnsignedInt')
      this.defaultValueUnsignedIntElement,
      this.defaultValueUri,
      @JsonKey(name: '_defaultValueUri') this.defaultValueUriElement,
      this.defaultValueUrl,
      @JsonKey(name: '_defaultValueUrl') this.defaultValueUrlElement,
      this.defaultValueUuid,
      @JsonKey(name: '_defaultValueUuid') this.defaultValueUuidElement,
      this.defaultValueAddress,
      this.defaultValueAge,
      this.defaultValueAnnotation,
      this.defaultValueAttachment,
      this.defaultValueCodeableConcept,
      this.defaultValueCoding,
      this.defaultValueContactPoint,
      this.defaultValueCount,
      this.defaultValueDistance,
      this.defaultValueDuration,
      this.defaultValueHumanName,
      this.defaultValueIdentifier,
      this.defaultValueMoney,
      this.defaultValuePeriod,
      this.defaultValueQuantity,
      this.defaultValueRange,
      this.defaultValueRatio,
      this.defaultValueReference,
      this.defaultValueSampledData,
      this.defaultValueSignature,
      this.defaultValueTiming,
      this.defaultValueContactDetail,
      this.defaultValueContributor,
      this.defaultValueDataRequirement,
      this.defaultValueExpression,
      this.defaultValueParameterDefinition,
      this.defaultValueRelatedArtifact,
      this.defaultValueTriggerDefinition,
      this.defaultValueUsageContext,
      this.defaultValueDosage,
      this.defaultValueMeta,
      this.element,
      @JsonKey(name: '_element') this.elementElement,
      this.listMode,
      @JsonKey(name: '_listMode') this.listModeElement,
      this.variable,
      @JsonKey(name: '_variable') this.variableElement,
      this.condition,
      @JsonKey(name: '_condition') this.conditionElement,
      this.check,
      @JsonKey(name: '_check') this.checkElement,
      this.logMessage,
      @JsonKey(name: '_logMessage') this.logMessageElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$StructureMapSourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$StructureMapSourceImplFromJson(json);

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

  /// [context] Type or variable this rule applies to.
  @override
  final FhirId? context;

  /// [contextElement] Extensions for context
  @override
  @JsonKey(name: '_context')
  final PrimitiveElement? contextElement;

  /// [min] Specified minimum cardinality for the element. This is optional; if
  ///  present, it acts an implicit check on the input content.
  @override
  final FhirInteger? min;

  /// [minElement] Extensions for min
  @override
  @JsonKey(name: '_min')
  final PrimitiveElement? minElement;

  /// [max] Specified maximum cardinality for the element - a number or a "*".
  /// This is optional; if present, it acts an implicit check on the input
  ///  content (* just serves as documentation; it's the default value).
  @override
  final String? max;

  /// [maxElement] Extensions for max
  @override
  @JsonKey(name: '_max')
  final PrimitiveElement? maxElement;

  /// [type] Specified type for the element. This works as a condition on the
  ///  mapping - use for polymorphic elements.
  @override
  final String? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [defaultValueBase64Binary] A value to use if there is no existing value
  ///  in the source object.
  @override
  final FhirBase64Binary? defaultValueBase64Binary;
  @override
  @JsonKey(name: '_defaultValueBase64Binary')
  final PrimitiveElement? defaultValueBase64BinaryElement;

  /// [defaultValueBoolean] A value to use if there is no existing value in the
  ///  source object.
  @override
  final FhirBoolean? defaultValueBoolean;

  /// [defaultValueBooleanElement] Extensions for defaultValueBoolean
  @override
  @JsonKey(name: '_defaultValueBoolean')
  final PrimitiveElement? defaultValueBooleanElement;

  /// [defaultValueCanonical] A value to use if there is no existing value in
  ///  the source object.
  @override
  final FhirCanonical? defaultValueCanonical;
  @override
  @JsonKey(name: '_defaultValueCanonical')
  final PrimitiveElement? defaultValueCanonicalElement;

  /// [defaultValueCode] A value to use if there is no existing value in the
  ///  source object.
  @override
  final FhirCode? defaultValueCode;

  /// [defaultValueCodeElement] Extensions for defaultValueCode
  @override
  @JsonKey(name: '_defaultValueCode')
  final PrimitiveElement? defaultValueCodeElement;

  /// [defaultValueDate] A value to use if there is no existing value in the
  ///  source object.
  @override
  final FhirDate? defaultValueDate;

  /// [defaultValueDateElement] Extensions for defaultValueDate
  @override
  @JsonKey(name: '_defaultValueDate')
  final PrimitiveElement? defaultValueDateElement;

  /// [defaultValueDateTime] A value to use if there is no existing value in
  ///  the source object.
  @override
  final FhirDateTime? defaultValueDateTime;
  @override
  @JsonKey(name: '_defaultValueDateTime')
  final PrimitiveElement? defaultValueDateTimeElement;

  /// [defaultValueDecimal] A value to use if there is no existing value in the
  ///  source object.
  @override
  final FhirDecimal? defaultValueDecimal;

  /// [defaultValueDecimalElement] Extensions for defaultValueDecimal
  @override
  @JsonKey(name: '_defaultValueDecimal')
  final PrimitiveElement? defaultValueDecimalElement;

  /// [defaultValueId] A value to use if there is no existing value in the
  ///  source object.
  @override
  final FhirId? defaultValueId;

  /// [defaultValueIdElement] Extensions for defaultValueId
  @override
  @JsonKey(name: '_defaultValueId')
  final PrimitiveElement? defaultValueIdElement;

  /// [defaultValueInstant] A value to use if there is no existing value in the
  ///  source object.
  @override
  final FhirInstant? defaultValueInstant;

  /// [defaultValueInstantElement] Extensions for defaultValueInstant
  @override
  @JsonKey(name: '_defaultValueInstant')
  final PrimitiveElement? defaultValueInstantElement;

  /// [defaultValueInteger] A value to use if there is no existing value in the
  ///  source object.
  @override
  final FhirInteger? defaultValueInteger;

  /// [defaultValueIntegerElement] Extensions for defaultValueInteger
  @override
  @JsonKey(name: '_defaultValueInteger')
  final PrimitiveElement? defaultValueIntegerElement;

  /// [defaultValueMarkdown] A value to use if there is no existing value in
  ///  the source object.
  @override
  final FhirMarkdown? defaultValueMarkdown;
  @override
  @JsonKey(name: '_defaultValueMarkdown')
  final PrimitiveElement? defaultValueMarkdownElement;

  /// [defaultValueOid] A value to use if there is no existing value in the
  ///  source object.
  @override
  final FhirOid? defaultValueOid;

  /// [defaultValueOidElement] Extensions for defaultValueOid
  @override
  @JsonKey(name: '_defaultValueOid')
  final PrimitiveElement? defaultValueOidElement;

  /// [defaultValuePositiveInt] A value to use if there is no existing value in
  ///  the source object.
  @override
  final FhirPositiveInt? defaultValuePositiveInt;
  @override
  @JsonKey(name: '_defaultValuePositiveInt')
  final PrimitiveElement? defaultValuePositiveIntElement;

  /// [defaultValueString] A value to use if there is no existing value in the
  ///  source object.
  @override
  final String? defaultValueString;

  /// [defaultValueStringElement] Extensions for defaultValueString
  @override
  @JsonKey(name: '_defaultValueString')
  final PrimitiveElement? defaultValueStringElement;

  /// [defaultValueTime] A value to use if there is no existing value in the
  ///  source object.
  @override
  final FhirTime? defaultValueTime;

  /// [defaultValueTimeElement] Extensions for defaultValueTime
  @override
  @JsonKey(name: '_defaultValueTime')
  final PrimitiveElement? defaultValueTimeElement;

  /// [defaultValueUnsignedInt] A value to use if there is no existing value in
  ///  the source object.
  @override
  final FhirUnsignedInt? defaultValueUnsignedInt;
  @override
  @JsonKey(name: '_defaultValueUnsignedInt')
  final PrimitiveElement? defaultValueUnsignedIntElement;

  /// [defaultValueUri] A value to use if there is no existing value in the
  ///  source object.
  @override
  final FhirUri? defaultValueUri;

  /// [defaultValueUriElement] Extensions for defaultValueUri
  @override
  @JsonKey(name: '_defaultValueUri')
  final PrimitiveElement? defaultValueUriElement;

  /// [defaultValueUrl] A value to use if there is no existing value in the
  ///  source object.
  @override
  final FhirUrl? defaultValueUrl;

  /// [defaultValueUrlElement] Extensions for defaultValueUrl
  @override
  @JsonKey(name: '_defaultValueUrl')
  final PrimitiveElement? defaultValueUrlElement;

  /// [defaultValueUuid] A value to use if there is no existing value in the
  ///  source object.
  @override
  final FhirUuid? defaultValueUuid;

  /// [defaultValueUuidElement] Extensions for defaultValueUuid
  @override
  @JsonKey(name: '_defaultValueUuid')
  final PrimitiveElement? defaultValueUuidElement;

  /// [defaultValueAddress] A value to use if there is no existing value in the
  ///  source object.
  @override
  final Address? defaultValueAddress;

  /// [defaultValueAge] A value to use if there is no existing value in the
  ///  source object.
  @override
  final Age? defaultValueAge;

  /// [defaultValueAnnotation] A value to use if there is no existing value in
  ///  the source object.
  @override
  final Annotation? defaultValueAnnotation;

  /// [defaultValueAttachment] A value to use if there is no existing value in
  ///  the source object.
  @override
  final Attachment? defaultValueAttachment;

  /// [defaultValueCodeableConcept] A value to use if there is no existing
  ///  value in the source object.
  @override
  final CodeableConcept? defaultValueCodeableConcept;

  /// [defaultValueCoding] A value to use if there is no existing value in the
  ///  source object.
  @override
  final Coding? defaultValueCoding;

  /// [defaultValueContactPoint] A value to use if there is no existing value
  ///  in the source object.
  @override
  final ContactPoint? defaultValueContactPoint;

  /// [defaultValueCount] A value to use if there is no existing value in the
  ///  source object.
  @override
  final Count? defaultValueCount;

  /// [defaultValueDistance] A value to use if there is no existing value in
  ///  the source object.
  @override
  final Distance? defaultValueDistance;

  /// [defaultValueDuration] A value to use if there is no existing value in
  ///  the source object.
  @override
  final FhirDuration? defaultValueDuration;

  /// [defaultValueHumanName] A value to use if there is no existing value in
  ///  the source object.
  @override
  final HumanName? defaultValueHumanName;

  /// [defaultValueIdentifier] A value to use if there is no existing value in
  ///  the source object.
  @override
  final Identifier? defaultValueIdentifier;

  /// [defaultValueMoney] A value to use if there is no existing value in the
  ///  source object.
  @override
  final Money? defaultValueMoney;

  /// [defaultValuePeriod] A value to use if there is no existing value in the
  ///  source object.
  @override
  final Period? defaultValuePeriod;

  /// [defaultValueQuantity] A value to use if there is no existing value in
  ///  the source object.
  @override
  final Quantity? defaultValueQuantity;

  /// [defaultValueRange] A value to use if there is no existing value in the
  ///  source object.
  @override
  final Range? defaultValueRange;

  /// [defaultValueRatio] A value to use if there is no existing value in the
  ///  source object.
  @override
  final Ratio? defaultValueRatio;

  /// [defaultValueReference] A value to use if there is no existing value in
  ///  the source object.
  @override
  final Reference? defaultValueReference;

  /// [defaultValueSampledData] A value to use if there is no existing value in
  ///  the source object.
  @override
  final SampledData? defaultValueSampledData;

  /// [defaultValueSignature] A value to use if there is no existing value in
  ///  the source object.
  @override
  final Signature? defaultValueSignature;

  /// [defaultValueTiming] A value to use if there is no existing value in the
  ///  source object.
  @override
  final Timing? defaultValueTiming;

  /// [defaultValueContactDetail] A value to use if there is no existing value
  ///  in the source object.
  @override
  final ContactDetail? defaultValueContactDetail;

  /// [defaultValueContributor] A value to use if there is no existing value in
  ///  the source object.
  @override
  final Contributor? defaultValueContributor;

  /// [defaultValueDataRequirement] A value to use if there is no existing
  ///  value in the source object.
  @override
  final DataRequirement? defaultValueDataRequirement;

  /// [defaultValueExpression] A value to use if there is no existing value in
  ///  the source object.
  @override
  final FhirExpression? defaultValueExpression;

  /// [defaultValueParameterDefinition] A value to use if there is no existing
  ///  value in the source object.
  @override
  final ParameterDefinition? defaultValueParameterDefinition;

  /// [defaultValueRelatedArtifact] A value to use if there is no existing
  ///  value in the source object.
  @override
  final RelatedArtifact? defaultValueRelatedArtifact;

  /// [defaultValueTriggerDefinition] A value to use if there is no existing
  ///  value in the source object.
  @override
  final TriggerDefinition? defaultValueTriggerDefinition;

  /// [defaultValueUsageContext] A value to use if there is no existing value
  ///  in the source object.
  @override
  final UsageContext? defaultValueUsageContext;

  /// [defaultValueDosage] A value to use if there is no existing value in the
  ///  source object.
  @override
  final Dosage? defaultValueDosage;

  /// [defaultValueMeta] A value to use if there is no existing value in the
  ///  source object.
  @override
  final FhirMeta? defaultValueMeta;

  /// [element] Optional field for this source.
  @override
  final String? element;

  /// [elementElement] Extensions for element
  @override
  @JsonKey(name: '_element')
  final PrimitiveElement? elementElement;

  /// [listMode] How to handle the list mode for this element.
  @override
  final FhirCode? listMode;

  /// [listModeElement] Extensions for listMode
  @override
  @JsonKey(name: '_listMode')
  final PrimitiveElement? listModeElement;

  /// [variable] Named context for field, if a field is specified.
  @override
  final FhirId? variable;

  /// [variableElement] Extensions for variable
  @override
  @JsonKey(name: '_variable')
  final PrimitiveElement? variableElement;

  /// [condition] FHIRPath expression  - must be true or the rule does not
  ///  apply.
  @override
  final String? condition;

  /// [conditionElement] Extensions for condition
  @override
  @JsonKey(name: '_condition')
  final PrimitiveElement? conditionElement;

  /// [check] FHIRPath expression  - must be true or the mapping engine throws
  ///  an error instead of completing.
  @override
  final String? check;

  /// [checkElement] Extensions for check
  @override
  @JsonKey(name: '_check')
  final PrimitiveElement? checkElement;

  /// [logMessage] A FHIRPath expression which specifies a message to put in
  ///  the transform log when content matching the source rule is found.
  @override
  final String? logMessage;

  /// [logMessageElement] Extensions for logMessage
  @override
  @JsonKey(name: '_logMessage')
  final PrimitiveElement? logMessageElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructureMapSourceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.contextElement, contextElement) ||
                other.contextElement == contextElement) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.minElement, minElement) ||
                other.minElement == minElement) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.maxElement, maxElement) ||
                other.maxElement == maxElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.defaultValueBase64Binary, defaultValueBase64Binary) ||
                other.defaultValueBase64Binary == defaultValueBase64Binary) &&
            (identical(other.defaultValueBase64BinaryElement, defaultValueBase64BinaryElement) ||
                other.defaultValueBase64BinaryElement ==
                    defaultValueBase64BinaryElement) &&
            (identical(other.defaultValueBoolean, defaultValueBoolean) ||
                other.defaultValueBoolean == defaultValueBoolean) &&
            (identical(other.defaultValueBooleanElement, defaultValueBooleanElement) ||
                other.defaultValueBooleanElement ==
                    defaultValueBooleanElement) &&
            (identical(other.defaultValueCanonical, defaultValueCanonical) ||
                other.defaultValueCanonical == defaultValueCanonical) &&
            (identical(other.defaultValueCanonicalElement, defaultValueCanonicalElement) ||
                other.defaultValueCanonicalElement ==
                    defaultValueCanonicalElement) &&
            (identical(other.defaultValueCode, defaultValueCode) ||
                other.defaultValueCode == defaultValueCode) &&
            (identical(other.defaultValueCodeElement, defaultValueCodeElement) ||
                other.defaultValueCodeElement == defaultValueCodeElement) &&
            (identical(other.defaultValueDate, defaultValueDate) ||
                other.defaultValueDate == defaultValueDate) &&
            (identical(other.defaultValueDateElement, defaultValueDateElement) ||
                other.defaultValueDateElement == defaultValueDateElement) &&
            (identical(other.defaultValueDateTime, defaultValueDateTime) ||
                other.defaultValueDateTime == defaultValueDateTime) &&
            (identical(other.defaultValueDateTimeElement, defaultValueDateTimeElement) ||
                other.defaultValueDateTimeElement ==
                    defaultValueDateTimeElement) &&
            (identical(other.defaultValueDecimal, defaultValueDecimal) ||
                other.defaultValueDecimal == defaultValueDecimal) &&
            (identical(
                    other.defaultValueDecimalElement, defaultValueDecimalElement) ||
                other.defaultValueDecimalElement == defaultValueDecimalElement) &&
            (identical(other.defaultValueId, defaultValueId) || other.defaultValueId == defaultValueId) &&
            (identical(other.defaultValueIdElement, defaultValueIdElement) || other.defaultValueIdElement == defaultValueIdElement) &&
            (identical(other.defaultValueInstant, defaultValueInstant) || other.defaultValueInstant == defaultValueInstant) &&
            (identical(other.defaultValueInstantElement, defaultValueInstantElement) || other.defaultValueInstantElement == defaultValueInstantElement) &&
            (identical(other.defaultValueInteger, defaultValueInteger) || other.defaultValueInteger == defaultValueInteger) &&
            (identical(other.defaultValueIntegerElement, defaultValueIntegerElement) || other.defaultValueIntegerElement == defaultValueIntegerElement) &&
            (identical(other.defaultValueMarkdown, defaultValueMarkdown) || other.defaultValueMarkdown == defaultValueMarkdown) &&
            (identical(other.defaultValueMarkdownElement, defaultValueMarkdownElement) || other.defaultValueMarkdownElement == defaultValueMarkdownElement) &&
            (identical(other.defaultValueOid, defaultValueOid) || other.defaultValueOid == defaultValueOid) &&
            (identical(other.defaultValueOidElement, defaultValueOidElement) || other.defaultValueOidElement == defaultValueOidElement) &&
            (identical(other.defaultValuePositiveInt, defaultValuePositiveInt) || other.defaultValuePositiveInt == defaultValuePositiveInt) &&
            (identical(other.defaultValuePositiveIntElement, defaultValuePositiveIntElement) || other.defaultValuePositiveIntElement == defaultValuePositiveIntElement) &&
            (identical(other.defaultValueString, defaultValueString) || other.defaultValueString == defaultValueString) &&
            (identical(other.defaultValueStringElement, defaultValueStringElement) || other.defaultValueStringElement == defaultValueStringElement) &&
            (identical(other.defaultValueTime, defaultValueTime) || other.defaultValueTime == defaultValueTime) &&
            (identical(other.defaultValueTimeElement, defaultValueTimeElement) || other.defaultValueTimeElement == defaultValueTimeElement) &&
            (identical(other.defaultValueUnsignedInt, defaultValueUnsignedInt) || other.defaultValueUnsignedInt == defaultValueUnsignedInt) &&
            (identical(other.defaultValueUnsignedIntElement, defaultValueUnsignedIntElement) || other.defaultValueUnsignedIntElement == defaultValueUnsignedIntElement) &&
            (identical(other.defaultValueUri, defaultValueUri) || other.defaultValueUri == defaultValueUri) &&
            (identical(other.defaultValueUriElement, defaultValueUriElement) || other.defaultValueUriElement == defaultValueUriElement) &&
            (identical(other.defaultValueUrl, defaultValueUrl) || other.defaultValueUrl == defaultValueUrl) &&
            (identical(other.defaultValueUrlElement, defaultValueUrlElement) || other.defaultValueUrlElement == defaultValueUrlElement) &&
            (identical(other.defaultValueUuid, defaultValueUuid) || other.defaultValueUuid == defaultValueUuid) &&
            (identical(other.defaultValueUuidElement, defaultValueUuidElement) || other.defaultValueUuidElement == defaultValueUuidElement) &&
            (identical(other.defaultValueAddress, defaultValueAddress) || other.defaultValueAddress == defaultValueAddress) &&
            (identical(other.defaultValueAge, defaultValueAge) || other.defaultValueAge == defaultValueAge) &&
            (identical(other.defaultValueAnnotation, defaultValueAnnotation) || other.defaultValueAnnotation == defaultValueAnnotation) &&
            (identical(other.defaultValueAttachment, defaultValueAttachment) || other.defaultValueAttachment == defaultValueAttachment) &&
            (identical(other.defaultValueCodeableConcept, defaultValueCodeableConcept) || other.defaultValueCodeableConcept == defaultValueCodeableConcept) &&
            (identical(other.defaultValueCoding, defaultValueCoding) || other.defaultValueCoding == defaultValueCoding) &&
            (identical(other.defaultValueContactPoint, defaultValueContactPoint) || other.defaultValueContactPoint == defaultValueContactPoint) &&
            (identical(other.defaultValueCount, defaultValueCount) || other.defaultValueCount == defaultValueCount) &&
            (identical(other.defaultValueDistance, defaultValueDistance) || other.defaultValueDistance == defaultValueDistance) &&
            (identical(other.defaultValueDuration, defaultValueDuration) || other.defaultValueDuration == defaultValueDuration) &&
            (identical(other.defaultValueHumanName, defaultValueHumanName) || other.defaultValueHumanName == defaultValueHumanName) &&
            (identical(other.defaultValueIdentifier, defaultValueIdentifier) || other.defaultValueIdentifier == defaultValueIdentifier) &&
            (identical(other.defaultValueMoney, defaultValueMoney) || other.defaultValueMoney == defaultValueMoney) &&
            (identical(other.defaultValuePeriod, defaultValuePeriod) || other.defaultValuePeriod == defaultValuePeriod) &&
            (identical(other.defaultValueQuantity, defaultValueQuantity) || other.defaultValueQuantity == defaultValueQuantity) &&
            (identical(other.defaultValueRange, defaultValueRange) || other.defaultValueRange == defaultValueRange) &&
            (identical(other.defaultValueRatio, defaultValueRatio) || other.defaultValueRatio == defaultValueRatio) &&
            (identical(other.defaultValueReference, defaultValueReference) || other.defaultValueReference == defaultValueReference) &&
            (identical(other.defaultValueSampledData, defaultValueSampledData) || other.defaultValueSampledData == defaultValueSampledData) &&
            (identical(other.defaultValueSignature, defaultValueSignature) || other.defaultValueSignature == defaultValueSignature) &&
            (identical(other.defaultValueTiming, defaultValueTiming) || other.defaultValueTiming == defaultValueTiming) &&
            (identical(other.defaultValueContactDetail, defaultValueContactDetail) || other.defaultValueContactDetail == defaultValueContactDetail) &&
            (identical(other.defaultValueContributor, defaultValueContributor) || other.defaultValueContributor == defaultValueContributor) &&
            (identical(other.defaultValueDataRequirement, defaultValueDataRequirement) || other.defaultValueDataRequirement == defaultValueDataRequirement) &&
            (identical(other.defaultValueExpression, defaultValueExpression) || other.defaultValueExpression == defaultValueExpression) &&
            (identical(other.defaultValueParameterDefinition, defaultValueParameterDefinition) || other.defaultValueParameterDefinition == defaultValueParameterDefinition) &&
            (identical(other.defaultValueRelatedArtifact, defaultValueRelatedArtifact) || other.defaultValueRelatedArtifact == defaultValueRelatedArtifact) &&
            (identical(other.defaultValueTriggerDefinition, defaultValueTriggerDefinition) || other.defaultValueTriggerDefinition == defaultValueTriggerDefinition) &&
            (identical(other.defaultValueUsageContext, defaultValueUsageContext) || other.defaultValueUsageContext == defaultValueUsageContext) &&
            (identical(other.defaultValueDosage, defaultValueDosage) || other.defaultValueDosage == defaultValueDosage) &&
            (identical(other.defaultValueMeta, defaultValueMeta) || other.defaultValueMeta == defaultValueMeta) &&
            (identical(other.element, element) || other.element == element) &&
            (identical(other.elementElement, elementElement) || other.elementElement == elementElement) &&
            (identical(other.listMode, listMode) || other.listMode == listMode) &&
            (identical(other.listModeElement, listModeElement) || other.listModeElement == listModeElement) &&
            (identical(other.variable, variable) || other.variable == variable) &&
            (identical(other.variableElement, variableElement) || other.variableElement == variableElement) &&
            (identical(other.condition, condition) || other.condition == condition) &&
            (identical(other.conditionElement, conditionElement) || other.conditionElement == conditionElement) &&
            (identical(other.check, check) || other.check == check) &&
            (identical(other.checkElement, checkElement) || other.checkElement == checkElement) &&
            (identical(other.logMessage, logMessage) || other.logMessage == logMessage) &&
            (identical(other.logMessageElement, logMessageElement) || other.logMessageElement == logMessageElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        context,
        contextElement,
        min,
        minElement,
        max,
        maxElement,
        type,
        typeElement,
        defaultValueBase64Binary,
        defaultValueBase64BinaryElement,
        defaultValueBoolean,
        defaultValueBooleanElement,
        defaultValueCanonical,
        defaultValueCanonicalElement,
        defaultValueCode,
        defaultValueCodeElement,
        defaultValueDate,
        defaultValueDateElement,
        defaultValueDateTime,
        defaultValueDateTimeElement,
        defaultValueDecimal,
        defaultValueDecimalElement,
        defaultValueId,
        defaultValueIdElement,
        defaultValueInstant,
        defaultValueInstantElement,
        defaultValueInteger,
        defaultValueIntegerElement,
        defaultValueMarkdown,
        defaultValueMarkdownElement,
        defaultValueOid,
        defaultValueOidElement,
        defaultValuePositiveInt,
        defaultValuePositiveIntElement,
        defaultValueString,
        defaultValueStringElement,
        defaultValueTime,
        defaultValueTimeElement,
        defaultValueUnsignedInt,
        defaultValueUnsignedIntElement,
        defaultValueUri,
        defaultValueUriElement,
        defaultValueUrl,
        defaultValueUrlElement,
        defaultValueUuid,
        defaultValueUuidElement,
        defaultValueAddress,
        defaultValueAge,
        defaultValueAnnotation,
        defaultValueAttachment,
        defaultValueCodeableConcept,
        defaultValueCoding,
        defaultValueContactPoint,
        defaultValueCount,
        defaultValueDistance,
        defaultValueDuration,
        defaultValueHumanName,
        defaultValueIdentifier,
        defaultValueMoney,
        defaultValuePeriod,
        defaultValueQuantity,
        defaultValueRange,
        defaultValueRatio,
        defaultValueReference,
        defaultValueSampledData,
        defaultValueSignature,
        defaultValueTiming,
        defaultValueContactDetail,
        defaultValueContributor,
        defaultValueDataRequirement,
        defaultValueExpression,
        defaultValueParameterDefinition,
        defaultValueRelatedArtifact,
        defaultValueTriggerDefinition,
        defaultValueUsageContext,
        defaultValueDosage,
        defaultValueMeta,
        element,
        elementElement,
        listMode,
        listModeElement,
        variable,
        variableElement,
        condition,
        conditionElement,
        check,
        checkElement,
        logMessage,
        logMessageElement
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureMapSourceImplCopyWith<_$StructureMapSourceImpl> get copyWith =>
      __$$StructureMapSourceImplCopyWithImpl<_$StructureMapSourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructureMapSourceImplToJson(
      this,
    );
  }
}

abstract class _StructureMapSource extends StructureMapSource {
  factory _StructureMapSource(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirId? context,
      @JsonKey(name: '_context') final PrimitiveElement? contextElement,
      final FhirInteger? min,
      @JsonKey(name: '_min') final PrimitiveElement? minElement,
      final String? max,
      @JsonKey(name: '_max') final PrimitiveElement? maxElement,
      final String? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      final FhirBase64Binary? defaultValueBase64Binary,
      @JsonKey(name: '_defaultValueBase64Binary')
      final PrimitiveElement? defaultValueBase64BinaryElement,
      final FhirBoolean? defaultValueBoolean,
      @JsonKey(name: '_defaultValueBoolean')
      final PrimitiveElement? defaultValueBooleanElement,
      final FhirCanonical? defaultValueCanonical,
      @JsonKey(name: '_defaultValueCanonical')
      final PrimitiveElement? defaultValueCanonicalElement,
      final FhirCode? defaultValueCode,
      @JsonKey(name: '_defaultValueCode')
      final PrimitiveElement? defaultValueCodeElement,
      final FhirDate? defaultValueDate,
      @JsonKey(name: '_defaultValueDate')
      final PrimitiveElement? defaultValueDateElement,
      final FhirDateTime? defaultValueDateTime,
      @JsonKey(name: '_defaultValueDateTime')
      final PrimitiveElement? defaultValueDateTimeElement,
      final FhirDecimal? defaultValueDecimal,
      @JsonKey(name: '_defaultValueDecimal')
      final PrimitiveElement? defaultValueDecimalElement,
      final FhirId? defaultValueId,
      @JsonKey(name: '_defaultValueId')
      final PrimitiveElement? defaultValueIdElement,
      final FhirInstant? defaultValueInstant,
      @JsonKey(name: '_defaultValueInstant')
      final PrimitiveElement? defaultValueInstantElement,
      final FhirInteger? defaultValueInteger,
      @JsonKey(name: '_defaultValueInteger')
      final PrimitiveElement? defaultValueIntegerElement,
      final FhirMarkdown? defaultValueMarkdown,
      @JsonKey(name: '_defaultValueMarkdown')
      final PrimitiveElement? defaultValueMarkdownElement,
      final FhirOid? defaultValueOid,
      @JsonKey(name: '_defaultValueOid')
      final PrimitiveElement? defaultValueOidElement,
      final FhirPositiveInt? defaultValuePositiveInt,
      @JsonKey(name: '_defaultValuePositiveInt')
      final PrimitiveElement? defaultValuePositiveIntElement,
      final String? defaultValueString,
      @JsonKey(name: '_defaultValueString')
      final PrimitiveElement? defaultValueStringElement,
      final FhirTime? defaultValueTime,
      @JsonKey(name: '_defaultValueTime')
      final PrimitiveElement? defaultValueTimeElement,
      final FhirUnsignedInt? defaultValueUnsignedInt,
      @JsonKey(name: '_defaultValueUnsignedInt')
      final PrimitiveElement? defaultValueUnsignedIntElement,
      final FhirUri? defaultValueUri,
      @JsonKey(name: '_defaultValueUri')
      final PrimitiveElement? defaultValueUriElement,
      final FhirUrl? defaultValueUrl,
      @JsonKey(name: '_defaultValueUrl')
      final PrimitiveElement? defaultValueUrlElement,
      final FhirUuid? defaultValueUuid,
      @JsonKey(name: '_defaultValueUuid')
      final PrimitiveElement? defaultValueUuidElement,
      final Address? defaultValueAddress,
      final Age? defaultValueAge,
      final Annotation? defaultValueAnnotation,
      final Attachment? defaultValueAttachment,
      final CodeableConcept? defaultValueCodeableConcept,
      final Coding? defaultValueCoding,
      final ContactPoint? defaultValueContactPoint,
      final Count? defaultValueCount,
      final Distance? defaultValueDistance,
      final FhirDuration? defaultValueDuration,
      final HumanName? defaultValueHumanName,
      final Identifier? defaultValueIdentifier,
      final Money? defaultValueMoney,
      final Period? defaultValuePeriod,
      final Quantity? defaultValueQuantity,
      final Range? defaultValueRange,
      final Ratio? defaultValueRatio,
      final Reference? defaultValueReference,
      final SampledData? defaultValueSampledData,
      final Signature? defaultValueSignature,
      final Timing? defaultValueTiming,
      final ContactDetail? defaultValueContactDetail,
      final Contributor? defaultValueContributor,
      final DataRequirement? defaultValueDataRequirement,
      final FhirExpression? defaultValueExpression,
      final ParameterDefinition? defaultValueParameterDefinition,
      final RelatedArtifact? defaultValueRelatedArtifact,
      final TriggerDefinition? defaultValueTriggerDefinition,
      final UsageContext? defaultValueUsageContext,
      final Dosage? defaultValueDosage,
      final FhirMeta? defaultValueMeta,
      final String? element,
      @JsonKey(name: '_element') final PrimitiveElement? elementElement,
      final FhirCode? listMode,
      @JsonKey(name: '_listMode') final PrimitiveElement? listModeElement,
      final FhirId? variable,
      @JsonKey(name: '_variable') final PrimitiveElement? variableElement,
      final String? condition,
      @JsonKey(name: '_condition') final PrimitiveElement? conditionElement,
      final String? check,
      @JsonKey(name: '_check') final PrimitiveElement? checkElement,
      final String? logMessage,
      @JsonKey(name: '_logMessage')
      final PrimitiveElement? logMessageElement}) = _$StructureMapSourceImpl;
  _StructureMapSource._() : super._();

  factory _StructureMapSource.fromJson(Map<String, dynamic> json) =
      _$StructureMapSourceImpl.fromJson;

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

  /// [context] Type or variable this rule applies to.
  FhirId? get context;
  @override

  /// [contextElement] Extensions for context
  @JsonKey(name: '_context')
  PrimitiveElement? get contextElement;
  @override

  /// [min] Specified minimum cardinality for the element. This is optional; if
  ///  present, it acts an implicit check on the input content.
  FhirInteger? get min;
  @override

  /// [minElement] Extensions for min
  @JsonKey(name: '_min')
  PrimitiveElement? get minElement;
  @override

  /// [max] Specified maximum cardinality for the element - a number or a "*".
  /// This is optional; if present, it acts an implicit check on the input
  ///  content (* just serves as documentation; it's the default value).
  String? get max;
  @override

  /// [maxElement] Extensions for max
  @JsonKey(name: '_max')
  PrimitiveElement? get maxElement;
  @override

  /// [type] Specified type for the element. This works as a condition on the
  ///  mapping - use for polymorphic elements.
  String? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [defaultValueBase64Binary] A value to use if there is no existing value
  ///  in the source object.
  FhirBase64Binary? get defaultValueBase64Binary;
  @override
  @JsonKey(name: '_defaultValueBase64Binary')
  PrimitiveElement? get defaultValueBase64BinaryElement;
  @override

  /// [defaultValueBoolean] A value to use if there is no existing value in the
  ///  source object.
  FhirBoolean? get defaultValueBoolean;
  @override

  /// [defaultValueBooleanElement] Extensions for defaultValueBoolean
  @JsonKey(name: '_defaultValueBoolean')
  PrimitiveElement? get defaultValueBooleanElement;
  @override

  /// [defaultValueCanonical] A value to use if there is no existing value in
  ///  the source object.
  FhirCanonical? get defaultValueCanonical;
  @override
  @JsonKey(name: '_defaultValueCanonical')
  PrimitiveElement? get defaultValueCanonicalElement;
  @override

  /// [defaultValueCode] A value to use if there is no existing value in the
  ///  source object.
  FhirCode? get defaultValueCode;
  @override

  /// [defaultValueCodeElement] Extensions for defaultValueCode
  @JsonKey(name: '_defaultValueCode')
  PrimitiveElement? get defaultValueCodeElement;
  @override

  /// [defaultValueDate] A value to use if there is no existing value in the
  ///  source object.
  FhirDate? get defaultValueDate;
  @override

  /// [defaultValueDateElement] Extensions for defaultValueDate
  @JsonKey(name: '_defaultValueDate')
  PrimitiveElement? get defaultValueDateElement;
  @override

  /// [defaultValueDateTime] A value to use if there is no existing value in
  ///  the source object.
  FhirDateTime? get defaultValueDateTime;
  @override
  @JsonKey(name: '_defaultValueDateTime')
  PrimitiveElement? get defaultValueDateTimeElement;
  @override

  /// [defaultValueDecimal] A value to use if there is no existing value in the
  ///  source object.
  FhirDecimal? get defaultValueDecimal;
  @override

  /// [defaultValueDecimalElement] Extensions for defaultValueDecimal
  @JsonKey(name: '_defaultValueDecimal')
  PrimitiveElement? get defaultValueDecimalElement;
  @override

  /// [defaultValueId] A value to use if there is no existing value in the
  ///  source object.
  FhirId? get defaultValueId;
  @override

  /// [defaultValueIdElement] Extensions for defaultValueId
  @JsonKey(name: '_defaultValueId')
  PrimitiveElement? get defaultValueIdElement;
  @override

  /// [defaultValueInstant] A value to use if there is no existing value in the
  ///  source object.
  FhirInstant? get defaultValueInstant;
  @override

  /// [defaultValueInstantElement] Extensions for defaultValueInstant
  @JsonKey(name: '_defaultValueInstant')
  PrimitiveElement? get defaultValueInstantElement;
  @override

  /// [defaultValueInteger] A value to use if there is no existing value in the
  ///  source object.
  FhirInteger? get defaultValueInteger;
  @override

  /// [defaultValueIntegerElement] Extensions for defaultValueInteger
  @JsonKey(name: '_defaultValueInteger')
  PrimitiveElement? get defaultValueIntegerElement;
  @override

  /// [defaultValueMarkdown] A value to use if there is no existing value in
  ///  the source object.
  FhirMarkdown? get defaultValueMarkdown;
  @override
  @JsonKey(name: '_defaultValueMarkdown')
  PrimitiveElement? get defaultValueMarkdownElement;
  @override

  /// [defaultValueOid] A value to use if there is no existing value in the
  ///  source object.
  FhirOid? get defaultValueOid;
  @override

  /// [defaultValueOidElement] Extensions for defaultValueOid
  @JsonKey(name: '_defaultValueOid')
  PrimitiveElement? get defaultValueOidElement;
  @override

  /// [defaultValuePositiveInt] A value to use if there is no existing value in
  ///  the source object.
  FhirPositiveInt? get defaultValuePositiveInt;
  @override
  @JsonKey(name: '_defaultValuePositiveInt')
  PrimitiveElement? get defaultValuePositiveIntElement;
  @override

  /// [defaultValueString] A value to use if there is no existing value in the
  ///  source object.
  String? get defaultValueString;
  @override

  /// [defaultValueStringElement] Extensions for defaultValueString
  @JsonKey(name: '_defaultValueString')
  PrimitiveElement? get defaultValueStringElement;
  @override

  /// [defaultValueTime] A value to use if there is no existing value in the
  ///  source object.
  FhirTime? get defaultValueTime;
  @override

  /// [defaultValueTimeElement] Extensions for defaultValueTime
  @JsonKey(name: '_defaultValueTime')
  PrimitiveElement? get defaultValueTimeElement;
  @override

  /// [defaultValueUnsignedInt] A value to use if there is no existing value in
  ///  the source object.
  FhirUnsignedInt? get defaultValueUnsignedInt;
  @override
  @JsonKey(name: '_defaultValueUnsignedInt')
  PrimitiveElement? get defaultValueUnsignedIntElement;
  @override

  /// [defaultValueUri] A value to use if there is no existing value in the
  ///  source object.
  FhirUri? get defaultValueUri;
  @override

  /// [defaultValueUriElement] Extensions for defaultValueUri
  @JsonKey(name: '_defaultValueUri')
  PrimitiveElement? get defaultValueUriElement;
  @override

  /// [defaultValueUrl] A value to use if there is no existing value in the
  ///  source object.
  FhirUrl? get defaultValueUrl;
  @override

  /// [defaultValueUrlElement] Extensions for defaultValueUrl
  @JsonKey(name: '_defaultValueUrl')
  PrimitiveElement? get defaultValueUrlElement;
  @override

  /// [defaultValueUuid] A value to use if there is no existing value in the
  ///  source object.
  FhirUuid? get defaultValueUuid;
  @override

  /// [defaultValueUuidElement] Extensions for defaultValueUuid
  @JsonKey(name: '_defaultValueUuid')
  PrimitiveElement? get defaultValueUuidElement;
  @override

  /// [defaultValueAddress] A value to use if there is no existing value in the
  ///  source object.
  Address? get defaultValueAddress;
  @override

  /// [defaultValueAge] A value to use if there is no existing value in the
  ///  source object.
  Age? get defaultValueAge;
  @override

  /// [defaultValueAnnotation] A value to use if there is no existing value in
  ///  the source object.
  Annotation? get defaultValueAnnotation;
  @override

  /// [defaultValueAttachment] A value to use if there is no existing value in
  ///  the source object.
  Attachment? get defaultValueAttachment;
  @override

  /// [defaultValueCodeableConcept] A value to use if there is no existing
  ///  value in the source object.
  CodeableConcept? get defaultValueCodeableConcept;
  @override

  /// [defaultValueCoding] A value to use if there is no existing value in the
  ///  source object.
  Coding? get defaultValueCoding;
  @override

  /// [defaultValueContactPoint] A value to use if there is no existing value
  ///  in the source object.
  ContactPoint? get defaultValueContactPoint;
  @override

  /// [defaultValueCount] A value to use if there is no existing value in the
  ///  source object.
  Count? get defaultValueCount;
  @override

  /// [defaultValueDistance] A value to use if there is no existing value in
  ///  the source object.
  Distance? get defaultValueDistance;
  @override

  /// [defaultValueDuration] A value to use if there is no existing value in
  ///  the source object.
  FhirDuration? get defaultValueDuration;
  @override

  /// [defaultValueHumanName] A value to use if there is no existing value in
  ///  the source object.
  HumanName? get defaultValueHumanName;
  @override

  /// [defaultValueIdentifier] A value to use if there is no existing value in
  ///  the source object.
  Identifier? get defaultValueIdentifier;
  @override

  /// [defaultValueMoney] A value to use if there is no existing value in the
  ///  source object.
  Money? get defaultValueMoney;
  @override

  /// [defaultValuePeriod] A value to use if there is no existing value in the
  ///  source object.
  Period? get defaultValuePeriod;
  @override

  /// [defaultValueQuantity] A value to use if there is no existing value in
  ///  the source object.
  Quantity? get defaultValueQuantity;
  @override

  /// [defaultValueRange] A value to use if there is no existing value in the
  ///  source object.
  Range? get defaultValueRange;
  @override

  /// [defaultValueRatio] A value to use if there is no existing value in the
  ///  source object.
  Ratio? get defaultValueRatio;
  @override

  /// [defaultValueReference] A value to use if there is no existing value in
  ///  the source object.
  Reference? get defaultValueReference;
  @override

  /// [defaultValueSampledData] A value to use if there is no existing value in
  ///  the source object.
  SampledData? get defaultValueSampledData;
  @override

  /// [defaultValueSignature] A value to use if there is no existing value in
  ///  the source object.
  Signature? get defaultValueSignature;
  @override

  /// [defaultValueTiming] A value to use if there is no existing value in the
  ///  source object.
  Timing? get defaultValueTiming;
  @override

  /// [defaultValueContactDetail] A value to use if there is no existing value
  ///  in the source object.
  ContactDetail? get defaultValueContactDetail;
  @override

  /// [defaultValueContributor] A value to use if there is no existing value in
  ///  the source object.
  Contributor? get defaultValueContributor;
  @override

  /// [defaultValueDataRequirement] A value to use if there is no existing
  ///  value in the source object.
  DataRequirement? get defaultValueDataRequirement;
  @override

  /// [defaultValueExpression] A value to use if there is no existing value in
  ///  the source object.
  FhirExpression? get defaultValueExpression;
  @override

  /// [defaultValueParameterDefinition] A value to use if there is no existing
  ///  value in the source object.
  ParameterDefinition? get defaultValueParameterDefinition;
  @override

  /// [defaultValueRelatedArtifact] A value to use if there is no existing
  ///  value in the source object.
  RelatedArtifact? get defaultValueRelatedArtifact;
  @override

  /// [defaultValueTriggerDefinition] A value to use if there is no existing
  ///  value in the source object.
  TriggerDefinition? get defaultValueTriggerDefinition;
  @override

  /// [defaultValueUsageContext] A value to use if there is no existing value
  ///  in the source object.
  UsageContext? get defaultValueUsageContext;
  @override

  /// [defaultValueDosage] A value to use if there is no existing value in the
  ///  source object.
  Dosage? get defaultValueDosage;
  @override

  /// [defaultValueMeta] A value to use if there is no existing value in the
  ///  source object.
  FhirMeta? get defaultValueMeta;
  @override

  /// [element] Optional field for this source.
  String? get element;
  @override

  /// [elementElement] Extensions for element
  @JsonKey(name: '_element')
  PrimitiveElement? get elementElement;
  @override

  /// [listMode] How to handle the list mode for this element.
  FhirCode? get listMode;
  @override

  /// [listModeElement] Extensions for listMode
  @JsonKey(name: '_listMode')
  PrimitiveElement? get listModeElement;
  @override

  /// [variable] Named context for field, if a field is specified.
  FhirId? get variable;
  @override

  /// [variableElement] Extensions for variable
  @JsonKey(name: '_variable')
  PrimitiveElement? get variableElement;
  @override

  /// [condition] FHIRPath expression  - must be true or the rule does not
  ///  apply.
  String? get condition;
  @override

  /// [conditionElement] Extensions for condition
  @JsonKey(name: '_condition')
  PrimitiveElement? get conditionElement;
  @override

  /// [check] FHIRPath expression  - must be true or the mapping engine throws
  ///  an error instead of completing.
  String? get check;
  @override

  /// [checkElement] Extensions for check
  @JsonKey(name: '_check')
  PrimitiveElement? get checkElement;
  @override

  /// [logMessage] A FHIRPath expression which specifies a message to put in
  ///  the transform log when content matching the source rule is found.
  String? get logMessage;
  @override

  /// [logMessageElement] Extensions for logMessage
  @JsonKey(name: '_logMessage')
  PrimitiveElement? get logMessageElement;
  @override
  @JsonKey(ignore: true)
  _$$StructureMapSourceImplCopyWith<_$StructureMapSourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StructureMapTarget _$StructureMapTargetFromJson(Map<String, dynamic> json) {
  return _StructureMapTarget.fromJson(json);
}

/// @nodoc
mixin _$StructureMapTarget {
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

  /// [context] Type or variable this rule applies to.
  FhirId? get context => throw _privateConstructorUsedError;

  /// [contextElement] Extensions for context
  @JsonKey(name: '_context')
  PrimitiveElement? get contextElement => throw _privateConstructorUsedError;

  /// [contextType] How to interpret the context.
  FhirCode? get contextType => throw _privateConstructorUsedError;

  /// [contextTypeElement] Extensions for contextType
  @JsonKey(name: '_contextType')
  PrimitiveElement? get contextTypeElement =>
      throw _privateConstructorUsedError;

  /// [element] Field to create in the context.
  String? get element => throw _privateConstructorUsedError;

  /// [elementElement] Extensions for element
  @JsonKey(name: '_element')
  PrimitiveElement? get elementElement => throw _privateConstructorUsedError;

  /// [variable] Named context for field, if desired, and a field is specified.
  FhirId? get variable => throw _privateConstructorUsedError;

  /// [variableElement] Extensions for variable
  @JsonKey(name: '_variable')
  PrimitiveElement? get variableElement => throw _privateConstructorUsedError;

  /// [listMode] If field is a list, how to manage the list.
  List<FhirCode>? get listMode => throw _privateConstructorUsedError;

  /// [listModeElement] Extensions for listMode
  @JsonKey(name: '_listMode')
  List<PrimitiveElement>? get listModeElement =>
      throw _privateConstructorUsedError;

  /// [listRuleId] Internal rule reference for shared list items.
  FhirId? get listRuleId => throw _privateConstructorUsedError;

  /// [listRuleIdElement] Extensions for listRuleId
  @JsonKey(name: '_listRuleId')
  PrimitiveElement? get listRuleIdElement => throw _privateConstructorUsedError;

  /// [transform] How the data is copied / created.
  FhirCode? get transform => throw _privateConstructorUsedError;

  /// [transformElement] Extensions for transform
  @JsonKey(name: '_transform')
  PrimitiveElement? get transformElement => throw _privateConstructorUsedError;

  /// [parameter] Parameters to the transform.
  List<StructureMapParameter>? get parameter =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructureMapTargetCopyWith<StructureMapTarget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructureMapTargetCopyWith<$Res> {
  factory $StructureMapTargetCopyWith(
          StructureMapTarget value, $Res Function(StructureMapTarget) then) =
      _$StructureMapTargetCopyWithImpl<$Res, StructureMapTarget>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? context,
      @JsonKey(name: '_context') PrimitiveElement? contextElement,
      FhirCode? contextType,
      @JsonKey(name: '_contextType') PrimitiveElement? contextTypeElement,
      String? element,
      @JsonKey(name: '_element') PrimitiveElement? elementElement,
      FhirId? variable,
      @JsonKey(name: '_variable') PrimitiveElement? variableElement,
      List<FhirCode>? listMode,
      @JsonKey(name: '_listMode') List<PrimitiveElement>? listModeElement,
      FhirId? listRuleId,
      @JsonKey(name: '_listRuleId') PrimitiveElement? listRuleIdElement,
      FhirCode? transform,
      @JsonKey(name: '_transform') PrimitiveElement? transformElement,
      List<StructureMapParameter>? parameter});
}

/// @nodoc
class _$StructureMapTargetCopyWithImpl<$Res, $Val extends StructureMapTarget>
    implements $StructureMapTargetCopyWith<$Res> {
  _$StructureMapTargetCopyWithImpl(this._value, this._then);

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
    Object? context = freezed,
    Object? contextElement = freezed,
    Object? contextType = freezed,
    Object? contextTypeElement = freezed,
    Object? element = freezed,
    Object? elementElement = freezed,
    Object? variable = freezed,
    Object? variableElement = freezed,
    Object? listMode = freezed,
    Object? listModeElement = freezed,
    Object? listRuleId = freezed,
    Object? listRuleIdElement = freezed,
    Object? transform = freezed,
    Object? transformElement = freezed,
    Object? parameter = freezed,
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
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      contextElement: freezed == contextElement
          ? _value.contextElement
          : contextElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      contextType: freezed == contextType
          ? _value.contextType
          : contextType // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      contextTypeElement: freezed == contextTypeElement
          ? _value.contextTypeElement
          : contextTypeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      element: freezed == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as String?,
      elementElement: freezed == elementElement
          ? _value.elementElement
          : elementElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      variable: freezed == variable
          ? _value.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      variableElement: freezed == variableElement
          ? _value.variableElement
          : variableElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      listMode: freezed == listMode
          ? _value.listMode
          : listMode // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      listModeElement: freezed == listModeElement
          ? _value.listModeElement
          : listModeElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      listRuleId: freezed == listRuleId
          ? _value.listRuleId
          : listRuleId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      listRuleIdElement: freezed == listRuleIdElement
          ? _value.listRuleIdElement
          : listRuleIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      transform: freezed == transform
          ? _value.transform
          : transform // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      transformElement: freezed == transformElement
          ? _value.transformElement
          : transformElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      parameter: freezed == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as List<StructureMapParameter>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StructureMapTargetImplCopyWith<$Res>
    implements $StructureMapTargetCopyWith<$Res> {
  factory _$$StructureMapTargetImplCopyWith(_$StructureMapTargetImpl value,
          $Res Function(_$StructureMapTargetImpl) then) =
      __$$StructureMapTargetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? context,
      @JsonKey(name: '_context') PrimitiveElement? contextElement,
      FhirCode? contextType,
      @JsonKey(name: '_contextType') PrimitiveElement? contextTypeElement,
      String? element,
      @JsonKey(name: '_element') PrimitiveElement? elementElement,
      FhirId? variable,
      @JsonKey(name: '_variable') PrimitiveElement? variableElement,
      List<FhirCode>? listMode,
      @JsonKey(name: '_listMode') List<PrimitiveElement>? listModeElement,
      FhirId? listRuleId,
      @JsonKey(name: '_listRuleId') PrimitiveElement? listRuleIdElement,
      FhirCode? transform,
      @JsonKey(name: '_transform') PrimitiveElement? transformElement,
      List<StructureMapParameter>? parameter});
}

/// @nodoc
class __$$StructureMapTargetImplCopyWithImpl<$Res>
    extends _$StructureMapTargetCopyWithImpl<$Res, _$StructureMapTargetImpl>
    implements _$$StructureMapTargetImplCopyWith<$Res> {
  __$$StructureMapTargetImplCopyWithImpl(_$StructureMapTargetImpl _value,
      $Res Function(_$StructureMapTargetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? context = freezed,
    Object? contextElement = freezed,
    Object? contextType = freezed,
    Object? contextTypeElement = freezed,
    Object? element = freezed,
    Object? elementElement = freezed,
    Object? variable = freezed,
    Object? variableElement = freezed,
    Object? listMode = freezed,
    Object? listModeElement = freezed,
    Object? listRuleId = freezed,
    Object? listRuleIdElement = freezed,
    Object? transform = freezed,
    Object? transformElement = freezed,
    Object? parameter = freezed,
  }) {
    return _then(_$StructureMapTargetImpl(
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
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      contextElement: freezed == contextElement
          ? _value.contextElement
          : contextElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      contextType: freezed == contextType
          ? _value.contextType
          : contextType // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      contextTypeElement: freezed == contextTypeElement
          ? _value.contextTypeElement
          : contextTypeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      element: freezed == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as String?,
      elementElement: freezed == elementElement
          ? _value.elementElement
          : elementElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      variable: freezed == variable
          ? _value.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      variableElement: freezed == variableElement
          ? _value.variableElement
          : variableElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      listMode: freezed == listMode
          ? _value._listMode
          : listMode // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      listModeElement: freezed == listModeElement
          ? _value._listModeElement
          : listModeElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      listRuleId: freezed == listRuleId
          ? _value.listRuleId
          : listRuleId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      listRuleIdElement: freezed == listRuleIdElement
          ? _value.listRuleIdElement
          : listRuleIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      transform: freezed == transform
          ? _value.transform
          : transform // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      transformElement: freezed == transformElement
          ? _value.transformElement
          : transformElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      parameter: freezed == parameter
          ? _value._parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as List<StructureMapParameter>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructureMapTargetImpl extends _StructureMapTarget {
  _$StructureMapTargetImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.context,
      @JsonKey(name: '_context') this.contextElement,
      this.contextType,
      @JsonKey(name: '_contextType') this.contextTypeElement,
      this.element,
      @JsonKey(name: '_element') this.elementElement,
      this.variable,
      @JsonKey(name: '_variable') this.variableElement,
      final List<FhirCode>? listMode,
      @JsonKey(name: '_listMode') final List<PrimitiveElement>? listModeElement,
      this.listRuleId,
      @JsonKey(name: '_listRuleId') this.listRuleIdElement,
      this.transform,
      @JsonKey(name: '_transform') this.transformElement,
      final List<StructureMapParameter>? parameter})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _listMode = listMode,
        _listModeElement = listModeElement,
        _parameter = parameter,
        super._();

  factory _$StructureMapTargetImpl.fromJson(Map<String, dynamic> json) =>
      _$$StructureMapTargetImplFromJson(json);

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

  /// [context] Type or variable this rule applies to.
  @override
  final FhirId? context;

  /// [contextElement] Extensions for context
  @override
  @JsonKey(name: '_context')
  final PrimitiveElement? contextElement;

  /// [contextType] How to interpret the context.
  @override
  final FhirCode? contextType;

  /// [contextTypeElement] Extensions for contextType
  @override
  @JsonKey(name: '_contextType')
  final PrimitiveElement? contextTypeElement;

  /// [element] Field to create in the context.
  @override
  final String? element;

  /// [elementElement] Extensions for element
  @override
  @JsonKey(name: '_element')
  final PrimitiveElement? elementElement;

  /// [variable] Named context for field, if desired, and a field is specified.
  @override
  final FhirId? variable;

  /// [variableElement] Extensions for variable
  @override
  @JsonKey(name: '_variable')
  final PrimitiveElement? variableElement;

  /// [listMode] If field is a list, how to manage the list.
  final List<FhirCode>? _listMode;

  /// [listMode] If field is a list, how to manage the list.
  @override
  List<FhirCode>? get listMode {
    final value = _listMode;
    if (value == null) return null;
    if (_listMode is EqualUnmodifiableListView) return _listMode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [listModeElement] Extensions for listMode
  final List<PrimitiveElement>? _listModeElement;

  /// [listModeElement] Extensions for listMode
  @override
  @JsonKey(name: '_listMode')
  List<PrimitiveElement>? get listModeElement {
    final value = _listModeElement;
    if (value == null) return null;
    if (_listModeElement is EqualUnmodifiableListView) return _listModeElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [listRuleId] Internal rule reference for shared list items.
  @override
  final FhirId? listRuleId;

  /// [listRuleIdElement] Extensions for listRuleId
  @override
  @JsonKey(name: '_listRuleId')
  final PrimitiveElement? listRuleIdElement;

  /// [transform] How the data is copied / created.
  @override
  final FhirCode? transform;

  /// [transformElement] Extensions for transform
  @override
  @JsonKey(name: '_transform')
  final PrimitiveElement? transformElement;

  /// [parameter] Parameters to the transform.
  final List<StructureMapParameter>? _parameter;

  /// [parameter] Parameters to the transform.
  @override
  List<StructureMapParameter>? get parameter {
    final value = _parameter;
    if (value == null) return null;
    if (_parameter is EqualUnmodifiableListView) return _parameter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructureMapTargetImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.contextElement, contextElement) ||
                other.contextElement == contextElement) &&
            (identical(other.contextType, contextType) ||
                other.contextType == contextType) &&
            (identical(other.contextTypeElement, contextTypeElement) ||
                other.contextTypeElement == contextTypeElement) &&
            (identical(other.element, element) || other.element == element) &&
            (identical(other.elementElement, elementElement) ||
                other.elementElement == elementElement) &&
            (identical(other.variable, variable) ||
                other.variable == variable) &&
            (identical(other.variableElement, variableElement) ||
                other.variableElement == variableElement) &&
            const DeepCollectionEquality().equals(other._listMode, _listMode) &&
            const DeepCollectionEquality()
                .equals(other._listModeElement, _listModeElement) &&
            (identical(other.listRuleId, listRuleId) ||
                other.listRuleId == listRuleId) &&
            (identical(other.listRuleIdElement, listRuleIdElement) ||
                other.listRuleIdElement == listRuleIdElement) &&
            (identical(other.transform, transform) ||
                other.transform == transform) &&
            (identical(other.transformElement, transformElement) ||
                other.transformElement == transformElement) &&
            const DeepCollectionEquality()
                .equals(other._parameter, _parameter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      context,
      contextElement,
      contextType,
      contextTypeElement,
      element,
      elementElement,
      variable,
      variableElement,
      const DeepCollectionEquality().hash(_listMode),
      const DeepCollectionEquality().hash(_listModeElement),
      listRuleId,
      listRuleIdElement,
      transform,
      transformElement,
      const DeepCollectionEquality().hash(_parameter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureMapTargetImplCopyWith<_$StructureMapTargetImpl> get copyWith =>
      __$$StructureMapTargetImplCopyWithImpl<_$StructureMapTargetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructureMapTargetImplToJson(
      this,
    );
  }
}

abstract class _StructureMapTarget extends StructureMapTarget {
  factory _StructureMapTarget(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirId? context,
      @JsonKey(name: '_context') final PrimitiveElement? contextElement,
      final FhirCode? contextType,
      @JsonKey(name: '_contextType') final PrimitiveElement? contextTypeElement,
      final String? element,
      @JsonKey(name: '_element') final PrimitiveElement? elementElement,
      final FhirId? variable,
      @JsonKey(name: '_variable') final PrimitiveElement? variableElement,
      final List<FhirCode>? listMode,
      @JsonKey(name: '_listMode') final List<PrimitiveElement>? listModeElement,
      final FhirId? listRuleId,
      @JsonKey(name: '_listRuleId') final PrimitiveElement? listRuleIdElement,
      final FhirCode? transform,
      @JsonKey(name: '_transform') final PrimitiveElement? transformElement,
      final List<StructureMapParameter>? parameter}) = _$StructureMapTargetImpl;
  _StructureMapTarget._() : super._();

  factory _StructureMapTarget.fromJson(Map<String, dynamic> json) =
      _$StructureMapTargetImpl.fromJson;

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

  /// [context] Type or variable this rule applies to.
  FhirId? get context;
  @override

  /// [contextElement] Extensions for context
  @JsonKey(name: '_context')
  PrimitiveElement? get contextElement;
  @override

  /// [contextType] How to interpret the context.
  FhirCode? get contextType;
  @override

  /// [contextTypeElement] Extensions for contextType
  @JsonKey(name: '_contextType')
  PrimitiveElement? get contextTypeElement;
  @override

  /// [element] Field to create in the context.
  String? get element;
  @override

  /// [elementElement] Extensions for element
  @JsonKey(name: '_element')
  PrimitiveElement? get elementElement;
  @override

  /// [variable] Named context for field, if desired, and a field is specified.
  FhirId? get variable;
  @override

  /// [variableElement] Extensions for variable
  @JsonKey(name: '_variable')
  PrimitiveElement? get variableElement;
  @override

  /// [listMode] If field is a list, how to manage the list.
  List<FhirCode>? get listMode;
  @override

  /// [listModeElement] Extensions for listMode
  @JsonKey(name: '_listMode')
  List<PrimitiveElement>? get listModeElement;
  @override

  /// [listRuleId] Internal rule reference for shared list items.
  FhirId? get listRuleId;
  @override

  /// [listRuleIdElement] Extensions for listRuleId
  @JsonKey(name: '_listRuleId')
  PrimitiveElement? get listRuleIdElement;
  @override

  /// [transform] How the data is copied / created.
  FhirCode? get transform;
  @override

  /// [transformElement] Extensions for transform
  @JsonKey(name: '_transform')
  PrimitiveElement? get transformElement;
  @override

  /// [parameter] Parameters to the transform.
  List<StructureMapParameter>? get parameter;
  @override
  @JsonKey(ignore: true)
  _$$StructureMapTargetImplCopyWith<_$StructureMapTargetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StructureMapParameter _$StructureMapParameterFromJson(
    Map<String, dynamic> json) {
  return _StructureMapParameter.fromJson(json);
}

/// @nodoc
mixin _$StructureMapParameter {
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

  /// [valueId] Parameter value - variable or literal.
  FhirId? get valueId => throw _privateConstructorUsedError;

  /// [valueIdElement] Extensions for valueId
  @JsonKey(name: '_valueId')
  PrimitiveElement? get valueIdElement => throw _privateConstructorUsedError;

  /// [valueString] Parameter value - variable or literal.
  String? get valueString => throw _privateConstructorUsedError;

  /// [valueStringElement] Extensions for valueString
  @JsonKey(name: '_valueString')
  PrimitiveElement? get valueStringElement =>
      throw _privateConstructorUsedError;

  /// [valueBoolean] Parameter value - variable or literal.
  FhirBoolean? get valueBoolean => throw _privateConstructorUsedError;

  /// [valueBooleanElement] Extensions for valueBoolean
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement =>
      throw _privateConstructorUsedError;

  /// [valueInteger] Parameter value - variable or literal.
  FhirInteger? get valueInteger => throw _privateConstructorUsedError;

  /// [valueIntegerElement] Extensions for valueInteger
  @JsonKey(name: '_valueInteger')
  PrimitiveElement? get valueIntegerElement =>
      throw _privateConstructorUsedError;

  /// [valueDecimal] Parameter value - variable or literal.
  FhirDecimal? get valueDecimal => throw _privateConstructorUsedError;

  /// [valueDecimalElement] Extensions for valueDecimal
  @JsonKey(name: '_valueDecimal')
  PrimitiveElement? get valueDecimalElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructureMapParameterCopyWith<StructureMapParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructureMapParameterCopyWith<$Res> {
  factory $StructureMapParameterCopyWith(StructureMapParameter value,
          $Res Function(StructureMapParameter) then) =
      _$StructureMapParameterCopyWithImpl<$Res, StructureMapParameter>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? valueId,
      @JsonKey(name: '_valueId') PrimitiveElement? valueIdElement,
      String? valueString,
      @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
      FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
      FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
      FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement});
}

/// @nodoc
class _$StructureMapParameterCopyWithImpl<$Res,
        $Val extends StructureMapParameter>
    implements $StructureMapParameterCopyWith<$Res> {
  _$StructureMapParameterCopyWithImpl(this._value, this._then);

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
    Object? valueId = freezed,
    Object? valueIdElement = freezed,
    Object? valueString = freezed,
    Object? valueStringElement = freezed,
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueInteger = freezed,
    Object? valueIntegerElement = freezed,
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
      valueId: freezed == valueId
          ? _value.valueId
          : valueId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      valueIdElement: freezed == valueIdElement
          ? _value.valueIdElement
          : valueIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueString: freezed == valueString
          ? _value.valueString
          : valueString // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStringElement: freezed == valueStringElement
          ? _value.valueStringElement
          : valueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueInteger: freezed == valueInteger
          ? _value.valueInteger
          : valueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      valueIntegerElement: freezed == valueIntegerElement
          ? _value.valueIntegerElement
          : valueIntegerElement // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$StructureMapParameterImplCopyWith<$Res>
    implements $StructureMapParameterCopyWith<$Res> {
  factory _$$StructureMapParameterImplCopyWith(
          _$StructureMapParameterImpl value,
          $Res Function(_$StructureMapParameterImpl) then) =
      __$$StructureMapParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? valueId,
      @JsonKey(name: '_valueId') PrimitiveElement? valueIdElement,
      String? valueString,
      @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
      FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
      FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
      FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement});
}

/// @nodoc
class __$$StructureMapParameterImplCopyWithImpl<$Res>
    extends _$StructureMapParameterCopyWithImpl<$Res,
        _$StructureMapParameterImpl>
    implements _$$StructureMapParameterImplCopyWith<$Res> {
  __$$StructureMapParameterImplCopyWithImpl(_$StructureMapParameterImpl _value,
      $Res Function(_$StructureMapParameterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? valueId = freezed,
    Object? valueIdElement = freezed,
    Object? valueString = freezed,
    Object? valueStringElement = freezed,
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueInteger = freezed,
    Object? valueIntegerElement = freezed,
    Object? valueDecimal = freezed,
    Object? valueDecimalElement = freezed,
  }) {
    return _then(_$StructureMapParameterImpl(
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
      valueId: freezed == valueId
          ? _value.valueId
          : valueId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      valueIdElement: freezed == valueIdElement
          ? _value.valueIdElement
          : valueIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueString: freezed == valueString
          ? _value.valueString
          : valueString // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStringElement: freezed == valueStringElement
          ? _value.valueStringElement
          : valueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueInteger: freezed == valueInteger
          ? _value.valueInteger
          : valueInteger // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      valueIntegerElement: freezed == valueIntegerElement
          ? _value.valueIntegerElement
          : valueIntegerElement // ignore: cast_nullable_to_non_nullable
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
class _$StructureMapParameterImpl extends _StructureMapParameter {
  _$StructureMapParameterImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.valueId,
      @JsonKey(name: '_valueId') this.valueIdElement,
      this.valueString,
      @JsonKey(name: '_valueString') this.valueStringElement,
      this.valueBoolean,
      @JsonKey(name: '_valueBoolean') this.valueBooleanElement,
      this.valueInteger,
      @JsonKey(name: '_valueInteger') this.valueIntegerElement,
      this.valueDecimal,
      @JsonKey(name: '_valueDecimal') this.valueDecimalElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$StructureMapParameterImpl.fromJson(Map<String, dynamic> json) =>
      _$$StructureMapParameterImplFromJson(json);

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

  /// [valueId] Parameter value - variable or literal.
  @override
  final FhirId? valueId;

  /// [valueIdElement] Extensions for valueId
  @override
  @JsonKey(name: '_valueId')
  final PrimitiveElement? valueIdElement;

  /// [valueString] Parameter value - variable or literal.
  @override
  final String? valueString;

  /// [valueStringElement] Extensions for valueString
  @override
  @JsonKey(name: '_valueString')
  final PrimitiveElement? valueStringElement;

  /// [valueBoolean] Parameter value - variable or literal.
  @override
  final FhirBoolean? valueBoolean;

  /// [valueBooleanElement] Extensions for valueBoolean
  @override
  @JsonKey(name: '_valueBoolean')
  final PrimitiveElement? valueBooleanElement;

  /// [valueInteger] Parameter value - variable or literal.
  @override
  final FhirInteger? valueInteger;

  /// [valueIntegerElement] Extensions for valueInteger
  @override
  @JsonKey(name: '_valueInteger')
  final PrimitiveElement? valueIntegerElement;

  /// [valueDecimal] Parameter value - variable or literal.
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
            other is _$StructureMapParameterImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.valueId, valueId) || other.valueId == valueId) &&
            (identical(other.valueIdElement, valueIdElement) ||
                other.valueIdElement == valueIdElement) &&
            (identical(other.valueString, valueString) ||
                other.valueString == valueString) &&
            (identical(other.valueStringElement, valueStringElement) ||
                other.valueStringElement == valueStringElement) &&
            (identical(other.valueBoolean, valueBoolean) ||
                other.valueBoolean == valueBoolean) &&
            (identical(other.valueBooleanElement, valueBooleanElement) ||
                other.valueBooleanElement == valueBooleanElement) &&
            (identical(other.valueInteger, valueInteger) ||
                other.valueInteger == valueInteger) &&
            (identical(other.valueIntegerElement, valueIntegerElement) ||
                other.valueIntegerElement == valueIntegerElement) &&
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
      valueId,
      valueIdElement,
      valueString,
      valueStringElement,
      valueBoolean,
      valueBooleanElement,
      valueInteger,
      valueIntegerElement,
      valueDecimal,
      valueDecimalElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureMapParameterImplCopyWith<_$StructureMapParameterImpl>
      get copyWith => __$$StructureMapParameterImplCopyWithImpl<
          _$StructureMapParameterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructureMapParameterImplToJson(
      this,
    );
  }
}

abstract class _StructureMapParameter extends StructureMapParameter {
  factory _StructureMapParameter(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirId? valueId,
      @JsonKey(name: '_valueId') final PrimitiveElement? valueIdElement,
      final String? valueString,
      @JsonKey(name: '_valueString') final PrimitiveElement? valueStringElement,
      final FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean')
      final PrimitiveElement? valueBooleanElement,
      final FhirInteger? valueInteger,
      @JsonKey(name: '_valueInteger')
      final PrimitiveElement? valueIntegerElement,
      final FhirDecimal? valueDecimal,
      @JsonKey(name: '_valueDecimal')
      final PrimitiveElement?
          valueDecimalElement}) = _$StructureMapParameterImpl;
  _StructureMapParameter._() : super._();

  factory _StructureMapParameter.fromJson(Map<String, dynamic> json) =
      _$StructureMapParameterImpl.fromJson;

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

  /// [valueId] Parameter value - variable or literal.
  FhirId? get valueId;
  @override

  /// [valueIdElement] Extensions for valueId
  @JsonKey(name: '_valueId')
  PrimitiveElement? get valueIdElement;
  @override

  /// [valueString] Parameter value - variable or literal.
  String? get valueString;
  @override

  /// [valueStringElement] Extensions for valueString
  @JsonKey(name: '_valueString')
  PrimitiveElement? get valueStringElement;
  @override

  /// [valueBoolean] Parameter value - variable or literal.
  FhirBoolean? get valueBoolean;
  @override

  /// [valueBooleanElement] Extensions for valueBoolean
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement;
  @override

  /// [valueInteger] Parameter value - variable or literal.
  FhirInteger? get valueInteger;
  @override

  /// [valueIntegerElement] Extensions for valueInteger
  @JsonKey(name: '_valueInteger')
  PrimitiveElement? get valueIntegerElement;
  @override

  /// [valueDecimal] Parameter value - variable or literal.
  FhirDecimal? get valueDecimal;
  @override

  /// [valueDecimalElement] Extensions for valueDecimal
  @JsonKey(name: '_valueDecimal')
  PrimitiveElement? get valueDecimalElement;
  @override
  @JsonKey(ignore: true)
  _$$StructureMapParameterImplCopyWith<_$StructureMapParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StructureMapDependent _$StructureMapDependentFromJson(
    Map<String, dynamic> json) {
  return _StructureMapDependent.fromJson(json);
}

/// @nodoc
mixin _$StructureMapDependent {
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

  /// [name] Name of a rule or group to apply.
  FhirId? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [variable] Variable to pass to the rule or group.
  List<String>? get variable => throw _privateConstructorUsedError;

  /// [variableElement] Extensions for variable
  @JsonKey(name: '_variable')
  List<PrimitiveElement>? get variableElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructureMapDependentCopyWith<StructureMapDependent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructureMapDependentCopyWith<$Res> {
  factory $StructureMapDependentCopyWith(StructureMapDependent value,
          $Res Function(StructureMapDependent) then) =
      _$StructureMapDependentCopyWithImpl<$Res, StructureMapDependent>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      List<String>? variable,
      @JsonKey(name: '_variable') List<PrimitiveElement>? variableElement});
}

/// @nodoc
class _$StructureMapDependentCopyWithImpl<$Res,
        $Val extends StructureMapDependent>
    implements $StructureMapDependentCopyWith<$Res> {
  _$StructureMapDependentCopyWithImpl(this._value, this._then);

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
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? variable = freezed,
    Object? variableElement = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      variable: freezed == variable
          ? _value.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      variableElement: freezed == variableElement
          ? _value.variableElement
          : variableElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StructureMapDependentImplCopyWith<$Res>
    implements $StructureMapDependentCopyWith<$Res> {
  factory _$$StructureMapDependentImplCopyWith(
          _$StructureMapDependentImpl value,
          $Res Function(_$StructureMapDependentImpl) then) =
      __$$StructureMapDependentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      List<String>? variable,
      @JsonKey(name: '_variable') List<PrimitiveElement>? variableElement});
}

/// @nodoc
class __$$StructureMapDependentImplCopyWithImpl<$Res>
    extends _$StructureMapDependentCopyWithImpl<$Res,
        _$StructureMapDependentImpl>
    implements _$$StructureMapDependentImplCopyWith<$Res> {
  __$$StructureMapDependentImplCopyWithImpl(_$StructureMapDependentImpl _value,
      $Res Function(_$StructureMapDependentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? variable = freezed,
    Object? variableElement = freezed,
  }) {
    return _then(_$StructureMapDependentImpl(
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      variable: freezed == variable
          ? _value._variable
          : variable // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      variableElement: freezed == variableElement
          ? _value._variableElement
          : variableElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructureMapDependentImpl extends _StructureMapDependent {
  _$StructureMapDependentImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      final List<String>? variable,
      @JsonKey(name: '_variable')
      final List<PrimitiveElement>? variableElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _variable = variable,
        _variableElement = variableElement,
        super._();

  factory _$StructureMapDependentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StructureMapDependentImplFromJson(json);

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

  /// [name] Name of a rule or group to apply.
  @override
  final FhirId? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [variable] Variable to pass to the rule or group.
  final List<String>? _variable;

  /// [variable] Variable to pass to the rule or group.
  @override
  List<String>? get variable {
    final value = _variable;
    if (value == null) return null;
    if (_variable is EqualUnmodifiableListView) return _variable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [variableElement] Extensions for variable
  final List<PrimitiveElement>? _variableElement;

  /// [variableElement] Extensions for variable
  @override
  @JsonKey(name: '_variable')
  List<PrimitiveElement>? get variableElement {
    final value = _variableElement;
    if (value == null) return null;
    if (_variableElement is EqualUnmodifiableListView) return _variableElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructureMapDependentImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            const DeepCollectionEquality().equals(other._variable, _variable) &&
            const DeepCollectionEquality()
                .equals(other._variableElement, _variableElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      name,
      nameElement,
      const DeepCollectionEquality().hash(_variable),
      const DeepCollectionEquality().hash(_variableElement));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureMapDependentImplCopyWith<_$StructureMapDependentImpl>
      get copyWith => __$$StructureMapDependentImplCopyWithImpl<
          _$StructureMapDependentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructureMapDependentImplToJson(
      this,
    );
  }
}

abstract class _StructureMapDependent extends StructureMapDependent {
  factory _StructureMapDependent(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirId? name,
          @JsonKey(name: '_name') final PrimitiveElement? nameElement,
          final List<String>? variable,
          @JsonKey(name: '_variable')
          final List<PrimitiveElement>? variableElement}) =
      _$StructureMapDependentImpl;
  _StructureMapDependent._() : super._();

  factory _StructureMapDependent.fromJson(Map<String, dynamic> json) =
      _$StructureMapDependentImpl.fromJson;

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

  /// [name] Name of a rule or group to apply.
  FhirId? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [variable] Variable to pass to the rule or group.
  List<String>? get variable;
  @override

  /// [variableElement] Extensions for variable
  @JsonKey(name: '_variable')
  List<PrimitiveElement>? get variableElement;
  @override
  @JsonKey(ignore: true)
  _$$StructureMapDependentImplCopyWith<_$StructureMapDependentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
