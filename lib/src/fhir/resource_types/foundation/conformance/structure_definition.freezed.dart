// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'structure_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StructureDefinition _$StructureDefinitionFromJson(Map<String, dynamic> json) {
  return _StructureDefinition.fromJson(json);
}

/// @nodoc
mixin _$StructureDefinition {
  @JsonKey(unknownEnumValue: R4ResourceType.StructureDefinition)
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

  /// [url] An absolute URI that is used to identify this structure definition
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this structure definition is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  ///  structure definition is stored on different servers.
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [identifier] A formal identifier that is used to identify this structure
  /// definition when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [version] The identifier that is used to identify this version of the
  /// structure definition when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the structure
  /// definition author and is not expected to be globally unique. For example,
  /// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
  /// available. There is also no expectation that versions can be placed in a
  ///  lexicographical sequence.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  /// [name] A natural language name identifying the structure definition. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [title] A short, descriptive, user-friendly title for the structure
  ///  definition.
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;

  /// [status] The status of this structure definition. Enables tracking the
  ///  life-cycle of the content.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [experimental] A Boolean value to indicate that this structure definition
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  FhirBoolean? get experimental => throw _privateConstructorUsedError;

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement =>
      throw _privateConstructorUsedError;

  /// [date] The date  (and optionally time) when the structure definition was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the structure definition changes.
  FhirDateTime? get date => throw _privateConstructorUsedError;

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [publisher] The name of the organization or individual that published the
  ///  structure definition.
  String? get publisher => throw _privateConstructorUsedError;

  /// [publisherElement] Extensions for publisher
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement => throw _privateConstructorUsedError;

  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  List<ContactDetail>? get contact => throw _privateConstructorUsedError;

  /// [description] A free text natural language description of the structure
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
  ///  and searching for appropriate structure definition instances.
  List<UsageContext>? get useContext => throw _privateConstructorUsedError;

  /// [jurisdiction] A legal or geographic region in which the structure
  ///  definition is intended to be used.
  List<CodeableConcept>? get jurisdiction => throw _privateConstructorUsedError;

  /// [purpose] Explanation of why this structure definition is needed and why
  ///  it has been designed as it has.
  FhirMarkdown? get purpose => throw _privateConstructorUsedError;

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement => throw _privateConstructorUsedError;

  /// [copyright] A copyright statement relating to the structure definition
  /// and/or its contents. Copyright statements are generally legal restrictions
  ///  on the use and publishing of the structure definition.
  FhirMarkdown? get copyright => throw _privateConstructorUsedError;

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement => throw _privateConstructorUsedError;

  /// [keyword] A set of key words or terms from external terminologies that
  /// may be used to assist with indexing and searching of templates nby
  /// describing the use of this structure definition, or the content it
  ///  describes.
  List<Coding>? get keyword => throw _privateConstructorUsedError;

  /// [fhirVersion] The version of the FHIR specification on which this
  /// StructureDefinition is based - this is the formal version of the
  /// specification, without the revision number, e.g.
  ///  [publication].[major].[minor], which is 4.0.1. for this version.
  FhirCode? get fhirVersion => throw _privateConstructorUsedError;

  /// [fhirVersionElement] Extensions for fhirVersion
  @JsonKey(name: '_fhirVersion')
  PrimitiveElement? get fhirVersionElement =>
      throw _privateConstructorUsedError;

  /// [mapping] An external specification that the content is mapped to.
  List<StructureDefinitionMapping>? get mapping =>
      throw _privateConstructorUsedError;

  /// [kind] Defines the kind of structure that this definition is describing.
  FhirCode? get kind => throw _privateConstructorUsedError;

  /// [kindElement] Extensions for kind
  @JsonKey(name: '_kind')
  PrimitiveElement? get kindElement => throw _privateConstructorUsedError;

  /// [abstract] Whether structure this definition describes is abstract or not
  /// - that is, whether the structure is not intended to be instantiated. For
  /// Resources and Data types, abstract types will never be exchanged  between
  ///  systems.
  @JsonKey(name: 'abstract')
  FhirBoolean? get abstract_ => throw _privateConstructorUsedError;

  /// [abstractElement] Extensions for abstract
  @JsonKey(name: '_abstract')
  PrimitiveElement? get abstractElement => throw _privateConstructorUsedError;

  /// [context] Identifies the types of resource or data type elements to which
  ///  the extension can be applied.
  List<StructureDefinitionContext>? get context =>
      throw _privateConstructorUsedError;

  /// [contextInvariant] A set of rules as FHIRPath Invariants about when the
  /// extension can be used (e.g. co-occurrence variants for the extension). All
  ///  the rules must be true.
  List<String>? get contextInvariant => throw _privateConstructorUsedError;

  /// [contextInvariantElement] Extensions for contextInvariant
  @JsonKey(name: '_contextInvariant')
  List<PrimitiveElement>? get contextInvariantElement =>
      throw _privateConstructorUsedError;

  /// [type] The type this structure describes. If the derivation kind is
  /// 'specialization' then this is the master definition for a type, and there
  /// is always one of these (a data type, an extension, a resource, including
  /// abstract ones). Otherwise the structure definition is a constraint on the
  /// stated type (and in this case, the type cannot be an abstract type).
  /// References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
  ///  allowed in logical models.
  FhirUri? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [baseDefinition] An absolute URI that is the base structure from which
  ///  this type is derived, either by specialization or constraint.
  FhirCanonical? get baseDefinition => throw _privateConstructorUsedError;
  @JsonKey(name: '_baseDefinition')
  PrimitiveElement? get baseDefinitionElement =>
      throw _privateConstructorUsedError;

  /// [derivation] How the type relates to the baseDefinition.
  FhirCode? get derivation => throw _privateConstructorUsedError;

  /// [derivationElement] Extensions for derivation
  @JsonKey(name: '_derivation')
  PrimitiveElement? get derivationElement => throw _privateConstructorUsedError;

  /// [snapshot] A snapshot view is expressed in a standalone form that can be
  ///  used and interpreted without considering the base StructureDefinition.
  StructureDefinitionSnapshot? get snapshot =>
      throw _privateConstructorUsedError;

  /// [differential] A differential view is expressed relative to the base
  ///  StructureDefinition - a statement of differences that it applies.
  StructureDefinitionDifferential? get differential =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructureDefinitionCopyWith<StructureDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructureDefinitionCopyWith<$Res> {
  factory $StructureDefinitionCopyWith(
          StructureDefinition value, $Res Function(StructureDefinition) then) =
      _$StructureDefinitionCopyWithImpl<$Res, StructureDefinition>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.StructureDefinition)
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
      List<Coding>? keyword,
      FhirCode? fhirVersion,
      @JsonKey(name: '_fhirVersion') PrimitiveElement? fhirVersionElement,
      List<StructureDefinitionMapping>? mapping,
      FhirCode? kind,
      @JsonKey(name: '_kind') PrimitiveElement? kindElement,
      @JsonKey(name: 'abstract') FhirBoolean? abstract_,
      @JsonKey(name: '_abstract') PrimitiveElement? abstractElement,
      List<StructureDefinitionContext>? context,
      List<String>? contextInvariant,
      @JsonKey(name: '_contextInvariant')
      List<PrimitiveElement>? contextInvariantElement,
      FhirUri? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirCanonical? baseDefinition,
      @JsonKey(name: '_baseDefinition') PrimitiveElement? baseDefinitionElement,
      FhirCode? derivation,
      @JsonKey(name: '_derivation') PrimitiveElement? derivationElement,
      StructureDefinitionSnapshot? snapshot,
      StructureDefinitionDifferential? differential});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $StructureDefinitionSnapshotCopyWith<$Res>? get snapshot;
  $StructureDefinitionDifferentialCopyWith<$Res>? get differential;
}

