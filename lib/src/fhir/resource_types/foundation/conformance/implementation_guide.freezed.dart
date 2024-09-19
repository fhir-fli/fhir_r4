// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'implementation_guide.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImplementationGuide _$ImplementationGuideFromJson(Map<String, dynamic> json) {
  return _ImplementationGuide.fromJson(json);
}

/// @nodoc
mixin _$ImplementationGuide {
  @JsonKey(unknownEnumValue: R4ResourceType.ImplementationGuide)
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

  /// [url] An absolute URI that is used to identify this implementation guide
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this implementation guide is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  ///  implementation guide is stored on different servers.
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [version] The identifier that is used to identify this version of the
  /// implementation guide when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the
  /// implementation guide author and is not expected to be globally unique. For
  /// example, it might be a timestamp (e.g. yyyymmdd) if a managed version is
  /// not available. There is also no expectation that versions can be placed in
  ///  a lexicographical sequence.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  /// [name] A natural language name identifying the implementation guide. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [title] A short, descriptive, user-friendly title for the implementation
  ///  guide.
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;

  /// [status] The status of this implementation guide. Enables tracking the
  ///  life-cycle of the content.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [experimental] A Boolean value to indicate that this implementation guide
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  FhirBoolean? get experimental => throw _privateConstructorUsedError;

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement =>
      throw _privateConstructorUsedError;

  /// [date] The date  (and optionally time) when the implementation guide was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the implementation guide changes.
  FhirDateTime? get date => throw _privateConstructorUsedError;

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [publisher] The name of the organization or individual that published the
  ///  implementation guide.
  String? get publisher => throw _privateConstructorUsedError;

  /// [publisherElement] Extensions for publisher
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement => throw _privateConstructorUsedError;

  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  List<ContactDetail>? get contact => throw _privateConstructorUsedError;

  /// [description] A free text natural language description of the
  ///  implementation guide from a consumer's perspective.
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate implementation guide instances.
  List<UsageContext>? get useContext => throw _privateConstructorUsedError;

  /// [jurisdiction] A legal or geographic region in which the implementation
  ///  guide is intended to be used.
  List<CodeableConcept>? get jurisdiction => throw _privateConstructorUsedError;

  /// [copyright] A copyright statement relating to the implementation guide
  /// and/or its contents. Copyright statements are generally legal restrictions
  ///  on the use and publishing of the implementation guide.
  FhirMarkdown? get copyright => throw _privateConstructorUsedError;

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement => throw _privateConstructorUsedError;

  /// [packageId] The NPM package name for this Implementation Guide, used in
  /// the NPM package distribution, which is the primary mechanism by which FHIR
  /// based tooling manages IG dependencies. This value must be globally unique,
  ///  and should be assigned with care.
  FhirId? get packageId => throw _privateConstructorUsedError;

  /// [packageIdElement] Extensions for packageId
  @JsonKey(name: '_packageId')
  PrimitiveElement? get packageIdElement => throw _privateConstructorUsedError;

  /// [license] The license that applies to this Implementation Guide, using an
  ///  SPDX license code, or 'not-open-source'.
  FhirCode? get license => throw _privateConstructorUsedError;

  /// [licenseElement] Extensions for license
  @JsonKey(name: '_license')
  PrimitiveElement? get licenseElement => throw _privateConstructorUsedError;

  /// [fhirVersion] The version(s) of the FHIR specification that this
  /// ImplementationGuide targets - e.g. describes how to use. The value of this
  /// element is the formal version of the specification, without the revision
  /// number, e.g. [publication].[major].[minor], which is 4.0.1. for this
  ///  version.
  List<FhirCode>? get fhirVersion => throw _privateConstructorUsedError;

  /// [fhirVersionElement] Extensions for fhirVersion
  @JsonKey(name: '_fhirVersion')
  List<PrimitiveElement>? get fhirVersionElement =>
      throw _privateConstructorUsedError;

  /// [dependsOn] Another implementation guide that this implementation depends
  /// on. Typically, an implementation guide uses value sets, profiles
  ///  etc.defined in other implementation guides.
  List<ImplementationGuideDependsOn>? get dependsOn =>
      throw _privateConstructorUsedError;

  /// [global] A set of profiles that all resources covered by this
  ///  implementation guide must conform to.
  List<ImplementationGuideGlobal>? get global =>
      throw _privateConstructorUsedError;

  /// [definition] The information needed by an IG publisher tool to publish
  ///  the whole implementation guide.
  ImplementationGuideDefinition? get definition =>
      throw _privateConstructorUsedError;

  /// [manifest] Information about an assembled implementation guide, created
  ///  by the publication tooling.
  ImplementationGuideManifest? get manifest =>
      throw _privateConstructorUsedError;

  /// Serializes this ImplementationGuide to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImplementationGuide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImplementationGuideCopyWith<ImplementationGuide> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImplementationGuideCopyWith<$Res> {
  factory $ImplementationGuideCopyWith(
          ImplementationGuide value, $Res Function(ImplementationGuide) then) =
      _$ImplementationGuideCopyWithImpl<$Res, ImplementationGuide>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ImplementationGuide)
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
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
      FhirId? packageId,
      @JsonKey(name: '_packageId') PrimitiveElement? packageIdElement,
      FhirCode? license,
      @JsonKey(name: '_license') PrimitiveElement? licenseElement,
      List<FhirCode>? fhirVersion,
      @JsonKey(name: '_fhirVersion') List<PrimitiveElement>? fhirVersionElement,
      List<ImplementationGuideDependsOn>? dependsOn,
      List<ImplementationGuideGlobal>? global,
      ImplementationGuideDefinition? definition,
      ImplementationGuideManifest? manifest});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $ImplementationGuideDefinitionCopyWith<$Res>? get definition;
  $ImplementationGuideManifestCopyWith<$Res>? get manifest;
}

/// @nodoc
class _$ImplementationGuideCopyWithImpl<$Res, $Val extends ImplementationGuide>
    implements $ImplementationGuideCopyWith<$Res> {
  _$ImplementationGuideCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImplementationGuide
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
    Object? copyright = freezed,
    Object? copyrightElement = freezed,
    Object? packageId = freezed,
    Object? packageIdElement = freezed,
    Object? license = freezed,
    Object? licenseElement = freezed,
    Object? fhirVersion = freezed,
    Object? fhirVersionElement = freezed,
    Object? dependsOn = freezed,
    Object? global = freezed,
    Object? definition = freezed,
    Object? manifest = freezed,
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
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      copyrightElement: freezed == copyrightElement
          ? _value.copyrightElement
          : copyrightElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      packageId: freezed == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      packageIdElement: freezed == packageIdElement
          ? _value.packageIdElement
          : packageIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      licenseElement: freezed == licenseElement
          ? _value.licenseElement
          : licenseElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fhirVersion: freezed == fhirVersion
          ? _value.fhirVersion
          : fhirVersion // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      fhirVersionElement: freezed == fhirVersionElement
          ? _value.fhirVersionElement
          : fhirVersionElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      dependsOn: freezed == dependsOn
          ? _value.dependsOn
          : dependsOn // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuideDependsOn>?,
      global: freezed == global
          ? _value.global
          : global // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuideGlobal>?,
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as ImplementationGuideDefinition?,
      manifest: freezed == manifest
          ? _value.manifest
          : manifest // ignore: cast_nullable_to_non_nullable
              as ImplementationGuideManifest?,
    ) as $Val);
  }

  /// Create a copy of ImplementationGuide
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

  /// Create a copy of ImplementationGuide
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

  /// Create a copy of ImplementationGuide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImplementationGuideDefinitionCopyWith<$Res>? get definition {
    if (_value.definition == null) {
      return null;
    }

    return $ImplementationGuideDefinitionCopyWith<$Res>(_value.definition!,
        (value) {
      return _then(_value.copyWith(definition: value) as $Val);
    });
  }

  /// Create a copy of ImplementationGuide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImplementationGuideManifestCopyWith<$Res>? get manifest {
    if (_value.manifest == null) {
      return null;
    }

    return $ImplementationGuideManifestCopyWith<$Res>(_value.manifest!,
        (value) {
      return _then(_value.copyWith(manifest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImplementationGuideImplCopyWith<$Res>
    implements $ImplementationGuideCopyWith<$Res> {
  factory _$$ImplementationGuideImplCopyWith(_$ImplementationGuideImpl value,
          $Res Function(_$ImplementationGuideImpl) then) =
      __$$ImplementationGuideImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ImplementationGuide)
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
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
      FhirId? packageId,
      @JsonKey(name: '_packageId') PrimitiveElement? packageIdElement,
      FhirCode? license,
      @JsonKey(name: '_license') PrimitiveElement? licenseElement,
      List<FhirCode>? fhirVersion,
      @JsonKey(name: '_fhirVersion') List<PrimitiveElement>? fhirVersionElement,
      List<ImplementationGuideDependsOn>? dependsOn,
      List<ImplementationGuideGlobal>? global,
      ImplementationGuideDefinition? definition,
      ImplementationGuideManifest? manifest});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ImplementationGuideDefinitionCopyWith<$Res>? get definition;
  @override
  $ImplementationGuideManifestCopyWith<$Res>? get manifest;
}

/// @nodoc
class __$$ImplementationGuideImplCopyWithImpl<$Res>
    extends _$ImplementationGuideCopyWithImpl<$Res, _$ImplementationGuideImpl>
    implements _$$ImplementationGuideImplCopyWith<$Res> {
  __$$ImplementationGuideImplCopyWithImpl(_$ImplementationGuideImpl _value,
      $Res Function(_$ImplementationGuideImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImplementationGuide
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
    Object? copyright = freezed,
    Object? copyrightElement = freezed,
    Object? packageId = freezed,
    Object? packageIdElement = freezed,
    Object? license = freezed,
    Object? licenseElement = freezed,
    Object? fhirVersion = freezed,
    Object? fhirVersionElement = freezed,
    Object? dependsOn = freezed,
    Object? global = freezed,
    Object? definition = freezed,
    Object? manifest = freezed,
  }) {
    return _then(_$ImplementationGuideImpl(
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
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      copyrightElement: freezed == copyrightElement
          ? _value.copyrightElement
          : copyrightElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      packageId: freezed == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      packageIdElement: freezed == packageIdElement
          ? _value.packageIdElement
          : packageIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      licenseElement: freezed == licenseElement
          ? _value.licenseElement
          : licenseElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fhirVersion: freezed == fhirVersion
          ? _value._fhirVersion
          : fhirVersion // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      fhirVersionElement: freezed == fhirVersionElement
          ? _value._fhirVersionElement
          : fhirVersionElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      dependsOn: freezed == dependsOn
          ? _value._dependsOn
          : dependsOn // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuideDependsOn>?,
      global: freezed == global
          ? _value._global
          : global // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuideGlobal>?,
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as ImplementationGuideDefinition?,
      manifest: freezed == manifest
          ? _value.manifest
          : manifest // ignore: cast_nullable_to_non_nullable
              as ImplementationGuideManifest?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImplementationGuideImpl extends _ImplementationGuide {
  _$ImplementationGuideImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.ImplementationGuide)
      this.resourceType = R4ResourceType.ImplementationGuide,
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
      this.copyright,
      @JsonKey(name: '_copyright') this.copyrightElement,
      this.packageId,
      @JsonKey(name: '_packageId') this.packageIdElement,
      this.license,
      @JsonKey(name: '_license') this.licenseElement,
      final List<FhirCode>? fhirVersion,
      @JsonKey(name: '_fhirVersion')
      final List<PrimitiveElement>? fhirVersionElement,
      final List<ImplementationGuideDependsOn>? dependsOn,
      final List<ImplementationGuideGlobal>? global,
      this.definition,
      this.manifest})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _contact = contact,
        _useContext = useContext,
        _jurisdiction = jurisdiction,
        _fhirVersion = fhirVersion,
        _fhirVersionElement = fhirVersionElement,
        _dependsOn = dependsOn,
        _global = global,
        super._();

  factory _$ImplementationGuideImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImplementationGuideImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ImplementationGuide)
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

  /// [url] An absolute URI that is used to identify this implementation guide
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this implementation guide is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  ///  implementation guide is stored on different servers.
  @override
  final FhirUri? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [version] The identifier that is used to identify this version of the
  /// implementation guide when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the
  /// implementation guide author and is not expected to be globally unique. For
  /// example, it might be a timestamp (e.g. yyyymmdd) if a managed version is
  /// not available. There is also no expectation that versions can be placed in
  ///  a lexicographical sequence.
  @override
  final String? version;

  /// [versionElement] Extensions for version
  @override
  @JsonKey(name: '_version')
  final PrimitiveElement? versionElement;

  /// [name] A natural language name identifying the implementation guide. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [title] A short, descriptive, user-friendly title for the implementation
  ///  guide.
  @override
  final String? title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;

  /// [status] The status of this implementation guide. Enables tracking the
  ///  life-cycle of the content.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [experimental] A Boolean value to indicate that this implementation guide
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  @override
  final FhirBoolean? experimental;

  /// [experimentalElement] Extensions for experimental
  @override
  @JsonKey(name: '_experimental')
  final PrimitiveElement? experimentalElement;

  /// [date] The date  (and optionally time) when the implementation guide was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the implementation guide changes.
  @override
  final FhirDateTime? date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [publisher] The name of the organization or individual that published the
  ///  implementation guide.
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
  ///  implementation guide from a consumer's perspective.
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
  ///  and searching for appropriate implementation guide instances.
  final List<UsageContext>? _useContext;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate implementation guide instances.
  @override
  List<UsageContext>? get useContext {
    final value = _useContext;
    if (value == null) return null;
    if (_useContext is EqualUnmodifiableListView) return _useContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [jurisdiction] A legal or geographic region in which the implementation
  ///  guide is intended to be used.
  final List<CodeableConcept>? _jurisdiction;

  /// [jurisdiction] A legal or geographic region in which the implementation
  ///  guide is intended to be used.
  @override
  List<CodeableConcept>? get jurisdiction {
    final value = _jurisdiction;
    if (value == null) return null;
    if (_jurisdiction is EqualUnmodifiableListView) return _jurisdiction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [copyright] A copyright statement relating to the implementation guide
  /// and/or its contents. Copyright statements are generally legal restrictions
  ///  on the use and publishing of the implementation guide.
  @override
  final FhirMarkdown? copyright;

  /// [copyrightElement] Extensions for copyright
  @override
  @JsonKey(name: '_copyright')
  final PrimitiveElement? copyrightElement;

  /// [packageId] The NPM package name for this Implementation Guide, used in
  /// the NPM package distribution, which is the primary mechanism by which FHIR
  /// based tooling manages IG dependencies. This value must be globally unique,
  ///  and should be assigned with care.
  @override
  final FhirId? packageId;

  /// [packageIdElement] Extensions for packageId
  @override
  @JsonKey(name: '_packageId')
  final PrimitiveElement? packageIdElement;

  /// [license] The license that applies to this Implementation Guide, using an
  ///  SPDX license code, or 'not-open-source'.
  @override
  final FhirCode? license;

  /// [licenseElement] Extensions for license
  @override
  @JsonKey(name: '_license')
  final PrimitiveElement? licenseElement;

  /// [fhirVersion] The version(s) of the FHIR specification that this
  /// ImplementationGuide targets - e.g. describes how to use. The value of this
  /// element is the formal version of the specification, without the revision
  /// number, e.g. [publication].[major].[minor], which is 4.0.1. for this
  ///  version.
  final List<FhirCode>? _fhirVersion;

  /// [fhirVersion] The version(s) of the FHIR specification that this
  /// ImplementationGuide targets - e.g. describes how to use. The value of this
  /// element is the formal version of the specification, without the revision
  /// number, e.g. [publication].[major].[minor], which is 4.0.1. for this
  ///  version.
  @override
  List<FhirCode>? get fhirVersion {
    final value = _fhirVersion;
    if (value == null) return null;
    if (_fhirVersion is EqualUnmodifiableListView) return _fhirVersion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [fhirVersionElement] Extensions for fhirVersion
  final List<PrimitiveElement>? _fhirVersionElement;

  /// [fhirVersionElement] Extensions for fhirVersion
  @override
  @JsonKey(name: '_fhirVersion')
  List<PrimitiveElement>? get fhirVersionElement {
    final value = _fhirVersionElement;
    if (value == null) return null;
    if (_fhirVersionElement is EqualUnmodifiableListView)
      return _fhirVersionElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [dependsOn] Another implementation guide that this implementation depends
  /// on. Typically, an implementation guide uses value sets, profiles
  ///  etc.defined in other implementation guides.
  final List<ImplementationGuideDependsOn>? _dependsOn;

  /// [dependsOn] Another implementation guide that this implementation depends
  /// on. Typically, an implementation guide uses value sets, profiles
  ///  etc.defined in other implementation guides.
  @override
  List<ImplementationGuideDependsOn>? get dependsOn {
    final value = _dependsOn;
    if (value == null) return null;
    if (_dependsOn is EqualUnmodifiableListView) return _dependsOn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [global] A set of profiles that all resources covered by this
  ///  implementation guide must conform to.
  final List<ImplementationGuideGlobal>? _global;

  /// [global] A set of profiles that all resources covered by this
  ///  implementation guide must conform to.
  @override
  List<ImplementationGuideGlobal>? get global {
    final value = _global;
    if (value == null) return null;
    if (_global is EqualUnmodifiableListView) return _global;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [definition] The information needed by an IG publisher tool to publish
  ///  the whole implementation guide.
  @override
  final ImplementationGuideDefinition? definition;

  /// [manifest] Information about an assembled implementation guide, created
  ///  by the publication tooling.
  @override
  final ImplementationGuideManifest? manifest;

  @override
  String toString() {
    return 'ImplementationGuide(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, url: $url, urlElement: $urlElement, version: $version, versionElement: $versionElement, name: $name, nameElement: $nameElement, title: $title, titleElement: $titleElement, status: $status, statusElement: $statusElement, experimental: $experimental, experimentalElement: $experimentalElement, date: $date, dateElement: $dateElement, publisher: $publisher, publisherElement: $publisherElement, contact: $contact, description: $description, descriptionElement: $descriptionElement, useContext: $useContext, jurisdiction: $jurisdiction, copyright: $copyright, copyrightElement: $copyrightElement, packageId: $packageId, packageIdElement: $packageIdElement, license: $license, licenseElement: $licenseElement, fhirVersion: $fhirVersion, fhirVersionElement: $fhirVersionElement, dependsOn: $dependsOn, global: $global, definition: $definition, manifest: $manifest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImplementationGuideImpl &&
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
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.copyrightElement, copyrightElement) ||
                other.copyrightElement == copyrightElement) &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.packageIdElement, packageIdElement) ||
                other.packageIdElement == packageIdElement) &&
            (identical(other.license, license) || other.license == license) &&
            (identical(other.licenseElement, licenseElement) ||
                other.licenseElement == licenseElement) &&
            const DeepCollectionEquality()
                .equals(other._fhirVersion, _fhirVersion) &&
            const DeepCollectionEquality()
                .equals(other._fhirVersionElement, _fhirVersionElement) &&
            const DeepCollectionEquality()
                .equals(other._dependsOn, _dependsOn) &&
            const DeepCollectionEquality().equals(other._global, _global) &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            (identical(other.manifest, manifest) ||
                other.manifest == manifest));
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
        copyright,
        copyrightElement,
        packageId,
        packageIdElement,
        license,
        licenseElement,
        const DeepCollectionEquality().hash(_fhirVersion),
        const DeepCollectionEquality().hash(_fhirVersionElement),
        const DeepCollectionEquality().hash(_dependsOn),
        const DeepCollectionEquality().hash(_global),
        definition,
        manifest
      ]);

  /// Create a copy of ImplementationGuide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImplementationGuideImplCopyWith<_$ImplementationGuideImpl> get copyWith =>
      __$$ImplementationGuideImplCopyWithImpl<_$ImplementationGuideImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImplementationGuideImplToJson(
      this,
    );
  }
}

