// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terminology_capabilities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TerminologyCapabilities _$TerminologyCapabilitiesFromJson(
    Map<String, dynamic> json) {
  return _TerminologyCapabilities.fromJson(json);
}

/// @nodoc
mixin _$TerminologyCapabilities {
  @JsonKey(unknownEnumValue: R4ResourceType.TerminologyCapabilities)
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

  /// [url] An absolute URI that is used to identify this terminology
  /// capabilities when it is referenced in a specification, model, design or an
  /// instance; also called its canonical identifier. This SHOULD be globally
  /// unique and SHOULD be a literal address at which at which an authoritative
  /// instance of this terminology capabilities is (or will be) published. This
  /// URL can be the target of a canonical reference. It SHALL remain the same
  ///  when the terminology capabilities is stored on different servers.
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [version] The identifier that is used to identify this version of the
  /// terminology capabilities when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the terminology
  /// capabilities author and is not expected to be globally unique. For
  /// example, it might be a timestamp (e.g. yyyymmdd) if a managed version is
  /// not available. There is also no expectation that versions can be placed in
  ///  a lexicographical sequence.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  /// [name] A natural language name identifying the terminology capabilities.
  /// This name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [title] A short, descriptive, user-friendly title for the terminology
  ///  capabilities.
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;

  /// [status] The status of this terminology capabilities. Enables tracking
  ///  the life-cycle of the content.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [experimental] A Boolean value to indicate that this terminology
  /// capabilities is authored for testing purposes (or
  /// education/evaluation/marketing) and is not intended to be used for genuine
  ///  usage.
  FhirBoolean? get experimental => throw _privateConstructorUsedError;

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement =>
      throw _privateConstructorUsedError;

  /// [date] The date  (and optionally time) when the terminology capabilities
  /// was published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should change
  ///  when the substantive content of the terminology capabilities changes.
  FhirDateTime? get date => throw _privateConstructorUsedError;

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [publisher] The name of the organization or individual that published the
  ///  terminology capabilities.
  String? get publisher => throw _privateConstructorUsedError;

  /// [publisherElement] Extensions for publisher
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement => throw _privateConstructorUsedError;

  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  List<ContactDetail>? get contact => throw _privateConstructorUsedError;

  /// [description] A free text natural language description of the terminology
  /// capabilities from a consumer's perspective. Typically, this is used when
  /// the capability statement describes a desired rather than an actual
  /// solution, for example as a formal expression of requirements as part of an
  ///  RFP.
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate terminology capabilities instances.
  List<UsageContext>? get useContext => throw _privateConstructorUsedError;

  /// [jurisdiction] A legal or geographic region in which the terminology
  ///  capabilities is intended to be used.
  List<CodeableConcept>? get jurisdiction => throw _privateConstructorUsedError;

  /// [purpose] Explanation of why this terminology capabilities is needed and
  ///  why it has been designed as it has.
  FhirMarkdown? get purpose => throw _privateConstructorUsedError;

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement => throw _privateConstructorUsedError;

  /// [copyright] A copyright statement relating to the terminology
  /// capabilities and/or its contents. Copyright statements are generally legal
  ///  restrictions on the use and publishing of the terminology capabilities.
  FhirMarkdown? get copyright => throw _privateConstructorUsedError;

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement => throw _privateConstructorUsedError;

  /// [kind] The way that this statement is intended to be used, to describe an
  /// actual running instance of software, a particular product (kind, not
  /// instance of software) or a class of implementation (e.g. a desired
  ///  purchase).
  FhirCode? get kind => throw _privateConstructorUsedError;

  /// [kindElement] Extensions for kind
  @JsonKey(name: '_kind')
  PrimitiveElement? get kindElement => throw _privateConstructorUsedError;

  /// [software] Software that is covered by this terminology capability
  /// statement.  It is used when the statement describes the capabilities of a
  ///  particular software version, independent of an installation.
  TerminologyCapabilitiesSoftware? get software =>
      throw _privateConstructorUsedError;

  /// [implementation] Identifies a specific implementation instance that is
  /// described by the terminology capability statement - i.e. a particular
  ///  installation, rather than the capabilities of a software program.
  TerminologyCapabilitiesImplementation? get implementation =>
      throw _privateConstructorUsedError;

  /// [lockedDate] Whether the server supports lockedDate.
  FhirBoolean? get lockedDate => throw _privateConstructorUsedError;

  /// [lockedDateElement] Extensions for lockedDate
  @JsonKey(name: '_lockedDate')
  PrimitiveElement? get lockedDateElement => throw _privateConstructorUsedError;

  /// [codeSystem] Identifies a code system that is supported by the server. If
  /// there is a no code system URL, then this declares the general assumptions
  ///  a client can make about support for any CodeSystem resource.
  List<TerminologyCapabilitiesCodeSystem>? get codeSystem =>
      throw _privateConstructorUsedError;

  /// [expansion] Information about the
  ///  [ValueSet/$expand](valueset-operation-expand.html) operation.
  TerminologyCapabilitiesExpansion? get expansion =>
      throw _privateConstructorUsedError;

  /// [codeSearch] The degree to which the server supports the code search
  ///  parameter on ValueSet, if it is supported.
  FhirCode? get codeSearch => throw _privateConstructorUsedError;

  /// [codeSearchElement] Extensions for codeSearch
  @JsonKey(name: '_codeSearch')
  PrimitiveElement? get codeSearchElement => throw _privateConstructorUsedError;

  /// [validateCode] Information about the
  TerminologyCapabilitiesValidateCode? get validateCode =>
      throw _privateConstructorUsedError;
  TerminologyCapabilitiesTranslation? get translation =>
      throw _privateConstructorUsedError;
  TerminologyCapabilitiesClosure? get closure =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TerminologyCapabilitiesCopyWith<TerminologyCapabilities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminologyCapabilitiesCopyWith<$Res> {
  factory $TerminologyCapabilitiesCopyWith(TerminologyCapabilities value,
          $Res Function(TerminologyCapabilities) then) =
      _$TerminologyCapabilitiesCopyWithImpl<$Res, TerminologyCapabilities>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.TerminologyCapabilities)
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
      FhirMarkdown? purpose,
      @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
      FhirCode? kind,
      @JsonKey(name: '_kind') PrimitiveElement? kindElement,
      TerminologyCapabilitiesSoftware? software,
      TerminologyCapabilitiesImplementation? implementation,
      FhirBoolean? lockedDate,
      @JsonKey(name: '_lockedDate') PrimitiveElement? lockedDateElement,
      List<TerminologyCapabilitiesCodeSystem>? codeSystem,
      TerminologyCapabilitiesExpansion? expansion,
      FhirCode? codeSearch,
      @JsonKey(name: '_codeSearch') PrimitiveElement? codeSearchElement,
      TerminologyCapabilitiesValidateCode? validateCode,
      TerminologyCapabilitiesTranslation? translation,
      TerminologyCapabilitiesClosure? closure});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $TerminologyCapabilitiesSoftwareCopyWith<$Res>? get software;
  $TerminologyCapabilitiesImplementationCopyWith<$Res>? get implementation;
  $TerminologyCapabilitiesExpansionCopyWith<$Res>? get expansion;
  $TerminologyCapabilitiesValidateCodeCopyWith<$Res>? get validateCode;
  $TerminologyCapabilitiesTranslationCopyWith<$Res>? get translation;
  $TerminologyCapabilitiesClosureCopyWith<$Res>? get closure;
}