/// @nodoc
class _$StructureDefinitionCopyWithImpl<$Res, $Val extends StructureDefinition>
    implements $StructureDefinitionCopyWith<$Res> {
  _$StructureDefinitionCopyWithImpl(this._value, this._then);

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
    Object? keyword = freezed,
    Object? fhirVersion = freezed,
    Object? fhirVersionElement = freezed,
    Object? mapping = freezed,
    Object? kind = freezed,
    Object? kindElement = freezed,
    Object? abstract_ = freezed,
    Object? abstractElement = freezed,
    Object? context = freezed,
    Object? contextInvariant = freezed,
    Object? contextInvariantElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? baseDefinition = freezed,
    Object? baseDefinitionElement = freezed,
    Object? derivation = freezed,
    Object? derivationElement = freezed,
    Object? snapshot = freezed,
    Object? differential = freezed,
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
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      fhirVersion: freezed == fhirVersion
          ? _value.fhirVersion
          : fhirVersion // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      fhirVersionElement: freezed == fhirVersionElement
          ? _value.fhirVersionElement
          : fhirVersionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      mapping: freezed == mapping
          ? _value.mapping
          : mapping // ignore: cast_nullable_to_non_nullable
              as List<StructureDefinitionMapping>?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      kindElement: freezed == kindElement
          ? _value.kindElement
          : kindElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      abstract_: freezed == abstract_
          ? _value.abstract_
          : abstract_ // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      abstractElement: freezed == abstractElement
          ? _value.abstractElement
          : abstractElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as List<StructureDefinitionContext>?,
      contextInvariant: freezed == contextInvariant
          ? _value.contextInvariant
          : contextInvariant // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contextInvariantElement: freezed == contextInvariantElement
          ? _value.contextInvariantElement
          : contextInvariantElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      baseDefinition: freezed == baseDefinition
          ? _value.baseDefinition
          : baseDefinition // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      baseDefinitionElement: freezed == baseDefinitionElement
          ? _value.baseDefinitionElement
          : baseDefinitionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      derivation: freezed == derivation
          ? _value.derivation
          : derivation // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      derivationElement: freezed == derivationElement
          ? _value.derivationElement
          : derivationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      snapshot: freezed == snapshot
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as StructureDefinitionSnapshot?,
      differential: freezed == differential
          ? _value.differential
          : differential // ignore: cast_nullable_to_non_nullable
              as StructureDefinitionDifferential?,
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
  $StructureDefinitionSnapshotCopyWith<$Res>? get snapshot {
    if (_value.snapshot == null) {
      return null;
    }

    return $StructureDefinitionSnapshotCopyWith<$Res>(_value.snapshot!,
        (value) {
      return _then(_value.copyWith(snapshot: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StructureDefinitionDifferentialCopyWith<$Res>? get differential {
    if (_value.differential == null) {
      return null;
    }

    return $StructureDefinitionDifferentialCopyWith<$Res>(_value.differential!,
        (value) {
      return _then(_value.copyWith(differential: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StructureDefinitionImplCopyWith<$Res>
    implements $StructureDefinitionCopyWith<$Res> {
  factory _$$StructureDefinitionImplCopyWith(_$StructureDefinitionImpl value,
          $Res Function(_$StructureDefinitionImpl) then) =
      __$$StructureDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.StructureDefinition)
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
      List<Coding>? keyword,
      FhirCode? fhirVersion,
      @JsonKey(name: '_fhirVersion') PrimitiveElement? fhirVersionElement,
      List<StructureDefinitionMapping>? mapping,
      FhirCode? kind,
      @JsonKey(name: '_kind') PrimitiveElement? kindElement,
      @JsonKey(name: 'abstract') FhirBoolean? abstract_,
      @JsonKey(name: '_abstract') PrimitiveElement? abstractElement,
      List<StructureDefinitionContext>? context,
      List<String>? contextInvariant,
      @JsonKey(name: '_contextInvariant')
      List<PrimitiveElement>? contextInvariantElement,
      FhirUri? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirCanonical? baseDefinition,
      @JsonKey(name: '_baseDefinition') PrimitiveElement? baseDefinitionElement,
      FhirCode? derivation,
      @JsonKey(name: '_derivation') PrimitiveElement? derivationElement,
      StructureDefinitionSnapshot? snapshot,
      StructureDefinitionDifferential? differential});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $StructureDefinitionSnapshotCopyWith<$Res>? get snapshot;
  @override
  $StructureDefinitionDifferentialCopyWith<$Res>? get differential;
}

/// @nodoc
class __$$StructureDefinitionImplCopyWithImpl<$Res>
    extends _$StructureDefinitionCopyWithImpl<$Res, _$StructureDefinitionImpl>
    implements _$$StructureDefinitionImplCopyWith<$Res> {
  __$$StructureDefinitionImplCopyWithImpl(_$StructureDefinitionImpl _value,
      $Res Function(_$StructureDefinitionImpl) _then)
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
    Object? keyword = freezed,
    Object? fhirVersion = freezed,
    Object? fhirVersionElement = freezed,
    Object? mapping = freezed,
    Object? kind = freezed,
    Object? kindElement = freezed,
    Object? abstract_ = freezed,
    Object? abstractElement = freezed,
    Object? context = freezed,
    Object? contextInvariant = freezed,
    Object? contextInvariantElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? baseDefinition = freezed,
    Object? baseDefinitionElement = freezed,
    Object? derivation = freezed,
    Object? derivationElement = freezed,
    Object? snapshot = freezed,
    Object? differential = freezed,
  }) {
    return _then(_$StructureDefinitionImpl(
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
      keyword: freezed == keyword
          ? _value._keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      fhirVersion: freezed == fhirVersion
          ? _value.fhirVersion
          : fhirVersion // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      fhirVersionElement: freezed == fhirVersionElement
          ? _value.fhirVersionElement
          : fhirVersionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      mapping: freezed == mapping
          ? _value._mapping
          : mapping // ignore: cast_nullable_to_non_nullable
              as List<StructureDefinitionMapping>?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      kindElement: freezed == kindElement
          ? _value.kindElement
          : kindElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      abstract_: freezed == abstract_
          ? _value.abstract_
          : abstract_ // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      abstractElement: freezed == abstractElement
          ? _value.abstractElement
          : abstractElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      context: freezed == context
          ? _value._context
          : context // ignore: cast_nullable_to_non_nullable
              as List<StructureDefinitionContext>?,
      contextInvariant: freezed == contextInvariant
          ? _value._contextInvariant
          : contextInvariant // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contextInvariantElement: freezed == contextInvariantElement
          ? _value._contextInvariantElement
          : contextInvariantElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      baseDefinition: freezed == baseDefinition
          ? _value.baseDefinition
          : baseDefinition // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      baseDefinitionElement: freezed == baseDefinitionElement
          ? _value.baseDefinitionElement
          : baseDefinitionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      derivation: freezed == derivation
          ? _value.derivation
          : derivation // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      derivationElement: freezed == derivationElement
          ? _value.derivationElement
          : derivationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      snapshot: freezed == snapshot
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as StructureDefinitionSnapshot?,
      differential: freezed == differential
          ? _value.differential
          : differential // ignore: cast_nullable_to_non_nullable
              as StructureDefinitionDifferential?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructureDefinitionImpl extends _StructureDefinition {
  const _$StructureDefinitionImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.StructureDefinition)
      this.resourceType = R4ResourceType.StructureDefinition,
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
      final List<Coding>? keyword,
      this.fhirVersion,
      @JsonKey(name: '_fhirVersion') this.fhirVersionElement,
      final List<StructureDefinitionMapping>? mapping,
      this.kind,
      @JsonKey(name: '_kind') this.kindElement,
      @JsonKey(name: 'abstract') this.abstract_,
      @JsonKey(name: '_abstract') this.abstractElement,
      final List<StructureDefinitionContext>? context,
      final List<String>? contextInvariant,
      @JsonKey(name: '_contextInvariant')
      final List<PrimitiveElement>? contextInvariantElement,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.baseDefinition,
      @JsonKey(name: '_baseDefinition') this.baseDefinitionElement,
      this.derivation,
      @JsonKey(name: '_derivation') this.derivationElement,
      this.snapshot,
      this.differential})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _contact = contact,
        _useContext = useContext,
        _jurisdiction = jurisdiction,
        _keyword = keyword,
        _mapping = mapping,
        _context = context,
        _contextInvariant = contextInvariant,
        _contextInvariantElement = contextInvariantElement,
        super._();

  factory _$StructureDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$StructureDefinitionImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.StructureDefinition)
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

  /// [url] An absolute URI that is used to identify this structure definition
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this structure definition is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  ///  structure definition is stored on different servers.
  @override
  final FhirUri? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [identifier] A formal identifier that is used to identify this structure
  /// definition when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  final List<Identifier>? _identifier;

  /// [identifier] A formal identifier that is used to identify this structure
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
  /// structure definition when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the structure
  /// definition author and is not expected to be globally unique. For example,
  /// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
  /// available. There is also no expectation that versions can be placed in a
  ///  lexicographical sequence.
  @override
  final String? version;

  /// [versionElement] Extensions for version
  @override
  @JsonKey(name: '_version')
  final PrimitiveElement? versionElement;

  /// [name] A natural language name identifying the structure definition. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [title] A short, descriptive, user-friendly title for the structure
  ///  definition.
  @override
  final String? title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;

  /// [status] The status of this structure definition. Enables tracking the
  ///  life-cycle of the content.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [experimental] A Boolean value to indicate that this structure definition
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  @override
  final FhirBoolean? experimental;

  /// [experimentalElement] Extensions for experimental
  @override
  @JsonKey(name: '_experimental')
  final PrimitiveElement? experimentalElement;

  /// [date] The date  (and optionally time) when the structure definition was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the structure definition changes.
  @override
  final FhirDateTime? date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [publisher] The name of the organization or individual that published the
  ///  structure definition.
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
  ///  and searching for appropriate structure definition instances.
  final List<UsageContext>? _useContext;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate structure definition instances.
  @override
  List<UsageContext>? get useContext {
    final value = _useContext;
    if (value == null) return null;
    if (_useContext is EqualUnmodifiableListView) return _useContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [jurisdiction] A legal or geographic region in which the structure
  ///  definition is intended to be used.
  final List<CodeableConcept>? _jurisdiction;

  /// [jurisdiction] A legal or geographic region in which the structure
  ///  definition is intended to be used.
  @override
  List<CodeableConcept>? get jurisdiction {
    final value = _jurisdiction;
    if (value == null) return null;
    if (_jurisdiction is EqualUnmodifiableListView) return _jurisdiction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [purpose] Explanation of why this structure definition is needed and why
  ///  it has been designed as it has.
  @override
  final FhirMarkdown? purpose;

  /// [purposeElement] Extensions for purpose
  @override
  @JsonKey(name: '_purpose')
  final PrimitiveElement? purposeElement;

  /// [copyright] A copyright statement relating to the structure definition
  /// and/or its contents. Copyright statements are generally legal restrictions
  ///  on the use and publishing of the structure definition.
  @override
  final FhirMarkdown? copyright;

  /// [copyrightElement] Extensions for copyright
  @override
  @JsonKey(name: '_copyright')
  final PrimitiveElement? copyrightElement;

  /// [keyword] A set of key words or terms from external terminologies that
  /// may be used to assist with indexing and searching of templates nby
  /// describing the use of this structure definition, or the content it
  ///  describes.
  final List<Coding>? _keyword;

  /// [keyword] A set of key words or terms from external terminologies that
  /// may be used to assist with indexing and searching of templates nby
  /// describing the use of this structure definition, or the content it
  ///  describes.
  @override
  List<Coding>? get keyword {
    final value = _keyword;
    if (value == null) return null;
    if (_keyword is EqualUnmodifiableListView) return _keyword;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [fhirVersion] The version of the FHIR specification on which this
  /// StructureDefinition is based - this is the formal version of the
  /// specification, without the revision number, e.g.
  ///  [publication].[major].[minor], which is 4.0.1. for this version.
  @override
  final FhirCode? fhirVersion;

  /// [fhirVersionElement] Extensions for fhirVersion
  @override
  @JsonKey(name: '_fhirVersion')
  final PrimitiveElement? fhirVersionElement;

  /// [mapping] An external specification that the content is mapped to.
  final List<StructureDefinitionMapping>? _mapping;

  /// [mapping] An external specification that the content is mapped to.
  @override
  List<StructureDefinitionMapping>? get mapping {
    final value = _mapping;
    if (value == null) return null;
    if (_mapping is EqualUnmodifiableListView) return _mapping;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [kind] Defines the kind of structure that this definition is describing.
  @override
  final FhirCode? kind;

  /// [kindElement] Extensions for kind
  @override
  @JsonKey(name: '_kind')
  final PrimitiveElement? kindElement;

  /// [abstract] Whether structure this definition describes is abstract or not
  /// - that is, whether the structure is not intended to be instantiated. For
  /// Resources and Data types, abstract types will never be exchanged  between
  ///  systems.
  @override
  @JsonKey(name: 'abstract')
  final FhirBoolean? abstract_;

  /// [abstractElement] Extensions for abstract
  @override
  @JsonKey(name: '_abstract')
  final PrimitiveElement? abstractElement;

  /// [context] Identifies the types of resource or data type elements to which
  ///  the extension can be applied.
  final List<StructureDefinitionContext>? _context;

  /// [context] Identifies the types of resource or data type elements to which
  ///  the extension can be applied.
  @override
  List<StructureDefinitionContext>? get context {
    final value = _context;
    if (value == null) return null;
    if (_context is EqualUnmodifiableListView) return _context;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [contextInvariant] A set of rules as FHIRPath Invariants about when the
  /// extension can be used (e.g. co-occurrence variants for the extension). All
  ///  the rules must be true.
  final List<String>? _contextInvariant;

  /// [contextInvariant] A set of rules as FHIRPath Invariants about when the
  /// extension can be used (e.g. co-occurrence variants for the extension). All
  ///  the rules must be true.
  @override
  List<String>? get contextInvariant {
    final value = _contextInvariant;
    if (value == null) return null;
    if (_contextInvariant is EqualUnmodifiableListView)
      return _contextInvariant;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [contextInvariantElement] Extensions for contextInvariant
  final List<PrimitiveElement>? _contextInvariantElement;

  /// [contextInvariantElement] Extensions for contextInvariant
  @override
  @JsonKey(name: '_contextInvariant')
  List<PrimitiveElement>? get contextInvariantElement {
    final value = _contextInvariantElement;
    if (value == null) return null;
    if (_contextInvariantElement is EqualUnmodifiableListView)
      return _contextInvariantElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] The type this structure describes. If the derivation kind is
  /// 'specialization' then this is the master definition for a type, and there
  /// is always one of these (a data type, an extension, a resource, including
  /// abstract ones). Otherwise the structure definition is a constraint on the
  /// stated type (and in this case, the type cannot be an abstract type).
  /// References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
  ///  allowed in logical models.
  @override
  final FhirUri? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [baseDefinition] An absolute URI that is the base structure from which
  ///  this type is derived, either by specialization or constraint.
  @override
  final FhirCanonical? baseDefinition;
  @override
  @JsonKey(name: '_baseDefinition')
  final PrimitiveElement? baseDefinitionElement;

  /// [derivation] How the type relates to the baseDefinition.
  @override
  final FhirCode? derivation;

  /// [derivationElement] Extensions for derivation
  @override
  @JsonKey(name: '_derivation')
  final PrimitiveElement? derivationElement;

  /// [snapshot] A snapshot view is expressed in a standalone form that can be
  ///  used and interpreted without considering the base StructureDefinition.
  @override
  final StructureDefinitionSnapshot? snapshot;

  /// [differential] A differential view is expressed relative to the base
  ///  StructureDefinition - a statement of differences that it applies.
  @override
  final StructureDefinitionDifferential? differential;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructureDefinitionImpl &&
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
            const DeepCollectionEquality().equals(other._keyword, _keyword) &&
            (identical(other.fhirVersion, fhirVersion) ||
                other.fhirVersion == fhirVersion) &&
            (identical(other.fhirVersionElement, fhirVersionElement) ||
                other.fhirVersionElement == fhirVersionElement) &&
            const DeepCollectionEquality().equals(other._mapping, _mapping) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.kindElement, kindElement) ||
                other.kindElement == kindElement) &&
            (identical(other.abstract_, abstract_) ||
                other.abstract_ == abstract_) &&
            (identical(other.abstractElement, abstractElement) ||
                other.abstractElement == abstractElement) &&
            const DeepCollectionEquality().equals(other._context, _context) &&
            const DeepCollectionEquality()
                .equals(other._contextInvariant, _contextInvariant) &&
            const DeepCollectionEquality().equals(
                other._contextInvariantElement, _contextInvariantElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.baseDefinition, baseDefinition) ||
                other.baseDefinition == baseDefinition) &&
            (identical(other.baseDefinitionElement, baseDefinitionElement) ||
                other.baseDefinitionElement == baseDefinitionElement) &&
            (identical(other.derivation, derivation) ||
                other.derivation == derivation) &&
            (identical(other.derivationElement, derivationElement) ||
                other.derivationElement == derivationElement) &&
            (identical(other.snapshot, snapshot) ||
                other.snapshot == snapshot) &&
            (identical(other.differential, differential) ||
                other.differential == differential));
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
        const DeepCollectionEquality().hash(_keyword),
        fhirVersion,
        fhirVersionElement,
        const DeepCollectionEquality().hash(_mapping),
        kind,
        kindElement,
        abstract_,
        abstractElement,
        const DeepCollectionEquality().hash(_context),
        const DeepCollectionEquality().hash(_contextInvariant),
        const DeepCollectionEquality().hash(_contextInvariantElement),
        type,
        typeElement,
        baseDefinition,
        baseDefinitionElement,
        derivation,
        derivationElement,
        snapshot,
        differential
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureDefinitionImplCopyWith<_$StructureDefinitionImpl> get copyWith =>
      __$$StructureDefinitionImplCopyWithImpl<_$StructureDefinitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructureDefinitionImplToJson(
      this,
    );
  }
}

abstract class _StructureDefinition extends StructureDefinition {
  const factory _StructureDefinition(
      {@JsonKey(unknownEnumValue: R4ResourceType.StructureDefinition)
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
      final List<Coding>? keyword,
      final FhirCode? fhirVersion,
      @JsonKey(name: '_fhirVersion') final PrimitiveElement? fhirVersionElement,
      final List<StructureDefinitionMapping>? mapping,
      final FhirCode? kind,
      @JsonKey(name: '_kind') final PrimitiveElement? kindElement,
      @JsonKey(name: 'abstract') final FhirBoolean? abstract_,
      @JsonKey(name: '_abstract') final PrimitiveElement? abstractElement,
      final List<StructureDefinitionContext>? context,
      final List<String>? contextInvariant,
      @JsonKey(name: '_contextInvariant')
      final List<PrimitiveElement>? contextInvariantElement,
      final FhirUri? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      final FhirCanonical? baseDefinition,
      @JsonKey(name: '_baseDefinition')
      final PrimitiveElement? baseDefinitionElement,
      final FhirCode? derivation,
      @JsonKey(name: '_derivation') final PrimitiveElement? derivationElement,
      final StructureDefinitionSnapshot? snapshot,
      final StructureDefinitionDifferential?
          differential}) = _$StructureDefinitionImpl;
  const _StructureDefinition._() : super._();

  factory _StructureDefinition.fromJson(Map<String, dynamic> json) =
      _$StructureDefinitionImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.StructureDefinition)
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

  /// [url] An absolute URI that is used to identify this structure definition
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this structure definition is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  ///  structure definition is stored on different servers.
  FhirUri? get url;
  @override

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override

  /// [identifier] A formal identifier that is used to identify this structure
  /// definition when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  List<Identifier>? get identifier;
  @override

  /// [version] The identifier that is used to identify this version of the
  /// structure definition when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the structure
  /// definition author and is not expected to be globally unique. For example,
  /// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
  /// available. There is also no expectation that versions can be placed in a
  ///  lexicographical sequence.
  String? get version;
  @override

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement;
  @override

  /// [name] A natural language name identifying the structure definition. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [title] A short, descriptive, user-friendly title for the structure
  ///  definition.
  String? get title;
  @override

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;
  @override

  /// [status] The status of this structure definition. Enables tracking the
  ///  life-cycle of the content.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [experimental] A Boolean value to indicate that this structure definition
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  FhirBoolean? get experimental;
  @override

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement;
  @override

  /// [date] The date  (and optionally time) when the structure definition was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the structure definition changes.
  FhirDateTime? get date;
  @override

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override

  /// [publisher] The name of the organization or individual that published the
  ///  structure definition.
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
  ///  and searching for appropriate structure definition instances.
  List<UsageContext>? get useContext;
  @override

  /// [jurisdiction] A legal or geographic region in which the structure
  ///  definition is intended to be used.
  List<CodeableConcept>? get jurisdiction;
  @override

  /// [purpose] Explanation of why this structure definition is needed and why
  ///  it has been designed as it has.
  FhirMarkdown? get purpose;
  @override

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement;
  @override

  /// [copyright] A copyright statement relating to the structure definition
  /// and/or its contents. Copyright statements are generally legal restrictions
  ///  on the use and publishing of the structure definition.
  FhirMarkdown? get copyright;
  @override

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement;
  @override

  /// [keyword] A set of key words or terms from external terminologies that
  /// may be used to assist with indexing and searching of templates nby
  /// describing the use of this structure definition, or the content it
  ///  describes.
  List<Coding>? get keyword;
  @override

  /// [fhirVersion] The version of the FHIR specification on which this
  /// StructureDefinition is based - this is the formal version of the
  /// specification, without the revision number, e.g.
  ///  [publication].[major].[minor], which is 4.0.1. for this version.
  FhirCode? get fhirVersion;
  @override

  /// [fhirVersionElement] Extensions for fhirVersion
  @JsonKey(name: '_fhirVersion')
  PrimitiveElement? get fhirVersionElement;
  @override

  /// [mapping] An external specification that the content is mapped to.
  List<StructureDefinitionMapping>? get mapping;
  @override

  /// [kind] Defines the kind of structure that this definition is describing.
  FhirCode? get kind;
  @override

  /// [kindElement] Extensions for kind
  @JsonKey(name: '_kind')
  PrimitiveElement? get kindElement;
  @override

  /// [abstract] Whether structure this definition describes is abstract or not
  /// - that is, whether the structure is not intended to be instantiated. For
  /// Resources and Data types, abstract types will never be exchanged  between
  ///  systems.
  @JsonKey(name: 'abstract')
  FhirBoolean? get abstract_;
  @override

  /// [abstractElement] Extensions for abstract
  @JsonKey(name: '_abstract')
  PrimitiveElement? get abstractElement;
  @override

  /// [context] Identifies the types of resource or data type elements to which
  ///  the extension can be applied.
  List<StructureDefinitionContext>? get context;
  @override

  /// [contextInvariant] A set of rules as FHIRPath Invariants about when the
  /// extension can be used (e.g. co-occurrence variants for the extension). All
  ///  the rules must be true.
  List<String>? get contextInvariant;
  @override

  /// [contextInvariantElement] Extensions for contextInvariant
  @JsonKey(name: '_contextInvariant')
  List<PrimitiveElement>? get contextInvariantElement;
  @override

  /// [type] The type this structure describes. If the derivation kind is
  /// 'specialization' then this is the master definition for a type, and there
  /// is always one of these (a data type, an extension, a resource, including
  /// abstract ones). Otherwise the structure definition is a constraint on the
  /// stated type (and in this case, the type cannot be an abstract type).
  /// References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
  ///  allowed in logical models.
  FhirUri? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [baseDefinition] An absolute URI that is the base structure from which
  ///  this type is derived, either by specialization or constraint.
  FhirCanonical? get baseDefinition;
  @override
  @JsonKey(name: '_baseDefinition')
  PrimitiveElement? get baseDefinitionElement;
  @override

  /// [derivation] How the type relates to the baseDefinition.
  FhirCode? get derivation;
  @override

  /// [derivationElement] Extensions for derivation
  @JsonKey(name: '_derivation')
  PrimitiveElement? get derivationElement;
  @override

  /// [snapshot] A snapshot view is expressed in a standalone form that can be
  ///  used and interpreted without considering the base StructureDefinition.
  StructureDefinitionSnapshot? get snapshot;
  @override

  /// [differential] A differential view is expressed relative to the base
  ///  StructureDefinition - a statement of differences that it applies.
  StructureDefinitionDifferential? get differential;
  @override
  @JsonKey(ignore: true)
  _$$StructureDefinitionImplCopyWith<_$StructureDefinitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StructureDefinitionMapping _$StructureDefinitionMappingFromJson(
    Map<String, dynamic> json) {
  return _StructureDefinitionMapping.fromJson(json);
}

/// @nodoc
mixin _$StructureDefinitionMapping {
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

  /// [identity] An Internal id that is used to identify this mapping set when
  ///  specific mappings are made.
  FhirId? get identity => throw _privateConstructorUsedError;

  /// [identityElement] Extensions for identity
  @JsonKey(name: '_identity')
  PrimitiveElement? get identityElement => throw _privateConstructorUsedError;

  /// [uri] An absolute URI that identifies the specification that this mapping
  ///  is expressed to.
  FhirUri? get uri => throw _privateConstructorUsedError;

  /// [uriElement] Extensions for uri
  @JsonKey(name: '_uri')
  PrimitiveElement? get uriElement => throw _privateConstructorUsedError;

  /// [name] A name for the specification that is being mapped to.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [comment] Comments about this mapping, including version notes, issues,
  ///  scope limitations, and other important notes for usage.
  String? get comment => throw _privateConstructorUsedError;

  /// [commentElement] Extensions for comment
  @JsonKey(name: '_comment')
  PrimitiveElement? get commentElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructureDefinitionMappingCopyWith<StructureDefinitionMapping>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructureDefinitionMappingCopyWith<$Res> {
  factory $StructureDefinitionMappingCopyWith(StructureDefinitionMapping value,
          $Res Function(StructureDefinitionMapping) then) =
      _$StructureDefinitionMappingCopyWithImpl<$Res,
          StructureDefinitionMapping>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? identity,
      @JsonKey(name: '_identity') PrimitiveElement? identityElement,
      FhirUri? uri,
      @JsonKey(name: '_uri') PrimitiveElement? uriElement,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? comment,
      @JsonKey(name: '_comment') PrimitiveElement? commentElement});
}

/// @nodoc
class _$StructureDefinitionMappingCopyWithImpl<$Res,
        $Val extends StructureDefinitionMapping>
    implements $StructureDefinitionMappingCopyWith<$Res> {
  _$StructureDefinitionMappingCopyWithImpl(this._value, this._then);

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
    Object? identity = freezed,
    Object? identityElement = freezed,
    Object? uri = freezed,
    Object? uriElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
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
      identity: freezed == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      identityElement: freezed == identityElement
          ? _value.identityElement
          : identityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      uriElement: freezed == uriElement
          ? _value.uriElement
          : uriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      commentElement: freezed == commentElement
          ? _value.commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StructureDefinitionMappingImplCopyWith<$Res>
    implements $StructureDefinitionMappingCopyWith<$Res> {
  factory _$$StructureDefinitionMappingImplCopyWith(
          _$StructureDefinitionMappingImpl value,
          $Res Function(_$StructureDefinitionMappingImpl) then) =
      __$$StructureDefinitionMappingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirId? identity,
      @JsonKey(name: '_identity') PrimitiveElement? identityElement,
      FhirUri? uri,
      @JsonKey(name: '_uri') PrimitiveElement? uriElement,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? comment,
      @JsonKey(name: '_comment') PrimitiveElement? commentElement});
}

/// @nodoc
class __$$StructureDefinitionMappingImplCopyWithImpl<$Res>
    extends _$StructureDefinitionMappingCopyWithImpl<$Res,
        _$StructureDefinitionMappingImpl>
    implements _$$StructureDefinitionMappingImplCopyWith<$Res> {
  __$$StructureDefinitionMappingImplCopyWithImpl(
      _$StructureDefinitionMappingImpl _value,
      $Res Function(_$StructureDefinitionMappingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identity = freezed,
    Object? identityElement = freezed,
    Object? uri = freezed,
    Object? uriElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
  }) {
    return _then(_$StructureDefinitionMappingImpl(
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
      identity: freezed == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      identityElement: freezed == identityElement
          ? _value.identityElement
          : identityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      uriElement: freezed == uriElement
          ? _value.uriElement
          : uriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      commentElement: freezed == commentElement
          ? _value.commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructureDefinitionMappingImpl extends _StructureDefinitionMapping {
  const _$StructureDefinitionMappingImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.identity,
      @JsonKey(name: '_identity') this.identityElement,
      this.uri,
      @JsonKey(name: '_uri') this.uriElement,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.comment,
      @JsonKey(name: '_comment') this.commentElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$StructureDefinitionMappingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StructureDefinitionMappingImplFromJson(json);

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

  /// [identity] An Internal id that is used to identify this mapping set when
  ///  specific mappings are made.
  @override
  final FhirId? identity;

  /// [identityElement] Extensions for identity
  @override
  @JsonKey(name: '_identity')
  final PrimitiveElement? identityElement;

  /// [uri] An absolute URI that identifies the specification that this mapping
  ///  is expressed to.
  @override
  final FhirUri? uri;

  /// [uriElement] Extensions for uri
  @override
  @JsonKey(name: '_uri')
  final PrimitiveElement? uriElement;

  /// [name] A name for the specification that is being mapped to.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [comment] Comments about this mapping, including version notes, issues,
  ///  scope limitations, and other important notes for usage.
  @override
  final String? comment;

  /// [commentElement] Extensions for comment
  @override
  @JsonKey(name: '_comment')
  final PrimitiveElement? commentElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructureDefinitionMappingImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.identityElement, identityElement) ||
                other.identityElement == identityElement) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.uriElement, uriElement) ||
                other.uriElement == uriElement) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.commentElement, commentElement) ||
                other.commentElement == commentElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      identity,
      identityElement,
      uri,
      uriElement,
      name,
      nameElement,
      comment,
      commentElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureDefinitionMappingImplCopyWith<_$StructureDefinitionMappingImpl>
      get copyWith => __$$StructureDefinitionMappingImplCopyWithImpl<
          _$StructureDefinitionMappingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructureDefinitionMappingImplToJson(
      this,
    );
  }
}

abstract class _StructureDefinitionMapping extends StructureDefinitionMapping {
  const factory _StructureDefinitionMapping(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirId? identity,
          @JsonKey(name: '_identity') final PrimitiveElement? identityElement,
          final FhirUri? uri,
          @JsonKey(name: '_uri') final PrimitiveElement? uriElement,
          final String? name,
          @JsonKey(name: '_name') final PrimitiveElement? nameElement,
          final String? comment,
          @JsonKey(name: '_comment') final PrimitiveElement? commentElement}) =
      _$StructureDefinitionMappingImpl;
  const _StructureDefinitionMapping._() : super._();

  factory _StructureDefinitionMapping.fromJson(Map<String, dynamic> json) =
      _$StructureDefinitionMappingImpl.fromJson;

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

  /// [identity] An Internal id that is used to identify this mapping set when
  ///  specific mappings are made.
  FhirId? get identity;
  @override

  /// [identityElement] Extensions for identity
  @JsonKey(name: '_identity')
  PrimitiveElement? get identityElement;
  @override

  /// [uri] An absolute URI that identifies the specification that this mapping
  ///  is expressed to.
  FhirUri? get uri;
  @override

  /// [uriElement] Extensions for uri
  @JsonKey(name: '_uri')
  PrimitiveElement? get uriElement;
  @override

  /// [name] A name for the specification that is being mapped to.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [comment] Comments about this mapping, including version notes, issues,
  ///  scope limitations, and other important notes for usage.
  String? get comment;
  @override

  /// [commentElement] Extensions for comment
  @JsonKey(name: '_comment')
  PrimitiveElement? get commentElement;
  @override
  @JsonKey(ignore: true)
  _$$StructureDefinitionMappingImplCopyWith<_$StructureDefinitionMappingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StructureDefinitionContext _$StructureDefinitionContextFromJson(
    Map<String, dynamic> json) {
  return _StructureDefinitionContext.fromJson(json);
}

/// @nodoc
mixin _$StructureDefinitionContext {
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

  /// [type] Defines how to interpret the expression that defines what the
  ///  context of the extension is.
  FhirCode? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [expression] An expression that defines where an extension can be used in
  ///  resources.
  String? get expression => throw _privateConstructorUsedError;

  /// [expressionElement] Extensions for expression
  @JsonKey(name: '_expression')
  PrimitiveElement? get expressionElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructureDefinitionContextCopyWith<StructureDefinitionContext>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructureDefinitionContextCopyWith<$Res> {
  factory $StructureDefinitionContextCopyWith(StructureDefinitionContext value,
          $Res Function(StructureDefinitionContext) then) =
      _$StructureDefinitionContextCopyWithImpl<$Res,
          StructureDefinitionContext>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      String? expression,
      @JsonKey(name: '_expression') PrimitiveElement? expressionElement});
}

/// @nodoc
class _$StructureDefinitionContextCopyWithImpl<$Res,
        $Val extends StructureDefinitionContext>
    implements $StructureDefinitionContextCopyWith<$Res> {
  _$StructureDefinitionContextCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? expression = freezed,
    Object? expressionElement = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      expression: freezed == expression
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String?,
      expressionElement: freezed == expressionElement
          ? _value.expressionElement
          : expressionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StructureDefinitionContextImplCopyWith<$Res>
    implements $StructureDefinitionContextCopyWith<$Res> {
  factory _$$StructureDefinitionContextImplCopyWith(
          _$StructureDefinitionContextImpl value,
          $Res Function(_$StructureDefinitionContextImpl) then) =
      __$$StructureDefinitionContextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      String? expression,
      @JsonKey(name: '_expression') PrimitiveElement? expressionElement});
}

/// @nodoc
class __$$StructureDefinitionContextImplCopyWithImpl<$Res>
    extends _$StructureDefinitionContextCopyWithImpl<$Res,
        _$StructureDefinitionContextImpl>
    implements _$$StructureDefinitionContextImplCopyWith<$Res> {
  __$$StructureDefinitionContextImplCopyWithImpl(
      _$StructureDefinitionContextImpl _value,
      $Res Function(_$StructureDefinitionContextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? expression = freezed,
    Object? expressionElement = freezed,
  }) {
    return _then(_$StructureDefinitionContextImpl(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      expression: freezed == expression
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String?,
      expressionElement: freezed == expressionElement
          ? _value.expressionElement
          : expressionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructureDefinitionContextImpl extends _StructureDefinitionContext {
  const _$StructureDefinitionContextImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.expression,
      @JsonKey(name: '_expression') this.expressionElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$StructureDefinitionContextImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StructureDefinitionContextImplFromJson(json);

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

  /// [type] Defines how to interpret the expression that defines what the
  ///  context of the extension is.
  @override
  final FhirCode? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [expression] An expression that defines where an extension can be used in
  ///  resources.
  @override
  final String? expression;

  /// [expressionElement] Extensions for expression
  @override
  @JsonKey(name: '_expression')
  final PrimitiveElement? expressionElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructureDefinitionContextImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.expression, expression) ||
                other.expression == expression) &&
            (identical(other.expressionElement, expressionElement) ||
                other.expressionElement == expressionElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      typeElement,
      expression,
      expressionElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureDefinitionContextImplCopyWith<_$StructureDefinitionContextImpl>
      get copyWith => __$$StructureDefinitionContextImplCopyWithImpl<
          _$StructureDefinitionContextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructureDefinitionContextImplToJson(
      this,
    );
  }
}

abstract class _StructureDefinitionContext extends StructureDefinitionContext {
  const factory _StructureDefinitionContext(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCode? type,
          @JsonKey(name: '_type') final PrimitiveElement? typeElement,
          final String? expression,
          @JsonKey(name: '_expression')
          final PrimitiveElement? expressionElement}) =
      _$StructureDefinitionContextImpl;
  const _StructureDefinitionContext._() : super._();

  factory _StructureDefinitionContext.fromJson(Map<String, dynamic> json) =
      _$StructureDefinitionContextImpl.fromJson;

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

  /// [type] Defines how to interpret the expression that defines what the
  ///  context of the extension is.
  FhirCode? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [expression] An expression that defines where an extension can be used in
  ///  resources.
  String? get expression;
  @override

  /// [expressionElement] Extensions for expression
  @JsonKey(name: '_expression')
  PrimitiveElement? get expressionElement;
  @override
  @JsonKey(ignore: true)
  _$$StructureDefinitionContextImplCopyWith<_$StructureDefinitionContextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StructureDefinitionSnapshot _$StructureDefinitionSnapshotFromJson(
    Map<String, dynamic> json) {
  return _StructureDefinitionSnapshot.fromJson(json);
}

/// @nodoc
mixin _$StructureDefinitionSnapshot {
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

  /// [element] Captures constraints on each element within the resource.
  List<ElementDefinition> get element => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructureDefinitionSnapshotCopyWith<StructureDefinitionSnapshot>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructureDefinitionSnapshotCopyWith<$Res> {
  factory $StructureDefinitionSnapshotCopyWith(
          StructureDefinitionSnapshot value,
          $Res Function(StructureDefinitionSnapshot) then) =
      _$StructureDefinitionSnapshotCopyWithImpl<$Res,
          StructureDefinitionSnapshot>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<ElementDefinition> element});
}

/// @nodoc
class _$StructureDefinitionSnapshotCopyWithImpl<$Res,
        $Val extends StructureDefinitionSnapshot>
    implements $StructureDefinitionSnapshotCopyWith<$Res> {
  _$StructureDefinitionSnapshotCopyWithImpl(this._value, this._then);

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
    Object? element = null,
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
      element: null == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinition>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StructureDefinitionSnapshotImplCopyWith<$Res>
    implements $StructureDefinitionSnapshotCopyWith<$Res> {
  factory _$$StructureDefinitionSnapshotImplCopyWith(
          _$StructureDefinitionSnapshotImpl value,
          $Res Function(_$StructureDefinitionSnapshotImpl) then) =
      __$$StructureDefinitionSnapshotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<ElementDefinition> element});
}

/// @nodoc
class __$$StructureDefinitionSnapshotImplCopyWithImpl<$Res>
    extends _$StructureDefinitionSnapshotCopyWithImpl<$Res,
        _$StructureDefinitionSnapshotImpl>
    implements _$$StructureDefinitionSnapshotImplCopyWith<$Res> {
  __$$StructureDefinitionSnapshotImplCopyWithImpl(
      _$StructureDefinitionSnapshotImpl _value,
      $Res Function(_$StructureDefinitionSnapshotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? element = null,
  }) {
    return _then(_$StructureDefinitionSnapshotImpl(
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
      element: null == element
          ? _value._element
          : element // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinition>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructureDefinitionSnapshotImpl extends _StructureDefinitionSnapshot {
  const _$StructureDefinitionSnapshotImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final List<ElementDefinition> element})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _element = element,
        super._();

  factory _$StructureDefinitionSnapshotImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StructureDefinitionSnapshotImplFromJson(json);

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

  /// [element] Captures constraints on each element within the resource.
  final List<ElementDefinition> _element;

  /// [element] Captures constraints on each element within the resource.
  @override
  List<ElementDefinition> get element {
    if (_element is EqualUnmodifiableListView) return _element;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_element);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructureDefinitionSnapshotImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other._element, _element));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_element));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureDefinitionSnapshotImplCopyWith<_$StructureDefinitionSnapshotImpl>
      get copyWith => __$$StructureDefinitionSnapshotImplCopyWithImpl<
          _$StructureDefinitionSnapshotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructureDefinitionSnapshotImplToJson(
      this,
    );
  }
}