abstract class _ImplementationGuide extends ImplementationGuide {
  factory _ImplementationGuide(
      {@JsonKey(unknownEnumValue: R4ResourceType.ImplementationGuide)
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
      final FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') final PrimitiveElement? copyrightElement,
      final FhirId? packageId,
      @JsonKey(name: '_packageId') final PrimitiveElement? packageIdElement,
      final FhirCode? license,
      @JsonKey(name: '_license') final PrimitiveElement? licenseElement,
      final List<FhirCode>? fhirVersion,
      @JsonKey(name: '_fhirVersion')
      final List<PrimitiveElement>? fhirVersionElement,
      final List<ImplementationGuideDependsOn>? dependsOn,
      final List<ImplementationGuideGlobal>? global,
      final ImplementationGuideDefinition? definition,
      final ImplementationGuideManifest? manifest}) = _$ImplementationGuideImpl;
  _ImplementationGuide._() : super._();

  factory _ImplementationGuide.fromJson(Map<String, dynamic> json) =
      _$ImplementationGuideImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ImplementationGuide)
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

  /// [url] An absolute URI that is used to identify this implementation guide
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this implementation guide is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  ///  implementation guide is stored on different servers.
  @override
  FhirUri? get url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;

  /// [version] The identifier that is used to identify this version of the
  /// implementation guide when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the
  /// implementation guide author and is not expected to be globally unique. For
  /// example, it might be a timestamp (e.g. yyyymmdd) if a managed version is
  /// not available. There is also no expectation that versions can be placed in
  ///  a lexicographical sequence.
  @override
  String? get version;

  /// [versionElement] Extensions for version
  @override
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement;

  /// [name] A natural language name identifying the implementation guide. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  @override
  String? get name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;

  /// [title] A short, descriptive, user-friendly title for the implementation
  ///  guide.
  @override
  String? get title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;

  /// [status] The status of this implementation guide. Enables tracking the
  ///  life-cycle of the content.
  @override
  FhirCode? get status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;

  /// [experimental] A Boolean value to indicate that this implementation guide
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  @override
  FhirBoolean? get experimental;

  /// [experimentalElement] Extensions for experimental
  @override
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement;

  /// [date] The date  (and optionally time) when the implementation guide was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the implementation guide changes.
  @override
  FhirDateTime? get date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;

  /// [publisher] The name of the organization or individual that published the
  ///  implementation guide.
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

  /// [description] A free text natural language description of the
  ///  implementation guide from a consumer's perspective.
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
  ///  and searching for appropriate implementation guide instances.
  @override
  List<UsageContext>? get useContext;

  /// [jurisdiction] A legal or geographic region in which the implementation
  ///  guide is intended to be used.
  @override
  List<CodeableConcept>? get jurisdiction;

  /// [copyright] A copyright statement relating to the implementation guide
  /// and/or its contents. Copyright statements are generally legal restrictions
  ///  on the use and publishing of the implementation guide.
  @override
  FhirMarkdown? get copyright;

  /// [copyrightElement] Extensions for copyright
  @override
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement;

  /// [packageId] The NPM package name for this Implementation Guide, used in
  /// the NPM package distribution, which is the primary mechanism by which FHIR
  /// based tooling manages IG dependencies. This value must be globally unique,
  ///  and should be assigned with care.
  @override
  FhirId? get packageId;

  /// [packageIdElement] Extensions for packageId
  @override
  @JsonKey(name: '_packageId')
  PrimitiveElement? get packageIdElement;

  /// [license] The license that applies to this Implementation Guide, using an
  ///  SPDX license code, or 'not-open-source'.
  @override
  FhirCode? get license;

  /// [licenseElement] Extensions for license
  @override
  @JsonKey(name: '_license')
  PrimitiveElement? get licenseElement;

  /// [fhirVersion] The version(s) of the FHIR specification that this
  /// ImplementationGuide targets - e.g. describes how to use. The value of this
  /// element is the formal version of the specification, without the revision
  /// number, e.g. [publication].[major].[minor], which is 4.0.1. for this
  ///  version.
  @override
  List<FhirCode>? get fhirVersion;

  /// [fhirVersionElement] Extensions for fhirVersion
  @override
  @JsonKey(name: '_fhirVersion')
  List<PrimitiveElement>? get fhirVersionElement;

  /// [dependsOn] Another implementation guide that this implementation depends
  /// on. Typically, an implementation guide uses value sets, profiles
  ///  etc.defined in other implementation guides.
  @override
  List<ImplementationGuideDependsOn>? get dependsOn;

  /// [global] A set of profiles that all resources covered by this
  ///  implementation guide must conform to.
  @override
  List<ImplementationGuideGlobal>? get global;

  /// [definition] The information needed by an IG publisher tool to publish
  ///  the whole implementation guide.
  @override
  ImplementationGuideDefinition? get definition;

  /// [manifest] Information about an assembled implementation guide, created
  ///  by the publication tooling.
  @override
  ImplementationGuideManifest? get manifest;

  /// Create a copy of ImplementationGuide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImplementationGuideImplCopyWith<_$ImplementationGuideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImplementationGuideDependsOn _$ImplementationGuideDependsOnFromJson(
    Map<String, dynamic> json) {
  return _ImplementationGuideDependsOn.fromJson(json);
}

/// @nodoc
mixin _$ImplementationGuideDependsOn {
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

  /// [uri] A canonical reference to the Implementation guide for the
  ///  dependency.
  FhirCanonical get uri => throw _privateConstructorUsedError;

  /// [packageId] The NPM package name for the Implementation Guide that this
  ///  IG depends on.
  FhirId? get packageId => throw _privateConstructorUsedError;

  /// [packageIdElement] Extensions for packageId
  @JsonKey(name: '_packageId')
  PrimitiveElement? get packageIdElement => throw _privateConstructorUsedError;

  /// [version] The version of the IG that is depended on, when the correct
  ///  version is required to understand the IG correctly.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  /// Serializes this ImplementationGuideDependsOn to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImplementationGuideDependsOn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImplementationGuideDependsOnCopyWith<ImplementationGuideDependsOn>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImplementationGuideDependsOnCopyWith<$Res> {
  factory $ImplementationGuideDependsOnCopyWith(
          ImplementationGuideDependsOn value,
          $Res Function(ImplementationGuideDependsOn) then) =
      _$ImplementationGuideDependsOnCopyWithImpl<$Res,
          ImplementationGuideDependsOn>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCanonical uri,
      FhirId? packageId,
      @JsonKey(name: '_packageId') PrimitiveElement? packageIdElement,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement});
}

/// @nodoc
class _$ImplementationGuideDependsOnCopyWithImpl<$Res,
        $Val extends ImplementationGuideDependsOn>
    implements $ImplementationGuideDependsOnCopyWith<$Res> {
  _$ImplementationGuideDependsOnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImplementationGuideDependsOn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? uri = null,
    Object? packageId = freezed,
    Object? packageIdElement = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
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
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
      packageId: freezed == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      packageIdElement: freezed == packageIdElement
          ? _value.packageIdElement
          : packageIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionElement: freezed == versionElement
          ? _value.versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImplementationGuideDependsOnImplCopyWith<$Res>
    implements $ImplementationGuideDependsOnCopyWith<$Res> {
  factory _$$ImplementationGuideDependsOnImplCopyWith(
          _$ImplementationGuideDependsOnImpl value,
          $Res Function(_$ImplementationGuideDependsOnImpl) then) =
      __$$ImplementationGuideDependsOnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCanonical uri,
      FhirId? packageId,
      @JsonKey(name: '_packageId') PrimitiveElement? packageIdElement,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement});
}