/// @nodoc
class _$TerminologyCapabilitiesCopyWithImpl<$Res,
        $Val extends TerminologyCapabilities>
    implements $TerminologyCapabilitiesCopyWith<$Res> {
  _$TerminologyCapabilitiesCopyWithImpl(this._value, this._then);

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
    Object? kind = freezed,
    Object? kindElement = freezed,
    Object? software = freezed,
    Object? implementation = freezed,
    Object? lockedDate = freezed,
    Object? lockedDateElement = freezed,
    Object? codeSystem = freezed,
    Object? expansion = freezed,
    Object? codeSearch = freezed,
    Object? codeSearchElement = freezed,
    Object? validateCode = freezed,
    Object? translation = freezed,
    Object? closure = freezed,
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
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      kindElement: freezed == kindElement
          ? _value.kindElement
          : kindElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      software: freezed == software
          ? _value.software
          : software // ignore: cast_nullable_to_non_nullable
              as TerminologyCapabilitiesSoftware?,
      implementation: freezed == implementation
          ? _value.implementation
          : implementation // ignore: cast_nullable_to_non_nullable
              as TerminologyCapabilitiesImplementation?,
      lockedDate: freezed == lockedDate
          ? _value.lockedDate
          : lockedDate // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      lockedDateElement: freezed == lockedDateElement
          ? _value.lockedDateElement
          : lockedDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      codeSystem: freezed == codeSystem
          ? _value.codeSystem
          : codeSystem // ignore: cast_nullable_to_non_nullable
              as List<TerminologyCapabilitiesCodeSystem>?,
      expansion: freezed == expansion
          ? _value.expansion
          : expansion // ignore: cast_nullable_to_non_nullable
              as TerminologyCapabilitiesExpansion?,
      codeSearch: freezed == codeSearch
          ? _value.codeSearch
          : codeSearch // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeSearchElement: freezed == codeSearchElement
          ? _value.codeSearchElement
          : codeSearchElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      validateCode: freezed == validateCode
          ? _value.validateCode
          : validateCode // ignore: cast_nullable_to_non_nullable
              as TerminologyCapabilitiesValidateCode?,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TerminologyCapabilitiesTranslation?,
      closure: freezed == closure
          ? _value.closure
          : closure // ignore: cast_nullable_to_non_nullable
              as TerminologyCapabilitiesClosure?,
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
  $TerminologyCapabilitiesSoftwareCopyWith<$Res>? get software {
    if (_value.software == null) {
      return null;
    }

    return $TerminologyCapabilitiesSoftwareCopyWith<$Res>(_value.software!,
        (value) {
      return _then(_value.copyWith(software: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TerminologyCapabilitiesImplementationCopyWith<$Res>? get implementation {
    if (_value.implementation == null) {
      return null;
    }

    return $TerminologyCapabilitiesImplementationCopyWith<$Res>(
        _value.implementation!, (value) {
      return _then(_value.copyWith(implementation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TerminologyCapabilitiesExpansionCopyWith<$Res>? get expansion {
    if (_value.expansion == null) {
      return null;
    }

    return $TerminologyCapabilitiesExpansionCopyWith<$Res>(_value.expansion!,
        (value) {
      return _then(_value.copyWith(expansion: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TerminologyCapabilitiesValidateCodeCopyWith<$Res>? get validateCode {
    if (_value.validateCode == null) {
      return null;
    }

    return $TerminologyCapabilitiesValidateCodeCopyWith<$Res>(
        _value.validateCode!, (value) {
      return _then(_value.copyWith(validateCode: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TerminologyCapabilitiesTranslationCopyWith<$Res>? get translation {
    if (_value.translation == null) {
      return null;
    }

    return $TerminologyCapabilitiesTranslationCopyWith<$Res>(
        _value.translation!, (value) {
      return _then(_value.copyWith(translation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TerminologyCapabilitiesClosureCopyWith<$Res>? get closure {
    if (_value.closure == null) {
      return null;
    }

    return $TerminologyCapabilitiesClosureCopyWith<$Res>(_value.closure!,
        (value) {
      return _then(_value.copyWith(closure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TerminologyCapabilitiesImplCopyWith<$Res>
    implements $TerminologyCapabilitiesCopyWith<$Res> {
  factory _$$TerminologyCapabilitiesImplCopyWith(
          _$TerminologyCapabilitiesImpl value,
          $Res Function(_$TerminologyCapabilitiesImpl) then) =
      __$$TerminologyCapabilitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.TerminologyCapabilities)
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
      FhirMarkdown? purpose,
      @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
      FhirCode? kind,
      @JsonKey(name: '_kind') PrimitiveElement? kindElement,
      TerminologyCapabilitiesSoftware? software,
      TerminologyCapabilitiesImplementation? implementation,
      FhirBoolean? lockedDate,
      @JsonKey(name: '_lockedDate') PrimitiveElement? lockedDateElement,
      List<TerminologyCapabilitiesCodeSystem>? codeSystem,
      TerminologyCapabilitiesExpansion? expansion,
      FhirCode? codeSearch,
      @JsonKey(name: '_codeSearch') PrimitiveElement? codeSearchElement,
      TerminologyCapabilitiesValidateCode? validateCode,
      TerminologyCapabilitiesTranslation? translation,
      TerminologyCapabilitiesClosure? closure});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $TerminologyCapabilitiesSoftwareCopyWith<$Res>? get software;
  @override
  $TerminologyCapabilitiesImplementationCopyWith<$Res>? get implementation;
  @override
  $TerminologyCapabilitiesExpansionCopyWith<$Res>? get expansion;
  @override
  $TerminologyCapabilitiesValidateCodeCopyWith<$Res>? get validateCode;
  @override
  $TerminologyCapabilitiesTranslationCopyWith<$Res>? get translation;
  @override
  $TerminologyCapabilitiesClosureCopyWith<$Res>? get closure;
}

/// @nodoc
class __$$TerminologyCapabilitiesImplCopyWithImpl<$Res>
    extends _$TerminologyCapabilitiesCopyWithImpl<$Res,
        _$TerminologyCapabilitiesImpl>
    implements _$$TerminologyCapabilitiesImplCopyWith<$Res> {
  __$$TerminologyCapabilitiesImplCopyWithImpl(
      _$TerminologyCapabilitiesImpl _value,
      $Res Function(_$TerminologyCapabilitiesImpl) _then)
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
    Object? kind = freezed,
    Object? kindElement = freezed,
    Object? software = freezed,
    Object? implementation = freezed,
    Object? lockedDate = freezed,
    Object? lockedDateElement = freezed,
    Object? codeSystem = freezed,
    Object? expansion = freezed,
    Object? codeSearch = freezed,
    Object? codeSearchElement = freezed,
    Object? validateCode = freezed,
    Object? translation = freezed,
    Object? closure = freezed,
  }) {
    return _then(_$TerminologyCapabilitiesImpl(
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
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      kindElement: freezed == kindElement
          ? _value.kindElement
          : kindElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      software: freezed == software
          ? _value.software
          : software // ignore: cast_nullable_to_non_nullable
              as TerminologyCapabilitiesSoftware?,
      implementation: freezed == implementation
          ? _value.implementation
          : implementation // ignore: cast_nullable_to_non_nullable
              as TerminologyCapabilitiesImplementation?,
      lockedDate: freezed == lockedDate
          ? _value.lockedDate
          : lockedDate // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      lockedDateElement: freezed == lockedDateElement
          ? _value.lockedDateElement
          : lockedDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      codeSystem: freezed == codeSystem
          ? _value._codeSystem
          : codeSystem // ignore: cast_nullable_to_non_nullable
              as List<TerminologyCapabilitiesCodeSystem>?,
      expansion: freezed == expansion
          ? _value.expansion
          : expansion // ignore: cast_nullable_to_non_nullable
              as TerminologyCapabilitiesExpansion?,
      codeSearch: freezed == codeSearch
          ? _value.codeSearch
          : codeSearch // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeSearchElement: freezed == codeSearchElement
          ? _value.codeSearchElement
          : codeSearchElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      validateCode: freezed == validateCode
          ? _value.validateCode
          : validateCode // ignore: cast_nullable_to_non_nullable
              as TerminologyCapabilitiesValidateCode?,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TerminologyCapabilitiesTranslation?,
      closure: freezed == closure
          ? _value.closure
          : closure // ignore: cast_nullable_to_non_nullable
              as TerminologyCapabilitiesClosure?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TerminologyCapabilitiesImpl extends _TerminologyCapabilities {
  const _$TerminologyCapabilitiesImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.TerminologyCapabilities)
      this.resourceType = R4ResourceType.TerminologyCapabilities,
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
      this.purpose,
      @JsonKey(name: '_purpose') this.purposeElement,
      this.copyright,
      @JsonKey(name: '_copyright') this.copyrightElement,
      this.kind,
      @JsonKey(name: '_kind') this.kindElement,
      this.software,
      this.implementation,
      this.lockedDate,
      @JsonKey(name: '_lockedDate') this.lockedDateElement,
      final List<TerminologyCapabilitiesCodeSystem>? codeSystem,
      this.expansion,
      this.codeSearch,
      @JsonKey(name: '_codeSearch') this.codeSearchElement,
      this.validateCode,
      this.translation,
      this.closure})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _contact = contact,
        _useContext = useContext,
        _jurisdiction = jurisdiction,
        _codeSystem = codeSystem,
        super._();

  factory _$TerminologyCapabilitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TerminologyCapabilitiesImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.TerminologyCapabilities)
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

  /// [url] An absolute URI that is used to identify this terminology
  /// capabilities when it is referenced in a specification, model, design or an
  /// instance; also called its canonical identifier. This SHOULD be globally
  /// unique and SHOULD be a literal address at which at which an authoritative
  /// instance of this terminology capabilities is (or will be) published. This
  /// URL can be the target of a canonical reference. It SHALL remain the same
  ///  when the terminology capabilities is stored on different servers.
  @override
  final FhirUri? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [version] The identifier that is used to identify this version of the
  /// terminology capabilities when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the terminology
  /// capabilities author and is not expected to be globally unique. For
  /// example, it might be a timestamp (e.g. yyyymmdd) if a managed version is
  /// not available. There is also no expectation that versions can be placed in
  ///  a lexicographical sequence.
  @override
  final String? version;

  /// [versionElement] Extensions for version
  @override
  @JsonKey(name: '_version')
  final PrimitiveElement? versionElement;

  /// [name] A natural language name identifying the terminology capabilities.
  /// This name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [title] A short, descriptive, user-friendly title for the terminology
  ///  capabilities.
  @override
  final String? title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;

  /// [status] The status of this terminology capabilities. Enables tracking
  ///  the life-cycle of the content.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [experimental] A Boolean value to indicate that this terminology
  /// capabilities is authored for testing purposes (or
  /// education/evaluation/marketing) and is not intended to be used for genuine
  ///  usage.
  @override
  final FhirBoolean? experimental;

  /// [experimentalElement] Extensions for experimental
  @override
  @JsonKey(name: '_experimental')
  final PrimitiveElement? experimentalElement;

  /// [date] The date  (and optionally time) when the terminology capabilities
  /// was published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should change
  ///  when the substantive content of the terminology capabilities changes.
  @override
  final FhirDateTime? date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [publisher] The name of the organization or individual that published the
  ///  terminology capabilities.
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

  /// [description] A free text natural language description of the terminology
  /// capabilities from a consumer's perspective. Typically, this is used when
  /// the capability statement describes a desired rather than an actual
  /// solution, for example as a formal expression of requirements as part of an
  ///  RFP.
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
  ///  and searching for appropriate terminology capabilities instances.
  final List<UsageContext>? _useContext;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate terminology capabilities instances.
  @override
  List<UsageContext>? get useContext {
    final value = _useContext;
    if (value == null) return null;
    if (_useContext is EqualUnmodifiableListView) return _useContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [jurisdiction] A legal or geographic region in which the terminology
  ///  capabilities is intended to be used.
  final List<CodeableConcept>? _jurisdiction;

  /// [jurisdiction] A legal or geographic region in which the terminology
  ///  capabilities is intended to be used.
  @override
  List<CodeableConcept>? get jurisdiction {
    final value = _jurisdiction;
    if (value == null) return null;
    if (_jurisdiction is EqualUnmodifiableListView) return _jurisdiction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [purpose] Explanation of why this terminology capabilities is needed and
  ///  why it has been designed as it has.
  @override
  final FhirMarkdown? purpose;

  /// [purposeElement] Extensions for purpose
  @override
  @JsonKey(name: '_purpose')
  final PrimitiveElement? purposeElement;

  /// [copyright] A copyright statement relating to the terminology
  /// capabilities and/or its contents. Copyright statements are generally legal
  ///  restrictions on the use and publishing of the terminology capabilities.
  @override
  final FhirMarkdown? copyright;

  /// [copyrightElement] Extensions for copyright
  @override
  @JsonKey(name: '_copyright')
  final PrimitiveElement? copyrightElement;

  /// [kind] The way that this statement is intended to be used, to describe an
  /// actual running instance of software, a particular product (kind, not
  /// instance of software) or a class of implementation (e.g. a desired
  ///  purchase).
  @override
  final FhirCode? kind;

  /// [kindElement] Extensions for kind
  @override
  @JsonKey(name: '_kind')
  final PrimitiveElement? kindElement;

  /// [software] Software that is covered by this terminology capability
  /// statement.  It is used when the statement describes the capabilities of a
  ///  particular software version, independent of an installation.
  @override
  final TerminologyCapabilitiesSoftware? software;

  /// [implementation] Identifies a specific implementation instance that is
  /// described by the terminology capability statement - i.e. a particular
  ///  installation, rather than the capabilities of a software program.
  @override
  final TerminologyCapabilitiesImplementation? implementation;

  /// [lockedDate] Whether the server supports lockedDate.
  @override
  final FhirBoolean? lockedDate;

  /// [lockedDateElement] Extensions for lockedDate
  @override
  @JsonKey(name: '_lockedDate')
  final PrimitiveElement? lockedDateElement;

  /// [codeSystem] Identifies a code system that is supported by the server. If
  /// there is a no code system URL, then this declares the general assumptions
  ///  a client can make about support for any CodeSystem resource.
  final List<TerminologyCapabilitiesCodeSystem>? _codeSystem;

  /// [codeSystem] Identifies a code system that is supported by the server. If
  /// there is a no code system URL, then this declares the general assumptions
  ///  a client can make about support for any CodeSystem resource.
  @override
  List<TerminologyCapabilitiesCodeSystem>? get codeSystem {
    final value = _codeSystem;
    if (value == null) return null;
    if (_codeSystem is EqualUnmodifiableListView) return _codeSystem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [expansion] Information about the
  ///  [ValueSet/$expand](valueset-operation-expand.html) operation.
  @override
  final TerminologyCapabilitiesExpansion? expansion;

  /// [codeSearch] The degree to which the server supports the code search
  ///  parameter on ValueSet, if it is supported.
  @override
  final FhirCode? codeSearch;

  /// [codeSearchElement] Extensions for codeSearch
  @override
  @JsonKey(name: '_codeSearch')
  final PrimitiveElement? codeSearchElement;

  /// [validateCode] Information about the
  @override
  final TerminologyCapabilitiesValidateCode? validateCode;
  @override
  final TerminologyCapabilitiesTranslation? translation;
  @override
  final TerminologyCapabilitiesClosure? closure;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TerminologyCapabilitiesImpl &&
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
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.purposeElement, purposeElement) ||
                other.purposeElement == purposeElement) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.copyrightElement, copyrightElement) ||
                other.copyrightElement == copyrightElement) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.kindElement, kindElement) ||
                other.kindElement == kindElement) &&
            (identical(other.software, software) ||
                other.software == software) &&
            (identical(other.implementation, implementation) ||
                other.implementation == implementation) &&
            (identical(other.lockedDate, lockedDate) ||
                other.lockedDate == lockedDate) &&
            (identical(other.lockedDateElement, lockedDateElement) ||
                other.lockedDateElement == lockedDateElement) &&
            const DeepCollectionEquality()
                .equals(other._codeSystem, _codeSystem) &&
            (identical(other.expansion, expansion) ||
                other.expansion == expansion) &&
            (identical(other.codeSearch, codeSearch) ||
                other.codeSearch == codeSearch) &&
            (identical(other.codeSearchElement, codeSearchElement) ||
                other.codeSearchElement == codeSearchElement) &&
            (identical(other.validateCode, validateCode) ||
                other.validateCode == validateCode) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.closure, closure) || other.closure == closure));
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
        kind,
        kindElement,
        software,
        implementation,
        lockedDate,
        lockedDateElement,
        const DeepCollectionEquality().hash(_codeSystem),
        expansion,
        codeSearch,
        codeSearchElement,
        validateCode,
        translation,
        closure
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TerminologyCapabilitiesImplCopyWith<_$TerminologyCapabilitiesImpl>
      get copyWith => __$$TerminologyCapabilitiesImplCopyWithImpl<
          _$TerminologyCapabilitiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TerminologyCapabilitiesImplToJson(
      this,
    );
  }
}

abstract class _TerminologyCapabilities extends TerminologyCapabilities {
  factory _TerminologyCapabilities(
      {@JsonKey(unknownEnumValue: R4ResourceType.TerminologyCapabilities)
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
      final FhirMarkdown? purpose,
      @JsonKey(name: '_purpose') final PrimitiveElement? purposeElement,
      final FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') final PrimitiveElement? copyrightElement,
      final FhirCode? kind,
      @JsonKey(name: '_kind') final PrimitiveElement? kindElement,
      final TerminologyCapabilitiesSoftware? software,
      final TerminologyCapabilitiesImplementation? implementation,
      final FhirBoolean? lockedDate,
      @JsonKey(name: '_lockedDate') final PrimitiveElement? lockedDateElement,
      final List<TerminologyCapabilitiesCodeSystem>? codeSystem,
      final TerminologyCapabilitiesExpansion? expansion,
      final FhirCode? codeSearch,
      @JsonKey(name: '_codeSearch') final PrimitiveElement? codeSearchElement,
      final TerminologyCapabilitiesValidateCode? validateCode,
      final TerminologyCapabilitiesTranslation? translation,
      final TerminologyCapabilitiesClosure?
          closure}) = _$TerminologyCapabilitiesImpl;
  const _TerminologyCapabilities._() : super._();

  factory _TerminologyCapabilities.fromJson(Map<String, dynamic> json) =
      _$TerminologyCapabilitiesImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.TerminologyCapabilities)
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

  /// [url] An absolute URI that is used to identify this terminology
  /// capabilities when it is referenced in a specification, model, design or an
  /// instance; also called its canonical identifier. This SHOULD be globally
  /// unique and SHOULD be a literal address at which at which an authoritative
  /// instance of this terminology capabilities is (or will be) published. This
  /// URL can be the target of a canonical reference. It SHALL remain the same
  ///  when the terminology capabilities is stored on different servers.
  FhirUri? get url;
  @override

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override

  /// [version] The identifier that is used to identify this version of the
  /// terminology capabilities when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the terminology
  /// capabilities author and is not expected to be globally unique. For
  /// example, it might be a timestamp (e.g. yyyymmdd) if a managed version is
  /// not available. There is also no expectation that versions can be placed in
  ///  a lexicographical sequence.
  String? get version;
  @override

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement;
  @override

  /// [name] A natural language name identifying the terminology capabilities.
  /// This name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [title] A short, descriptive, user-friendly title for the terminology
  ///  capabilities.
  String? get title;
  @override

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;
  @override

  /// [status] The status of this terminology capabilities. Enables tracking
  ///  the life-cycle of the content.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [experimental] A Boolean value to indicate that this terminology
  /// capabilities is authored for testing purposes (or
  /// education/evaluation/marketing) and is not intended to be used for genuine
  ///  usage.
  FhirBoolean? get experimental;
  @override

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement;
  @override

  /// [date] The date  (and optionally time) when the terminology capabilities
  /// was published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should change
  ///  when the substantive content of the terminology capabilities changes.
  FhirDateTime? get date;
  @override

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override

  /// [publisher] The name of the organization or individual that published the
  ///  terminology capabilities.
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

  /// [description] A free text natural language description of the terminology
  /// capabilities from a consumer's perspective. Typically, this is used when
  /// the capability statement describes a desired rather than an actual
  /// solution, for example as a formal expression of requirements as part of an
  ///  RFP.
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
  ///  and searching for appropriate terminology capabilities instances.
  List<UsageContext>? get useContext;
  @override

  /// [jurisdiction] A legal or geographic region in which the terminology
  ///  capabilities is intended to be used.
  List<CodeableConcept>? get jurisdiction;
  @override

  /// [purpose] Explanation of why this terminology capabilities is needed and
  ///  why it has been designed as it has.
  FhirMarkdown? get purpose;
  @override

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement;
  @override

  /// [copyright] A copyright statement relating to the terminology
  /// capabilities and/or its contents. Copyright statements are generally legal
  ///  restrictions on the use and publishing of the terminology capabilities.
  FhirMarkdown? get copyright;
  @override

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement;
  @override

  /// [kind] The way that this statement is intended to be used, to describe an
  /// actual running instance of software, a particular product (kind, not
  /// instance of software) or a class of implementation (e.g. a desired
  ///  purchase).
  FhirCode? get kind;
  @override

  /// [kindElement] Extensions for kind
  @JsonKey(name: '_kind')
  PrimitiveElement? get kindElement;
  @override

  /// [software] Software that is covered by this terminology capability
  /// statement.  It is used when the statement describes the capabilities of a
  ///  particular software version, independent of an installation.
  TerminologyCapabilitiesSoftware? get software;
  @override

  /// [implementation] Identifies a specific implementation instance that is
  /// described by the terminology capability statement - i.e. a particular
  ///  installation, rather than the capabilities of a software program.
  TerminologyCapabilitiesImplementation? get implementation;
  @override

  /// [lockedDate] Whether the server supports lockedDate.
  FhirBoolean? get lockedDate;
  @override

  /// [lockedDateElement] Extensions for lockedDate
  @JsonKey(name: '_lockedDate')
  PrimitiveElement? get lockedDateElement;
  @override

  /// [codeSystem] Identifies a code system that is supported by the server. If
  /// there is a no code system URL, then this declares the general assumptions
  ///  a client can make about support for any CodeSystem resource.
  List<TerminologyCapabilitiesCodeSystem>? get codeSystem;
  @override

  /// [expansion] Information about the
  ///  [ValueSet/$expand](valueset-operation-expand.html) operation.
  TerminologyCapabilitiesExpansion? get expansion;
  @override

  /// [codeSearch] The degree to which the server supports the code search
  ///  parameter on ValueSet, if it is supported.
  FhirCode? get codeSearch;
  @override

  /// [codeSearchElement] Extensions for codeSearch
  @JsonKey(name: '_codeSearch')
  PrimitiveElement? get codeSearchElement;
  @override

  /// [validateCode] Information about the
  TerminologyCapabilitiesValidateCode? get validateCode;
  @override
  TerminologyCapabilitiesTranslation? get translation;
  @override
  TerminologyCapabilitiesClosure? get closure;
  @override
  @JsonKey(ignore: true)
  _$$TerminologyCapabilitiesImplCopyWith<_$TerminologyCapabilitiesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TerminologyCapabilitiesSoftware _$TerminologyCapabilitiesSoftwareFromJson(
    Map<String, dynamic> json) {
  return _TerminologyCapabilitiesSoftware.fromJson(json);
}

/// @nodoc
mixin _$TerminologyCapabilitiesSoftware {
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

  /// [name] Name the software is known by.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [version] The version identifier for the software covered by this
  ///  statement.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TerminologyCapabilitiesSoftwareCopyWith<TerminologyCapabilitiesSoftware>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminologyCapabilitiesSoftwareCopyWith<$Res> {
  factory $TerminologyCapabilitiesSoftwareCopyWith(
          TerminologyCapabilitiesSoftware value,
          $Res Function(TerminologyCapabilitiesSoftware) then) =
      _$TerminologyCapabilitiesSoftwareCopyWithImpl<$Res,
          TerminologyCapabilitiesSoftware>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement});
}

/// @nodoc
class _$TerminologyCapabilitiesSoftwareCopyWithImpl<$Res,
        $Val extends TerminologyCapabilitiesSoftware>
    implements $TerminologyCapabilitiesSoftwareCopyWith<$Res> {
  _$TerminologyCapabilitiesSoftwareCopyWithImpl(this._value, this._then);

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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TerminologyCapabilitiesSoftwareImplCopyWith<$Res>
    implements $TerminologyCapabilitiesSoftwareCopyWith<$Res> {
  factory _$$TerminologyCapabilitiesSoftwareImplCopyWith(
          _$TerminologyCapabilitiesSoftwareImpl value,
          $Res Function(_$TerminologyCapabilitiesSoftwareImpl) then) =
      __$$TerminologyCapabilitiesSoftwareImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement});
}

/// @nodoc
class __$$TerminologyCapabilitiesSoftwareImplCopyWithImpl<$Res>
    extends _$TerminologyCapabilitiesSoftwareCopyWithImpl<$Res,
        _$TerminologyCapabilitiesSoftwareImpl>
    implements _$$TerminologyCapabilitiesSoftwareImplCopyWith<$Res> {
  __$$TerminologyCapabilitiesSoftwareImplCopyWithImpl(
      _$TerminologyCapabilitiesSoftwareImpl _value,
      $Res Function(_$TerminologyCapabilitiesSoftwareImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
  }) {
    return _then(_$TerminologyCapabilitiesSoftwareImpl(
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
class _$TerminologyCapabilitiesSoftwareImpl
    extends _TerminologyCapabilitiesSoftware {
  const _$TerminologyCapabilitiesSoftwareImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.version,
      @JsonKey(name: '_version') this.versionElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$TerminologyCapabilitiesSoftwareImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TerminologyCapabilitiesSoftwareImplFromJson(json);

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

  /// [name] Name the software is known by.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [version] The version identifier for the software covered by this
  ///  statement.
  @override
  final String? version;

  /// [versionElement] Extensions for version
  @override
  @JsonKey(name: '_version')
  final PrimitiveElement? versionElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TerminologyCapabilitiesSoftwareImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.versionElement, versionElement) ||
                other.versionElement == versionElement));
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
      version,
      versionElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TerminologyCapabilitiesSoftwareImplCopyWith<
          _$TerminologyCapabilitiesSoftwareImpl>
      get copyWith => __$$TerminologyCapabilitiesSoftwareImplCopyWithImpl<
          _$TerminologyCapabilitiesSoftwareImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TerminologyCapabilitiesSoftwareImplToJson(
      this,
    );
  }
}

abstract class _TerminologyCapabilitiesSoftware
    extends TerminologyCapabilitiesSoftware {
  factory _TerminologyCapabilitiesSoftware(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final String? name,
          @JsonKey(name: '_name') final PrimitiveElement? nameElement,
          final String? version,
          @JsonKey(name: '_version') final PrimitiveElement? versionElement}) =
      _$TerminologyCapabilitiesSoftwareImpl;
  const _TerminologyCapabilitiesSoftware._() : super._();

  factory _TerminologyCapabilitiesSoftware.fromJson(Map<String, dynamic> json) =
      _$TerminologyCapabilitiesSoftwareImpl.fromJson;

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

  /// [name] Name the software is known by.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [version] The version identifier for the software covered by this
  ///  statement.
  String? get version;
  @override

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement;
  @override
  @JsonKey(ignore: true)
  _$$TerminologyCapabilitiesSoftwareImplCopyWith<
          _$TerminologyCapabilitiesSoftwareImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TerminologyCapabilitiesImplementation
    _$TerminologyCapabilitiesImplementationFromJson(Map<String, dynamic> json) {
  return _TerminologyCapabilitiesImplementation.fromJson(json);
}

/// @nodoc
mixin _$TerminologyCapabilitiesImplementation {
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

  /// [description] Information about the specific installation that this
  ///  terminology capability statement relates to.
  String? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [url] An absolute base URL for the implementation.
  FhirUrl? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TerminologyCapabilitiesImplementationCopyWith<
          TerminologyCapabilitiesImplementation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminologyCapabilitiesImplementationCopyWith<$Res> {
  factory $TerminologyCapabilitiesImplementationCopyWith(
          TerminologyCapabilitiesImplementation value,
          $Res Function(TerminologyCapabilitiesImplementation) then) =
      _$TerminologyCapabilitiesImplementationCopyWithImpl<$Res,
          TerminologyCapabilitiesImplementation>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirUrl? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement});
}

/// @nodoc
class _$TerminologyCapabilitiesImplementationCopyWithImpl<$Res,
        $Val extends TerminologyCapabilitiesImplementation>
    implements $TerminologyCapabilitiesImplementationCopyWith<$Res> {
  _$TerminologyCapabilitiesImplementationCopyWithImpl(this._value, this._then);

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
    Object? url = freezed,
    Object? urlElement = freezed,
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
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TerminologyCapabilitiesImplementationImplCopyWith<$Res>
    implements $TerminologyCapabilitiesImplementationCopyWith<$Res> {
  factory _$$TerminologyCapabilitiesImplementationImplCopyWith(
          _$TerminologyCapabilitiesImplementationImpl value,
          $Res Function(_$TerminologyCapabilitiesImplementationImpl) then) =
      __$$TerminologyCapabilitiesImplementationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirUrl? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement});
}

/// @nodoc
class __$$TerminologyCapabilitiesImplementationImplCopyWithImpl<$Res>
    extends _$TerminologyCapabilitiesImplementationCopyWithImpl<$Res,
        _$TerminologyCapabilitiesImplementationImpl>
    implements _$$TerminologyCapabilitiesImplementationImplCopyWith<$Res> {
  __$$TerminologyCapabilitiesImplementationImplCopyWithImpl(
      _$TerminologyCapabilitiesImplementationImpl _value,
      $Res Function(_$TerminologyCapabilitiesImplementationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? url = freezed,
    Object? urlElement = freezed,
  }) {
    return _then(_$TerminologyCapabilitiesImplementationImpl(
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
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TerminologyCapabilitiesImplementationImpl
    extends _TerminologyCapabilitiesImplementation {
  const _$TerminologyCapabilitiesImplementationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.url,
      @JsonKey(name: '_url') this.urlElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$TerminologyCapabilitiesImplementationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TerminologyCapabilitiesImplementationImplFromJson(json);

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

  /// [description] Information about the specific installation that this
  ///  terminology capability statement relates to.
  @override
  final String? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [url] An absolute base URL for the implementation.
  @override
  final FhirUrl? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TerminologyCapabilitiesImplementationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlElement, urlElement) ||
                other.urlElement == urlElement));
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
      url,
      urlElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TerminologyCapabilitiesImplementationImplCopyWith<
          _$TerminologyCapabilitiesImplementationImpl>
      get copyWith => __$$TerminologyCapabilitiesImplementationImplCopyWithImpl<
          _$TerminologyCapabilitiesImplementationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TerminologyCapabilitiesImplementationImplToJson(
      this,
    );
  }
}

abstract class _TerminologyCapabilitiesImplementation
    extends TerminologyCapabilitiesImplementation {
  factory _TerminologyCapabilitiesImplementation(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final FhirUrl? url,
      @JsonKey(name: '_url')
      final PrimitiveElement?
          urlElement}) = _$TerminologyCapabilitiesImplementationImpl;
  const _TerminologyCapabilitiesImplementation._() : super._();

  factory _TerminologyCapabilitiesImplementation.fromJson(
          Map<String, dynamic> json) =
      _$TerminologyCapabilitiesImplementationImpl.fromJson;

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

  /// [description] Information about the specific installation that this
  ///  terminology capability statement relates to.
  String? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [url] An absolute base URL for the implementation.
  FhirUrl? get url;
  @override

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override
  @JsonKey(ignore: true)
  _$$TerminologyCapabilitiesImplementationImplCopyWith<
          _$TerminologyCapabilitiesImplementationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TerminologyCapabilitiesCodeSystem _$TerminologyCapabilitiesCodeSystemFromJson(
    Map<String, dynamic> json) {
  return _TerminologyCapabilitiesCodeSystem.fromJson(json);
}

/// @nodoc
mixin _$TerminologyCapabilitiesCodeSystem {
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

  /// [uri] URI for the Code System.
  FhirCanonical? get uri => throw _privateConstructorUsedError;

  /// [version] For the code system, a list of versions that are supported by
  ///  the server.
  List<TerminologyCapabilitiesVersion>? get version =>
      throw _privateConstructorUsedError;

  /// [subsumption] True if subsumption is supported for this version of the
  ///  code system.
  FhirBoolean? get subsumption => throw _privateConstructorUsedError;

  /// [subsumptionElement] Extensions for subsumption
  @JsonKey(name: '_subsumption')
  PrimitiveElement? get subsumptionElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TerminologyCapabilitiesCodeSystemCopyWith<TerminologyCapabilitiesCodeSystem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminologyCapabilitiesCodeSystemCopyWith<$Res> {
  factory $TerminologyCapabilitiesCodeSystemCopyWith(
          TerminologyCapabilitiesCodeSystem value,
          $Res Function(TerminologyCapabilitiesCodeSystem) then) =
      _$TerminologyCapabilitiesCodeSystemCopyWithImpl<$Res,
          TerminologyCapabilitiesCodeSystem>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCanonical? uri,
      List<TerminologyCapabilitiesVersion>? version,
      FhirBoolean? subsumption,
      @JsonKey(name: '_subsumption') PrimitiveElement? subsumptionElement});
}

/// @nodoc
class _$TerminologyCapabilitiesCodeSystemCopyWithImpl<$Res,
        $Val extends TerminologyCapabilitiesCodeSystem>
    implements $TerminologyCapabilitiesCodeSystemCopyWith<$Res> {
  _$TerminologyCapabilitiesCodeSystemCopyWithImpl(this._value, this._then);

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
    Object? uri = freezed,
    Object? version = freezed,
    Object? subsumption = freezed,
    Object? subsumptionElement = freezed,
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
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as List<TerminologyCapabilitiesVersion>?,
      subsumption: freezed == subsumption
          ? _value.subsumption
          : subsumption // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      subsumptionElement: freezed == subsumptionElement
          ? _value.subsumptionElement
          : subsumptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TerminologyCapabilitiesCodeSystemImplCopyWith<$Res>
    implements $TerminologyCapabilitiesCodeSystemCopyWith<$Res> {
  factory _$$TerminologyCapabilitiesCodeSystemImplCopyWith(
          _$TerminologyCapabilitiesCodeSystemImpl value,
          $Res Function(_$TerminologyCapabilitiesCodeSystemImpl) then) =
      __$$TerminologyCapabilitiesCodeSystemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCanonical? uri,
      List<TerminologyCapabilitiesVersion>? version,
      FhirBoolean? subsumption,
      @JsonKey(name: '_subsumption') PrimitiveElement? subsumptionElement});
}

/// @nodoc
class __$$TerminologyCapabilitiesCodeSystemImplCopyWithImpl<$Res>
    extends _$TerminologyCapabilitiesCodeSystemCopyWithImpl<$Res,
        _$TerminologyCapabilitiesCodeSystemImpl>
    implements _$$TerminologyCapabilitiesCodeSystemImplCopyWith<$Res> {
  __$$TerminologyCapabilitiesCodeSystemImplCopyWithImpl(
      _$TerminologyCapabilitiesCodeSystemImpl _value,
      $Res Function(_$TerminologyCapabilitiesCodeSystemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? uri = freezed,
    Object? version = freezed,
    Object? subsumption = freezed,
    Object? subsumptionElement = freezed,
  }) {
    return _then(_$TerminologyCapabilitiesCodeSystemImpl(
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
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      version: freezed == version
          ? _value._version
          : version // ignore: cast_nullable_to_non_nullable
              as List<TerminologyCapabilitiesVersion>?,
      subsumption: freezed == subsumption
          ? _value.subsumption
          : subsumption // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      subsumptionElement: freezed == subsumptionElement
          ? _value.subsumptionElement
          : subsumptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TerminologyCapabilitiesCodeSystemImpl
    extends _TerminologyCapabilitiesCodeSystem {
  const _$TerminologyCapabilitiesCodeSystemImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.uri,
      final List<TerminologyCapabilitiesVersion>? version,
      this.subsumption,
      @JsonKey(name: '_subsumption') this.subsumptionElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _version = version,
        super._();

  factory _$TerminologyCapabilitiesCodeSystemImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TerminologyCapabilitiesCodeSystemImplFromJson(json);

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

  /// [uri] URI for the Code System.
  @override
  final FhirCanonical? uri;

  /// [version] For the code system, a list of versions that are supported by
  ///  the server.
  final List<TerminologyCapabilitiesVersion>? _version;

  /// [version] For the code system, a list of versions that are supported by
  ///  the server.
  @override
  List<TerminologyCapabilitiesVersion>? get version {
    final value = _version;
    if (value == null) return null;
    if (_version is EqualUnmodifiableListView) return _version;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [subsumption] True if subsumption is supported for this version of the
  ///  code system.
  @override
  final FhirBoolean? subsumption;

  /// [subsumptionElement] Extensions for subsumption
  @override
  @JsonKey(name: '_subsumption')
  final PrimitiveElement? subsumptionElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TerminologyCapabilitiesCodeSystemImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            const DeepCollectionEquality().equals(other._version, _version) &&
            (identical(other.subsumption, subsumption) ||
                other.subsumption == subsumption) &&
            (identical(other.subsumptionElement, subsumptionElement) ||
                other.subsumptionElement == subsumptionElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      uri,
      const DeepCollectionEquality().hash(_version),
      subsumption,
      subsumptionElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TerminologyCapabilitiesCodeSystemImplCopyWith<
          _$TerminologyCapabilitiesCodeSystemImpl>
      get copyWith => __$$TerminologyCapabilitiesCodeSystemImplCopyWithImpl<
          _$TerminologyCapabilitiesCodeSystemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TerminologyCapabilitiesCodeSystemImplToJson(
      this,
    );
  }
}

abstract class _TerminologyCapabilitiesCodeSystem
    extends TerminologyCapabilitiesCodeSystem {
  factory _TerminologyCapabilitiesCodeSystem(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCanonical? uri,
          final List<TerminologyCapabilitiesVersion>? version,
          final FhirBoolean? subsumption,
          @JsonKey(name: '_subsumption')
          final PrimitiveElement? subsumptionElement}) =
      _$TerminologyCapabilitiesCodeSystemImpl;
  const _TerminologyCapabilitiesCodeSystem._() : super._();

  factory _TerminologyCapabilitiesCodeSystem.fromJson(
          Map<String, dynamic> json) =
      _$TerminologyCapabilitiesCodeSystemImpl.fromJson;

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

  /// [uri] URI for the Code System.
  FhirCanonical? get uri;
  @override

  /// [version] For the code system, a list of versions that are supported by
  ///  the server.
  List<TerminologyCapabilitiesVersion>? get version;
  @override

  /// [subsumption] True if subsumption is supported for this version of the
  ///  code system.
  FhirBoolean? get subsumption;
  @override

  /// [subsumptionElement] Extensions for subsumption
  @JsonKey(name: '_subsumption')
  PrimitiveElement? get subsumptionElement;
  @override
  @JsonKey(ignore: true)
  _$$TerminologyCapabilitiesCodeSystemImplCopyWith<
          _$TerminologyCapabilitiesCodeSystemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TerminologyCapabilitiesVersion _$TerminologyCapabilitiesVersionFromJson(
    Map<String, dynamic> json) {
  return _TerminologyCapabilitiesVersion.fromJson(json);
}

/// @nodoc
mixin _$TerminologyCapabilitiesVersion {
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

  /// [code] For version-less code systems, there should be a single version
  ///  with no identifier.
  String? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement => throw _privateConstructorUsedError;

  /// [isDefault] If this is the default version for this code system.
  FhirBoolean? get isDefault => throw _privateConstructorUsedError;

  /// [isDefaultElement] Extensions for isDefault
  @JsonKey(name: '_isDefault')
  PrimitiveElement? get isDefaultElement => throw _privateConstructorUsedError;

  /// [compositional] If the compositional grammar defined by the code system
  ///  is supported.
  FhirBoolean? get compositional => throw _privateConstructorUsedError;

  /// [compositionalElement] Extensions for compositional
  @JsonKey(name: '_compositional')
  PrimitiveElement? get compositionalElement =>
      throw _privateConstructorUsedError;

  /// [language] Language Displays supported.
  List<FhirCode>? get language => throw _privateConstructorUsedError;

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  List<PrimitiveElement>? get languageElement =>
      throw _privateConstructorUsedError;

  /// [filter] Filter Properties supported.
  List<TerminologyCapabilitiesFilter>? get filter =>
      throw _privateConstructorUsedError;

  /// [property] Properties supported for $lookup.
  List<FhirCode>? get property => throw _privateConstructorUsedError;

  /// [propertyElement] Extensions for property
  @JsonKey(name: '_property')
  List<PrimitiveElement>? get propertyElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TerminologyCapabilitiesVersionCopyWith<TerminologyCapabilitiesVersion>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminologyCapabilitiesVersionCopyWith<$Res> {
  factory $TerminologyCapabilitiesVersionCopyWith(
          TerminologyCapabilitiesVersion value,
          $Res Function(TerminologyCapabilitiesVersion) then) =
      _$TerminologyCapabilitiesVersionCopyWithImpl<$Res,
          TerminologyCapabilitiesVersion>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      FhirBoolean? isDefault,
      @JsonKey(name: '_isDefault') PrimitiveElement? isDefaultElement,
      FhirBoolean? compositional,
      @JsonKey(name: '_compositional') PrimitiveElement? compositionalElement,
      List<FhirCode>? language,
      @JsonKey(name: '_language') List<PrimitiveElement>? languageElement,
      List<TerminologyCapabilitiesFilter>? filter,
      List<FhirCode>? property,
      @JsonKey(name: '_property') List<PrimitiveElement>? propertyElement});
}

/// @nodoc
class _$TerminologyCapabilitiesVersionCopyWithImpl<$Res,
        $Val extends TerminologyCapabilitiesVersion>
    implements $TerminologyCapabilitiesVersionCopyWith<$Res> {
  _$TerminologyCapabilitiesVersionCopyWithImpl(this._value, this._then);

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
    Object? isDefault = freezed,
    Object? isDefaultElement = freezed,
    Object? compositional = freezed,
    Object? compositionalElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? filter = freezed,
    Object? property = freezed,
    Object? propertyElement = freezed,
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
              as String?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      isDefaultElement: freezed == isDefaultElement
          ? _value.isDefaultElement
          : isDefaultElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      compositional: freezed == compositional
          ? _value.compositional
          : compositional // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      compositionalElement: freezed == compositionalElement
          ? _value.compositionalElement
          : compositionalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<TerminologyCapabilitiesFilter>?,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      propertyElement: freezed == propertyElement
          ? _value.propertyElement
          : propertyElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TerminologyCapabilitiesVersionImplCopyWith<$Res>
    implements $TerminologyCapabilitiesVersionCopyWith<$Res> {
  factory _$$TerminologyCapabilitiesVersionImplCopyWith(
          _$TerminologyCapabilitiesVersionImpl value,
          $Res Function(_$TerminologyCapabilitiesVersionImpl) then) =
      __$$TerminologyCapabilitiesVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      FhirBoolean? isDefault,
      @JsonKey(name: '_isDefault') PrimitiveElement? isDefaultElement,
      FhirBoolean? compositional,
      @JsonKey(name: '_compositional') PrimitiveElement? compositionalElement,
      List<FhirCode>? language,
      @JsonKey(name: '_language') List<PrimitiveElement>? languageElement,
      List<TerminologyCapabilitiesFilter>? filter,
      List<FhirCode>? property,
      @JsonKey(name: '_property') List<PrimitiveElement>? propertyElement});
}

/// @nodoc
class __$$TerminologyCapabilitiesVersionImplCopyWithImpl<$Res>
    extends _$TerminologyCapabilitiesVersionCopyWithImpl<$Res,
        _$TerminologyCapabilitiesVersionImpl>
    implements _$$TerminologyCapabilitiesVersionImplCopyWith<$Res> {
  __$$TerminologyCapabilitiesVersionImplCopyWithImpl(
      _$TerminologyCapabilitiesVersionImpl _value,
      $Res Function(_$TerminologyCapabilitiesVersionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? isDefault = freezed,
    Object? isDefaultElement = freezed,
    Object? compositional = freezed,
    Object? compositionalElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? filter = freezed,
    Object? property = freezed,
    Object? propertyElement = freezed,
  }) {
    return _then(_$TerminologyCapabilitiesVersionImpl(
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
              as String?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      isDefaultElement: freezed == isDefaultElement
          ? _value.isDefaultElement
          : isDefaultElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      compositional: freezed == compositional
          ? _value.compositional
          : compositional // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      compositionalElement: freezed == compositionalElement
          ? _value.compositionalElement
          : compositionalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value._language
          : language // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      languageElement: freezed == languageElement
          ? _value._languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      filter: freezed == filter
          ? _value._filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<TerminologyCapabilitiesFilter>?,
      property: freezed == property
          ? _value._property
          : property // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      propertyElement: freezed == propertyElement
          ? _value._propertyElement
          : propertyElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TerminologyCapabilitiesVersionImpl
    extends _TerminologyCapabilitiesVersion {
  const _$TerminologyCapabilitiesVersionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      this.isDefault,
      @JsonKey(name: '_isDefault') this.isDefaultElement,
      this.compositional,
      @JsonKey(name: '_compositional') this.compositionalElement,
      final List<FhirCode>? language,
      @JsonKey(name: '_language') final List<PrimitiveElement>? languageElement,
      final List<TerminologyCapabilitiesFilter>? filter,
      final List<FhirCode>? property,
      @JsonKey(name: '_property')
      final List<PrimitiveElement>? propertyElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _language = language,
        _languageElement = languageElement,
        _filter = filter,
        _property = property,
        _propertyElement = propertyElement,
        super._();

  factory _$TerminologyCapabilitiesVersionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TerminologyCapabilitiesVersionImplFromJson(json);

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

  /// [code] For version-less code systems, there should be a single version
  ///  with no identifier.
  @override
  final String? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final PrimitiveElement? codeElement;

  /// [isDefault] If this is the default version for this code system.
  @override
  final FhirBoolean? isDefault;

  /// [isDefaultElement] Extensions for isDefault
  @override
  @JsonKey(name: '_isDefault')
  final PrimitiveElement? isDefaultElement;

  /// [compositional] If the compositional grammar defined by the code system
  ///  is supported.
  @override
  final FhirBoolean? compositional;

  /// [compositionalElement] Extensions for compositional
  @override
  @JsonKey(name: '_compositional')
  final PrimitiveElement? compositionalElement;

  /// [language] Language Displays supported.
  final List<FhirCode>? _language;

  /// [language] Language Displays supported.
  @override
  List<FhirCode>? get language {
    final value = _language;
    if (value == null) return null;
    if (_language is EqualUnmodifiableListView) return _language;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [languageElement] Extensions for language
  final List<PrimitiveElement>? _languageElement;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  List<PrimitiveElement>? get languageElement {
    final value = _languageElement;
    if (value == null) return null;
    if (_languageElement is EqualUnmodifiableListView) return _languageElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [filter] Filter Properties supported.
  final List<TerminologyCapabilitiesFilter>? _filter;

  /// [filter] Filter Properties supported.
  @override
  List<TerminologyCapabilitiesFilter>? get filter {
    final value = _filter;
    if (value == null) return null;
    if (_filter is EqualUnmodifiableListView) return _filter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [property] Properties supported for $lookup.
  final List<FhirCode>? _property;

  /// [property] Properties supported for $lookup.
  @override
  List<FhirCode>? get property {
    final value = _property;
    if (value == null) return null;
    if (_property is EqualUnmodifiableListView) return _property;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [propertyElement] Extensions for property
  final List<PrimitiveElement>? _propertyElement;

  /// [propertyElement] Extensions for property
  @override
  @JsonKey(name: '_property')
  List<PrimitiveElement>? get propertyElement {
    final value = _propertyElement;
    if (value == null) return null;
    if (_propertyElement is EqualUnmodifiableListView) return _propertyElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TerminologyCapabilitiesVersionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.isDefaultElement, isDefaultElement) ||
                other.isDefaultElement == isDefaultElement) &&
            (identical(other.compositional, compositional) ||
                other.compositional == compositional) &&
            (identical(other.compositionalElement, compositionalElement) ||
                other.compositionalElement == compositionalElement) &&
            const DeepCollectionEquality().equals(other._language, _language) &&
            const DeepCollectionEquality()
                .equals(other._languageElement, _languageElement) &&
            const DeepCollectionEquality().equals(other._filter, _filter) &&
            const DeepCollectionEquality().equals(other._property, _property) &&
            const DeepCollectionEquality()
                .equals(other._propertyElement, _propertyElement));
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
      isDefault,
      isDefaultElement,
      compositional,
      compositionalElement,
      const DeepCollectionEquality().hash(_language),
      const DeepCollectionEquality().hash(_languageElement),
      const DeepCollectionEquality().hash(_filter),
      const DeepCollectionEquality().hash(_property),
      const DeepCollectionEquality().hash(_propertyElement));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TerminologyCapabilitiesVersionImplCopyWith<
          _$TerminologyCapabilitiesVersionImpl>
      get copyWith => __$$TerminologyCapabilitiesVersionImplCopyWithImpl<
          _$TerminologyCapabilitiesVersionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TerminologyCapabilitiesVersionImplToJson(
      this,
    );
  }
}

abstract class _TerminologyCapabilitiesVersion
    extends TerminologyCapabilitiesVersion {
  factory _TerminologyCapabilitiesVersion(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? code,
      @JsonKey(name: '_code') final PrimitiveElement? codeElement,
      final FhirBoolean? isDefault,
      @JsonKey(name: '_isDefault') final PrimitiveElement? isDefaultElement,
      final FhirBoolean? compositional,
      @JsonKey(name: '_compositional')
      final PrimitiveElement? compositionalElement,
      final List<FhirCode>? language,
      @JsonKey(name: '_language') final List<PrimitiveElement>? languageElement,
      final List<TerminologyCapabilitiesFilter>? filter,
      final List<FhirCode>? property,
      @JsonKey(name: '_property')
      final List<PrimitiveElement>?
          propertyElement}) = _$TerminologyCapabilitiesVersionImpl;
  const _TerminologyCapabilitiesVersion._() : super._();

  factory _TerminologyCapabilitiesVersion.fromJson(Map<String, dynamic> json) =
      _$TerminologyCapabilitiesVersionImpl.fromJson;

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

  /// [code] For version-less code systems, there should be a single version
  ///  with no identifier.
  String? get code;
  @override

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement;
  @override

  /// [isDefault] If this is the default version for this code system.
  FhirBoolean? get isDefault;
  @override

  /// [isDefaultElement] Extensions for isDefault
  @JsonKey(name: '_isDefault')
  PrimitiveElement? get isDefaultElement;
  @override

  /// [compositional] If the compositional grammar defined by the code system
  ///  is supported.
  FhirBoolean? get compositional;
  @override

  /// [compositionalElement] Extensions for compositional
  @JsonKey(name: '_compositional')
  PrimitiveElement? get compositionalElement;
  @override

  /// [language] Language Displays supported.
  List<FhirCode>? get language;
  @override

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  List<PrimitiveElement>? get languageElement;
  @override

  /// [filter] Filter Properties supported.
  List<TerminologyCapabilitiesFilter>? get filter;
  @override

  /// [property] Properties supported for $lookup.
  List<FhirCode>? get property;
  @override

  /// [propertyElement] Extensions for property
  @JsonKey(name: '_property')
  List<PrimitiveElement>? get propertyElement;
  @override
  @JsonKey(ignore: true)
  _$$TerminologyCapabilitiesVersionImplCopyWith<
          _$TerminologyCapabilitiesVersionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TerminologyCapabilitiesFilter _$TerminologyCapabilitiesFilterFromJson(
    Map<String, dynamic> json) {
  return _TerminologyCapabilitiesFilter.fromJson(json);
}

/// @nodoc
mixin _$TerminologyCapabilitiesFilter {
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

  /// [code] Code of the property supported.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement => throw _privateConstructorUsedError;

  /// [op] Operations supported for the property.
  List<FhirCode>? get op => throw _privateConstructorUsedError;

  /// [opElement] Extensions for op
  @JsonKey(name: '_op')
  List<PrimitiveElement>? get opElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TerminologyCapabilitiesFilterCopyWith<TerminologyCapabilitiesFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminologyCapabilitiesFilterCopyWith<$Res> {
  factory $TerminologyCapabilitiesFilterCopyWith(
          TerminologyCapabilitiesFilter value,
          $Res Function(TerminologyCapabilitiesFilter) then) =
      _$TerminologyCapabilitiesFilterCopyWithImpl<$Res,
          TerminologyCapabilitiesFilter>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      List<FhirCode>? op,
      @JsonKey(name: '_op') List<PrimitiveElement>? opElement});
}

/// @nodoc
class _$TerminologyCapabilitiesFilterCopyWithImpl<$Res,
        $Val extends TerminologyCapabilitiesFilter>
    implements $TerminologyCapabilitiesFilterCopyWith<$Res> {
  _$TerminologyCapabilitiesFilterCopyWithImpl(this._value, this._then);

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
    Object? op = freezed,
    Object? opElement = freezed,
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
      op: freezed == op
          ? _value.op
          : op // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      opElement: freezed == opElement
          ? _value.opElement
          : opElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TerminologyCapabilitiesFilterImplCopyWith<$Res>
    implements $TerminologyCapabilitiesFilterCopyWith<$Res> {
  factory _$$TerminologyCapabilitiesFilterImplCopyWith(
          _$TerminologyCapabilitiesFilterImpl value,
          $Res Function(_$TerminologyCapabilitiesFilterImpl) then) =
      __$$TerminologyCapabilitiesFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      List<FhirCode>? op,
      @JsonKey(name: '_op') List<PrimitiveElement>? opElement});
}

/// @nodoc
class __$$TerminologyCapabilitiesFilterImplCopyWithImpl<$Res>
    extends _$TerminologyCapabilitiesFilterCopyWithImpl<$Res,
        _$TerminologyCapabilitiesFilterImpl>
    implements _$$TerminologyCapabilitiesFilterImplCopyWith<$Res> {
  __$$TerminologyCapabilitiesFilterImplCopyWithImpl(
      _$TerminologyCapabilitiesFilterImpl _value,
      $Res Function(_$TerminologyCapabilitiesFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? op = freezed,
    Object? opElement = freezed,
  }) {
    return _then(_$TerminologyCapabilitiesFilterImpl(
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
      op: freezed == op
          ? _value._op
          : op // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      opElement: freezed == opElement
          ? _value._opElement
          : opElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TerminologyCapabilitiesFilterImpl
    extends _TerminologyCapabilitiesFilter {
  const _$TerminologyCapabilitiesFilterImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      final List<FhirCode>? op,
      @JsonKey(name: '_op') final List<PrimitiveElement>? opElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _op = op,
        _opElement = opElement,
        super._();

  factory _$TerminologyCapabilitiesFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TerminologyCapabilitiesFilterImplFromJson(json);

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

  /// [code] Code of the property supported.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final PrimitiveElement? codeElement;

  /// [op] Operations supported for the property.
  final List<FhirCode>? _op;

  /// [op] Operations supported for the property.
  @override
  List<FhirCode>? get op {
    final value = _op;
    if (value == null) return null;
    if (_op is EqualUnmodifiableListView) return _op;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [opElement] Extensions for op
  final List<PrimitiveElement>? _opElement;

  /// [opElement] Extensions for op
  @override
  @JsonKey(name: '_op')
  List<PrimitiveElement>? get opElement {
    final value = _opElement;
    if (value == null) return null;
    if (_opElement is EqualUnmodifiableListView) return _opElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TerminologyCapabilitiesFilterImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement) &&
            const DeepCollectionEquality().equals(other._op, _op) &&
            const DeepCollectionEquality()
                .equals(other._opElement, _opElement));
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
      const DeepCollectionEquality().hash(_op),
      const DeepCollectionEquality().hash(_opElement));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TerminologyCapabilitiesFilterImplCopyWith<
          _$TerminologyCapabilitiesFilterImpl>
      get copyWith => __$$TerminologyCapabilitiesFilterImplCopyWithImpl<
          _$TerminologyCapabilitiesFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TerminologyCapabilitiesFilterImplToJson(
      this,
    );
  }
}

abstract class _TerminologyCapabilitiesFilter
    extends TerminologyCapabilitiesFilter {
  factory _TerminologyCapabilitiesFilter(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCode? code,
          @JsonKey(name: '_code') final PrimitiveElement? codeElement,
          final List<FhirCode>? op,
          @JsonKey(name: '_op') final List<PrimitiveElement>? opElement}) =
      _$TerminologyCapabilitiesFilterImpl;
  const _TerminologyCapabilitiesFilter._() : super._();

  factory _TerminologyCapabilitiesFilter.fromJson(Map<String, dynamic> json) =
      _$TerminologyCapabilitiesFilterImpl.fromJson;

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

  /// [code] Code of the property supported.
  FhirCode? get code;
  @override

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement;
  @override

  /// [op] Operations supported for the property.
  List<FhirCode>? get op;
  @override

  /// [opElement] Extensions for op
  @JsonKey(name: '_op')
  List<PrimitiveElement>? get opElement;
  @override
  @JsonKey(ignore: true)
  _$$TerminologyCapabilitiesFilterImplCopyWith<
          _$TerminologyCapabilitiesFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TerminologyCapabilitiesExpansion _$TerminologyCapabilitiesExpansionFromJson(
    Map<String, dynamic> json) {
  return _TerminologyCapabilitiesExpansion.fromJson(json);
}

/// @nodoc
mixin _$TerminologyCapabilitiesExpansion {
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

  /// [hierarchical] Whether the server can return nested value sets.
  FhirBoolean? get hierarchical => throw _privateConstructorUsedError;

  /// [hierarchicalElement] Extensions for hierarchical
  @JsonKey(name: '_hierarchical')
  PrimitiveElement? get hierarchicalElement =>
      throw _privateConstructorUsedError;

  /// [paging] Whether the server supports paging on expansion.
  FhirBoolean? get paging => throw _privateConstructorUsedError;

  /// [pagingElement] Extensions for paging
  @JsonKey(name: '_paging')
  PrimitiveElement? get pagingElement => throw _privateConstructorUsedError;

  /// [incomplete] Allow request for incomplete expansions?
  FhirBoolean? get incomplete => throw _privateConstructorUsedError;

  /// [incompleteElement] Extensions for incomplete
  @JsonKey(name: '_incomplete')
  PrimitiveElement? get incompleteElement => throw _privateConstructorUsedError;

  /// [parameter] Supported expansion parameter.
  List<TerminologyCapabilitiesParameter>? get parameter =>
      throw _privateConstructorUsedError;

  /// [textFilter] Documentation about text searching works.
  FhirMarkdown? get textFilter => throw _privateConstructorUsedError;

  /// [textFilterElement] Extensions for textFilter
  @JsonKey(name: '_textFilter')
  PrimitiveElement? get textFilterElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TerminologyCapabilitiesExpansionCopyWith<TerminologyCapabilitiesExpansion>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminologyCapabilitiesExpansionCopyWith<$Res> {
  factory $TerminologyCapabilitiesExpansionCopyWith(
          TerminologyCapabilitiesExpansion value,
          $Res Function(TerminologyCapabilitiesExpansion) then) =
      _$TerminologyCapabilitiesExpansionCopyWithImpl<$Res,
          TerminologyCapabilitiesExpansion>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? hierarchical,
      @JsonKey(name: '_hierarchical') PrimitiveElement? hierarchicalElement,
      FhirBoolean? paging,
      @JsonKey(name: '_paging') PrimitiveElement? pagingElement,
      FhirBoolean? incomplete,
      @JsonKey(name: '_incomplete') PrimitiveElement? incompleteElement,
      List<TerminologyCapabilitiesParameter>? parameter,
      FhirMarkdown? textFilter,
      @JsonKey(name: '_textFilter') PrimitiveElement? textFilterElement});
}

/// @nodoc
class _$TerminologyCapabilitiesExpansionCopyWithImpl<$Res,
        $Val extends TerminologyCapabilitiesExpansion>
    implements $TerminologyCapabilitiesExpansionCopyWith<$Res> {
  _$TerminologyCapabilitiesExpansionCopyWithImpl(this._value, this._then);

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
    Object? hierarchical = freezed,
    Object? hierarchicalElement = freezed,
    Object? paging = freezed,
    Object? pagingElement = freezed,
    Object? incomplete = freezed,
    Object? incompleteElement = freezed,
    Object? parameter = freezed,
    Object? textFilter = freezed,
    Object? textFilterElement = freezed,
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
      hierarchical: freezed == hierarchical
          ? _value.hierarchical
          : hierarchical // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      hierarchicalElement: freezed == hierarchicalElement
          ? _value.hierarchicalElement
          : hierarchicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      paging: freezed == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      pagingElement: freezed == pagingElement
          ? _value.pagingElement
          : pagingElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      incomplete: freezed == incomplete
          ? _value.incomplete
          : incomplete // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      incompleteElement: freezed == incompleteElement
          ? _value.incompleteElement
          : incompleteElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      parameter: freezed == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as List<TerminologyCapabilitiesParameter>?,
      textFilter: freezed == textFilter
          ? _value.textFilter
          : textFilter // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      textFilterElement: freezed == textFilterElement
          ? _value.textFilterElement
          : textFilterElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TerminologyCapabilitiesExpansionImplCopyWith<$Res>
    implements $TerminologyCapabilitiesExpansionCopyWith<$Res> {
  factory _$$TerminologyCapabilitiesExpansionImplCopyWith(
          _$TerminologyCapabilitiesExpansionImpl value,
          $Res Function(_$TerminologyCapabilitiesExpansionImpl) then) =
      __$$TerminologyCapabilitiesExpansionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? hierarchical,
      @JsonKey(name: '_hierarchical') PrimitiveElement? hierarchicalElement,
      FhirBoolean? paging,
      @JsonKey(name: '_paging') PrimitiveElement? pagingElement,
      FhirBoolean? incomplete,
      @JsonKey(name: '_incomplete') PrimitiveElement? incompleteElement,
      List<TerminologyCapabilitiesParameter>? parameter,
      FhirMarkdown? textFilter,
      @JsonKey(name: '_textFilter') PrimitiveElement? textFilterElement});
}

/// @nodoc
class __$$TerminologyCapabilitiesExpansionImplCopyWithImpl<$Res>
    extends _$TerminologyCapabilitiesExpansionCopyWithImpl<$Res,
        _$TerminologyCapabilitiesExpansionImpl>
    implements _$$TerminologyCapabilitiesExpansionImplCopyWith<$Res> {
  __$$TerminologyCapabilitiesExpansionImplCopyWithImpl(
      _$TerminologyCapabilitiesExpansionImpl _value,
      $Res Function(_$TerminologyCapabilitiesExpansionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? hierarchical = freezed,
    Object? hierarchicalElement = freezed,
    Object? paging = freezed,
    Object? pagingElement = freezed,
    Object? incomplete = freezed,
    Object? incompleteElement = freezed,
    Object? parameter = freezed,
    Object? textFilter = freezed,
    Object? textFilterElement = freezed,
  }) {
    return _then(_$TerminologyCapabilitiesExpansionImpl(
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
      hierarchical: freezed == hierarchical
          ? _value.hierarchical
          : hierarchical // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      hierarchicalElement: freezed == hierarchicalElement
          ? _value.hierarchicalElement
          : hierarchicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      paging: freezed == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      pagingElement: freezed == pagingElement
          ? _value.pagingElement
          : pagingElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      incomplete: freezed == incomplete
          ? _value.incomplete
          : incomplete // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      incompleteElement: freezed == incompleteElement
          ? _value.incompleteElement
          : incompleteElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      parameter: freezed == parameter
          ? _value._parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as List<TerminologyCapabilitiesParameter>?,
      textFilter: freezed == textFilter
          ? _value.textFilter
          : textFilter // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      textFilterElement: freezed == textFilterElement
          ? _value.textFilterElement
          : textFilterElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TerminologyCapabilitiesExpansionImpl
    extends _TerminologyCapabilitiesExpansion {
  const _$TerminologyCapabilitiesExpansionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.hierarchical,
      @JsonKey(name: '_hierarchical') this.hierarchicalElement,
      this.paging,
      @JsonKey(name: '_paging') this.pagingElement,
      this.incomplete,
      @JsonKey(name: '_incomplete') this.incompleteElement,
      final List<TerminologyCapabilitiesParameter>? parameter,
      this.textFilter,
      @JsonKey(name: '_textFilter') this.textFilterElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _parameter = parameter,
        super._();

  factory _$TerminologyCapabilitiesExpansionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TerminologyCapabilitiesExpansionImplFromJson(json);

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

  /// [hierarchical] Whether the server can return nested value sets.
  @override
  final FhirBoolean? hierarchical;

  /// [hierarchicalElement] Extensions for hierarchical
  @override
  @JsonKey(name: '_hierarchical')
  final PrimitiveElement? hierarchicalElement;

  /// [paging] Whether the server supports paging on expansion.
  @override
  final FhirBoolean? paging;

  /// [pagingElement] Extensions for paging
  @override
  @JsonKey(name: '_paging')
  final PrimitiveElement? pagingElement;

  /// [incomplete] Allow request for incomplete expansions?
  @override
  final FhirBoolean? incomplete;

  /// [incompleteElement] Extensions for incomplete
  @override
  @JsonKey(name: '_incomplete')
  final PrimitiveElement? incompleteElement;

  /// [parameter] Supported expansion parameter.
  final List<TerminologyCapabilitiesParameter>? _parameter;

  /// [parameter] Supported expansion parameter.
  @override
  List<TerminologyCapabilitiesParameter>? get parameter {
    final value = _parameter;
    if (value == null) return null;
    if (_parameter is EqualUnmodifiableListView) return _parameter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [textFilter] Documentation about text searching works.
  @override
  final FhirMarkdown? textFilter;

  /// [textFilterElement] Extensions for textFilter
  @override
  @JsonKey(name: '_textFilter')
  final PrimitiveElement? textFilterElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TerminologyCapabilitiesExpansionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.hierarchical, hierarchical) ||
                other.hierarchical == hierarchical) &&
            (identical(other.hierarchicalElement, hierarchicalElement) ||
                other.hierarchicalElement == hierarchicalElement) &&
            (identical(other.paging, paging) || other.paging == paging) &&
            (identical(other.pagingElement, pagingElement) ||
                other.pagingElement == pagingElement) &&
            (identical(other.incomplete, incomplete) ||
                other.incomplete == incomplete) &&
            (identical(other.incompleteElement, incompleteElement) ||
                other.incompleteElement == incompleteElement) &&
            const DeepCollectionEquality()
                .equals(other._parameter, _parameter) &&
            (identical(other.textFilter, textFilter) ||
                other.textFilter == textFilter) &&
            (identical(other.textFilterElement, textFilterElement) ||
                other.textFilterElement == textFilterElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      hierarchical,
      hierarchicalElement,
      paging,
      pagingElement,
      incomplete,
      incompleteElement,
      const DeepCollectionEquality().hash(_parameter),
      textFilter,
      textFilterElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TerminologyCapabilitiesExpansionImplCopyWith<
          _$TerminologyCapabilitiesExpansionImpl>
      get copyWith => __$$TerminologyCapabilitiesExpansionImplCopyWithImpl<
          _$TerminologyCapabilitiesExpansionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TerminologyCapabilitiesExpansionImplToJson(
      this,
    );
  }
}

abstract class _TerminologyCapabilitiesExpansion
    extends TerminologyCapabilitiesExpansion {
  factory _TerminologyCapabilitiesExpansion(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirBoolean? hierarchical,
      @JsonKey(name: '_hierarchical')
      final PrimitiveElement? hierarchicalElement,
      final FhirBoolean? paging,
      @JsonKey(name: '_paging') final PrimitiveElement? pagingElement,
      final FhirBoolean? incomplete,
      @JsonKey(name: '_incomplete') final PrimitiveElement? incompleteElement,
      final List<TerminologyCapabilitiesParameter>? parameter,
      final FhirMarkdown? textFilter,
      @JsonKey(name: '_textFilter')
      final PrimitiveElement?
          textFilterElement}) = _$TerminologyCapabilitiesExpansionImpl;
  const _TerminologyCapabilitiesExpansion._() : super._();

  factory _TerminologyCapabilitiesExpansion.fromJson(
          Map<String, dynamic> json) =
      _$TerminologyCapabilitiesExpansionImpl.fromJson;

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

  /// [hierarchical] Whether the server can return nested value sets.
  FhirBoolean? get hierarchical;
  @override

  /// [hierarchicalElement] Extensions for hierarchical
  @JsonKey(name: '_hierarchical')
  PrimitiveElement? get hierarchicalElement;
  @override

  /// [paging] Whether the server supports paging on expansion.
  FhirBoolean? get paging;
  @override

  /// [pagingElement] Extensions for paging
  @JsonKey(name: '_paging')
  PrimitiveElement? get pagingElement;
  @override

  /// [incomplete] Allow request for incomplete expansions?
  FhirBoolean? get incomplete;
  @override

  /// [incompleteElement] Extensions for incomplete
  @JsonKey(name: '_incomplete')
  PrimitiveElement? get incompleteElement;
  @override

  /// [parameter] Supported expansion parameter.
  List<TerminologyCapabilitiesParameter>? get parameter;
  @override

  /// [textFilter] Documentation about text searching works.
  FhirMarkdown? get textFilter;
  @override

  /// [textFilterElement] Extensions for textFilter
  @JsonKey(name: '_textFilter')
  PrimitiveElement? get textFilterElement;
  @override
  @JsonKey(ignore: true)
  _$$TerminologyCapabilitiesExpansionImplCopyWith<
          _$TerminologyCapabilitiesExpansionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TerminologyCapabilitiesParameter _$TerminologyCapabilitiesParameterFromJson(
    Map<String, dynamic> json) {
  return _TerminologyCapabilitiesParameter.fromJson(json);
}

/// @nodoc
mixin _$TerminologyCapabilitiesParameter {
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

  /// [name] Expansion Parameter name.
  FhirCode? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [documentation] Description of support for parameter.
  String? get documentation => throw _privateConstructorUsedError;

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TerminologyCapabilitiesParameterCopyWith<TerminologyCapabilitiesParameter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminologyCapabilitiesParameterCopyWith<$Res> {
  factory $TerminologyCapabilitiesParameterCopyWith(
          TerminologyCapabilitiesParameter value,
          $Res Function(TerminologyCapabilitiesParameter) then) =
      _$TerminologyCapabilitiesParameterCopyWithImpl<$Res,
          TerminologyCapabilitiesParameter>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement});
}

/// @nodoc
class _$TerminologyCapabilitiesParameterCopyWithImpl<$Res,
        $Val extends TerminologyCapabilitiesParameter>
    implements $TerminologyCapabilitiesParameterCopyWith<$Res> {
  _$TerminologyCapabilitiesParameterCopyWithImpl(this._value, this._then);

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
              as FhirCode?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TerminologyCapabilitiesParameterImplCopyWith<$Res>
    implements $TerminologyCapabilitiesParameterCopyWith<$Res> {
  factory _$$TerminologyCapabilitiesParameterImplCopyWith(
          _$TerminologyCapabilitiesParameterImpl value,
          $Res Function(_$TerminologyCapabilitiesParameterImpl) then) =
      __$$TerminologyCapabilitiesParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement});
}

/// @nodoc
class __$$TerminologyCapabilitiesParameterImplCopyWithImpl<$Res>
    extends _$TerminologyCapabilitiesParameterCopyWithImpl<$Res,
        _$TerminologyCapabilitiesParameterImpl>
    implements _$$TerminologyCapabilitiesParameterImplCopyWith<$Res> {
  __$$TerminologyCapabilitiesParameterImplCopyWithImpl(
      _$TerminologyCapabilitiesParameterImpl _value,
      $Res Function(_$TerminologyCapabilitiesParameterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
  }) {
    return _then(_$TerminologyCapabilitiesParameterImpl(
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
              as FhirCode?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
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
class _$TerminologyCapabilitiesParameterImpl
    extends _TerminologyCapabilitiesParameter {
  const _$TerminologyCapabilitiesParameterImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.documentation,
      @JsonKey(name: '_documentation') this.documentationElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$TerminologyCapabilitiesParameterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TerminologyCapabilitiesParameterImplFromJson(json);

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

  /// [name] Expansion Parameter name.
  @override
  final FhirCode? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [documentation] Description of support for parameter.
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
            other is _$TerminologyCapabilitiesParameterImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
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
      documentation,
      documentationElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TerminologyCapabilitiesParameterImplCopyWith<
          _$TerminologyCapabilitiesParameterImpl>
      get copyWith => __$$TerminologyCapabilitiesParameterImplCopyWithImpl<
          _$TerminologyCapabilitiesParameterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TerminologyCapabilitiesParameterImplToJson(
      this,
    );
  }
}

abstract class _TerminologyCapabilitiesParameter
    extends TerminologyCapabilitiesParameter {
  factory _TerminologyCapabilitiesParameter(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCode? name,
          @JsonKey(name: '_name') final PrimitiveElement? nameElement,
          final String? documentation,
          @JsonKey(name: '_documentation')
          final PrimitiveElement? documentationElement}) =
      _$TerminologyCapabilitiesParameterImpl;
  const _TerminologyCapabilitiesParameter._() : super._();

  factory _TerminologyCapabilitiesParameter.fromJson(
          Map<String, dynamic> json) =
      _$TerminologyCapabilitiesParameterImpl.fromJson;

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

  /// [name] Expansion Parameter name.
  FhirCode? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [documentation] Description of support for parameter.
  String? get documentation;
  @override

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement;
  @override
  @JsonKey(ignore: true)
  _$$TerminologyCapabilitiesParameterImplCopyWith<
          _$TerminologyCapabilitiesParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TerminologyCapabilitiesValidateCode
    _$TerminologyCapabilitiesValidateCodeFromJson(Map<String, dynamic> json) {
  return _TerminologyCapabilitiesValidateCode.fromJson(json);
}

/// @nodoc
mixin _$TerminologyCapabilitiesValidateCode {
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

  /// [translations] Whether translations are validated.
  FhirBoolean? get translations => throw _privateConstructorUsedError;

  /// [translationsElement] Extensions for translations
  @JsonKey(name: '_translations')
  PrimitiveElement? get translationsElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TerminologyCapabilitiesValidateCodeCopyWith<
          TerminologyCapabilitiesValidateCode>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminologyCapabilitiesValidateCodeCopyWith<$Res> {
  factory $TerminologyCapabilitiesValidateCodeCopyWith(
          TerminologyCapabilitiesValidateCode value,
          $Res Function(TerminologyCapabilitiesValidateCode) then) =
      _$TerminologyCapabilitiesValidateCodeCopyWithImpl<$Res,
          TerminologyCapabilitiesValidateCode>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? translations,
      @JsonKey(name: '_translations') PrimitiveElement? translationsElement});
}

/// @nodoc
class _$TerminologyCapabilitiesValidateCodeCopyWithImpl<$Res,
        $Val extends TerminologyCapabilitiesValidateCode>
    implements $TerminologyCapabilitiesValidateCodeCopyWith<$Res> {
  _$TerminologyCapabilitiesValidateCodeCopyWithImpl(this._value, this._then);

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
    Object? translations = freezed,
    Object? translationsElement = freezed,
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
      translations: freezed == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      translationsElement: freezed == translationsElement
          ? _value.translationsElement
          : translationsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TerminologyCapabilitiesValidateCodeImplCopyWith<$Res>
    implements $TerminologyCapabilitiesValidateCodeCopyWith<$Res> {
  factory _$$TerminologyCapabilitiesValidateCodeImplCopyWith(
          _$TerminologyCapabilitiesValidateCodeImpl value,
          $Res Function(_$TerminologyCapabilitiesValidateCodeImpl) then) =
      __$$TerminologyCapabilitiesValidateCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? translations,
      @JsonKey(name: '_translations') PrimitiveElement? translationsElement});
}

/// @nodoc
class __$$TerminologyCapabilitiesValidateCodeImplCopyWithImpl<$Res>
    extends _$TerminologyCapabilitiesValidateCodeCopyWithImpl<$Res,
        _$TerminologyCapabilitiesValidateCodeImpl>
    implements _$$TerminologyCapabilitiesValidateCodeImplCopyWith<$Res> {
  __$$TerminologyCapabilitiesValidateCodeImplCopyWithImpl(
      _$TerminologyCapabilitiesValidateCodeImpl _value,
      $Res Function(_$TerminologyCapabilitiesValidateCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? translations = freezed,
    Object? translationsElement = freezed,
  }) {
    return _then(_$TerminologyCapabilitiesValidateCodeImpl(
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
      translations: freezed == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      translationsElement: freezed == translationsElement
          ? _value.translationsElement
          : translationsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TerminologyCapabilitiesValidateCodeImpl
    extends _TerminologyCapabilitiesValidateCode {
  const _$TerminologyCapabilitiesValidateCodeImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.translations,
      @JsonKey(name: '_translations') this.translationsElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$TerminologyCapabilitiesValidateCodeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TerminologyCapabilitiesValidateCodeImplFromJson(json);

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

  /// [translations] Whether translations are validated.
  @override
  final FhirBoolean? translations;

  /// [translationsElement] Extensions for translations
  @override
  @JsonKey(name: '_translations')
  final PrimitiveElement? translationsElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TerminologyCapabilitiesValidateCodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.translations, translations) ||
                other.translations == translations) &&
            (identical(other.translationsElement, translationsElement) ||
                other.translationsElement == translationsElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      translations,
      translationsElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TerminologyCapabilitiesValidateCodeImplCopyWith<
          _$TerminologyCapabilitiesValidateCodeImpl>
      get copyWith => __$$TerminologyCapabilitiesValidateCodeImplCopyWithImpl<
          _$TerminologyCapabilitiesValidateCodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TerminologyCapabilitiesValidateCodeImplToJson(
      this,
    );
  }
}

abstract class _TerminologyCapabilitiesValidateCode
    extends TerminologyCapabilitiesValidateCode {
  factory _TerminologyCapabilitiesValidateCode(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirBoolean? translations,
          @JsonKey(name: '_translations')
          final PrimitiveElement? translationsElement}) =
      _$TerminologyCapabilitiesValidateCodeImpl;
  const _TerminologyCapabilitiesValidateCode._() : super._();

  factory _TerminologyCapabilitiesValidateCode.fromJson(
          Map<String, dynamic> json) =
      _$TerminologyCapabilitiesValidateCodeImpl.fromJson;

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

  /// [translations] Whether translations are validated.
  FhirBoolean? get translations;
  @override

  /// [translationsElement] Extensions for translations
  @JsonKey(name: '_translations')
  PrimitiveElement? get translationsElement;
  @override
  @JsonKey(ignore: true)
  _$$TerminologyCapabilitiesValidateCodeImplCopyWith<
          _$TerminologyCapabilitiesValidateCodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TerminologyCapabilitiesTranslation _$TerminologyCapabilitiesTranslationFromJson(
    Map<String, dynamic> json) {
  return _TerminologyCapabilitiesTranslation.fromJson(json);
}

/// @nodoc
mixin _$TerminologyCapabilitiesTranslation {
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

  /// [needsMap] Whether the client must identify the map.
  FhirBoolean? get needsMap => throw _privateConstructorUsedError;

  /// [needsMapElement] Extensions for needsMap
  @JsonKey(name: '_needsMap')
  PrimitiveElement? get needsMapElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TerminologyCapabilitiesTranslationCopyWith<
          TerminologyCapabilitiesTranslation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminologyCapabilitiesTranslationCopyWith<$Res> {
  factory $TerminologyCapabilitiesTranslationCopyWith(
          TerminologyCapabilitiesTranslation value,
          $Res Function(TerminologyCapabilitiesTranslation) then) =
      _$TerminologyCapabilitiesTranslationCopyWithImpl<$Res,
          TerminologyCapabilitiesTranslation>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? needsMap,
      @JsonKey(name: '_needsMap') PrimitiveElement? needsMapElement});
}

/// @nodoc
class _$TerminologyCapabilitiesTranslationCopyWithImpl<$Res,
        $Val extends TerminologyCapabilitiesTranslation>
    implements $TerminologyCapabilitiesTranslationCopyWith<$Res> {
  _$TerminologyCapabilitiesTranslationCopyWithImpl(this._value, this._then);

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
    Object? needsMap = freezed,
    Object? needsMapElement = freezed,
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
      needsMap: freezed == needsMap
          ? _value.needsMap
          : needsMap // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      needsMapElement: freezed == needsMapElement
          ? _value.needsMapElement
          : needsMapElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TerminologyCapabilitiesTranslationImplCopyWith<$Res>
    implements $TerminologyCapabilitiesTranslationCopyWith<$Res> {
  factory _$$TerminologyCapabilitiesTranslationImplCopyWith(
          _$TerminologyCapabilitiesTranslationImpl value,
          $Res Function(_$TerminologyCapabilitiesTranslationImpl) then) =
      __$$TerminologyCapabilitiesTranslationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? needsMap,
      @JsonKey(name: '_needsMap') PrimitiveElement? needsMapElement});
}

/// @nodoc
class __$$TerminologyCapabilitiesTranslationImplCopyWithImpl<$Res>
    extends _$TerminologyCapabilitiesTranslationCopyWithImpl<$Res,
        _$TerminologyCapabilitiesTranslationImpl>
    implements _$$TerminologyCapabilitiesTranslationImplCopyWith<$Res> {
  __$$TerminologyCapabilitiesTranslationImplCopyWithImpl(
      _$TerminologyCapabilitiesTranslationImpl _value,
      $Res Function(_$TerminologyCapabilitiesTranslationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? needsMap = freezed,
    Object? needsMapElement = freezed,
  }) {
    return _then(_$TerminologyCapabilitiesTranslationImpl(
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
      needsMap: freezed == needsMap
          ? _value.needsMap
          : needsMap // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      needsMapElement: freezed == needsMapElement
          ? _value.needsMapElement
          : needsMapElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TerminologyCapabilitiesTranslationImpl
    extends _TerminologyCapabilitiesTranslation {
  const _$TerminologyCapabilitiesTranslationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.needsMap,
      @JsonKey(name: '_needsMap') this.needsMapElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$TerminologyCapabilitiesTranslationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TerminologyCapabilitiesTranslationImplFromJson(json);

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

  /// [needsMap] Whether the client must identify the map.
  @override
  final FhirBoolean? needsMap;

  /// [needsMapElement] Extensions for needsMap
  @override
  @JsonKey(name: '_needsMap')
  final PrimitiveElement? needsMapElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TerminologyCapabilitiesTranslationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.needsMap, needsMap) ||
                other.needsMap == needsMap) &&
            (identical(other.needsMapElement, needsMapElement) ||
                other.needsMapElement == needsMapElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      needsMap,
      needsMapElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TerminologyCapabilitiesTranslationImplCopyWith<
          _$TerminologyCapabilitiesTranslationImpl>
      get copyWith => __$$TerminologyCapabilitiesTranslationImplCopyWithImpl<
          _$TerminologyCapabilitiesTranslationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TerminologyCapabilitiesTranslationImplToJson(
      this,
    );
  }
}

abstract class _TerminologyCapabilitiesTranslation
    extends TerminologyCapabilitiesTranslation {
  factory _TerminologyCapabilitiesTranslation(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirBoolean? needsMap,
          @JsonKey(name: '_needsMap')
          final PrimitiveElement? needsMapElement}) =
      _$TerminologyCapabilitiesTranslationImpl;
  const _TerminologyCapabilitiesTranslation._() : super._();

  factory _TerminologyCapabilitiesTranslation.fromJson(
          Map<String, dynamic> json) =
      _$TerminologyCapabilitiesTranslationImpl.fromJson;

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

  /// [needsMap] Whether the client must identify the map.
  FhirBoolean? get needsMap;
  @override

  /// [needsMapElement] Extensions for needsMap
  @JsonKey(name: '_needsMap')
  PrimitiveElement? get needsMapElement;
  @override
  @JsonKey(ignore: true)
  _$$TerminologyCapabilitiesTranslationImplCopyWith<
          _$TerminologyCapabilitiesTranslationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TerminologyCapabilitiesClosure _$TerminologyCapabilitiesClosureFromJson(
    Map<String, dynamic> json) {
  return _TerminologyCapabilitiesClosure.fromJson(json);
}

/// @nodoc
mixin _$TerminologyCapabilitiesClosure {
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

  /// [translation] If cross-system closure is supported.
  FhirBoolean? get translation => throw _privateConstructorUsedError;

  /// [translationElement] Extensions for translation
  @JsonKey(name: '_translation')
  PrimitiveElement? get translationElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TerminologyCapabilitiesClosureCopyWith<TerminologyCapabilitiesClosure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminologyCapabilitiesClosureCopyWith<$Res> {
  factory $TerminologyCapabilitiesClosureCopyWith(
          TerminologyCapabilitiesClosure value,
          $Res Function(TerminologyCapabilitiesClosure) then) =
      _$TerminologyCapabilitiesClosureCopyWithImpl<$Res,
          TerminologyCapabilitiesClosure>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? translation,
      @JsonKey(name: '_translation') PrimitiveElement? translationElement});
}

/// @nodoc
class _$TerminologyCapabilitiesClosureCopyWithImpl<$Res,
        $Val extends TerminologyCapabilitiesClosure>
    implements $TerminologyCapabilitiesClosureCopyWith<$Res> {
  _$TerminologyCapabilitiesClosureCopyWithImpl(this._value, this._then);

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
    Object? translation = freezed,
    Object? translationElement = freezed,
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
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      translationElement: freezed == translationElement
          ? _value.translationElement
          : translationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TerminologyCapabilitiesClosureImplCopyWith<$Res>
    implements $TerminologyCapabilitiesClosureCopyWith<$Res> {
  factory _$$TerminologyCapabilitiesClosureImplCopyWith(
          _$TerminologyCapabilitiesClosureImpl value,
          $Res Function(_$TerminologyCapabilitiesClosureImpl) then) =
      __$$TerminologyCapabilitiesClosureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? translation,
      @JsonKey(name: '_translation') PrimitiveElement? translationElement});
}

/// @nodoc
class __$$TerminologyCapabilitiesClosureImplCopyWithImpl<$Res>
    extends _$TerminologyCapabilitiesClosureCopyWithImpl<$Res,
        _$TerminologyCapabilitiesClosureImpl>
    implements _$$TerminologyCapabilitiesClosureImplCopyWith<$Res> {
  __$$TerminologyCapabilitiesClosureImplCopyWithImpl(
      _$TerminologyCapabilitiesClosureImpl _value,
      $Res Function(_$TerminologyCapabilitiesClosureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? translation = freezed,
    Object? translationElement = freezed,
  }) {
    return _then(_$TerminologyCapabilitiesClosureImpl(
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
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      translationElement: freezed == translationElement
          ? _value.translationElement
          : translationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TerminologyCapabilitiesClosureImpl
    extends _TerminologyCapabilitiesClosure {
  const _$TerminologyCapabilitiesClosureImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.translation,
      @JsonKey(name: '_translation') this.translationElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$TerminologyCapabilitiesClosureImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TerminologyCapabilitiesClosureImplFromJson(json);

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

  /// [translation] If cross-system closure is supported.
  @override
  final FhirBoolean? translation;

  /// [translationElement] Extensions for translation
  @override
  @JsonKey(name: '_translation')
  final PrimitiveElement? translationElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TerminologyCapabilitiesClosureImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.translationElement, translationElement) ||
                other.translationElement == translationElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      translation,
      translationElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TerminologyCapabilitiesClosureImplCopyWith<
          _$TerminologyCapabilitiesClosureImpl>
      get copyWith => __$$TerminologyCapabilitiesClosureImplCopyWithImpl<
          _$TerminologyCapabilitiesClosureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TerminologyCapabilitiesClosureImplToJson(
      this,
    );
  }
}

abstract class _TerminologyCapabilitiesClosure
    extends TerminologyCapabilitiesClosure {
  factory _TerminologyCapabilitiesClosure(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirBoolean? translation,
          @JsonKey(name: '_translation')
          final PrimitiveElement? translationElement}) =
      _$TerminologyCapabilitiesClosureImpl;
  const _TerminologyCapabilitiesClosure._() : super._();

  factory _TerminologyCapabilitiesClosure.fromJson(Map<String, dynamic> json) =
      _$TerminologyCapabilitiesClosureImpl.fromJson;

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

  /// [translation] If cross-system closure is supported.
  FhirBoolean? get translation;
  @override

  /// [translationElement] Extensions for translation
  @JsonKey(name: '_translation')
  PrimitiveElement? get translationElement;
  @override
  @JsonKey(ignore: true)
  _$$TerminologyCapabilitiesClosureImplCopyWith<
          _$TerminologyCapabilitiesClosureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