abstract class _StructureDefinitionSnapshot
    extends StructureDefinitionSnapshot {
  const factory _StructureDefinitionSnapshot(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final List<ElementDefinition> element}) =
      _$StructureDefinitionSnapshotImpl;
  const _StructureDefinitionSnapshot._() : super._();

  factory _StructureDefinitionSnapshot.fromJson(Map<String, dynamic> json) =
      _$StructureDefinitionSnapshotImpl.fromJson;

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

  /// [element] Captures constraints on each element within the resource.
  List<ElementDefinition> get element;
  @override
  @JsonKey(ignore: true)
  _$$StructureDefinitionSnapshotImplCopyWith<_$StructureDefinitionSnapshotImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StructureDefinitionDifferential _$StructureDefinitionDifferentialFromJson(
    Map<String, dynamic> json) {
  return _StructureDefinitionDifferential.fromJson(json);
}

/// @nodoc
mixin _$StructureDefinitionDifferential {
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

  /// [element] Captures constraints on each element within the resource.
  List<ElementDefinition> get element => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructureDefinitionDifferentialCopyWith<StructureDefinitionDifferential>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructureDefinitionDifferentialCopyWith<$Res> {
  factory $StructureDefinitionDifferentialCopyWith(
          StructureDefinitionDifferential value,
          $Res Function(StructureDefinitionDifferential) then) =
      _$StructureDefinitionDifferentialCopyWithImpl<$Res,
          StructureDefinitionDifferential>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<ElementDefinition> element});
}