/// @nodoc
class __$$ImplementationGuideDependsOnImplCopyWithImpl<$Res>
    extends _$ImplementationGuideDependsOnCopyWithImpl<$Res,
        _$ImplementationGuideDependsOnImpl>
    implements _$$ImplementationGuideDependsOnImplCopyWith<$Res> {
  __$$ImplementationGuideDependsOnImplCopyWithImpl(
      _$ImplementationGuideDependsOnImpl _value,
      $Res Function(_$ImplementationGuideDependsOnImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImplementationGuideDependsOn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? uri = null,
    Object? packageId = freezed,
    Object? packageIdElement = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
  }) {
    return _then(_$ImplementationGuideDependsOnImpl(
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
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
      packageId: freezed == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      packageIdElement: freezed == packageIdElement
          ? _value.packageIdElement
          : packageIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionElement: freezed == versionElement
          ? _value.versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImplementationGuideDependsOnImpl extends _ImplementationGuideDependsOn {
  _$ImplementationGuideDependsOnImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.uri,
      this.packageId,
      @JsonKey(name: '_packageId') this.packageIdElement,
      this.version,
      @JsonKey(name: '_version') this.versionElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ImplementationGuideDependsOnImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ImplementationGuideDependsOnImplFromJson(json);

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

  /// [uri] A canonical reference to the Implementation guide for the
  ///  dependency.
  @override
  final FhirCanonical uri;

  /// [packageId] The NPM package name for the Implementation Guide that this
  ///  IG depends on.
  @override
  final FhirId? packageId;

  /// [packageIdElement] Extensions for packageId
  @override
  @JsonKey(name: '_packageId')
  final PrimitiveElement? packageIdElement;

  /// [version] The version of the IG that is depended on, when the correct
  ///  version is required to understand the IG correctly.
  @override
  final String? version;

  /// [versionElement] Extensions for version
  @override
  @JsonKey(name: '_version')
  final PrimitiveElement? versionElement;

  @override
  String toString() {
    return 'ImplementationGuideDependsOn(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, uri: $uri, packageId: $packageId, packageIdElement: $packageIdElement, version: $version, versionElement: $versionElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImplementationGuideDependsOnImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.packageIdElement, packageIdElement) ||
                other.packageIdElement == packageIdElement) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.versionElement, versionElement) ||
                other.versionElement == versionElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      uri,
      packageId,
      packageIdElement,
      version,
      versionElement);

  /// Create a copy of ImplementationGuideDependsOn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImplementationGuideDependsOnImplCopyWith<
          _$ImplementationGuideDependsOnImpl>
      get copyWith => __$$ImplementationGuideDependsOnImplCopyWithImpl<
          _$ImplementationGuideDependsOnImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImplementationGuideDependsOnImplToJson(
      this,
    );
  }
}

abstract class _ImplementationGuideDependsOn
    extends ImplementationGuideDependsOn {
  factory _ImplementationGuideDependsOn(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final FhirCanonical uri,
          final FhirId? packageId,
          @JsonKey(name: '_packageId') final PrimitiveElement? packageIdElement,
          final String? version,
          @JsonKey(name: '_version') final PrimitiveElement? versionElement}) =
      _$ImplementationGuideDependsOnImpl;
  _ImplementationGuideDependsOn._() : super._();

  factory _ImplementationGuideDependsOn.fromJson(Map<String, dynamic> json) =
      _$ImplementationGuideDependsOnImpl.fromJson;

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

  /// [uri] A canonical reference to the Implementation guide for the
  ///  dependency.
  @override
  FhirCanonical get uri;

  /// [packageId] The NPM package name for the Implementation Guide that this
  ///  IG depends on.
  @override
  FhirId? get packageId;

  /// [packageIdElement] Extensions for packageId
  @override
  @JsonKey(name: '_packageId')
  PrimitiveElement? get packageIdElement;

  /// [version] The version of the IG that is depended on, when the correct
  ///  version is required to understand the IG correctly.
  @override
  String? get version;

  /// [versionElement] Extensions for version
  @override
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement;

  /// Create a copy of ImplementationGuideDependsOn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImplementationGuideDependsOnImplCopyWith<
          _$ImplementationGuideDependsOnImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ImplementationGuideGlobal _$ImplementationGuideGlobalFromJson(
    Map<String, dynamic> json) {
  return _ImplementationGuideGlobal.fromJson(json);
}

/// @nodoc
mixin _$ImplementationGuideGlobal {
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

  /// [type] The type of resource that all instances must conform to.
  FhirCode? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [profile] A reference to the profile that all instances must conform to.
  FhirCanonical get profile => throw _privateConstructorUsedError;

  /// Serializes this ImplementationGuideGlobal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImplementationGuideGlobal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImplementationGuideGlobalCopyWith<ImplementationGuideGlobal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImplementationGuideGlobalCopyWith<$Res> {
  factory $ImplementationGuideGlobalCopyWith(ImplementationGuideGlobal value,
          $Res Function(ImplementationGuideGlobal) then) =
      _$ImplementationGuideGlobalCopyWithImpl<$Res, ImplementationGuideGlobal>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirCanonical profile});
}

/// @nodoc
class _$ImplementationGuideGlobalCopyWithImpl<$Res,
        $Val extends ImplementationGuideGlobal>
    implements $ImplementationGuideGlobalCopyWith<$Res> {
  _$ImplementationGuideGlobalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImplementationGuideGlobal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? profile = null,
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
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImplementationGuideGlobalImplCopyWith<$Res>
    implements $ImplementationGuideGlobalCopyWith<$Res> {
  factory _$$ImplementationGuideGlobalImplCopyWith(
          _$ImplementationGuideGlobalImpl value,
          $Res Function(_$ImplementationGuideGlobalImpl) then) =
      __$$ImplementationGuideGlobalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirCanonical profile});
}

/// @nodoc
class __$$ImplementationGuideGlobalImplCopyWithImpl<$Res>
    extends _$ImplementationGuideGlobalCopyWithImpl<$Res,
        _$ImplementationGuideGlobalImpl>
    implements _$$ImplementationGuideGlobalImplCopyWith<$Res> {
  __$$ImplementationGuideGlobalImplCopyWithImpl(
      _$ImplementationGuideGlobalImpl _value,
      $Res Function(_$ImplementationGuideGlobalImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImplementationGuideGlobal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? profile = null,
  }) {
    return _then(_$ImplementationGuideGlobalImpl(
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
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImplementationGuideGlobalImpl extends _ImplementationGuideGlobal {
  _$ImplementationGuideGlobalImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      required this.profile})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ImplementationGuideGlobalImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImplementationGuideGlobalImplFromJson(json);

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

  /// [type] The type of resource that all instances must conform to.
  @override
  final FhirCode? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [profile] A reference to the profile that all instances must conform to.
  @override
  final FhirCanonical profile;

  @override
  String toString() {
    return 'ImplementationGuideGlobal(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, typeElement: $typeElement, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImplementationGuideGlobalImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      typeElement,
      profile);

  /// Create a copy of ImplementationGuideGlobal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImplementationGuideGlobalImplCopyWith<_$ImplementationGuideGlobalImpl>
      get copyWith => __$$ImplementationGuideGlobalImplCopyWithImpl<
          _$ImplementationGuideGlobalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImplementationGuideGlobalImplToJson(
      this,
    );
  }
}

abstract class _ImplementationGuideGlobal extends ImplementationGuideGlobal {
  factory _ImplementationGuideGlobal(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirCode? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      required final FhirCanonical profile}) = _$ImplementationGuideGlobalImpl;
  _ImplementationGuideGlobal._() : super._();

  factory _ImplementationGuideGlobal.fromJson(Map<String, dynamic> json) =
      _$ImplementationGuideGlobalImpl.fromJson;

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

  /// [type] The type of resource that all instances must conform to.
  @override
  FhirCode? get type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;

  /// [profile] A reference to the profile that all instances must conform to.
  @override
  FhirCanonical get profile;

  /// Create a copy of ImplementationGuideGlobal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImplementationGuideGlobalImplCopyWith<_$ImplementationGuideGlobalImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ImplementationGuideDefinition _$ImplementationGuideDefinitionFromJson(
    Map<String, dynamic> json) {
  return _ImplementationGuideDefinition.fromJson(json);
}

/// @nodoc
mixin _$ImplementationGuideDefinition {
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

  /// [grouping] A logical group of resources. Logical groups can be used when
  ///  building pages.
  List<ImplementationGuideGrouping>? get grouping =>
      throw _privateConstructorUsedError;

  /// [resource] A resource that is part of the implementation guide.
  /// Conformance resources (value set, structure definition, capability
  /// statements etc.) are obvious candidates for inclusion, but any kind of
  ///  resource can be included as an example resource.
  List<ImplementationGuideResource> get resource =>
      throw _privateConstructorUsedError;

  /// [page] A page / section in the implementation guide. The root page is the
  ///  implementation guide home page.
  ImplementationGuidePage? get page => throw _privateConstructorUsedError;

  /// [parameter] Defines how IG is built by tools.
  List<ImplementationGuideParameter>? get parameter =>
      throw _privateConstructorUsedError;

  /// [template] A template for building resources.
  List<ImplementationGuideTemplate>? get template =>
      throw _privateConstructorUsedError;

  /// Serializes this ImplementationGuideDefinition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImplementationGuideDefinition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImplementationGuideDefinitionCopyWith<ImplementationGuideDefinition>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImplementationGuideDefinitionCopyWith<$Res> {
  factory $ImplementationGuideDefinitionCopyWith(
          ImplementationGuideDefinition value,
          $Res Function(ImplementationGuideDefinition) then) =
      _$ImplementationGuideDefinitionCopyWithImpl<$Res,
          ImplementationGuideDefinition>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<ImplementationGuideGrouping>? grouping,
      List<ImplementationGuideResource> resource,
      ImplementationGuidePage? page,
      List<ImplementationGuideParameter>? parameter,
      List<ImplementationGuideTemplate>? template});

  $ImplementationGuidePageCopyWith<$Res>? get page;
}

/// @nodoc
class _$ImplementationGuideDefinitionCopyWithImpl<$Res,
        $Val extends ImplementationGuideDefinition>
    implements $ImplementationGuideDefinitionCopyWith<$Res> {
  _$ImplementationGuideDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImplementationGuideDefinition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? grouping = freezed,
    Object? resource = null,
    Object? page = freezed,
    Object? parameter = freezed,
    Object? template = freezed,
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
      grouping: freezed == grouping
          ? _value.grouping
          : grouping // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuideGrouping>?,
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuideResource>,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as ImplementationGuidePage?,
      parameter: freezed == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuideParameter>?,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuideTemplate>?,
    ) as $Val);
  }

  /// Create a copy of ImplementationGuideDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImplementationGuidePageCopyWith<$Res>? get page {
    if (_value.page == null) {
      return null;
    }

    return $ImplementationGuidePageCopyWith<$Res>(_value.page!, (value) {
      return _then(_value.copyWith(page: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImplementationGuideDefinitionImplCopyWith<$Res>
    implements $ImplementationGuideDefinitionCopyWith<$Res> {
  factory _$$ImplementationGuideDefinitionImplCopyWith(
          _$ImplementationGuideDefinitionImpl value,
          $Res Function(_$ImplementationGuideDefinitionImpl) then) =
      __$$ImplementationGuideDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<ImplementationGuideGrouping>? grouping,
      List<ImplementationGuideResource> resource,
      ImplementationGuidePage? page,
      List<ImplementationGuideParameter>? parameter,
      List<ImplementationGuideTemplate>? template});

  @override
  $ImplementationGuidePageCopyWith<$Res>? get page;
}

/// @nodoc
class __$$ImplementationGuideDefinitionImplCopyWithImpl<$Res>
    extends _$ImplementationGuideDefinitionCopyWithImpl<$Res,
        _$ImplementationGuideDefinitionImpl>
    implements _$$ImplementationGuideDefinitionImplCopyWith<$Res> {
  __$$ImplementationGuideDefinitionImplCopyWithImpl(
      _$ImplementationGuideDefinitionImpl _value,
      $Res Function(_$ImplementationGuideDefinitionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImplementationGuideDefinition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? grouping = freezed,
    Object? resource = null,
    Object? page = freezed,
    Object? parameter = freezed,
    Object? template = freezed,
  }) {
    return _then(_$ImplementationGuideDefinitionImpl(
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
      grouping: freezed == grouping
          ? _value._grouping
          : grouping // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuideGrouping>?,
      resource: null == resource
          ? _value._resource
          : resource // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuideResource>,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as ImplementationGuidePage?,
      parameter: freezed == parameter
          ? _value._parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuideParameter>?,
      template: freezed == template
          ? _value._template
          : template // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuideTemplate>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImplementationGuideDefinitionImpl
    extends _ImplementationGuideDefinition {
  _$ImplementationGuideDefinitionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<ImplementationGuideGrouping>? grouping,
      required final List<ImplementationGuideResource> resource,
      this.page,
      final List<ImplementationGuideParameter>? parameter,
      final List<ImplementationGuideTemplate>? template})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _grouping = grouping,
        _resource = resource,
        _parameter = parameter,
        _template = template,
        super._();

  factory _$ImplementationGuideDefinitionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ImplementationGuideDefinitionImplFromJson(json);

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

  /// [grouping] A logical group of resources. Logical groups can be used when
  ///  building pages.
  final List<ImplementationGuideGrouping>? _grouping;

  /// [grouping] A logical group of resources. Logical groups can be used when
  ///  building pages.
  @override
  List<ImplementationGuideGrouping>? get grouping {
    final value = _grouping;
    if (value == null) return null;
    if (_grouping is EqualUnmodifiableListView) return _grouping;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [resource] A resource that is part of the implementation guide.
  /// Conformance resources (value set, structure definition, capability
  /// statements etc.) are obvious candidates for inclusion, but any kind of
  ///  resource can be included as an example resource.
  final List<ImplementationGuideResource> _resource;

  /// [resource] A resource that is part of the implementation guide.
  /// Conformance resources (value set, structure definition, capability
  /// statements etc.) are obvious candidates for inclusion, but any kind of
  ///  resource can be included as an example resource.
  @override
  List<ImplementationGuideResource> get resource {
    if (_resource is EqualUnmodifiableListView) return _resource;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resource);
  }

  /// [page] A page / section in the implementation guide. The root page is the
  ///  implementation guide home page.
  @override
  final ImplementationGuidePage? page;

  /// [parameter] Defines how IG is built by tools.
  final List<ImplementationGuideParameter>? _parameter;

  /// [parameter] Defines how IG is built by tools.
  @override
  List<ImplementationGuideParameter>? get parameter {
    final value = _parameter;
    if (value == null) return null;
    if (_parameter is EqualUnmodifiableListView) return _parameter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [template] A template for building resources.
  final List<ImplementationGuideTemplate>? _template;

  /// [template] A template for building resources.
  @override
  List<ImplementationGuideTemplate>? get template {
    final value = _template;
    if (value == null) return null;
    if (_template is EqualUnmodifiableListView) return _template;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ImplementationGuideDefinition(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, grouping: $grouping, resource: $resource, page: $page, parameter: $parameter, template: $template)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImplementationGuideDefinitionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other._grouping, _grouping) &&
            const DeepCollectionEquality().equals(other._resource, _resource) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality()
                .equals(other._parameter, _parameter) &&
            const DeepCollectionEquality().equals(other._template, _template));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_grouping),
      const DeepCollectionEquality().hash(_resource),
      page,
      const DeepCollectionEquality().hash(_parameter),
      const DeepCollectionEquality().hash(_template));

  /// Create a copy of ImplementationGuideDefinition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImplementationGuideDefinitionImplCopyWith<
          _$ImplementationGuideDefinitionImpl>
      get copyWith => __$$ImplementationGuideDefinitionImplCopyWithImpl<
          _$ImplementationGuideDefinitionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImplementationGuideDefinitionImplToJson(
      this,
    );
  }
}

abstract class _ImplementationGuideDefinition
    extends ImplementationGuideDefinition {
  factory _ImplementationGuideDefinition(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final List<ImplementationGuideGrouping>? grouping,
          required final List<ImplementationGuideResource> resource,
          final ImplementationGuidePage? page,
          final List<ImplementationGuideParameter>? parameter,
          final List<ImplementationGuideTemplate>? template}) =
      _$ImplementationGuideDefinitionImpl;
  _ImplementationGuideDefinition._() : super._();

  factory _ImplementationGuideDefinition.fromJson(Map<String, dynamic> json) =
      _$ImplementationGuideDefinitionImpl.fromJson;

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

  /// [grouping] A logical group of resources. Logical groups can be used when
  ///  building pages.
  @override
  List<ImplementationGuideGrouping>? get grouping;

  /// [resource] A resource that is part of the implementation guide.
  /// Conformance resources (value set, structure definition, capability
  /// statements etc.) are obvious candidates for inclusion, but any kind of
  ///  resource can be included as an example resource.
  @override
  List<ImplementationGuideResource> get resource;

  /// [page] A page / section in the implementation guide. The root page is the
  ///  implementation guide home page.
  @override
  ImplementationGuidePage? get page;

  /// [parameter] Defines how IG is built by tools.
  @override
  List<ImplementationGuideParameter>? get parameter;

  /// [template] A template for building resources.
  @override
  List<ImplementationGuideTemplate>? get template;

  /// Create a copy of ImplementationGuideDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImplementationGuideDefinitionImplCopyWith<
          _$ImplementationGuideDefinitionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ImplementationGuideGrouping _$ImplementationGuideGroupingFromJson(
    Map<String, dynamic> json) {
  return _ImplementationGuideGrouping.fromJson(json);
}

/// @nodoc
mixin _$ImplementationGuideGrouping {
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

  /// [name] The human-readable title to display for the package of resources
  ///  when rendering the implementation guide.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [description] Human readable text describing the package.
  String? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// Serializes this ImplementationGuideGrouping to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImplementationGuideGrouping
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImplementationGuideGroupingCopyWith<ImplementationGuideGrouping>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImplementationGuideGroupingCopyWith<$Res> {
  factory $ImplementationGuideGroupingCopyWith(
          ImplementationGuideGrouping value,
          $Res Function(ImplementationGuideGrouping) then) =
      _$ImplementationGuideGroupingCopyWithImpl<$Res,
          ImplementationGuideGrouping>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement});
}

/// @nodoc
class _$ImplementationGuideGroupingCopyWithImpl<$Res,
        $Val extends ImplementationGuideGrouping>
    implements $ImplementationGuideGroupingCopyWith<$Res> {
  _$ImplementationGuideGroupingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImplementationGuideGrouping
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
}

/// @nodoc
abstract class _$$ImplementationGuideGroupingImplCopyWith<$Res>
    implements $ImplementationGuideGroupingCopyWith<$Res> {
  factory _$$ImplementationGuideGroupingImplCopyWith(
          _$ImplementationGuideGroupingImpl value,
          $Res Function(_$ImplementationGuideGroupingImpl) then) =
      __$$ImplementationGuideGroupingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement});
}

/// @nodoc
class __$$ImplementationGuideGroupingImplCopyWithImpl<$Res>
    extends _$ImplementationGuideGroupingCopyWithImpl<$Res,
        _$ImplementationGuideGroupingImpl>
    implements _$$ImplementationGuideGroupingImplCopyWith<$Res> {
  __$$ImplementationGuideGroupingImplCopyWithImpl(
      _$ImplementationGuideGroupingImpl _value,
      $Res Function(_$ImplementationGuideGroupingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImplementationGuideGrouping
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
  }) {
    return _then(_$ImplementationGuideGroupingImpl(
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
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
class _$ImplementationGuideGroupingImpl extends _ImplementationGuideGrouping {
  _$ImplementationGuideGroupingImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ImplementationGuideGroupingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ImplementationGuideGroupingImplFromJson(json);

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

  /// [name] The human-readable title to display for the package of resources
  ///  when rendering the implementation guide.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [description] Human readable text describing the package.
  @override
  final String? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  @override
  String toString() {
    return 'ImplementationGuideGrouping(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, name: $name, nameElement: $nameElement, description: $description, descriptionElement: $descriptionElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImplementationGuideGroupingImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      name,
      nameElement,
      description,
      descriptionElement);

  /// Create a copy of ImplementationGuideGrouping
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImplementationGuideGroupingImplCopyWith<_$ImplementationGuideGroupingImpl>
      get copyWith => __$$ImplementationGuideGroupingImplCopyWithImpl<
          _$ImplementationGuideGroupingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImplementationGuideGroupingImplToJson(
      this,
    );
  }
}

abstract class _ImplementationGuideGrouping
    extends ImplementationGuideGrouping {
  factory _ImplementationGuideGrouping(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final String? name,
          @JsonKey(name: '_name') final PrimitiveElement? nameElement,
          final String? description,
          @JsonKey(name: '_description')
          final PrimitiveElement? descriptionElement}) =
      _$ImplementationGuideGroupingImpl;
  _ImplementationGuideGrouping._() : super._();

  factory _ImplementationGuideGrouping.fromJson(Map<String, dynamic> json) =
      _$ImplementationGuideGroupingImpl.fromJson;

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

  /// [name] The human-readable title to display for the package of resources
  ///  when rendering the implementation guide.
  @override
  String? get name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;

  /// [description] Human readable text describing the package.
  @override
  String? get description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;

  /// Create a copy of ImplementationGuideGrouping
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImplementationGuideGroupingImplCopyWith<_$ImplementationGuideGroupingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ImplementationGuideResource _$ImplementationGuideResourceFromJson(
    Map<String, dynamic> json) {
  return _ImplementationGuideResource.fromJson(json);
}

/// @nodoc
mixin _$ImplementationGuideResource {
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

  /// [reference] Where this resource is found.
  Reference get reference => throw _privateConstructorUsedError;

  /// [fhirVersion] Indicates the FHIR Version(s) this artifact is intended to
  /// apply to. If no versions are specified, the resource is assumed to apply
  ///  to all the versions stated in ImplementationGuide.fhirVersion.
  List<FhirCode>? get fhirVersion => throw _privateConstructorUsedError;

  /// [fhirVersionElement] Extensions for fhirVersion
  @JsonKey(name: '_fhirVersion')
  List<PrimitiveElement>? get fhirVersionElement =>
      throw _privateConstructorUsedError;

  /// [name] A human assigned name for the resource. All resources SHOULD have
  /// a name, but the name may be extracted from the resource (e.g.
  ///  ValueSet.name).
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [description] A description of the reason that a resource has been
  ///  included in the implementation guide.
  String? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [exampleBoolean] If true or a reference, indicates the resource is an
  /// example instance.  If a reference is present, indicates that the example
  ///  is an example of the specified profile.
  FhirBoolean? get exampleBoolean => throw _privateConstructorUsedError;

  /// [exampleBooleanElement] Extensions for exampleBoolean
  @JsonKey(name: '_exampleBoolean')
  PrimitiveElement? get exampleBooleanElement =>
      throw _privateConstructorUsedError;

  /// [exampleCanonical] If true or a reference, indicates the resource is an
  /// example instance.  If a reference is present, indicates that the example
  ///  is an example of the specified profile.
  FhirCanonical? get exampleCanonical => throw _privateConstructorUsedError;

  /// [exampleCanonicalElement] Extensions for exampleCanonical
  @JsonKey(name: '_exampleCanonical')
  PrimitiveElement? get exampleCanonicalElement =>
      throw _privateConstructorUsedError;

  /// [groupingId] Reference to the id of the grouping this resource appears
  ///  in.
  FhirId? get groupingId => throw _privateConstructorUsedError;

  /// [groupingIdElement] Extensions for groupingId
  @JsonKey(name: '_groupingId')
  PrimitiveElement? get groupingIdElement => throw _privateConstructorUsedError;

  /// Serializes this ImplementationGuideResource to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImplementationGuideResource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImplementationGuideResourceCopyWith<ImplementationGuideResource>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImplementationGuideResourceCopyWith<$Res> {
  factory $ImplementationGuideResourceCopyWith(
          ImplementationGuideResource value,
          $Res Function(ImplementationGuideResource) then) =
      _$ImplementationGuideResourceCopyWithImpl<$Res,
          ImplementationGuideResource>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference reference,
      List<FhirCode>? fhirVersion,
      @JsonKey(name: '_fhirVersion') List<PrimitiveElement>? fhirVersionElement,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirBoolean? exampleBoolean,
      @JsonKey(name: '_exampleBoolean') PrimitiveElement? exampleBooleanElement,
      FhirCanonical? exampleCanonical,
      @JsonKey(name: '_exampleCanonical')
      PrimitiveElement? exampleCanonicalElement,
      FhirId? groupingId,
      @JsonKey(name: '_groupingId') PrimitiveElement? groupingIdElement});

  $ReferenceCopyWith<$Res> get reference;
}

/// @nodoc
class _$ImplementationGuideResourceCopyWithImpl<$Res,
        $Val extends ImplementationGuideResource>
    implements $ImplementationGuideResourceCopyWith<$Res> {
  _$ImplementationGuideResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImplementationGuideResource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? reference = null,
    Object? fhirVersion = freezed,
    Object? fhirVersionElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? exampleBoolean = freezed,
    Object? exampleBooleanElement = freezed,
    Object? exampleCanonical = freezed,
    Object? exampleCanonicalElement = freezed,
    Object? groupingId = freezed,
    Object? groupingIdElement = freezed,
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
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as Reference,
      fhirVersion: freezed == fhirVersion
          ? _value.fhirVersion
          : fhirVersion // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      fhirVersionElement: freezed == fhirVersionElement
          ? _value.fhirVersionElement
          : fhirVersionElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      exampleBoolean: freezed == exampleBoolean
          ? _value.exampleBoolean
          : exampleBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      exampleBooleanElement: freezed == exampleBooleanElement
          ? _value.exampleBooleanElement
          : exampleBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      exampleCanonical: freezed == exampleCanonical
          ? _value.exampleCanonical
          : exampleCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      exampleCanonicalElement: freezed == exampleCanonicalElement
          ? _value.exampleCanonicalElement
          : exampleCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      groupingId: freezed == groupingId
          ? _value.groupingId
          : groupingId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      groupingIdElement: freezed == groupingIdElement
          ? _value.groupingIdElement
          : groupingIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  /// Create a copy of ImplementationGuideResource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get reference {
    return $ReferenceCopyWith<$Res>(_value.reference, (value) {
      return _then(_value.copyWith(reference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImplementationGuideResourceImplCopyWith<$Res>
    implements $ImplementationGuideResourceCopyWith<$Res> {
  factory _$$ImplementationGuideResourceImplCopyWith(
          _$ImplementationGuideResourceImpl value,
          $Res Function(_$ImplementationGuideResourceImpl) then) =
      __$$ImplementationGuideResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference reference,
      List<FhirCode>? fhirVersion,
      @JsonKey(name: '_fhirVersion') List<PrimitiveElement>? fhirVersionElement,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirBoolean? exampleBoolean,
      @JsonKey(name: '_exampleBoolean') PrimitiveElement? exampleBooleanElement,
      FhirCanonical? exampleCanonical,
      @JsonKey(name: '_exampleCanonical')
      PrimitiveElement? exampleCanonicalElement,
      FhirId? groupingId,
      @JsonKey(name: '_groupingId') PrimitiveElement? groupingIdElement});

  @override
  $ReferenceCopyWith<$Res> get reference;
}

/// @nodoc
class __$$ImplementationGuideResourceImplCopyWithImpl<$Res>
    extends _$ImplementationGuideResourceCopyWithImpl<$Res,
        _$ImplementationGuideResourceImpl>
    implements _$$ImplementationGuideResourceImplCopyWith<$Res> {
  __$$ImplementationGuideResourceImplCopyWithImpl(
      _$ImplementationGuideResourceImpl _value,
      $Res Function(_$ImplementationGuideResourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImplementationGuideResource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? reference = null,
    Object? fhirVersion = freezed,
    Object? fhirVersionElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? exampleBoolean = freezed,
    Object? exampleBooleanElement = freezed,
    Object? exampleCanonical = freezed,
    Object? exampleCanonicalElement = freezed,
    Object? groupingId = freezed,
    Object? groupingIdElement = freezed,
  }) {
    return _then(_$ImplementationGuideResourceImpl(
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
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as Reference,
      fhirVersion: freezed == fhirVersion
          ? _value._fhirVersion
          : fhirVersion // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      fhirVersionElement: freezed == fhirVersionElement
          ? _value._fhirVersionElement
          : fhirVersionElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      exampleBoolean: freezed == exampleBoolean
          ? _value.exampleBoolean
          : exampleBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      exampleBooleanElement: freezed == exampleBooleanElement
          ? _value.exampleBooleanElement
          : exampleBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      exampleCanonical: freezed == exampleCanonical
          ? _value.exampleCanonical
          : exampleCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      exampleCanonicalElement: freezed == exampleCanonicalElement
          ? _value.exampleCanonicalElement
          : exampleCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      groupingId: freezed == groupingId
          ? _value.groupingId
          : groupingId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      groupingIdElement: freezed == groupingIdElement
          ? _value.groupingIdElement
          : groupingIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImplementationGuideResourceImpl extends _ImplementationGuideResource {
  _$ImplementationGuideResourceImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.reference,
      final List<FhirCode>? fhirVersion,
      @JsonKey(name: '_fhirVersion')
      final List<PrimitiveElement>? fhirVersionElement,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.exampleBoolean,
      @JsonKey(name: '_exampleBoolean') this.exampleBooleanElement,
      this.exampleCanonical,
      @JsonKey(name: '_exampleCanonical') this.exampleCanonicalElement,
      this.groupingId,
      @JsonKey(name: '_groupingId') this.groupingIdElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _fhirVersion = fhirVersion,
        _fhirVersionElement = fhirVersionElement,
        super._();

  factory _$ImplementationGuideResourceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ImplementationGuideResourceImplFromJson(json);

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

  /// [reference] Where this resource is found.
  @override
  final Reference reference;

  /// [fhirVersion] Indicates the FHIR Version(s) this artifact is intended to
  /// apply to. If no versions are specified, the resource is assumed to apply
  ///  to all the versions stated in ImplementationGuide.fhirVersion.
  final List<FhirCode>? _fhirVersion;

  /// [fhirVersion] Indicates the FHIR Version(s) this artifact is intended to
  /// apply to. If no versions are specified, the resource is assumed to apply
  ///  to all the versions stated in ImplementationGuide.fhirVersion.
  @override
  List<FhirCode>? get fhirVersion {
    final value = _fhirVersion;
    if (value == null) return null;
    if (_fhirVersion is EqualUnmodifiableListView) return _fhirVersion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [fhirVersionElement] Extensions for fhirVersion
  final List<PrimitiveElement>? _fhirVersionElement;

  /// [fhirVersionElement] Extensions for fhirVersion
  @override
  @JsonKey(name: '_fhirVersion')
  List<PrimitiveElement>? get fhirVersionElement {
    final value = _fhirVersionElement;
    if (value == null) return null;
    if (_fhirVersionElement is EqualUnmodifiableListView)
      return _fhirVersionElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [name] A human assigned name for the resource. All resources SHOULD have
  /// a name, but the name may be extracted from the resource (e.g.
  ///  ValueSet.name).
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [description] A description of the reason that a resource has been
  ///  included in the implementation guide.
  @override
  final String? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [exampleBoolean] If true or a reference, indicates the resource is an
  /// example instance.  If a reference is present, indicates that the example
  ///  is an example of the specified profile.
  @override
  final FhirBoolean? exampleBoolean;

  /// [exampleBooleanElement] Extensions for exampleBoolean
  @override
  @JsonKey(name: '_exampleBoolean')
  final PrimitiveElement? exampleBooleanElement;

  /// [exampleCanonical] If true or a reference, indicates the resource is an
  /// example instance.  If a reference is present, indicates that the example
  ///  is an example of the specified profile.
  @override
  final FhirCanonical? exampleCanonical;

  /// [exampleCanonicalElement] Extensions for exampleCanonical
  @override
  @JsonKey(name: '_exampleCanonical')
  final PrimitiveElement? exampleCanonicalElement;

  /// [groupingId] Reference to the id of the grouping this resource appears
  ///  in.
  @override
  final FhirId? groupingId;

  /// [groupingIdElement] Extensions for groupingId
  @override
  @JsonKey(name: '_groupingId')
  final PrimitiveElement? groupingIdElement;

  @override
  String toString() {
    return 'ImplementationGuideResource(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, reference: $reference, fhirVersion: $fhirVersion, fhirVersionElement: $fhirVersionElement, name: $name, nameElement: $nameElement, description: $description, descriptionElement: $descriptionElement, exampleBoolean: $exampleBoolean, exampleBooleanElement: $exampleBooleanElement, exampleCanonical: $exampleCanonical, exampleCanonicalElement: $exampleCanonicalElement, groupingId: $groupingId, groupingIdElement: $groupingIdElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImplementationGuideResourceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            const DeepCollectionEquality()
                .equals(other._fhirVersion, _fhirVersion) &&
            const DeepCollectionEquality()
                .equals(other._fhirVersionElement, _fhirVersionElement) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.exampleBoolean, exampleBoolean) ||
                other.exampleBoolean == exampleBoolean) &&
            (identical(other.exampleBooleanElement, exampleBooleanElement) ||
                other.exampleBooleanElement == exampleBooleanElement) &&
            (identical(other.exampleCanonical, exampleCanonical) ||
                other.exampleCanonical == exampleCanonical) &&
            (identical(
                    other.exampleCanonicalElement, exampleCanonicalElement) ||
                other.exampleCanonicalElement == exampleCanonicalElement) &&
            (identical(other.groupingId, groupingId) ||
                other.groupingId == groupingId) &&
            (identical(other.groupingIdElement, groupingIdElement) ||
                other.groupingIdElement == groupingIdElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      reference,
      const DeepCollectionEquality().hash(_fhirVersion),
      const DeepCollectionEquality().hash(_fhirVersionElement),
      name,
      nameElement,
      description,
      descriptionElement,
      exampleBoolean,
      exampleBooleanElement,
      exampleCanonical,
      exampleCanonicalElement,
      groupingId,
      groupingIdElement);

  /// Create a copy of ImplementationGuideResource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImplementationGuideResourceImplCopyWith<_$ImplementationGuideResourceImpl>
      get copyWith => __$$ImplementationGuideResourceImplCopyWithImpl<
          _$ImplementationGuideResourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImplementationGuideResourceImplToJson(
      this,
    );
  }
}

abstract class _ImplementationGuideResource
    extends ImplementationGuideResource {
  factory _ImplementationGuideResource(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final Reference reference,
      final List<FhirCode>? fhirVersion,
      @JsonKey(name: '_fhirVersion')
      final List<PrimitiveElement>? fhirVersionElement,
      final String? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final FhirBoolean? exampleBoolean,
      @JsonKey(name: '_exampleBoolean')
      final PrimitiveElement? exampleBooleanElement,
      final FhirCanonical? exampleCanonical,
      @JsonKey(name: '_exampleCanonical')
      final PrimitiveElement? exampleCanonicalElement,
      final FhirId? groupingId,
      @JsonKey(name: '_groupingId')
      final PrimitiveElement?
          groupingIdElement}) = _$ImplementationGuideResourceImpl;
  _ImplementationGuideResource._() : super._();

  factory _ImplementationGuideResource.fromJson(Map<String, dynamic> json) =
      _$ImplementationGuideResourceImpl.fromJson;

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

  /// [reference] Where this resource is found.
  @override
  Reference get reference;

  /// [fhirVersion] Indicates the FHIR Version(s) this artifact is intended to
  /// apply to. If no versions are specified, the resource is assumed to apply
  ///  to all the versions stated in ImplementationGuide.fhirVersion.
  @override
  List<FhirCode>? get fhirVersion;

  /// [fhirVersionElement] Extensions for fhirVersion
  @override
  @JsonKey(name: '_fhirVersion')
  List<PrimitiveElement>? get fhirVersionElement;

  /// [name] A human assigned name for the resource. All resources SHOULD have
  /// a name, but the name may be extracted from the resource (e.g.
  ///  ValueSet.name).
  @override
  String? get name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;

  /// [description] A description of the reason that a resource has been
  ///  included in the implementation guide.
  @override
  String? get description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;

  /// [exampleBoolean] If true or a reference, indicates the resource is an
  /// example instance.  If a reference is present, indicates that the example
  ///  is an example of the specified profile.
  @override
  FhirBoolean? get exampleBoolean;

  /// [exampleBooleanElement] Extensions for exampleBoolean
  @override
  @JsonKey(name: '_exampleBoolean')
  PrimitiveElement? get exampleBooleanElement;

  /// [exampleCanonical] If true or a reference, indicates the resource is an
  /// example instance.  If a reference is present, indicates that the example
  ///  is an example of the specified profile.
  @override
  FhirCanonical? get exampleCanonical;

  /// [exampleCanonicalElement] Extensions for exampleCanonical
  @override
  @JsonKey(name: '_exampleCanonical')
  PrimitiveElement? get exampleCanonicalElement;

  /// [groupingId] Reference to the id of the grouping this resource appears
  ///  in.
  @override
  FhirId? get groupingId;

  /// [groupingIdElement] Extensions for groupingId
  @override
  @JsonKey(name: '_groupingId')
  PrimitiveElement? get groupingIdElement;

  /// Create a copy of ImplementationGuideResource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImplementationGuideResourceImplCopyWith<_$ImplementationGuideResourceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ImplementationGuidePage _$ImplementationGuidePageFromJson(
    Map<String, dynamic> json) {
  return _ImplementationGuidePage.fromJson(json);
}

/// @nodoc
mixin _$ImplementationGuidePage {
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

  /// [nameUrl] The source address for the page.
  FhirUrl? get nameUrl => throw _privateConstructorUsedError;

  /// [nameUrlElement] Extensions for nameUrl
  @JsonKey(name: '_nameUrl')
  PrimitiveElement? get nameUrlElement => throw _privateConstructorUsedError;

  /// [nameReference] The source address for the page.
  Reference? get nameReference => throw _privateConstructorUsedError;

  /// [title] A short title used to represent this page in navigational
  ///  structures such as table of contents, bread crumbs, etc.
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;

  /// [generation] A code that indicates how the page is generated.
  FhirCode? get generation => throw _privateConstructorUsedError;

  /// [generationElement] Extensions for generation
  @JsonKey(name: '_generation')
  PrimitiveElement? get generationElement => throw _privateConstructorUsedError;

  /// [page] Nested Pages/Sections under this page.
  List<ImplementationGuidePage>? get page => throw _privateConstructorUsedError;

  /// Serializes this ImplementationGuidePage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImplementationGuidePage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImplementationGuidePageCopyWith<ImplementationGuidePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImplementationGuidePageCopyWith<$Res> {
  factory $ImplementationGuidePageCopyWith(ImplementationGuidePage value,
          $Res Function(ImplementationGuidePage) then) =
      _$ImplementationGuidePageCopyWithImpl<$Res, ImplementationGuidePage>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirUrl? nameUrl,
      @JsonKey(name: '_nameUrl') PrimitiveElement? nameUrlElement,
      Reference? nameReference,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      FhirCode? generation,
      @JsonKey(name: '_generation') PrimitiveElement? generationElement,
      List<ImplementationGuidePage>? page});

  $ReferenceCopyWith<$Res>? get nameReference;
}

/// @nodoc
class _$ImplementationGuidePageCopyWithImpl<$Res,
        $Val extends ImplementationGuidePage>
    implements $ImplementationGuidePageCopyWith<$Res> {
  _$ImplementationGuidePageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImplementationGuidePage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? nameUrl = freezed,
    Object? nameUrlElement = freezed,
    Object? nameReference = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? generation = freezed,
    Object? generationElement = freezed,
    Object? page = freezed,
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
      nameUrl: freezed == nameUrl
          ? _value.nameUrl
          : nameUrl // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      nameUrlElement: freezed == nameUrlElement
          ? _value.nameUrlElement
          : nameUrlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      nameReference: freezed == nameReference
          ? _value.nameReference
          : nameReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      generation: freezed == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      generationElement: freezed == generationElement
          ? _value.generationElement
          : generationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuidePage>?,
    ) as $Val);
  }

  /// Create a copy of ImplementationGuidePage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get nameReference {
    if (_value.nameReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.nameReference!, (value) {
      return _then(_value.copyWith(nameReference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImplementationGuidePageImplCopyWith<$Res>
    implements $ImplementationGuidePageCopyWith<$Res> {
  factory _$$ImplementationGuidePageImplCopyWith(
          _$ImplementationGuidePageImpl value,
          $Res Function(_$ImplementationGuidePageImpl) then) =
      __$$ImplementationGuidePageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirUrl? nameUrl,
      @JsonKey(name: '_nameUrl') PrimitiveElement? nameUrlElement,
      Reference? nameReference,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      FhirCode? generation,
      @JsonKey(name: '_generation') PrimitiveElement? generationElement,
      List<ImplementationGuidePage>? page});

  @override
  $ReferenceCopyWith<$Res>? get nameReference;
}

/// @nodoc
class __$$ImplementationGuidePageImplCopyWithImpl<$Res>
    extends _$ImplementationGuidePageCopyWithImpl<$Res,
        _$ImplementationGuidePageImpl>
    implements _$$ImplementationGuidePageImplCopyWith<$Res> {
  __$$ImplementationGuidePageImplCopyWithImpl(
      _$ImplementationGuidePageImpl _value,
      $Res Function(_$ImplementationGuidePageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImplementationGuidePage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? nameUrl = freezed,
    Object? nameUrlElement = freezed,
    Object? nameReference = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? generation = freezed,
    Object? generationElement = freezed,
    Object? page = freezed,
  }) {
    return _then(_$ImplementationGuidePageImpl(
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
      nameUrl: freezed == nameUrl
          ? _value.nameUrl
          : nameUrl // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      nameUrlElement: freezed == nameUrlElement
          ? _value.nameUrlElement
          : nameUrlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      nameReference: freezed == nameReference
          ? _value.nameReference
          : nameReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      generation: freezed == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      generationElement: freezed == generationElement
          ? _value.generationElement
          : generationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      page: freezed == page
          ? _value._page
          : page // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuidePage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImplementationGuidePageImpl extends _ImplementationGuidePage {
  _$ImplementationGuidePageImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.nameUrl,
      @JsonKey(name: '_nameUrl') this.nameUrlElement,
      this.nameReference,
      this.title,
      @JsonKey(name: '_title') this.titleElement,
      this.generation,
      @JsonKey(name: '_generation') this.generationElement,
      final List<ImplementationGuidePage>? page})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _page = page,
        super._();

  factory _$ImplementationGuidePageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImplementationGuidePageImplFromJson(json);

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

  /// [nameUrl] The source address for the page.
  @override
  final FhirUrl? nameUrl;

  /// [nameUrlElement] Extensions for nameUrl
  @override
  @JsonKey(name: '_nameUrl')
  final PrimitiveElement? nameUrlElement;

  /// [nameReference] The source address for the page.
  @override
  final Reference? nameReference;

  /// [title] A short title used to represent this page in navigational
  ///  structures such as table of contents, bread crumbs, etc.
  @override
  final String? title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;

  /// [generation] A code that indicates how the page is generated.
  @override
  final FhirCode? generation;

  /// [generationElement] Extensions for generation
  @override
  @JsonKey(name: '_generation')
  final PrimitiveElement? generationElement;

  /// [page] Nested Pages/Sections under this page.
  final List<ImplementationGuidePage>? _page;

  /// [page] Nested Pages/Sections under this page.
  @override
  List<ImplementationGuidePage>? get page {
    final value = _page;
    if (value == null) return null;
    if (_page is EqualUnmodifiableListView) return _page;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ImplementationGuidePage(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, nameUrl: $nameUrl, nameUrlElement: $nameUrlElement, nameReference: $nameReference, title: $title, titleElement: $titleElement, generation: $generation, generationElement: $generationElement, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImplementationGuidePageImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.nameUrl, nameUrl) || other.nameUrl == nameUrl) &&
            (identical(other.nameUrlElement, nameUrlElement) ||
                other.nameUrlElement == nameUrlElement) &&
            (identical(other.nameReference, nameReference) ||
                other.nameReference == nameReference) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleElement, titleElement) ||
                other.titleElement == titleElement) &&
            (identical(other.generation, generation) ||
                other.generation == generation) &&
            (identical(other.generationElement, generationElement) ||
                other.generationElement == generationElement) &&
            const DeepCollectionEquality().equals(other._page, _page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      nameUrl,
      nameUrlElement,
      nameReference,
      title,
      titleElement,
      generation,
      generationElement,
      const DeepCollectionEquality().hash(_page));

  /// Create a copy of ImplementationGuidePage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImplementationGuidePageImplCopyWith<_$ImplementationGuidePageImpl>
      get copyWith => __$$ImplementationGuidePageImplCopyWithImpl<
          _$ImplementationGuidePageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImplementationGuidePageImplToJson(
      this,
    );
  }
}

abstract class _ImplementationGuidePage extends ImplementationGuidePage {
  factory _ImplementationGuidePage(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirUrl? nameUrl,
      @JsonKey(name: '_nameUrl') final PrimitiveElement? nameUrlElement,
      final Reference? nameReference,
      final String? title,
      @JsonKey(name: '_title') final PrimitiveElement? titleElement,
      final FhirCode? generation,
      @JsonKey(name: '_generation') final PrimitiveElement? generationElement,
      final List<ImplementationGuidePage>?
          page}) = _$ImplementationGuidePageImpl;
  _ImplementationGuidePage._() : super._();

  factory _ImplementationGuidePage.fromJson(Map<String, dynamic> json) =
      _$ImplementationGuidePageImpl.fromJson;

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

  /// [nameUrl] The source address for the page.
  @override
  FhirUrl? get nameUrl;

  /// [nameUrlElement] Extensions for nameUrl
  @override
  @JsonKey(name: '_nameUrl')
  PrimitiveElement? get nameUrlElement;

  /// [nameReference] The source address for the page.
  @override
  Reference? get nameReference;

  /// [title] A short title used to represent this page in navigational
  ///  structures such as table of contents, bread crumbs, etc.
  @override
  String? get title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;

  /// [generation] A code that indicates how the page is generated.
  @override
  FhirCode? get generation;

  /// [generationElement] Extensions for generation
  @override
  @JsonKey(name: '_generation')
  PrimitiveElement? get generationElement;

  /// [page] Nested Pages/Sections under this page.
  @override
  List<ImplementationGuidePage>? get page;

  /// Create a copy of ImplementationGuidePage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImplementationGuidePageImplCopyWith<_$ImplementationGuidePageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ImplementationGuideParameter _$ImplementationGuideParameterFromJson(
    Map<String, dynamic> json) {
  return _ImplementationGuideParameter.fromJson(json);
}

/// @nodoc
mixin _$ImplementationGuideParameter {
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

  /// [code] apply | path-resource | path-pages | path-tx-cache |
  /// expansion-parameter | rule-broken-links | generate-xml | generate-json |
  ///  generate-turtle | html-template.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement => throw _privateConstructorUsedError;

  /// [value] Value for named type.
  String? get value => throw _privateConstructorUsedError;

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement => throw _privateConstructorUsedError;

  /// Serializes this ImplementationGuideParameter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImplementationGuideParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImplementationGuideParameterCopyWith<ImplementationGuideParameter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImplementationGuideParameterCopyWith<$Res> {
  factory $ImplementationGuideParameterCopyWith(
          ImplementationGuideParameter value,
          $Res Function(ImplementationGuideParameter) then) =
      _$ImplementationGuideParameterCopyWithImpl<$Res,
          ImplementationGuideParameter>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      String? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement});
}