/// @nodoc
class _$StructureDefinitionDifferentialCopyWithImpl<$Res,
        $Val extends StructureDefinitionDifferential>
    implements $StructureDefinitionDifferentialCopyWith<$Res> {
  _$StructureDefinitionDifferentialCopyWithImpl(this._value, this._then);

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
    Object? element = null,
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
      element: null == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinition>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StructureDefinitionDifferentialImplCopyWith<$Res>
    implements $StructureDefinitionDifferentialCopyWith<$Res> {
  factory _$$StructureDefinitionDifferentialImplCopyWith(
          _$StructureDefinitionDifferentialImpl value,
          $Res Function(_$StructureDefinitionDifferentialImpl) then) =
      __$$StructureDefinitionDifferentialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<ElementDefinition> element});
}

/// @nodoc
class __$$StructureDefinitionDifferentialImplCopyWithImpl<$Res>
    extends _$StructureDefinitionDifferentialCopyWithImpl<$Res,
        _$StructureDefinitionDifferentialImpl>
    implements _$$StructureDefinitionDifferentialImplCopyWith<$Res> {
  __$$StructureDefinitionDifferentialImplCopyWithImpl(
      _$StructureDefinitionDifferentialImpl _value,
      $Res Function(_$StructureDefinitionDifferentialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? element = null,
  }) {
    return _then(_$StructureDefinitionDifferentialImpl(
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
      element: null == element
          ? _value._element
          : element // ignore: cast_nullable_to_non_nullable
              as List<ElementDefinition>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructureDefinitionDifferentialImpl
    extends _StructureDefinitionDifferential {
  const _$StructureDefinitionDifferentialImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final List<ElementDefinition> element})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _element = element,
        super._();

  factory _$StructureDefinitionDifferentialImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StructureDefinitionDifferentialImplFromJson(json);

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

  /// [element] Captures constraints on each element within the resource.
  final List<ElementDefinition> _element;

  /// [element] Captures constraints on each element within the resource.
  @override
  List<ElementDefinition> get element {
    if (_element is EqualUnmodifiableListView) return _element;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_element);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructureDefinitionDifferentialImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other._element, _element));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_element));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureDefinitionDifferentialImplCopyWith<
          _$StructureDefinitionDifferentialImpl>
      get copyWith => __$$StructureDefinitionDifferentialImplCopyWithImpl<
          _$StructureDefinitionDifferentialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructureDefinitionDifferentialImplToJson(
      this,
    );
  }
}

abstract class _StructureDefinitionDifferential
    extends StructureDefinitionDifferential {
  const factory _StructureDefinitionDifferential(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final List<ElementDefinition> element}) =
      _$StructureDefinitionDifferentialImpl;
  const _StructureDefinitionDifferential._() : super._();

  factory _StructureDefinitionDifferential.fromJson(Map<String, dynamic> json) =
      _$StructureDefinitionDifferentialImpl.fromJson;

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

  /// [element] Captures constraints on each element within the resource.
  List<ElementDefinition> get element;
  @override
  @JsonKey(ignore: true)
  _$$StructureDefinitionDifferentialImplCopyWith<
          _$StructureDefinitionDifferentialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