/// @nodoc
class _$ImplementationGuideParameterCopyWithImpl<$Res,
        $Val extends ImplementationGuideParameter>
    implements $ImplementationGuideParameterCopyWith<$Res> {
  _$ImplementationGuideParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImplementationGuideParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
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
abstract class _$$ImplementationGuideParameterImplCopyWith<$Res>
    implements $ImplementationGuideParameterCopyWith<$Res> {
  factory _$$ImplementationGuideParameterImplCopyWith(
          _$ImplementationGuideParameterImpl value,
          $Res Function(_$ImplementationGuideParameterImpl) then) =
      __$$ImplementationGuideParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      String? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement});
}

/// @nodoc
class __$$ImplementationGuideParameterImplCopyWithImpl<$Res>
    extends _$ImplementationGuideParameterCopyWithImpl<$Res,
        _$ImplementationGuideParameterImpl>
    implements _$$ImplementationGuideParameterImplCopyWith<$Res> {
  __$$ImplementationGuideParameterImplCopyWithImpl(
      _$ImplementationGuideParameterImpl _value,
      $Res Function(_$ImplementationGuideParameterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImplementationGuideParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
  }) {
    return _then(_$ImplementationGuideParameterImpl(
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
class _$ImplementationGuideParameterImpl extends _ImplementationGuideParameter {
  _$ImplementationGuideParameterImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      this.value,
      @JsonKey(name: '_value') this.valueElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ImplementationGuideParameterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ImplementationGuideParameterImplFromJson(json);

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

  /// [code] apply | path-resource | path-pages | path-tx-cache |
  /// expansion-parameter | rule-broken-links | generate-xml | generate-json |
  ///  generate-turtle | html-template.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final PrimitiveElement? codeElement;

  /// [value] Value for named type.
  @override
  final String? value;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  final PrimitiveElement? valueElement;

  @override
  String toString() {
    return 'ImplementationGuideParameter(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, code: $code, codeElement: $codeElement, value: $value, valueElement: $valueElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImplementationGuideParameterImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueElement, valueElement) ||
                other.valueElement == valueElement));
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
      value,
      valueElement);

  /// Create a copy of ImplementationGuideParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImplementationGuideParameterImplCopyWith<
          _$ImplementationGuideParameterImpl>
      get copyWith => __$$ImplementationGuideParameterImplCopyWithImpl<
          _$ImplementationGuideParameterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImplementationGuideParameterImplToJson(
      this,
    );
  }
}

abstract class _ImplementationGuideParameter
    extends ImplementationGuideParameter {
  factory _ImplementationGuideParameter(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCode? code,
          @JsonKey(name: '_code') final PrimitiveElement? codeElement,
          final String? value,
          @JsonKey(name: '_value') final PrimitiveElement? valueElement}) =
      _$ImplementationGuideParameterImpl;
  _ImplementationGuideParameter._() : super._();

  factory _ImplementationGuideParameter.fromJson(Map<String, dynamic> json) =
      _$ImplementationGuideParameterImpl.fromJson;

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

  /// [code] apply | path-resource | path-pages | path-tx-cache |
  /// expansion-parameter | rule-broken-links | generate-xml | generate-json |
  ///  generate-turtle | html-template.
  @override
  FhirCode? get code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement;

  /// [value] Value for named type.
  @override
  String? get value;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement;

  /// Create a copy of ImplementationGuideParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImplementationGuideParameterImplCopyWith<
          _$ImplementationGuideParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ImplementationGuideTemplate _$ImplementationGuideTemplateFromJson(
    Map<String, dynamic> json) {
  return _ImplementationGuideTemplate.fromJson(json);
}

/// @nodoc
mixin _$ImplementationGuideTemplate {
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

  /// [code] Type of template specified.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement => throw _privateConstructorUsedError;

  /// [source] The source location for the template.
  String? get source => throw _privateConstructorUsedError;

  /// [sourceElement] Extensions for source
  @JsonKey(name: '_source')
  PrimitiveElement? get sourceElement => throw _privateConstructorUsedError;

  /// [scope] The scope in which the template applies.
  String? get scope => throw _privateConstructorUsedError;

  /// [scopeElement] Extensions for scope
  @JsonKey(name: '_scope')
  PrimitiveElement? get scopeElement => throw _privateConstructorUsedError;

  /// Serializes this ImplementationGuideTemplate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImplementationGuideTemplate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImplementationGuideTemplateCopyWith<ImplementationGuideTemplate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImplementationGuideTemplateCopyWith<$Res> {
  factory $ImplementationGuideTemplateCopyWith(
          ImplementationGuideTemplate value,
          $Res Function(ImplementationGuideTemplate) then) =
      _$ImplementationGuideTemplateCopyWithImpl<$Res,
          ImplementationGuideTemplate>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      String? source,
      @JsonKey(name: '_source') PrimitiveElement? sourceElement,
      String? scope,
      @JsonKey(name: '_scope') PrimitiveElement? scopeElement});
}

/// @nodoc
class _$ImplementationGuideTemplateCopyWithImpl<$Res,
        $Val extends ImplementationGuideTemplate>
    implements $ImplementationGuideTemplateCopyWith<$Res> {
  _$ImplementationGuideTemplateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImplementationGuideTemplate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? source = freezed,
    Object? sourceElement = freezed,
    Object? scope = freezed,
    Object? scopeElement = freezed,
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
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceElement: freezed == sourceElement
          ? _value.sourceElement
          : sourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
      scopeElement: freezed == scopeElement
          ? _value.scopeElement
          : scopeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImplementationGuideTemplateImplCopyWith<$Res>
    implements $ImplementationGuideTemplateCopyWith<$Res> {
  factory _$$ImplementationGuideTemplateImplCopyWith(
          _$ImplementationGuideTemplateImpl value,
          $Res Function(_$ImplementationGuideTemplateImpl) then) =
      __$$ImplementationGuideTemplateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      String? source,
      @JsonKey(name: '_source') PrimitiveElement? sourceElement,
      String? scope,
      @JsonKey(name: '_scope') PrimitiveElement? scopeElement});
}

/// @nodoc
class __$$ImplementationGuideTemplateImplCopyWithImpl<$Res>
    extends _$ImplementationGuideTemplateCopyWithImpl<$Res,
        _$ImplementationGuideTemplateImpl>
    implements _$$ImplementationGuideTemplateImplCopyWith<$Res> {
  __$$ImplementationGuideTemplateImplCopyWithImpl(
      _$ImplementationGuideTemplateImpl _value,
      $Res Function(_$ImplementationGuideTemplateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImplementationGuideTemplate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? source = freezed,
    Object? sourceElement = freezed,
    Object? scope = freezed,
    Object? scopeElement = freezed,
  }) {
    return _then(_$ImplementationGuideTemplateImpl(
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
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceElement: freezed == sourceElement
          ? _value.sourceElement
          : sourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
      scopeElement: freezed == scopeElement
          ? _value.scopeElement
          : scopeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImplementationGuideTemplateImpl extends _ImplementationGuideTemplate {
  _$ImplementationGuideTemplateImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      this.source,
      @JsonKey(name: '_source') this.sourceElement,
      this.scope,
      @JsonKey(name: '_scope') this.scopeElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ImplementationGuideTemplateImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ImplementationGuideTemplateImplFromJson(json);

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

  /// [code] Type of template specified.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final PrimitiveElement? codeElement;

  /// [source] The source location for the template.
  @override
  final String? source;

  /// [sourceElement] Extensions for source
  @override
  @JsonKey(name: '_source')
  final PrimitiveElement? sourceElement;

  /// [scope] The scope in which the template applies.
  @override
  final String? scope;

  /// [scopeElement] Extensions for scope
  @override
  @JsonKey(name: '_scope')
  final PrimitiveElement? scopeElement;

  @override
  String toString() {
    return 'ImplementationGuideTemplate(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, code: $code, codeElement: $codeElement, source: $source, sourceElement: $sourceElement, scope: $scope, scopeElement: $scopeElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImplementationGuideTemplateImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourceElement, sourceElement) ||
                other.sourceElement == sourceElement) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.scopeElement, scopeElement) ||
                other.scopeElement == scopeElement));
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
      source,
      sourceElement,
      scope,
      scopeElement);

  /// Create a copy of ImplementationGuideTemplate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImplementationGuideTemplateImplCopyWith<_$ImplementationGuideTemplateImpl>
      get copyWith => __$$ImplementationGuideTemplateImplCopyWithImpl<
          _$ImplementationGuideTemplateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImplementationGuideTemplateImplToJson(
      this,
    );
  }
}

abstract class _ImplementationGuideTemplate
    extends ImplementationGuideTemplate {
  factory _ImplementationGuideTemplate(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCode? code,
          @JsonKey(name: '_code') final PrimitiveElement? codeElement,
          final String? source,
          @JsonKey(name: '_source') final PrimitiveElement? sourceElement,
          final String? scope,
          @JsonKey(name: '_scope') final PrimitiveElement? scopeElement}) =
      _$ImplementationGuideTemplateImpl;
  _ImplementationGuideTemplate._() : super._();

  factory _ImplementationGuideTemplate.fromJson(Map<String, dynamic> json) =
      _$ImplementationGuideTemplateImpl.fromJson;

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

  /// [code] Type of template specified.
  @override
  FhirCode? get code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement;

  /// [source] The source location for the template.
  @override
  String? get source;

  /// [sourceElement] Extensions for source
  @override
  @JsonKey(name: '_source')
  PrimitiveElement? get sourceElement;

  /// [scope] The scope in which the template applies.
  @override
  String? get scope;

  /// [scopeElement] Extensions for scope
  @override
  @JsonKey(name: '_scope')
  PrimitiveElement? get scopeElement;

  /// Create a copy of ImplementationGuideTemplate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImplementationGuideTemplateImplCopyWith<_$ImplementationGuideTemplateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ImplementationGuideManifest _$ImplementationGuideManifestFromJson(
    Map<String, dynamic> json) {
  return _ImplementationGuideManifest.fromJson(json);
}

/// @nodoc
mixin _$ImplementationGuideManifest {
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

  /// [rendering] A pointer to official web page, PDF or other rendering of the
  ///  implementation guide.
  FhirUrl? get rendering => throw _privateConstructorUsedError;

  /// [renderingElement] Extensions for rendering
  @JsonKey(name: '_rendering')
  PrimitiveElement? get renderingElement => throw _privateConstructorUsedError;

  /// [resource] A resource that is part of the implementation guide.
  /// Conformance resources (value set, structure definition, capability
  /// statements etc.) are obvious candidates for inclusion, but any kind of
  ///  resource can be included as an example resource.
  List<ImplementationGuideResource1> get resource =>
      throw _privateConstructorUsedError;

  /// [page] Information about a page within the IG.
  List<ImplementationGuidePage1>? get page =>
      throw _privateConstructorUsedError;

  /// [image] Indicates a relative path to an image that exists within the IG.
  List<String>? get image => throw _privateConstructorUsedError;

  /// [imageElement] Extensions for image
  @JsonKey(name: '_image')
  List<PrimitiveElement>? get imageElement =>
      throw _privateConstructorUsedError;

  /// [other] Indicates the relative path of an additional non-page, non-image
  /// file that is part of the IG - e.g. zip, jar and similar files that could
  ///  be the target of a hyperlink in a derived IG.
  List<String>? get other => throw _privateConstructorUsedError;

  /// [otherElement] Extensions for other
  @JsonKey(name: '_other')
  List<PrimitiveElement>? get otherElement =>
      throw _privateConstructorUsedError;

  /// Serializes this ImplementationGuideManifest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImplementationGuideManifest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImplementationGuideManifestCopyWith<ImplementationGuideManifest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImplementationGuideManifestCopyWith<$Res> {
  factory $ImplementationGuideManifestCopyWith(
          ImplementationGuideManifest value,
          $Res Function(ImplementationGuideManifest) then) =
      _$ImplementationGuideManifestCopyWithImpl<$Res,
          ImplementationGuideManifest>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirUrl? rendering,
      @JsonKey(name: '_rendering') PrimitiveElement? renderingElement,
      List<ImplementationGuideResource1> resource,
      List<ImplementationGuidePage1>? page,
      List<String>? image,
      @JsonKey(name: '_image') List<PrimitiveElement>? imageElement,
      List<String>? other,
      @JsonKey(name: '_other') List<PrimitiveElement>? otherElement});
}

/// @nodoc
class _$ImplementationGuideManifestCopyWithImpl<$Res,
        $Val extends ImplementationGuideManifest>
    implements $ImplementationGuideManifestCopyWith<$Res> {
  _$ImplementationGuideManifestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImplementationGuideManifest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? rendering = freezed,
    Object? renderingElement = freezed,
    Object? resource = null,
    Object? page = freezed,
    Object? image = freezed,
    Object? imageElement = freezed,
    Object? other = freezed,
    Object? otherElement = freezed,
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
      rendering: freezed == rendering
          ? _value.rendering
          : rendering // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      renderingElement: freezed == renderingElement
          ? _value.renderingElement
          : renderingElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuideResource1>,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuidePage1>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      imageElement: freezed == imageElement
          ? _value.imageElement
          : imageElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      otherElement: freezed == otherElement
          ? _value.otherElement
          : otherElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImplementationGuideManifestImplCopyWith<$Res>
    implements $ImplementationGuideManifestCopyWith<$Res> {
  factory _$$ImplementationGuideManifestImplCopyWith(
          _$ImplementationGuideManifestImpl value,
          $Res Function(_$ImplementationGuideManifestImpl) then) =
      __$$ImplementationGuideManifestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirUrl? rendering,
      @JsonKey(name: '_rendering') PrimitiveElement? renderingElement,
      List<ImplementationGuideResource1> resource,
      List<ImplementationGuidePage1>? page,
      List<String>? image,
      @JsonKey(name: '_image') List<PrimitiveElement>? imageElement,
      List<String>? other,
      @JsonKey(name: '_other') List<PrimitiveElement>? otherElement});
}

/// @nodoc
class __$$ImplementationGuideManifestImplCopyWithImpl<$Res>
    extends _$ImplementationGuideManifestCopyWithImpl<$Res,
        _$ImplementationGuideManifestImpl>
    implements _$$ImplementationGuideManifestImplCopyWith<$Res> {
  __$$ImplementationGuideManifestImplCopyWithImpl(
      _$ImplementationGuideManifestImpl _value,
      $Res Function(_$ImplementationGuideManifestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImplementationGuideManifest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? rendering = freezed,
    Object? renderingElement = freezed,
    Object? resource = null,
    Object? page = freezed,
    Object? image = freezed,
    Object? imageElement = freezed,
    Object? other = freezed,
    Object? otherElement = freezed,
  }) {
    return _then(_$ImplementationGuideManifestImpl(
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
      rendering: freezed == rendering
          ? _value.rendering
          : rendering // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      renderingElement: freezed == renderingElement
          ? _value.renderingElement
          : renderingElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      resource: null == resource
          ? _value._resource
          : resource // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuideResource1>,
      page: freezed == page
          ? _value._page
          : page // ignore: cast_nullable_to_non_nullable
              as List<ImplementationGuidePage1>?,
      image: freezed == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      imageElement: freezed == imageElement
          ? _value._imageElement
          : imageElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      other: freezed == other
          ? _value._other
          : other // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      otherElement: freezed == otherElement
          ? _value._otherElement
          : otherElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImplementationGuideManifestImpl extends _ImplementationGuideManifest {
  _$ImplementationGuideManifestImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.rendering,
      @JsonKey(name: '_rendering') this.renderingElement,
      required final List<ImplementationGuideResource1> resource,
      final List<ImplementationGuidePage1>? page,
      final List<String>? image,
      @JsonKey(name: '_image') final List<PrimitiveElement>? imageElement,
      final List<String>? other,
      @JsonKey(name: '_other') final List<PrimitiveElement>? otherElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _resource = resource,
        _page = page,
        _image = image,
        _imageElement = imageElement,
        _other = other,
        _otherElement = otherElement,
        super._();

  factory _$ImplementationGuideManifestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ImplementationGuideManifestImplFromJson(json);

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

  /// [rendering] A pointer to official web page, PDF or other rendering of the
  ///  implementation guide.
  @override
  final FhirUrl? rendering;

  /// [renderingElement] Extensions for rendering
  @override
  @JsonKey(name: '_rendering')
  final PrimitiveElement? renderingElement;

  /// [resource] A resource that is part of the implementation guide.
  /// Conformance resources (value set, structure definition, capability
  /// statements etc.) are obvious candidates for inclusion, but any kind of
  ///  resource can be included as an example resource.
  final List<ImplementationGuideResource1> _resource;

  /// [resource] A resource that is part of the implementation guide.
  /// Conformance resources (value set, structure definition, capability
  /// statements etc.) are obvious candidates for inclusion, but any kind of
  ///  resource can be included as an example resource.
  @override
  List<ImplementationGuideResource1> get resource {
    if (_resource is EqualUnmodifiableListView) return _resource;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resource);
  }

  /// [page] Information about a page within the IG.
  final List<ImplementationGuidePage1>? _page;

  /// [page] Information about a page within the IG.
  @override
  List<ImplementationGuidePage1>? get page {
    final value = _page;
    if (value == null) return null;
    if (_page is EqualUnmodifiableListView) return _page;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [image] Indicates a relative path to an image that exists within the IG.
  final List<String>? _image;

  /// [image] Indicates a relative path to an image that exists within the IG.
  @override
  List<String>? get image {
    final value = _image;
    if (value == null) return null;
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [imageElement] Extensions for image
  final List<PrimitiveElement>? _imageElement;

  /// [imageElement] Extensions for image
  @override
  @JsonKey(name: '_image')
  List<PrimitiveElement>? get imageElement {
    final value = _imageElement;
    if (value == null) return null;
    if (_imageElement is EqualUnmodifiableListView) return _imageElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [other] Indicates the relative path of an additional non-page, non-image
  /// file that is part of the IG - e.g. zip, jar and similar files that could
  ///  be the target of a hyperlink in a derived IG.
  final List<String>? _other;

  /// [other] Indicates the relative path of an additional non-page, non-image
  /// file that is part of the IG - e.g. zip, jar and similar files that could
  ///  be the target of a hyperlink in a derived IG.
  @override
  List<String>? get other {
    final value = _other;
    if (value == null) return null;
    if (_other is EqualUnmodifiableListView) return _other;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [otherElement] Extensions for other
  final List<PrimitiveElement>? _otherElement;

  /// [otherElement] Extensions for other
  @override
  @JsonKey(name: '_other')
  List<PrimitiveElement>? get otherElement {
    final value = _otherElement;
    if (value == null) return null;
    if (_otherElement is EqualUnmodifiableListView) return _otherElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ImplementationGuideManifest(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, rendering: $rendering, renderingElement: $renderingElement, resource: $resource, page: $page, image: $image, imageElement: $imageElement, other: $other, otherElement: $otherElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImplementationGuideManifestImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.rendering, rendering) ||
                other.rendering == rendering) &&
            (identical(other.renderingElement, renderingElement) ||
                other.renderingElement == renderingElement) &&
            const DeepCollectionEquality().equals(other._resource, _resource) &&
            const DeepCollectionEquality().equals(other._page, _page) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            const DeepCollectionEquality()
                .equals(other._imageElement, _imageElement) &&
            const DeepCollectionEquality().equals(other._other, this._other) &&
            const DeepCollectionEquality()
                .equals(other._otherElement, _otherElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      rendering,
      renderingElement,
      const DeepCollectionEquality().hash(_resource),
      const DeepCollectionEquality().hash(_page),
      const DeepCollectionEquality().hash(_image),
      const DeepCollectionEquality().hash(_imageElement),
      const DeepCollectionEquality().hash(_other),
      const DeepCollectionEquality().hash(_otherElement));

  /// Create a copy of ImplementationGuideManifest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImplementationGuideManifestImplCopyWith<_$ImplementationGuideManifestImpl>
      get copyWith => __$$ImplementationGuideManifestImplCopyWithImpl<
          _$ImplementationGuideManifestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImplementationGuideManifestImplToJson(
      this,
    );
  }
}

abstract class _ImplementationGuideManifest
    extends ImplementationGuideManifest {
  factory _ImplementationGuideManifest(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirUrl? rendering,
          @JsonKey(name: '_rendering') final PrimitiveElement? renderingElement,
          required final List<ImplementationGuideResource1> resource,
          final List<ImplementationGuidePage1>? page,
          final List<String>? image,
          @JsonKey(name: '_image') final List<PrimitiveElement>? imageElement,
          final List<String>? other,
          @JsonKey(name: '_other')
          final List<PrimitiveElement>? otherElement}) =
      _$ImplementationGuideManifestImpl;
  _ImplementationGuideManifest._() : super._();

  factory _ImplementationGuideManifest.fromJson(Map<String, dynamic> json) =
      _$ImplementationGuideManifestImpl.fromJson;

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

  /// [rendering] A pointer to official web page, PDF or other rendering of the
  ///  implementation guide.
  @override
  FhirUrl? get rendering;

  /// [renderingElement] Extensions for rendering
  @override
  @JsonKey(name: '_rendering')
  PrimitiveElement? get renderingElement;

  /// [resource] A resource that is part of the implementation guide.
  /// Conformance resources (value set, structure definition, capability
  /// statements etc.) are obvious candidates for inclusion, but any kind of
  ///  resource can be included as an example resource.
  @override
  List<ImplementationGuideResource1> get resource;

  /// [page] Information about a page within the IG.
  @override
  List<ImplementationGuidePage1>? get page;

  /// [image] Indicates a relative path to an image that exists within the IG.
  @override
  List<String>? get image;

  /// [imageElement] Extensions for image
  @override
  @JsonKey(name: '_image')
  List<PrimitiveElement>? get imageElement;

  /// [other] Indicates the relative path of an additional non-page, non-image
  /// file that is part of the IG - e.g. zip, jar and similar files that could
  ///  be the target of a hyperlink in a derived IG.
  @override
  List<String>? get other;

  /// [otherElement] Extensions for other
  @override
  @JsonKey(name: '_other')
  List<PrimitiveElement>? get otherElement;

  /// Create a copy of ImplementationGuideManifest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImplementationGuideManifestImplCopyWith<_$ImplementationGuideManifestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ImplementationGuideResource1 _$ImplementationGuideResource1FromJson(
    Map<String, dynamic> json) {
  return _ImplementationGuideResource1.fromJson(json);
}

/// @nodoc
mixin _$ImplementationGuideResource1 {
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

  /// [reference] Where this resource is found.
  Reference get reference => throw _privateConstructorUsedError;

  /// [exampleBoolean] If true or a reference, indicates the resource is an
  /// example instance.  If a reference is present, indicates that the example
  ///  is an example of the specified profile.
  FhirBoolean? get exampleBoolean => throw _privateConstructorUsedError;

  /// [exampleBooleanElement] Extensions for exampleBoolean
  @JsonKey(name: '_exampleBoolean')
  PrimitiveElement? get exampleBooleanElement =>
      throw _privateConstructorUsedError;

  /// [exampleCanonical] If true or a reference, indicates the resource is an
  /// example instance.  If a reference is present, indicates that the example
  ///  is an example of the specified profile.
  FhirCanonical? get exampleCanonical => throw _privateConstructorUsedError;

  /// [exampleCanonicalElement] Extensions for exampleCanonical
  @JsonKey(name: '_exampleCanonical')
  PrimitiveElement? get exampleCanonicalElement =>
      throw _privateConstructorUsedError;

  /// [relativePath] The relative path for primary page for this resource
  ///  within the IG.
  FhirUrl? get relativePath => throw _privateConstructorUsedError;

  /// [relativePathElement] Extensions for relativePath
  @JsonKey(name: '_relativePath')
  PrimitiveElement? get relativePathElement =>
      throw _privateConstructorUsedError;

  /// Serializes this ImplementationGuideResource1 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImplementationGuideResource1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImplementationGuideResource1CopyWith<ImplementationGuideResource1>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImplementationGuideResource1CopyWith<$Res> {
  factory $ImplementationGuideResource1CopyWith(
          ImplementationGuideResource1 value,
          $Res Function(ImplementationGuideResource1) then) =
      _$ImplementationGuideResource1CopyWithImpl<$Res,
          ImplementationGuideResource1>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference reference,
      FhirBoolean? exampleBoolean,
      @JsonKey(name: '_exampleBoolean') PrimitiveElement? exampleBooleanElement,
      FhirCanonical? exampleCanonical,
      @JsonKey(name: '_exampleCanonical')
      PrimitiveElement? exampleCanonicalElement,
      FhirUrl? relativePath,
      @JsonKey(name: '_relativePath') PrimitiveElement? relativePathElement});

  $ReferenceCopyWith<$Res> get reference;
}

/// @nodoc
class _$ImplementationGuideResource1CopyWithImpl<$Res,
        $Val extends ImplementationGuideResource1>
    implements $ImplementationGuideResource1CopyWith<$Res> {
  _$ImplementationGuideResource1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImplementationGuideResource1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? reference = null,
    Object? exampleBoolean = freezed,
    Object? exampleBooleanElement = freezed,
    Object? exampleCanonical = freezed,
    Object? exampleCanonicalElement = freezed,
    Object? relativePath = freezed,
    Object? relativePathElement = freezed,
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
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as Reference,
      exampleBoolean: freezed == exampleBoolean
          ? _value.exampleBoolean
          : exampleBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      exampleBooleanElement: freezed == exampleBooleanElement
          ? _value.exampleBooleanElement
          : exampleBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      exampleCanonical: freezed == exampleCanonical
          ? _value.exampleCanonical
          : exampleCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      exampleCanonicalElement: freezed == exampleCanonicalElement
          ? _value.exampleCanonicalElement
          : exampleCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      relativePath: freezed == relativePath
          ? _value.relativePath
          : relativePath // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      relativePathElement: freezed == relativePathElement
          ? _value.relativePathElement
          : relativePathElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  /// Create a copy of ImplementationGuideResource1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get reference {
    return $ReferenceCopyWith<$Res>(_value.reference, (value) {
      return _then(_value.copyWith(reference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImplementationGuideResource1ImplCopyWith<$Res>
    implements $ImplementationGuideResource1CopyWith<$Res> {
  factory _$$ImplementationGuideResource1ImplCopyWith(
          _$ImplementationGuideResource1Impl value,
          $Res Function(_$ImplementationGuideResource1Impl) then) =
      __$$ImplementationGuideResource1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference reference,
      FhirBoolean? exampleBoolean,
      @JsonKey(name: '_exampleBoolean') PrimitiveElement? exampleBooleanElement,
      FhirCanonical? exampleCanonical,
      @JsonKey(name: '_exampleCanonical')
      PrimitiveElement? exampleCanonicalElement,
      FhirUrl? relativePath,
      @JsonKey(name: '_relativePath') PrimitiveElement? relativePathElement});

  @override
  $ReferenceCopyWith<$Res> get reference;
}

/// @nodoc
class __$$ImplementationGuideResource1ImplCopyWithImpl<$Res>
    extends _$ImplementationGuideResource1CopyWithImpl<$Res,
        _$ImplementationGuideResource1Impl>
    implements _$$ImplementationGuideResource1ImplCopyWith<$Res> {
  __$$ImplementationGuideResource1ImplCopyWithImpl(
      _$ImplementationGuideResource1Impl _value,
      $Res Function(_$ImplementationGuideResource1Impl) _then)
      : super(_value, _then);

  /// Create a copy of ImplementationGuideResource1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? reference = null,
    Object? exampleBoolean = freezed,
    Object? exampleBooleanElement = freezed,
    Object? exampleCanonical = freezed,
    Object? exampleCanonicalElement = freezed,
    Object? relativePath = freezed,
    Object? relativePathElement = freezed,
  }) {
    return _then(_$ImplementationGuideResource1Impl(
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
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as Reference,
      exampleBoolean: freezed == exampleBoolean
          ? _value.exampleBoolean
          : exampleBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      exampleBooleanElement: freezed == exampleBooleanElement
          ? _value.exampleBooleanElement
          : exampleBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      exampleCanonical: freezed == exampleCanonical
          ? _value.exampleCanonical
          : exampleCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      exampleCanonicalElement: freezed == exampleCanonicalElement
          ? _value.exampleCanonicalElement
          : exampleCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      relativePath: freezed == relativePath
          ? _value.relativePath
          : relativePath // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      relativePathElement: freezed == relativePathElement
          ? _value.relativePathElement
          : relativePathElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImplementationGuideResource1Impl extends _ImplementationGuideResource1 {
  _$ImplementationGuideResource1Impl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.reference,
      this.exampleBoolean,
      @JsonKey(name: '_exampleBoolean') this.exampleBooleanElement,
      this.exampleCanonical,
      @JsonKey(name: '_exampleCanonical') this.exampleCanonicalElement,
      this.relativePath,
      @JsonKey(name: '_relativePath') this.relativePathElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ImplementationGuideResource1Impl.fromJson(
          Map<String, dynamic> json) =>
      _$$ImplementationGuideResource1ImplFromJson(json);

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

  /// [reference] Where this resource is found.
  @override
  final Reference reference;

  /// [exampleBoolean] If true or a reference, indicates the resource is an
  /// example instance.  If a reference is present, indicates that the example
  ///  is an example of the specified profile.
  @override
  final FhirBoolean? exampleBoolean;

  /// [exampleBooleanElement] Extensions for exampleBoolean
  @override
  @JsonKey(name: '_exampleBoolean')
  final PrimitiveElement? exampleBooleanElement;

  /// [exampleCanonical] If true or a reference, indicates the resource is an
  /// example instance.  If a reference is present, indicates that the example
  ///  is an example of the specified profile.
  @override
  final FhirCanonical? exampleCanonical;

  /// [exampleCanonicalElement] Extensions for exampleCanonical
  @override
  @JsonKey(name: '_exampleCanonical')
  final PrimitiveElement? exampleCanonicalElement;

  /// [relativePath] The relative path for primary page for this resource
  ///  within the IG.
  @override
  final FhirUrl? relativePath;

  /// [relativePathElement] Extensions for relativePath
  @override
  @JsonKey(name: '_relativePath')
  final PrimitiveElement? relativePathElement;

  @override
  String toString() {
    return 'ImplementationGuideResource1(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, reference: $reference, exampleBoolean: $exampleBoolean, exampleBooleanElement: $exampleBooleanElement, exampleCanonical: $exampleCanonical, exampleCanonicalElement: $exampleCanonicalElement, relativePath: $relativePath, relativePathElement: $relativePathElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImplementationGuideResource1Impl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.exampleBoolean, exampleBoolean) ||
                other.exampleBoolean == exampleBoolean) &&
            (identical(other.exampleBooleanElement, exampleBooleanElement) ||
                other.exampleBooleanElement == exampleBooleanElement) &&
            (identical(other.exampleCanonical, exampleCanonical) ||
                other.exampleCanonical == exampleCanonical) &&
            (identical(
                    other.exampleCanonicalElement, exampleCanonicalElement) ||
                other.exampleCanonicalElement == exampleCanonicalElement) &&
            (identical(other.relativePath, relativePath) ||
                other.relativePath == relativePath) &&
            (identical(other.relativePathElement, relativePathElement) ||
                other.relativePathElement == relativePathElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      reference,
      exampleBoolean,
      exampleBooleanElement,
      exampleCanonical,
      exampleCanonicalElement,
      relativePath,
      relativePathElement);

  /// Create a copy of ImplementationGuideResource1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImplementationGuideResource1ImplCopyWith<
          _$ImplementationGuideResource1Impl>
      get copyWith => __$$ImplementationGuideResource1ImplCopyWithImpl<
          _$ImplementationGuideResource1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImplementationGuideResource1ImplToJson(
      this,
    );
  }
}

abstract class _ImplementationGuideResource1
    extends ImplementationGuideResource1 {
  factory _ImplementationGuideResource1(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final Reference reference,
          final FhirBoolean? exampleBoolean,
          @JsonKey(name: '_exampleBoolean')
          final PrimitiveElement? exampleBooleanElement,
          final FhirCanonical? exampleCanonical,
          @JsonKey(name: '_exampleCanonical')
          final PrimitiveElement? exampleCanonicalElement,
          final FhirUrl? relativePath,
          @JsonKey(name: '_relativePath')
          final PrimitiveElement? relativePathElement}) =
      _$ImplementationGuideResource1Impl;
  _ImplementationGuideResource1._() : super._();

  factory _ImplementationGuideResource1.fromJson(Map<String, dynamic> json) =
      _$ImplementationGuideResource1Impl.fromJson;

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

  /// [reference] Where this resource is found.
  @override
  Reference get reference;

  /// [exampleBoolean] If true or a reference, indicates the resource is an
  /// example instance.  If a reference is present, indicates that the example
  ///  is an example of the specified profile.
  @override
  FhirBoolean? get exampleBoolean;

  /// [exampleBooleanElement] Extensions for exampleBoolean
  @override
  @JsonKey(name: '_exampleBoolean')
  PrimitiveElement? get exampleBooleanElement;

  /// [exampleCanonical] If true or a reference, indicates the resource is an
  /// example instance.  If a reference is present, indicates that the example
  ///  is an example of the specified profile.
  @override
  FhirCanonical? get exampleCanonical;

  /// [exampleCanonicalElement] Extensions for exampleCanonical
  @override
  @JsonKey(name: '_exampleCanonical')
  PrimitiveElement? get exampleCanonicalElement;

  /// [relativePath] The relative path for primary page for this resource
  ///  within the IG.
  @override
  FhirUrl? get relativePath;

  /// [relativePathElement] Extensions for relativePath
  @override
  @JsonKey(name: '_relativePath')
  PrimitiveElement? get relativePathElement;

  /// Create a copy of ImplementationGuideResource1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImplementationGuideResource1ImplCopyWith<
          _$ImplementationGuideResource1Impl>
      get copyWith => throw _privateConstructorUsedError;
}

ImplementationGuidePage1 _$ImplementationGuidePage1FromJson(
    Map<String, dynamic> json) {
  return _ImplementationGuidePage1.fromJson(json);
}

/// @nodoc
mixin _$ImplementationGuidePage1 {
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

  /// [name] Relative path to the page.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [title] Label for the page intended for human display.
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;

  /// [anchor] The name of an anchor available on the page.
  List<String>? get anchor => throw _privateConstructorUsedError;

  /// [anchorElement] Extensions for anchor
  @JsonKey(name: '_anchor')
  List<PrimitiveElement>? get anchorElement =>
      throw _privateConstructorUsedError;

  /// Serializes this ImplementationGuidePage1 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImplementationGuidePage1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImplementationGuidePage1CopyWith<ImplementationGuidePage1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImplementationGuidePage1CopyWith<$Res> {
  factory $ImplementationGuidePage1CopyWith(ImplementationGuidePage1 value,
          $Res Function(ImplementationGuidePage1) then) =
      _$ImplementationGuidePage1CopyWithImpl<$Res, ImplementationGuidePage1>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      List<String>? anchor,
      @JsonKey(name: '_anchor') List<PrimitiveElement>? anchorElement});
}

/// @nodoc
class _$ImplementationGuidePage1CopyWithImpl<$Res,
        $Val extends ImplementationGuidePage1>
    implements $ImplementationGuidePage1CopyWith<$Res> {
  _$ImplementationGuidePage1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImplementationGuidePage1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? anchor = freezed,
    Object? anchorElement = freezed,
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
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      anchorElement: freezed == anchorElement
          ? _value.anchorElement
          : anchorElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImplementationGuidePage1ImplCopyWith<$Res>
    implements $ImplementationGuidePage1CopyWith<$Res> {
  factory _$$ImplementationGuidePage1ImplCopyWith(
          _$ImplementationGuidePage1Impl value,
          $Res Function(_$ImplementationGuidePage1Impl) then) =
      __$$ImplementationGuidePage1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      List<String>? anchor,
      @JsonKey(name: '_anchor') List<PrimitiveElement>? anchorElement});
}

/// @nodoc
class __$$ImplementationGuidePage1ImplCopyWithImpl<$Res>
    extends _$ImplementationGuidePage1CopyWithImpl<$Res,
        _$ImplementationGuidePage1Impl>
    implements _$$ImplementationGuidePage1ImplCopyWith<$Res> {
  __$$ImplementationGuidePage1ImplCopyWithImpl(
      _$ImplementationGuidePage1Impl _value,
      $Res Function(_$ImplementationGuidePage1Impl) _then)
      : super(_value, _then);

  /// Create a copy of ImplementationGuidePage1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? anchor = freezed,
    Object? anchorElement = freezed,
  }) {
    return _then(_$ImplementationGuidePage1Impl(
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
      anchor: freezed == anchor
          ? _value._anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      anchorElement: freezed == anchorElement
          ? _value._anchorElement
          : anchorElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImplementationGuidePage1Impl extends _ImplementationGuidePage1 {
  _$ImplementationGuidePage1Impl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.title,
      @JsonKey(name: '_title') this.titleElement,
      final List<String>? anchor,
      @JsonKey(name: '_anchor') final List<PrimitiveElement>? anchorElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _anchor = anchor,
        _anchorElement = anchorElement,
        super._();

  factory _$ImplementationGuidePage1Impl.fromJson(Map<String, dynamic> json) =>
      _$$ImplementationGuidePage1ImplFromJson(json);

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

  /// [name] Relative path to the page.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [title] Label for the page intended for human display.
  @override
  final String? title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;

  /// [anchor] The name of an anchor available on the page.
  final List<String>? _anchor;

  /// [anchor] The name of an anchor available on the page.
  @override
  List<String>? get anchor {
    final value = _anchor;
    if (value == null) return null;
    if (_anchor is EqualUnmodifiableListView) return _anchor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [anchorElement] Extensions for anchor
  final List<PrimitiveElement>? _anchorElement;

  /// [anchorElement] Extensions for anchor
  @override
  @JsonKey(name: '_anchor')
  List<PrimitiveElement>? get anchorElement {
    final value = _anchorElement;
    if (value == null) return null;
    if (_anchorElement is EqualUnmodifiableListView) return _anchorElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ImplementationGuidePage1(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, name: $name, nameElement: $nameElement, title: $title, titleElement: $titleElement, anchor: $anchor, anchorElement: $anchorElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImplementationGuidePage1Impl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleElement, titleElement) ||
                other.titleElement == titleElement) &&
            const DeepCollectionEquality().equals(other._anchor, _anchor) &&
            const DeepCollectionEquality()
                .equals(other._anchorElement, _anchorElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      name,
      nameElement,
      title,
      titleElement,
      const DeepCollectionEquality().hash(_anchor),
      const DeepCollectionEquality().hash(_anchorElement));

  /// Create a copy of ImplementationGuidePage1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImplementationGuidePage1ImplCopyWith<_$ImplementationGuidePage1Impl>
      get copyWith => __$$ImplementationGuidePage1ImplCopyWithImpl<
          _$ImplementationGuidePage1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImplementationGuidePage1ImplToJson(
      this,
    );
  }
}

abstract class _ImplementationGuidePage1 extends ImplementationGuidePage1 {
  factory _ImplementationGuidePage1(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final String? name,
          @JsonKey(name: '_name') final PrimitiveElement? nameElement,
          final String? title,
          @JsonKey(name: '_title') final PrimitiveElement? titleElement,
          final List<String>? anchor,
          @JsonKey(name: '_anchor')
          final List<PrimitiveElement>? anchorElement}) =
      _$ImplementationGuidePage1Impl;
  _ImplementationGuidePage1._() : super._();

  factory _ImplementationGuidePage1.fromJson(Map<String, dynamic> json) =
      _$ImplementationGuidePage1Impl.fromJson;

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

  /// [name] Relative path to the page.
  @override
  String? get name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;

  /// [title] Label for the page intended for human display.
  @override
  String? get title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;

  /// [anchor] The name of an anchor available on the page.
  @override
  List<String>? get anchor;

  /// [anchorElement] Extensions for anchor
  @override
  @JsonKey(name: '_anchor')
  List<PrimitiveElement>? get anchorElement;

  /// Create a copy of ImplementationGuidePage1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImplementationGuidePage1ImplCopyWith<_$ImplementationGuidePage1Impl>
      get copyWith => throw _privateConstructorUsedError;
}
