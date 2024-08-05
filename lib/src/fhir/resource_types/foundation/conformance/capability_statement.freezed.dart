// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'capability_statement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CapabilityStatement _$CapabilityStatementFromJson(Map<String, dynamic> json) {
  return _CapabilityStatement.fromJson(json);
}

/// @nodoc
mixin _$CapabilityStatement {
  @JsonKey(unknownEnumValue: R4ResourceType.CapabilityStatement)
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

  /// [url] An absolute URI that is used to identify this capability statement
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this capability statement is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  ///  capability statement is stored on different servers.
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [version] The identifier that is used to identify this version of the
  /// capability statement when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the capability
  /// statement author and is not expected to be globally unique. For example,
  /// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
  /// available. There is also no expectation that versions can be placed in a
  ///  lexicographical sequence.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  /// [name] A natural language name identifying the capability statement. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [title] A short, descriptive, user-friendly title for the capability
  ///  statement.
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;

  /// [status] The status of this capability statement. Enables tracking the
  ///  life-cycle of the content.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [experimental] A Boolean value to indicate that this capability statement
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  FhirBoolean? get experimental => throw _privateConstructorUsedError;

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement =>
      throw _privateConstructorUsedError;

  /// [date] The date  (and optionally time) when the capability statement was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the capability statement changes.
  FhirDateTime? get date => throw _privateConstructorUsedError;

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [publisher] The name of the organization or individual that published the
  ///  capability statement.
  String? get publisher => throw _privateConstructorUsedError;

  /// [publisherElement] Extensions for publisher
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement => throw _privateConstructorUsedError;

  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  List<ContactDetail>? get contact => throw _privateConstructorUsedError;

  /// [description] A free text natural language description of the capability
  /// statement from a consumer's perspective. Typically, this is used when the
  /// capability statement describes a desired rather than an actual solution,
  ///  for example as a formal expression of requirements as part of an RFP.
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate capability statement instances.
  List<UsageContext>? get useContext => throw _privateConstructorUsedError;

  /// [jurisdiction] A legal or geographic region in which the capability
  ///  statement is intended to be used.
  List<CodeableConcept>? get jurisdiction => throw _privateConstructorUsedError;

  /// [purpose] Explanation of why this capability statement is needed and why
  ///  it has been designed as it has.
  FhirMarkdown? get purpose => throw _privateConstructorUsedError;

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement => throw _privateConstructorUsedError;

  /// [copyright] A copyright statement relating to the capability statement
  /// and/or its contents. Copyright statements are generally legal restrictions
  ///  on the use and publishing of the capability statement.
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

  /// [instantiates] Reference to a canonical URL of another
  /// CapabilityStatement that this software implements. This capability
  /// statement is a published API description that corresponds to a business
  /// service. The server may actually implement a subset of the capability
  /// statement it claims to implement, so the capability statement must specify
  ///  the full capability details.
  List<FhirCanonical>? get instantiates => throw _privateConstructorUsedError;

  /// [imports] Reference to a canonical URL of another CapabilityStatement
  /// that this software adds to. The capability statement automatically
  /// includes everything in the other statement, and it is not duplicated,
  /// though the server may repeat the same resources, interactions and
  ///  operations to add additional details to them.
  List<FhirCanonical>? get imports => throw _privateConstructorUsedError;

  /// [software] Software that is covered by this capability statement.  It is
  /// used when the capability statement describes the capabilities of a
  ///  particular software version, independent of an installation.
  CapabilityStatementSoftware? get software =>
      throw _privateConstructorUsedError;

  /// [implementation] Identifies a specific implementation instance that is
  /// described by the capability statement - i.e. a particular installation,
  ///  rather than the capabilities of a software program.
  CapabilityStatementImplementation? get implementation =>
      throw _privateConstructorUsedError;

  /// [fhirVersion] The version of the FHIR specification that this
  /// CapabilityStatement describes (which SHALL be the same as the FHIR version
  ///  of the CapabilityStatement itself). There is no default value.
  FhirCode? get fhirVersion => throw _privateConstructorUsedError;

  /// [fhirVersionElement] Extensions for fhirVersion
  @JsonKey(name: '_fhirVersion')
  PrimitiveElement? get fhirVersionElement =>
      throw _privateConstructorUsedError;

  /// [format] A list of the formats supported by this implementation using
  ///  their content types.
  List<FhirCode>? get format => throw _privateConstructorUsedError;

  /// [formatElement] Extensions for format
  @JsonKey(name: '_format')
  List<PrimitiveElement>? get formatElement =>
      throw _privateConstructorUsedError;

  /// [patchFormat] A list of the patch formats supported by this
  ///  implementation using their content types.
  List<FhirCode>? get patchFormat => throw _privateConstructorUsedError;

  /// [patchFormatElement] Extensions for patchFormat
  @JsonKey(name: '_patchFormat')
  List<PrimitiveElement>? get patchFormatElement =>
      throw _privateConstructorUsedError;

  /// [implementationGuide] A list of implementation guides that the server
  ///  does (or should) support in their entirety.
  List<FhirCanonical>? get implementationGuide =>
      throw _privateConstructorUsedError;

  /// [rest] A definition of the restful capabilities of the solution, if any.
  List<CapabilityStatementRest>? get rest => throw _privateConstructorUsedError;

  /// [messaging] A description of the messaging capabilities of the solution.
  List<CapabilityStatementMessaging>? get messaging =>
      throw _privateConstructorUsedError;

  /// [document] A document definition.
  List<CapabilityStatementDocument>? get document =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapabilityStatementCopyWith<CapabilityStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapabilityStatementCopyWith<$Res> {
  factory $CapabilityStatementCopyWith(
          CapabilityStatement value, $Res Function(CapabilityStatement) then) =
      _$CapabilityStatementCopyWithImpl<$Res, CapabilityStatement>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.CapabilityStatement)
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
      List<FhirCanonical>? instantiates,
      List<FhirCanonical>? imports,
      CapabilityStatementSoftware? software,
      CapabilityStatementImplementation? implementation,
      FhirCode? fhirVersion,
      @JsonKey(name: '_fhirVersion') PrimitiveElement? fhirVersionElement,
      List<FhirCode>? format,
      @JsonKey(name: '_format') List<PrimitiveElement>? formatElement,
      List<FhirCode>? patchFormat,
      @JsonKey(name: '_patchFormat') List<PrimitiveElement>? patchFormatElement,
      List<FhirCanonical>? implementationGuide,
      List<CapabilityStatementRest>? rest,
      List<CapabilityStatementMessaging>? messaging,
      List<CapabilityStatementDocument>? document});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CapabilityStatementSoftwareCopyWith<$Res>? get software;
  $CapabilityStatementImplementationCopyWith<$Res>? get implementation;
}

/// @nodoc
class _$CapabilityStatementCopyWithImpl<$Res, $Val extends CapabilityStatement>
    implements $CapabilityStatementCopyWith<$Res> {
  _$CapabilityStatementCopyWithImpl(this._value, this._then);

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
    Object? instantiates = freezed,
    Object? imports = freezed,
    Object? software = freezed,
    Object? implementation = freezed,
    Object? fhirVersion = freezed,
    Object? fhirVersionElement = freezed,
    Object? format = freezed,
    Object? formatElement = freezed,
    Object? patchFormat = freezed,
    Object? patchFormatElement = freezed,
    Object? implementationGuide = freezed,
    Object? rest = freezed,
    Object? messaging = freezed,
    Object? document = freezed,
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
      instantiates: freezed == instantiates
          ? _value.instantiates
          : instantiates // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      imports: freezed == imports
          ? _value.imports
          : imports // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      software: freezed == software
          ? _value.software
          : software // ignore: cast_nullable_to_non_nullable
              as CapabilityStatementSoftware?,
      implementation: freezed == implementation
          ? _value.implementation
          : implementation // ignore: cast_nullable_to_non_nullable
              as CapabilityStatementImplementation?,
      fhirVersion: freezed == fhirVersion
          ? _value.fhirVersion
          : fhirVersion // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      fhirVersionElement: freezed == fhirVersionElement
          ? _value.fhirVersionElement
          : fhirVersionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      formatElement: freezed == formatElement
          ? _value.formatElement
          : formatElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      patchFormat: freezed == patchFormat
          ? _value.patchFormat
          : patchFormat // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      patchFormatElement: freezed == patchFormatElement
          ? _value.patchFormatElement
          : patchFormatElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      implementationGuide: freezed == implementationGuide
          ? _value.implementationGuide
          : implementationGuide // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      rest: freezed == rest
          ? _value.rest
          : rest // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementRest>?,
      messaging: freezed == messaging
          ? _value.messaging
          : messaging // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementMessaging>?,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementDocument>?,
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
  $CapabilityStatementSoftwareCopyWith<$Res>? get software {
    if (_value.software == null) {
      return null;
    }

    return $CapabilityStatementSoftwareCopyWith<$Res>(_value.software!,
        (value) {
      return _then(_value.copyWith(software: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CapabilityStatementImplementationCopyWith<$Res>? get implementation {
    if (_value.implementation == null) {
      return null;
    }

    return $CapabilityStatementImplementationCopyWith<$Res>(
        _value.implementation!, (value) {
      return _then(_value.copyWith(implementation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CapabilityStatementImplCopyWith<$Res>
    implements $CapabilityStatementCopyWith<$Res> {
  factory _$$CapabilityStatementImplCopyWith(_$CapabilityStatementImpl value,
          $Res Function(_$CapabilityStatementImpl) then) =
      __$$CapabilityStatementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.CapabilityStatement)
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
      List<FhirCanonical>? instantiates,
      List<FhirCanonical>? imports,
      CapabilityStatementSoftware? software,
      CapabilityStatementImplementation? implementation,
      FhirCode? fhirVersion,
      @JsonKey(name: '_fhirVersion') PrimitiveElement? fhirVersionElement,
      List<FhirCode>? format,
      @JsonKey(name: '_format') List<PrimitiveElement>? formatElement,
      List<FhirCode>? patchFormat,
      @JsonKey(name: '_patchFormat') List<PrimitiveElement>? patchFormatElement,
      List<FhirCanonical>? implementationGuide,
      List<CapabilityStatementRest>? rest,
      List<CapabilityStatementMessaging>? messaging,
      List<CapabilityStatementDocument>? document});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CapabilityStatementSoftwareCopyWith<$Res>? get software;
  @override
  $CapabilityStatementImplementationCopyWith<$Res>? get implementation;
}

/// @nodoc
class __$$CapabilityStatementImplCopyWithImpl<$Res>
    extends _$CapabilityStatementCopyWithImpl<$Res, _$CapabilityStatementImpl>
    implements _$$CapabilityStatementImplCopyWith<$Res> {
  __$$CapabilityStatementImplCopyWithImpl(_$CapabilityStatementImpl _value,
      $Res Function(_$CapabilityStatementImpl) _then)
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
    Object? instantiates = freezed,
    Object? imports = freezed,
    Object? software = freezed,
    Object? implementation = freezed,
    Object? fhirVersion = freezed,
    Object? fhirVersionElement = freezed,
    Object? format = freezed,
    Object? formatElement = freezed,
    Object? patchFormat = freezed,
    Object? patchFormatElement = freezed,
    Object? implementationGuide = freezed,
    Object? rest = freezed,
    Object? messaging = freezed,
    Object? document = freezed,
  }) {
    return _then(_$CapabilityStatementImpl(
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
      instantiates: freezed == instantiates
          ? _value._instantiates
          : instantiates // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      imports: freezed == imports
          ? _value._imports
          : imports // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      software: freezed == software
          ? _value.software
          : software // ignore: cast_nullable_to_non_nullable
              as CapabilityStatementSoftware?,
      implementation: freezed == implementation
          ? _value.implementation
          : implementation // ignore: cast_nullable_to_non_nullable
              as CapabilityStatementImplementation?,
      fhirVersion: freezed == fhirVersion
          ? _value.fhirVersion
          : fhirVersion // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      fhirVersionElement: freezed == fhirVersionElement
          ? _value.fhirVersionElement
          : fhirVersionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      format: freezed == format
          ? _value._format
          : format // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      formatElement: freezed == formatElement
          ? _value._formatElement
          : formatElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      patchFormat: freezed == patchFormat
          ? _value._patchFormat
          : patchFormat // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      patchFormatElement: freezed == patchFormatElement
          ? _value._patchFormatElement
          : patchFormatElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      implementationGuide: freezed == implementationGuide
          ? _value._implementationGuide
          : implementationGuide // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      rest: freezed == rest
          ? _value._rest
          : rest // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementRest>?,
      messaging: freezed == messaging
          ? _value._messaging
          : messaging // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementMessaging>?,
      document: freezed == document
          ? _value._document
          : document // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementDocument>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CapabilityStatementImpl extends _CapabilityStatement {
  const _$CapabilityStatementImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.CapabilityStatement)
      this.resourceType = R4ResourceType.CapabilityStatement,
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
      final List<FhirCanonical>? instantiates,
      final List<FhirCanonical>? imports,
      this.software,
      this.implementation,
      this.fhirVersion,
      @JsonKey(name: '_fhirVersion') this.fhirVersionElement,
      final List<FhirCode>? format,
      @JsonKey(name: '_format') final List<PrimitiveElement>? formatElement,
      final List<FhirCode>? patchFormat,
      @JsonKey(name: '_patchFormat')
      final List<PrimitiveElement>? patchFormatElement,
      final List<FhirCanonical>? implementationGuide,
      final List<CapabilityStatementRest>? rest,
      final List<CapabilityStatementMessaging>? messaging,
      final List<CapabilityStatementDocument>? document})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _contact = contact,
        _useContext = useContext,
        _jurisdiction = jurisdiction,
        _instantiates = instantiates,
        _imports = imports,
        _format = format,
        _formatElement = formatElement,
        _patchFormat = patchFormat,
        _patchFormatElement = patchFormatElement,
        _implementationGuide = implementationGuide,
        _rest = rest,
        _messaging = messaging,
        _document = document,
        super._();

  factory _$CapabilityStatementImpl.fromJson(Map<String, dynamic> json) =>
      _$$CapabilityStatementImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.CapabilityStatement)
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

  /// [url] An absolute URI that is used to identify this capability statement
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this capability statement is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  ///  capability statement is stored on different servers.
  @override
  final FhirUri? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [version] The identifier that is used to identify this version of the
  /// capability statement when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the capability
  /// statement author and is not expected to be globally unique. For example,
  /// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
  /// available. There is also no expectation that versions can be placed in a
  ///  lexicographical sequence.
  @override
  final String? version;

  /// [versionElement] Extensions for version
  @override
  @JsonKey(name: '_version')
  final PrimitiveElement? versionElement;

  /// [name] A natural language name identifying the capability statement. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [title] A short, descriptive, user-friendly title for the capability
  ///  statement.
  @override
  final String? title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;

  /// [status] The status of this capability statement. Enables tracking the
  ///  life-cycle of the content.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [experimental] A Boolean value to indicate that this capability statement
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  @override
  final FhirBoolean? experimental;

  /// [experimentalElement] Extensions for experimental
  @override
  @JsonKey(name: '_experimental')
  final PrimitiveElement? experimentalElement;

  /// [date] The date  (and optionally time) when the capability statement was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the capability statement changes.
  @override
  final FhirDateTime? date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [publisher] The name of the organization or individual that published the
  ///  capability statement.
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

  /// [description] A free text natural language description of the capability
  /// statement from a consumer's perspective. Typically, this is used when the
  /// capability statement describes a desired rather than an actual solution,
  ///  for example as a formal expression of requirements as part of an RFP.
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
  ///  and searching for appropriate capability statement instances.
  final List<UsageContext>? _useContext;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate capability statement instances.
  @override
  List<UsageContext>? get useContext {
    final value = _useContext;
    if (value == null) return null;
    if (_useContext is EqualUnmodifiableListView) return _useContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [jurisdiction] A legal or geographic region in which the capability
  ///  statement is intended to be used.
  final List<CodeableConcept>? _jurisdiction;

  /// [jurisdiction] A legal or geographic region in which the capability
  ///  statement is intended to be used.
  @override
  List<CodeableConcept>? get jurisdiction {
    final value = _jurisdiction;
    if (value == null) return null;
    if (_jurisdiction is EqualUnmodifiableListView) return _jurisdiction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [purpose] Explanation of why this capability statement is needed and why
  ///  it has been designed as it has.
  @override
  final FhirMarkdown? purpose;

  /// [purposeElement] Extensions for purpose
  @override
  @JsonKey(name: '_purpose')
  final PrimitiveElement? purposeElement;

  /// [copyright] A copyright statement relating to the capability statement
  /// and/or its contents. Copyright statements are generally legal restrictions
  ///  on the use and publishing of the capability statement.
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

  /// [instantiates] Reference to a canonical URL of another
  /// CapabilityStatement that this software implements. This capability
  /// statement is a published API description that corresponds to a business
  /// service. The server may actually implement a subset of the capability
  /// statement it claims to implement, so the capability statement must specify
  ///  the full capability details.
  final List<FhirCanonical>? _instantiates;

  /// [instantiates] Reference to a canonical URL of another
  /// CapabilityStatement that this software implements. This capability
  /// statement is a published API description that corresponds to a business
  /// service. The server may actually implement a subset of the capability
  /// statement it claims to implement, so the capability statement must specify
  ///  the full capability details.
  @override
  List<FhirCanonical>? get instantiates {
    final value = _instantiates;
    if (value == null) return null;
    if (_instantiates is EqualUnmodifiableListView) return _instantiates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [imports] Reference to a canonical URL of another CapabilityStatement
  /// that this software adds to. The capability statement automatically
  /// includes everything in the other statement, and it is not duplicated,
  /// though the server may repeat the same resources, interactions and
  ///  operations to add additional details to them.
  final List<FhirCanonical>? _imports;

  /// [imports] Reference to a canonical URL of another CapabilityStatement
  /// that this software adds to. The capability statement automatically
  /// includes everything in the other statement, and it is not duplicated,
  /// though the server may repeat the same resources, interactions and
  ///  operations to add additional details to them.
  @override
  List<FhirCanonical>? get imports {
    final value = _imports;
    if (value == null) return null;
    if (_imports is EqualUnmodifiableListView) return _imports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [software] Software that is covered by this capability statement.  It is
  /// used when the capability statement describes the capabilities of a
  ///  particular software version, independent of an installation.
  @override
  final CapabilityStatementSoftware? software;

  /// [implementation] Identifies a specific implementation instance that is
  /// described by the capability statement - i.e. a particular installation,
  ///  rather than the capabilities of a software program.
  @override
  final CapabilityStatementImplementation? implementation;

  /// [fhirVersion] The version of the FHIR specification that this
  /// CapabilityStatement describes (which SHALL be the same as the FHIR version
  ///  of the CapabilityStatement itself). There is no default value.
  @override
  final FhirCode? fhirVersion;

  /// [fhirVersionElement] Extensions for fhirVersion
  @override
  @JsonKey(name: '_fhirVersion')
  final PrimitiveElement? fhirVersionElement;

  /// [format] A list of the formats supported by this implementation using
  ///  their content types.
  final List<FhirCode>? _format;

  /// [format] A list of the formats supported by this implementation using
  ///  their content types.
  @override
  List<FhirCode>? get format {
    final value = _format;
    if (value == null) return null;
    if (_format is EqualUnmodifiableListView) return _format;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [formatElement] Extensions for format
  final List<PrimitiveElement>? _formatElement;

  /// [formatElement] Extensions for format
  @override
  @JsonKey(name: '_format')
  List<PrimitiveElement>? get formatElement {
    final value = _formatElement;
    if (value == null) return null;
    if (_formatElement is EqualUnmodifiableListView) return _formatElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [patchFormat] A list of the patch formats supported by this
  ///  implementation using their content types.
  final List<FhirCode>? _patchFormat;

  /// [patchFormat] A list of the patch formats supported by this
  ///  implementation using their content types.
  @override
  List<FhirCode>? get patchFormat {
    final value = _patchFormat;
    if (value == null) return null;
    if (_patchFormat is EqualUnmodifiableListView) return _patchFormat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [patchFormatElement] Extensions for patchFormat
  final List<PrimitiveElement>? _patchFormatElement;

  /// [patchFormatElement] Extensions for patchFormat
  @override
  @JsonKey(name: '_patchFormat')
  List<PrimitiveElement>? get patchFormatElement {
    final value = _patchFormatElement;
    if (value == null) return null;
    if (_patchFormatElement is EqualUnmodifiableListView)
      return _patchFormatElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [implementationGuide] A list of implementation guides that the server
  ///  does (or should) support in their entirety.
  final List<FhirCanonical>? _implementationGuide;

  /// [implementationGuide] A list of implementation guides that the server
  ///  does (or should) support in their entirety.
  @override
  List<FhirCanonical>? get implementationGuide {
    final value = _implementationGuide;
    if (value == null) return null;
    if (_implementationGuide is EqualUnmodifiableListView)
      return _implementationGuide;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [rest] A definition of the restful capabilities of the solution, if any.
  final List<CapabilityStatementRest>? _rest;

  /// [rest] A definition of the restful capabilities of the solution, if any.
  @override
  List<CapabilityStatementRest>? get rest {
    final value = _rest;
    if (value == null) return null;
    if (_rest is EqualUnmodifiableListView) return _rest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [messaging] A description of the messaging capabilities of the solution.
  final List<CapabilityStatementMessaging>? _messaging;

  /// [messaging] A description of the messaging capabilities of the solution.
  @override
  List<CapabilityStatementMessaging>? get messaging {
    final value = _messaging;
    if (value == null) return null;
    if (_messaging is EqualUnmodifiableListView) return _messaging;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [document] A document definition.
  final List<CapabilityStatementDocument>? _document;

  /// [document] A document definition.
  @override
  List<CapabilityStatementDocument>? get document {
    final value = _document;
    if (value == null) return null;
    if (_document is EqualUnmodifiableListView) return _document;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapabilityStatementImpl &&
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
            const DeepCollectionEquality()
                .equals(other._instantiates, _instantiates) &&
            const DeepCollectionEquality().equals(other._imports, _imports) &&
            (identical(other.software, software) ||
                other.software == software) &&
            (identical(other.implementation, implementation) ||
                other.implementation == implementation) &&
            (identical(other.fhirVersion, fhirVersion) ||
                other.fhirVersion == fhirVersion) &&
            (identical(other.fhirVersionElement, fhirVersionElement) ||
                other.fhirVersionElement == fhirVersionElement) &&
            const DeepCollectionEquality().equals(other._format, _format) &&
            const DeepCollectionEquality()
                .equals(other._formatElement, _formatElement) &&
            const DeepCollectionEquality()
                .equals(other._patchFormat, _patchFormat) &&
            const DeepCollectionEquality()
                .equals(other._patchFormatElement, _patchFormatElement) &&
            const DeepCollectionEquality()
                .equals(other._implementationGuide, _implementationGuide) &&
            const DeepCollectionEquality().equals(other._rest, _rest) &&
            const DeepCollectionEquality()
                .equals(other._messaging, _messaging) &&
            const DeepCollectionEquality().equals(other._document, _document));
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
        const DeepCollectionEquality().hash(_instantiates),
        const DeepCollectionEquality().hash(_imports),
        software,
        implementation,
        fhirVersion,
        fhirVersionElement,
        const DeepCollectionEquality().hash(_format),
        const DeepCollectionEquality().hash(_formatElement),
        const DeepCollectionEquality().hash(_patchFormat),
        const DeepCollectionEquality().hash(_patchFormatElement),
        const DeepCollectionEquality().hash(_implementationGuide),
        const DeepCollectionEquality().hash(_rest),
        const DeepCollectionEquality().hash(_messaging),
        const DeepCollectionEquality().hash(_document)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapabilityStatementImplCopyWith<_$CapabilityStatementImpl> get copyWith =>
      __$$CapabilityStatementImplCopyWithImpl<_$CapabilityStatementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CapabilityStatementImplToJson(
      this,
    );
  }
}

abstract class _CapabilityStatement extends CapabilityStatement {
  factory _CapabilityStatement(
      {@JsonKey(unknownEnumValue: R4ResourceType.CapabilityStatement)
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
      final List<FhirCanonical>? instantiates,
      final List<FhirCanonical>? imports,
      final CapabilityStatementSoftware? software,
      final CapabilityStatementImplementation? implementation,
      final FhirCode? fhirVersion,
      @JsonKey(name: '_fhirVersion') final PrimitiveElement? fhirVersionElement,
      final List<FhirCode>? format,
      @JsonKey(name: '_format') final List<PrimitiveElement>? formatElement,
      final List<FhirCode>? patchFormat,
      @JsonKey(name: '_patchFormat')
      final List<PrimitiveElement>? patchFormatElement,
      final List<FhirCanonical>? implementationGuide,
      final List<CapabilityStatementRest>? rest,
      final List<CapabilityStatementMessaging>? messaging,
      final List<CapabilityStatementDocument>?
          document}) = _$CapabilityStatementImpl;
  const _CapabilityStatement._() : super._();

  factory _CapabilityStatement.fromJson(Map<String, dynamic> json) =
      _$CapabilityStatementImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.CapabilityStatement)
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

  /// [url] An absolute URI that is used to identify this capability statement
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this capability statement is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  ///  capability statement is stored on different servers.
  FhirUri? get url;
  @override

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override

  /// [version] The identifier that is used to identify this version of the
  /// capability statement when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the capability
  /// statement author and is not expected to be globally unique. For example,
  /// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
  /// available. There is also no expectation that versions can be placed in a
  ///  lexicographical sequence.
  String? get version;
  @override

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement;
  @override

  /// [name] A natural language name identifying the capability statement. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [title] A short, descriptive, user-friendly title for the capability
  ///  statement.
  String? get title;
  @override

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;
  @override

  /// [status] The status of this capability statement. Enables tracking the
  ///  life-cycle of the content.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [experimental] A Boolean value to indicate that this capability statement
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  FhirBoolean? get experimental;
  @override

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement;
  @override

  /// [date] The date  (and optionally time) when the capability statement was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the capability statement changes.
  FhirDateTime? get date;
  @override

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override

  /// [publisher] The name of the organization or individual that published the
  ///  capability statement.
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

  /// [description] A free text natural language description of the capability
  /// statement from a consumer's perspective. Typically, this is used when the
  /// capability statement describes a desired rather than an actual solution,
  ///  for example as a formal expression of requirements as part of an RFP.
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
  ///  and searching for appropriate capability statement instances.
  List<UsageContext>? get useContext;
  @override

  /// [jurisdiction] A legal or geographic region in which the capability
  ///  statement is intended to be used.
  List<CodeableConcept>? get jurisdiction;
  @override

  /// [purpose] Explanation of why this capability statement is needed and why
  ///  it has been designed as it has.
  FhirMarkdown? get purpose;
  @override

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement;
  @override

  /// [copyright] A copyright statement relating to the capability statement
  /// and/or its contents. Copyright statements are generally legal restrictions
  ///  on the use and publishing of the capability statement.
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

  /// [instantiates] Reference to a canonical URL of another
  /// CapabilityStatement that this software implements. This capability
  /// statement is a published API description that corresponds to a business
  /// service. The server may actually implement a subset of the capability
  /// statement it claims to implement, so the capability statement must specify
  ///  the full capability details.
  List<FhirCanonical>? get instantiates;
  @override

  /// [imports] Reference to a canonical URL of another CapabilityStatement
  /// that this software adds to. The capability statement automatically
  /// includes everything in the other statement, and it is not duplicated,
  /// though the server may repeat the same resources, interactions and
  ///  operations to add additional details to them.
  List<FhirCanonical>? get imports;
  @override

  /// [software] Software that is covered by this capability statement.  It is
  /// used when the capability statement describes the capabilities of a
  ///  particular software version, independent of an installation.
  CapabilityStatementSoftware? get software;
  @override

  /// [implementation] Identifies a specific implementation instance that is
  /// described by the capability statement - i.e. a particular installation,
  ///  rather than the capabilities of a software program.
  CapabilityStatementImplementation? get implementation;
  @override

  /// [fhirVersion] The version of the FHIR specification that this
  /// CapabilityStatement describes (which SHALL be the same as the FHIR version
  ///  of the CapabilityStatement itself). There is no default value.
  FhirCode? get fhirVersion;
  @override

  /// [fhirVersionElement] Extensions for fhirVersion
  @JsonKey(name: '_fhirVersion')
  PrimitiveElement? get fhirVersionElement;
  @override

  /// [format] A list of the formats supported by this implementation using
  ///  their content types.
  List<FhirCode>? get format;
  @override

  /// [formatElement] Extensions for format
  @JsonKey(name: '_format')
  List<PrimitiveElement>? get formatElement;
  @override

  /// [patchFormat] A list of the patch formats supported by this
  ///  implementation using their content types.
  List<FhirCode>? get patchFormat;
  @override

  /// [patchFormatElement] Extensions for patchFormat
  @JsonKey(name: '_patchFormat')
  List<PrimitiveElement>? get patchFormatElement;
  @override

  /// [implementationGuide] A list of implementation guides that the server
  ///  does (or should) support in their entirety.
  List<FhirCanonical>? get implementationGuide;
  @override

  /// [rest] A definition of the restful capabilities of the solution, if any.
  List<CapabilityStatementRest>? get rest;
  @override

  /// [messaging] A description of the messaging capabilities of the solution.
  List<CapabilityStatementMessaging>? get messaging;
  @override

  /// [document] A document definition.
  List<CapabilityStatementDocument>? get document;
  @override
  @JsonKey(ignore: true)
  _$$CapabilityStatementImplCopyWith<_$CapabilityStatementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CapabilityStatementSoftware _$CapabilityStatementSoftwareFromJson(
    Map<String, dynamic> json) {
  return _CapabilityStatementSoftware.fromJson(json);
}

/// @nodoc
mixin _$CapabilityStatementSoftware {
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

  /// [releaseDate] Date this version of the software was released.
  FhirDateTime? get releaseDate => throw _privateConstructorUsedError;

  /// [releaseDateElement] Extensions for releaseDate
  @JsonKey(name: '_releaseDate')
  PrimitiveElement? get releaseDateElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapabilityStatementSoftwareCopyWith<CapabilityStatementSoftware>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapabilityStatementSoftwareCopyWith<$Res> {
  factory $CapabilityStatementSoftwareCopyWith(
          CapabilityStatementSoftware value,
          $Res Function(CapabilityStatementSoftware) then) =
      _$CapabilityStatementSoftwareCopyWithImpl<$Res,
          CapabilityStatementSoftware>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement,
      FhirDateTime? releaseDate,
      @JsonKey(name: '_releaseDate') PrimitiveElement? releaseDateElement});
}

/// @nodoc
class _$CapabilityStatementSoftwareCopyWithImpl<$Res,
        $Val extends CapabilityStatementSoftware>
    implements $CapabilityStatementSoftwareCopyWith<$Res> {
  _$CapabilityStatementSoftwareCopyWithImpl(this._value, this._then);

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
    Object? releaseDate = freezed,
    Object? releaseDateElement = freezed,
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
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      releaseDateElement: freezed == releaseDateElement
          ? _value.releaseDateElement
          : releaseDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CapabilityStatementSoftwareImplCopyWith<$Res>
    implements $CapabilityStatementSoftwareCopyWith<$Res> {
  factory _$$CapabilityStatementSoftwareImplCopyWith(
          _$CapabilityStatementSoftwareImpl value,
          $Res Function(_$CapabilityStatementSoftwareImpl) then) =
      __$$CapabilityStatementSoftwareImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement,
      FhirDateTime? releaseDate,
      @JsonKey(name: '_releaseDate') PrimitiveElement? releaseDateElement});
}

/// @nodoc
class __$$CapabilityStatementSoftwareImplCopyWithImpl<$Res>
    extends _$CapabilityStatementSoftwareCopyWithImpl<$Res,
        _$CapabilityStatementSoftwareImpl>
    implements _$$CapabilityStatementSoftwareImplCopyWith<$Res> {
  __$$CapabilityStatementSoftwareImplCopyWithImpl(
      _$CapabilityStatementSoftwareImpl _value,
      $Res Function(_$CapabilityStatementSoftwareImpl) _then)
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
    Object? releaseDate = freezed,
    Object? releaseDateElement = freezed,
  }) {
    return _then(_$CapabilityStatementSoftwareImpl(
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
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      releaseDateElement: freezed == releaseDateElement
          ? _value.releaseDateElement
          : releaseDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CapabilityStatementSoftwareImpl extends _CapabilityStatementSoftware {
  const _$CapabilityStatementSoftwareImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.version,
      @JsonKey(name: '_version') this.versionElement,
      this.releaseDate,
      @JsonKey(name: '_releaseDate') this.releaseDateElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CapabilityStatementSoftwareImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CapabilityStatementSoftwareImplFromJson(json);

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

  /// [releaseDate] Date this version of the software was released.
  @override
  final FhirDateTime? releaseDate;

  /// [releaseDateElement] Extensions for releaseDate
  @override
  @JsonKey(name: '_releaseDate')
  final PrimitiveElement? releaseDateElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapabilityStatementSoftwareImpl &&
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
                other.versionElement == versionElement) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.releaseDateElement, releaseDateElement) ||
                other.releaseDateElement == releaseDateElement));
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
      versionElement,
      releaseDate,
      releaseDateElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapabilityStatementSoftwareImplCopyWith<_$CapabilityStatementSoftwareImpl>
      get copyWith => __$$CapabilityStatementSoftwareImplCopyWithImpl<
          _$CapabilityStatementSoftwareImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CapabilityStatementSoftwareImplToJson(
      this,
    );
  }
}

abstract class _CapabilityStatementSoftware
    extends CapabilityStatementSoftware {
  factory _CapabilityStatementSoftware(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final String? name,
          @JsonKey(name: '_name') final PrimitiveElement? nameElement,
          final String? version,
          @JsonKey(name: '_version') final PrimitiveElement? versionElement,
          final FhirDateTime? releaseDate,
          @JsonKey(name: '_releaseDate')
          final PrimitiveElement? releaseDateElement}) =
      _$CapabilityStatementSoftwareImpl;
  const _CapabilityStatementSoftware._() : super._();

  factory _CapabilityStatementSoftware.fromJson(Map<String, dynamic> json) =
      _$CapabilityStatementSoftwareImpl.fromJson;

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

  /// [releaseDate] Date this version of the software was released.
  FhirDateTime? get releaseDate;
  @override

  /// [releaseDateElement] Extensions for releaseDate
  @JsonKey(name: '_releaseDate')
  PrimitiveElement? get releaseDateElement;
  @override
  @JsonKey(ignore: true)
  _$$CapabilityStatementSoftwareImplCopyWith<_$CapabilityStatementSoftwareImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CapabilityStatementImplementation _$CapabilityStatementImplementationFromJson(
    Map<String, dynamic> json) {
  return _CapabilityStatementImplementation.fromJson(json);
}

/// @nodoc
mixin _$CapabilityStatementImplementation {
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
  ///  capability statement relates to.
  String? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [url] An absolute base URL for the implementation.  This forms the base
  ///  for REST interfaces as well as the mailbox and document interfaces.
  FhirUrl? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [custodian] The organization responsible for the management of the
  ///  instance and oversight of the data on the server at the specified URL.
  Reference? get custodian => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapabilityStatementImplementationCopyWith<CapabilityStatementImplementation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapabilityStatementImplementationCopyWith<$Res> {
  factory $CapabilityStatementImplementationCopyWith(
          CapabilityStatementImplementation value,
          $Res Function(CapabilityStatementImplementation) then) =
      _$CapabilityStatementImplementationCopyWithImpl<$Res,
          CapabilityStatementImplementation>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirUrl? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      Reference? custodian});

  $ReferenceCopyWith<$Res>? get custodian;
}

/// @nodoc
class _$CapabilityStatementImplementationCopyWithImpl<$Res,
        $Val extends CapabilityStatementImplementation>
    implements $CapabilityStatementImplementationCopyWith<$Res> {
  _$CapabilityStatementImplementationCopyWithImpl(this._value, this._then);

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
    Object? custodian = freezed,
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
      custodian: freezed == custodian
          ? _value.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get custodian {
    if (_value.custodian == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.custodian!, (value) {
      return _then(_value.copyWith(custodian: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CapabilityStatementImplementationImplCopyWith<$Res>
    implements $CapabilityStatementImplementationCopyWith<$Res> {
  factory _$$CapabilityStatementImplementationImplCopyWith(
          _$CapabilityStatementImplementationImpl value,
          $Res Function(_$CapabilityStatementImplementationImpl) then) =
      __$$CapabilityStatementImplementationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirUrl? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      Reference? custodian});

  @override
  $ReferenceCopyWith<$Res>? get custodian;
}

/// @nodoc
class __$$CapabilityStatementImplementationImplCopyWithImpl<$Res>
    extends _$CapabilityStatementImplementationCopyWithImpl<$Res,
        _$CapabilityStatementImplementationImpl>
    implements _$$CapabilityStatementImplementationImplCopyWith<$Res> {
  __$$CapabilityStatementImplementationImplCopyWithImpl(
      _$CapabilityStatementImplementationImpl _value,
      $Res Function(_$CapabilityStatementImplementationImpl) _then)
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
    Object? custodian = freezed,
  }) {
    return _then(_$CapabilityStatementImplementationImpl(
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
      custodian: freezed == custodian
          ? _value.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CapabilityStatementImplementationImpl
    extends _CapabilityStatementImplementation {
  const _$CapabilityStatementImplementationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.url,
      @JsonKey(name: '_url') this.urlElement,
      this.custodian})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CapabilityStatementImplementationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CapabilityStatementImplementationImplFromJson(json);

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
  ///  capability statement relates to.
  @override
  final String? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [url] An absolute base URL for the implementation.  This forms the base
  ///  for REST interfaces as well as the mailbox and document interfaces.
  @override
  final FhirUrl? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [custodian] The organization responsible for the management of the
  ///  instance and oversight of the data on the server at the specified URL.
  @override
  final Reference? custodian;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapabilityStatementImplementationImpl &&
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
                other.urlElement == urlElement) &&
            (identical(other.custodian, custodian) ||
                other.custodian == custodian));
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
      urlElement,
      custodian);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapabilityStatementImplementationImplCopyWith<
          _$CapabilityStatementImplementationImpl>
      get copyWith => __$$CapabilityStatementImplementationImplCopyWithImpl<
          _$CapabilityStatementImplementationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CapabilityStatementImplementationImplToJson(
      this,
    );
  }
}

abstract class _CapabilityStatementImplementation
    extends CapabilityStatementImplementation {
  factory _CapabilityStatementImplementation(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final FhirUrl? url,
      @JsonKey(name: '_url') final PrimitiveElement? urlElement,
      final Reference? custodian}) = _$CapabilityStatementImplementationImpl;
  const _CapabilityStatementImplementation._() : super._();

  factory _CapabilityStatementImplementation.fromJson(
          Map<String, dynamic> json) =
      _$CapabilityStatementImplementationImpl.fromJson;

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
  ///  capability statement relates to.
  String? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [url] An absolute base URL for the implementation.  This forms the base
  ///  for REST interfaces as well as the mailbox and document interfaces.
  FhirUrl? get url;
  @override

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override

  /// [custodian] The organization responsible for the management of the
  ///  instance and oversight of the data on the server at the specified URL.
  Reference? get custodian;
  @override
  @JsonKey(ignore: true)
  _$$CapabilityStatementImplementationImplCopyWith<
          _$CapabilityStatementImplementationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CapabilityStatementRest _$CapabilityStatementRestFromJson(
    Map<String, dynamic> json) {
  return _CapabilityStatementRest.fromJson(json);
}

/// @nodoc
mixin _$CapabilityStatementRest {
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

  /// [mode] Identifies whether this portion of the statement is describing the
  ///  ability to initiate or receive restful operations.
  FhirCode? get mode => throw _privateConstructorUsedError;

  /// [modeElement] Extensions for mode
  @JsonKey(name: '_mode')
  PrimitiveElement? get modeElement => throw _privateConstructorUsedError;

  /// [documentation] Information about the system's restful capabilities that
  ///  apply across all applications, such as security.
  FhirMarkdown? get documentation => throw _privateConstructorUsedError;

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement =>
      throw _privateConstructorUsedError;

  /// [security] Information about security implementation from an interface
  ///  perspective - what a client needs to know.
  CapabilityStatementSecurity? get security =>
      throw _privateConstructorUsedError;

  /// [resource] A specification of the restful capabilities of the solution
  ///  for a specific resource type.
  List<CapabilityStatementResource>? get resource =>
      throw _privateConstructorUsedError;

  /// [interaction] A specification of restful operations supported by the
  ///  system.
  List<CapabilityStatementInteraction1>? get interaction =>
      throw _privateConstructorUsedError;

  /// [searchParam] Search parameters that are supported for searching all
  /// resources for implementations to support and/or make use of - either
  /// references to ones defined in the specification, or additional ones
  ///  defined for/by the implementation.
  List<CapabilityStatementSearchParam>? get searchParam =>
      throw _privateConstructorUsedError;

  /// [operation] Definition of an operation or a named query together with its
  ///  parameters and their meaning and type.
  List<CapabilityStatementOperation>? get operation =>
      throw _privateConstructorUsedError;

  /// [compartment] An absolute URI which is a reference to the definition of a
  /// compartment that the system supports. The reference is to a
  ///  CompartmentDefinition resource by its canonical URL .
  List<FhirCanonical>? get compartment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapabilityStatementRestCopyWith<CapabilityStatementRest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapabilityStatementRestCopyWith<$Res> {
  factory $CapabilityStatementRestCopyWith(CapabilityStatementRest value,
          $Res Function(CapabilityStatementRest) then) =
      _$CapabilityStatementRestCopyWithImpl<$Res, CapabilityStatementRest>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? mode,
      @JsonKey(name: '_mode') PrimitiveElement? modeElement,
      FhirMarkdown? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
      CapabilityStatementSecurity? security,
      List<CapabilityStatementResource>? resource,
      List<CapabilityStatementInteraction1>? interaction,
      List<CapabilityStatementSearchParam>? searchParam,
      List<CapabilityStatementOperation>? operation,
      List<FhirCanonical>? compartment});

  $CapabilityStatementSecurityCopyWith<$Res>? get security;
}

/// @nodoc
class _$CapabilityStatementRestCopyWithImpl<$Res,
        $Val extends CapabilityStatementRest>
    implements $CapabilityStatementRestCopyWith<$Res> {
  _$CapabilityStatementRestCopyWithImpl(this._value, this._then);

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
    Object? mode = freezed,
    Object? modeElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
    Object? security = freezed,
    Object? resource = freezed,
    Object? interaction = freezed,
    Object? searchParam = freezed,
    Object? operation = freezed,
    Object? compartment = freezed,
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
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      security: freezed == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as CapabilityStatementSecurity?,
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementResource>?,
      interaction: freezed == interaction
          ? _value.interaction
          : interaction // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementInteraction1>?,
      searchParam: freezed == searchParam
          ? _value.searchParam
          : searchParam // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementSearchParam>?,
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementOperation>?,
      compartment: freezed == compartment
          ? _value.compartment
          : compartment // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CapabilityStatementSecurityCopyWith<$Res>? get security {
    if (_value.security == null) {
      return null;
    }

    return $CapabilityStatementSecurityCopyWith<$Res>(_value.security!,
        (value) {
      return _then(_value.copyWith(security: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CapabilityStatementRestImplCopyWith<$Res>
    implements $CapabilityStatementRestCopyWith<$Res> {
  factory _$$CapabilityStatementRestImplCopyWith(
          _$CapabilityStatementRestImpl value,
          $Res Function(_$CapabilityStatementRestImpl) then) =
      __$$CapabilityStatementRestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? mode,
      @JsonKey(name: '_mode') PrimitiveElement? modeElement,
      FhirMarkdown? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
      CapabilityStatementSecurity? security,
      List<CapabilityStatementResource>? resource,
      List<CapabilityStatementInteraction1>? interaction,
      List<CapabilityStatementSearchParam>? searchParam,
      List<CapabilityStatementOperation>? operation,
      List<FhirCanonical>? compartment});

  @override
  $CapabilityStatementSecurityCopyWith<$Res>? get security;
}

/// @nodoc
class __$$CapabilityStatementRestImplCopyWithImpl<$Res>
    extends _$CapabilityStatementRestCopyWithImpl<$Res,
        _$CapabilityStatementRestImpl>
    implements _$$CapabilityStatementRestImplCopyWith<$Res> {
  __$$CapabilityStatementRestImplCopyWithImpl(
      _$CapabilityStatementRestImpl _value,
      $Res Function(_$CapabilityStatementRestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? mode = freezed,
    Object? modeElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
    Object? security = freezed,
    Object? resource = freezed,
    Object? interaction = freezed,
    Object? searchParam = freezed,
    Object? operation = freezed,
    Object? compartment = freezed,
  }) {
    return _then(_$CapabilityStatementRestImpl(
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
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      security: freezed == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as CapabilityStatementSecurity?,
      resource: freezed == resource
          ? _value._resource
          : resource // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementResource>?,
      interaction: freezed == interaction
          ? _value._interaction
          : interaction // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementInteraction1>?,
      searchParam: freezed == searchParam
          ? _value._searchParam
          : searchParam // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementSearchParam>?,
      operation: freezed == operation
          ? _value._operation
          : operation // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementOperation>?,
      compartment: freezed == compartment
          ? _value._compartment
          : compartment // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CapabilityStatementRestImpl extends _CapabilityStatementRest {
  const _$CapabilityStatementRestImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.mode,
      @JsonKey(name: '_mode') this.modeElement,
      this.documentation,
      @JsonKey(name: '_documentation') this.documentationElement,
      this.security,
      final List<CapabilityStatementResource>? resource,
      final List<CapabilityStatementInteraction1>? interaction,
      final List<CapabilityStatementSearchParam>? searchParam,
      final List<CapabilityStatementOperation>? operation,
      final List<FhirCanonical>? compartment})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _resource = resource,
        _interaction = interaction,
        _searchParam = searchParam,
        _operation = operation,
        _compartment = compartment,
        super._();

  factory _$CapabilityStatementRestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CapabilityStatementRestImplFromJson(json);

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

  /// [mode] Identifies whether this portion of the statement is describing the
  ///  ability to initiate or receive restful operations.
  @override
  final FhirCode? mode;

  /// [modeElement] Extensions for mode
  @override
  @JsonKey(name: '_mode')
  final PrimitiveElement? modeElement;

  /// [documentation] Information about the system's restful capabilities that
  ///  apply across all applications, such as security.
  @override
  final FhirMarkdown? documentation;

  /// [documentationElement] Extensions for documentation
  @override
  @JsonKey(name: '_documentation')
  final PrimitiveElement? documentationElement;

  /// [security] Information about security implementation from an interface
  ///  perspective - what a client needs to know.
  @override
  final CapabilityStatementSecurity? security;

  /// [resource] A specification of the restful capabilities of the solution
  ///  for a specific resource type.
  final List<CapabilityStatementResource>? _resource;

  /// [resource] A specification of the restful capabilities of the solution
  ///  for a specific resource type.
  @override
  List<CapabilityStatementResource>? get resource {
    final value = _resource;
    if (value == null) return null;
    if (_resource is EqualUnmodifiableListView) return _resource;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [interaction] A specification of restful operations supported by the
  ///  system.
  final List<CapabilityStatementInteraction1>? _interaction;

  /// [interaction] A specification of restful operations supported by the
  ///  system.
  @override
  List<CapabilityStatementInteraction1>? get interaction {
    final value = _interaction;
    if (value == null) return null;
    if (_interaction is EqualUnmodifiableListView) return _interaction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [searchParam] Search parameters that are supported for searching all
  /// resources for implementations to support and/or make use of - either
  /// references to ones defined in the specification, or additional ones
  ///  defined for/by the implementation.
  final List<CapabilityStatementSearchParam>? _searchParam;

  /// [searchParam] Search parameters that are supported for searching all
  /// resources for implementations to support and/or make use of - either
  /// references to ones defined in the specification, or additional ones
  ///  defined for/by the implementation.
  @override
  List<CapabilityStatementSearchParam>? get searchParam {
    final value = _searchParam;
    if (value == null) return null;
    if (_searchParam is EqualUnmodifiableListView) return _searchParam;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [operation] Definition of an operation or a named query together with its
  ///  parameters and their meaning and type.
  final List<CapabilityStatementOperation>? _operation;

  /// [operation] Definition of an operation or a named query together with its
  ///  parameters and their meaning and type.
  @override
  List<CapabilityStatementOperation>? get operation {
    final value = _operation;
    if (value == null) return null;
    if (_operation is EqualUnmodifiableListView) return _operation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [compartment] An absolute URI which is a reference to the definition of a
  /// compartment that the system supports. The reference is to a
  ///  CompartmentDefinition resource by its canonical URL .
  final List<FhirCanonical>? _compartment;

  /// [compartment] An absolute URI which is a reference to the definition of a
  /// compartment that the system supports. The reference is to a
  ///  CompartmentDefinition resource by its canonical URL .
  @override
  List<FhirCanonical>? get compartment {
    final value = _compartment;
    if (value == null) return null;
    if (_compartment is EqualUnmodifiableListView) return _compartment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapabilityStatementRestImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.modeElement, modeElement) ||
                other.modeElement == modeElement) &&
            (identical(other.documentation, documentation) ||
                other.documentation == documentation) &&
            (identical(other.documentationElement, documentationElement) ||
                other.documentationElement == documentationElement) &&
            (identical(other.security, security) ||
                other.security == security) &&
            const DeepCollectionEquality().equals(other._resource, _resource) &&
            const DeepCollectionEquality()
                .equals(other._interaction, _interaction) &&
            const DeepCollectionEquality()
                .equals(other._searchParam, _searchParam) &&
            const DeepCollectionEquality()
                .equals(other._operation, _operation) &&
            const DeepCollectionEquality()
                .equals(other._compartment, _compartment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      mode,
      modeElement,
      documentation,
      documentationElement,
      security,
      const DeepCollectionEquality().hash(_resource),
      const DeepCollectionEquality().hash(_interaction),
      const DeepCollectionEquality().hash(_searchParam),
      const DeepCollectionEquality().hash(_operation),
      const DeepCollectionEquality().hash(_compartment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapabilityStatementRestImplCopyWith<_$CapabilityStatementRestImpl>
      get copyWith => __$$CapabilityStatementRestImplCopyWithImpl<
          _$CapabilityStatementRestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CapabilityStatementRestImplToJson(
      this,
    );
  }
}

abstract class _CapabilityStatementRest extends CapabilityStatementRest {
  factory _CapabilityStatementRest(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirCode? mode,
      @JsonKey(name: '_mode') final PrimitiveElement? modeElement,
      final FhirMarkdown? documentation,
      @JsonKey(name: '_documentation')
      final PrimitiveElement? documentationElement,
      final CapabilityStatementSecurity? security,
      final List<CapabilityStatementResource>? resource,
      final List<CapabilityStatementInteraction1>? interaction,
      final List<CapabilityStatementSearchParam>? searchParam,
      final List<CapabilityStatementOperation>? operation,
      final List<FhirCanonical>? compartment}) = _$CapabilityStatementRestImpl;
  const _CapabilityStatementRest._() : super._();

  factory _CapabilityStatementRest.fromJson(Map<String, dynamic> json) =
      _$CapabilityStatementRestImpl.fromJson;

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

  /// [mode] Identifies whether this portion of the statement is describing the
  ///  ability to initiate or receive restful operations.
  FhirCode? get mode;
  @override

  /// [modeElement] Extensions for mode
  @JsonKey(name: '_mode')
  PrimitiveElement? get modeElement;
  @override

  /// [documentation] Information about the system's restful capabilities that
  ///  apply across all applications, such as security.
  FhirMarkdown? get documentation;
  @override

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement;
  @override

  /// [security] Information about security implementation from an interface
  ///  perspective - what a client needs to know.
  CapabilityStatementSecurity? get security;
  @override

  /// [resource] A specification of the restful capabilities of the solution
  ///  for a specific resource type.
  List<CapabilityStatementResource>? get resource;
  @override

  /// [interaction] A specification of restful operations supported by the
  ///  system.
  List<CapabilityStatementInteraction1>? get interaction;
  @override

  /// [searchParam] Search parameters that are supported for searching all
  /// resources for implementations to support and/or make use of - either
  /// references to ones defined in the specification, or additional ones
  ///  defined for/by the implementation.
  List<CapabilityStatementSearchParam>? get searchParam;
  @override

  /// [operation] Definition of an operation or a named query together with its
  ///  parameters and their meaning and type.
  List<CapabilityStatementOperation>? get operation;
  @override

  /// [compartment] An absolute URI which is a reference to the definition of a
  /// compartment that the system supports. The reference is to a
  ///  CompartmentDefinition resource by its canonical URL .
  List<FhirCanonical>? get compartment;
  @override
  @JsonKey(ignore: true)
  _$$CapabilityStatementRestImplCopyWith<_$CapabilityStatementRestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CapabilityStatementSecurity _$CapabilityStatementSecurityFromJson(
    Map<String, dynamic> json) {
  return _CapabilityStatementSecurity.fromJson(json);
}

/// @nodoc
mixin _$CapabilityStatementSecurity {
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

  /// [cors] Server adds CORS headers when responding to requests - this
  ///  enables Javascript applications to use the server.
  FhirBoolean? get cors => throw _privateConstructorUsedError;

  /// [corsElement] Extensions for cors
  @JsonKey(name: '_cors')
  PrimitiveElement? get corsElement => throw _privateConstructorUsedError;

  /// [service] Types of security services that are supported/required by the
  ///  system.
  List<CodeableConcept>? get service => throw _privateConstructorUsedError;

  /// [description] General description of how security works.
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapabilityStatementSecurityCopyWith<CapabilityStatementSecurity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapabilityStatementSecurityCopyWith<$Res> {
  factory $CapabilityStatementSecurityCopyWith(
          CapabilityStatementSecurity value,
          $Res Function(CapabilityStatementSecurity) then) =
      _$CapabilityStatementSecurityCopyWithImpl<$Res,
          CapabilityStatementSecurity>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? cors,
      @JsonKey(name: '_cors') PrimitiveElement? corsElement,
      List<CodeableConcept>? service,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement});
}

/// @nodoc
class _$CapabilityStatementSecurityCopyWithImpl<$Res,
        $Val extends CapabilityStatementSecurity>
    implements $CapabilityStatementSecurityCopyWith<$Res> {
  _$CapabilityStatementSecurityCopyWithImpl(this._value, this._then);

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
    Object? cors = freezed,
    Object? corsElement = freezed,
    Object? service = freezed,
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
      cors: freezed == cors
          ? _value.cors
          : cors // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      corsElement: freezed == corsElement
          ? _value.corsElement
          : corsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CapabilityStatementSecurityImplCopyWith<$Res>
    implements $CapabilityStatementSecurityCopyWith<$Res> {
  factory _$$CapabilityStatementSecurityImplCopyWith(
          _$CapabilityStatementSecurityImpl value,
          $Res Function(_$CapabilityStatementSecurityImpl) then) =
      __$$CapabilityStatementSecurityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? cors,
      @JsonKey(name: '_cors') PrimitiveElement? corsElement,
      List<CodeableConcept>? service,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement});
}

/// @nodoc
class __$$CapabilityStatementSecurityImplCopyWithImpl<$Res>
    extends _$CapabilityStatementSecurityCopyWithImpl<$Res,
        _$CapabilityStatementSecurityImpl>
    implements _$$CapabilityStatementSecurityImplCopyWith<$Res> {
  __$$CapabilityStatementSecurityImplCopyWithImpl(
      _$CapabilityStatementSecurityImpl _value,
      $Res Function(_$CapabilityStatementSecurityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? cors = freezed,
    Object? corsElement = freezed,
    Object? service = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
  }) {
    return _then(_$CapabilityStatementSecurityImpl(
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
      cors: freezed == cors
          ? _value.cors
          : cors // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      corsElement: freezed == corsElement
          ? _value.corsElement
          : corsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      service: freezed == service
          ? _value._service
          : service // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CapabilityStatementSecurityImpl extends _CapabilityStatementSecurity {
  const _$CapabilityStatementSecurityImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.cors,
      @JsonKey(name: '_cors') this.corsElement,
      final List<CodeableConcept>? service,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _service = service,
        super._();

  factory _$CapabilityStatementSecurityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CapabilityStatementSecurityImplFromJson(json);

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

  /// [cors] Server adds CORS headers when responding to requests - this
  ///  enables Javascript applications to use the server.
  @override
  final FhirBoolean? cors;

  /// [corsElement] Extensions for cors
  @override
  @JsonKey(name: '_cors')
  final PrimitiveElement? corsElement;

  /// [service] Types of security services that are supported/required by the
  ///  system.
  final List<CodeableConcept>? _service;

  /// [service] Types of security services that are supported/required by the
  ///  system.
  @override
  List<CodeableConcept>? get service {
    final value = _service;
    if (value == null) return null;
    if (_service is EqualUnmodifiableListView) return _service;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [description] General description of how security works.
  @override
  final FhirMarkdown? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapabilityStatementSecurityImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.cors, cors) || other.cors == cors) &&
            (identical(other.corsElement, corsElement) ||
                other.corsElement == corsElement) &&
            const DeepCollectionEquality().equals(other._service, _service) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      cors,
      corsElement,
      const DeepCollectionEquality().hash(_service),
      description,
      descriptionElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapabilityStatementSecurityImplCopyWith<_$CapabilityStatementSecurityImpl>
      get copyWith => __$$CapabilityStatementSecurityImplCopyWithImpl<
          _$CapabilityStatementSecurityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CapabilityStatementSecurityImplToJson(
      this,
    );
  }
}

abstract class _CapabilityStatementSecurity
    extends CapabilityStatementSecurity {
  factory _CapabilityStatementSecurity(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirBoolean? cors,
          @JsonKey(name: '_cors') final PrimitiveElement? corsElement,
          final List<CodeableConcept>? service,
          final FhirMarkdown? description,
          @JsonKey(name: '_description')
          final PrimitiveElement? descriptionElement}) =
      _$CapabilityStatementSecurityImpl;
  const _CapabilityStatementSecurity._() : super._();

  factory _CapabilityStatementSecurity.fromJson(Map<String, dynamic> json) =
      _$CapabilityStatementSecurityImpl.fromJson;

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

  /// [cors] Server adds CORS headers when responding to requests - this
  ///  enables Javascript applications to use the server.
  FhirBoolean? get cors;
  @override

  /// [corsElement] Extensions for cors
  @JsonKey(name: '_cors')
  PrimitiveElement? get corsElement;
  @override

  /// [service] Types of security services that are supported/required by the
  ///  system.
  List<CodeableConcept>? get service;
  @override

  /// [description] General description of how security works.
  FhirMarkdown? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override
  @JsonKey(ignore: true)
  _$$CapabilityStatementSecurityImplCopyWith<_$CapabilityStatementSecurityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CapabilityStatementResource _$CapabilityStatementResourceFromJson(
    Map<String, dynamic> json) {
  return _CapabilityStatementResource.fromJson(json);
}

/// @nodoc
mixin _$CapabilityStatementResource {
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

  /// [type] A type of resource exposed via the restful interface.
  FhirCode? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [profile] A specification of the profile that describes the solution's
  /// overall support for the resource, including any constraints on
  /// cardinality, bindings, lengths or other limitations. See further
  ///  discussion in [Using Profiles](profiling.html#profile-uses).
  FhirCanonical? get profile => throw _privateConstructorUsedError;

  /// [supportedProfile] A list of profiles that represent different use cases
  /// supported by the system. For a server, "supported by the system" means the
  /// system hosts/produces a set of resources that are conformant to a
  /// particular profile, and allows clients that use its services to search
  /// using this profile and to find appropriate data. For a client, it means
  /// the system will search by this profile and process data according to the
  /// guidance implicit in the profile. See further discussion in [Using
  ///  Profiles](profiling.html#profile-uses).
  List<FhirCanonical>? get supportedProfile =>
      throw _privateConstructorUsedError;

  /// [documentation] Additional information about the resource type used by
  ///  the system.
  FhirMarkdown? get documentation => throw _privateConstructorUsedError;

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement =>
      throw _privateConstructorUsedError;

  /// [interaction] Identifies a restful operation supported by the solution.
  List<CapabilityStatementInteraction>? get interaction =>
      throw _privateConstructorUsedError;

  /// [versioning] This field is set to no-version to specify that the system
  /// does not support (server) or use (client) versioning for this resource
  /// type. If this has some other value, the server must at least correctly
  /// track and populate the versionId meta-property on resources. If the value
  /// is 'versioned-update', then the server supports all the versioning
  ///  features, including using e-tags for version integrity in the API.
  FhirCode? get versioning => throw _privateConstructorUsedError;

  /// [versioningElement] Extensions for versioning
  @JsonKey(name: '_versioning')
  PrimitiveElement? get versioningElement => throw _privateConstructorUsedError;

  /// [readHistory] A flag for whether the server is able to return past
  ///  versions as part of the vRead operation.
  FhirBoolean? get readHistory => throw _privateConstructorUsedError;

  /// [readHistoryElement] Extensions for readHistory
  @JsonKey(name: '_readHistory')
  PrimitiveElement? get readHistoryElement =>
      throw _privateConstructorUsedError;

  /// [updateCreate] A flag to indicate that the server allows or needs to
  /// allow the client to create new identities on the server (that is, the
  /// client PUTs to a location where there is no existing resource). Allowing
  /// this operation means that the server allows the client to create new
  ///  identities on the server.
  FhirBoolean? get updateCreate => throw _privateConstructorUsedError;

  /// [updateCreateElement] Extensions for updateCreate
  @JsonKey(name: '_updateCreate')
  PrimitiveElement? get updateCreateElement =>
      throw _privateConstructorUsedError;

  /// [conditionalCreate] A flag that indicates that the server supports
  ///  conditional create.
  FhirBoolean? get conditionalCreate => throw _privateConstructorUsedError;

  /// [conditionalCreateElement] Extensions for conditionalCreate
  @JsonKey(name: '_conditionalCreate')
  PrimitiveElement? get conditionalCreateElement =>
      throw _privateConstructorUsedError;

  /// [conditionalRead] A code that indicates how the server supports
  ///  conditional read.
  FhirCode? get conditionalRead => throw _privateConstructorUsedError;

  /// [conditionalReadElement] Extensions for conditionalRead
  @JsonKey(name: '_conditionalRead')
  PrimitiveElement? get conditionalReadElement =>
      throw _privateConstructorUsedError;

  /// [conditionalUpdate] A flag that indicates that the server supports
  ///  conditional update.
  FhirBoolean? get conditionalUpdate => throw _privateConstructorUsedError;

  /// [conditionalUpdateElement] Extensions for conditionalUpdate
  @JsonKey(name: '_conditionalUpdate')
  PrimitiveElement? get conditionalUpdateElement =>
      throw _privateConstructorUsedError;

  /// [conditionalDelete] A code that indicates how the server supports
  ///  conditional delete.
  FhirCode? get conditionalDelete => throw _privateConstructorUsedError;

  /// [conditionalDeleteElement] Extensions for conditionalDelete
  @JsonKey(name: '_conditionalDelete')
  PrimitiveElement? get conditionalDeleteElement =>
      throw _privateConstructorUsedError;

  /// [referencePolicy] A set of flags that defines how references are
  ///  supported.
  List<FhirCode>? get referencePolicy => throw _privateConstructorUsedError;

  /// [referencePolicyElement] Extensions for referencePolicy
  @JsonKey(name: '_referencePolicy')
  List<PrimitiveElement>? get referencePolicyElement =>
      throw _privateConstructorUsedError;

  /// [searchInclude] A list of _include values supported by the server.
  List<String>? get searchInclude => throw _privateConstructorUsedError;

  /// [searchIncludeElement] Extensions for searchInclude
  @JsonKey(name: '_searchInclude')
  List<PrimitiveElement>? get searchIncludeElement =>
      throw _privateConstructorUsedError;

  /// [searchRevInclude] A list of _revinclude (reverse include) values
  ///  supported by the server.
  List<String>? get searchRevInclude => throw _privateConstructorUsedError;

  /// [searchRevIncludeElement] Extensions for searchRevInclude
  @JsonKey(name: '_searchRevInclude')
  List<PrimitiveElement>? get searchRevIncludeElement =>
      throw _privateConstructorUsedError;

  /// [searchParam] Search parameters for implementations to support and/or
  /// make use of - either references to ones defined in the specification, or
  ///  additional ones defined for/by the implementation.
  List<CapabilityStatementSearchParam>? get searchParam =>
      throw _privateConstructorUsedError;

  /// [operation] Definition of an operation or a named query together with its
  /// parameters and their meaning and type. Consult the definition of the
  /// operation for details about how to invoke the operation, and the
  ///  parameters.
  List<CapabilityStatementOperation>? get operation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapabilityStatementResourceCopyWith<CapabilityStatementResource>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapabilityStatementResourceCopyWith<$Res> {
  factory $CapabilityStatementResourceCopyWith(
          CapabilityStatementResource value,
          $Res Function(CapabilityStatementResource) then) =
      _$CapabilityStatementResourceCopyWithImpl<$Res,
          CapabilityStatementResource>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirCanonical? profile,
      List<FhirCanonical>? supportedProfile,
      FhirMarkdown? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
      List<CapabilityStatementInteraction>? interaction,
      FhirCode? versioning,
      @JsonKey(name: '_versioning') PrimitiveElement? versioningElement,
      FhirBoolean? readHistory,
      @JsonKey(name: '_readHistory') PrimitiveElement? readHistoryElement,
      FhirBoolean? updateCreate,
      @JsonKey(name: '_updateCreate') PrimitiveElement? updateCreateElement,
      FhirBoolean? conditionalCreate,
      @JsonKey(name: '_conditionalCreate')
      PrimitiveElement? conditionalCreateElement,
      FhirCode? conditionalRead,
      @JsonKey(name: '_conditionalRead')
      PrimitiveElement? conditionalReadElement,
      FhirBoolean? conditionalUpdate,
      @JsonKey(name: '_conditionalUpdate')
      PrimitiveElement? conditionalUpdateElement,
      FhirCode? conditionalDelete,
      @JsonKey(name: '_conditionalDelete')
      PrimitiveElement? conditionalDeleteElement,
      List<FhirCode>? referencePolicy,
      @JsonKey(name: '_referencePolicy')
      List<PrimitiveElement>? referencePolicyElement,
      List<String>? searchInclude,
      @JsonKey(name: '_searchInclude')
      List<PrimitiveElement>? searchIncludeElement,
      List<String>? searchRevInclude,
      @JsonKey(name: '_searchRevInclude')
      List<PrimitiveElement>? searchRevIncludeElement,
      List<CapabilityStatementSearchParam>? searchParam,
      List<CapabilityStatementOperation>? operation});
}

/// @nodoc
class _$CapabilityStatementResourceCopyWithImpl<$Res,
        $Val extends CapabilityStatementResource>
    implements $CapabilityStatementResourceCopyWith<$Res> {
  _$CapabilityStatementResourceCopyWithImpl(this._value, this._then);

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
    Object? profile = freezed,
    Object? supportedProfile = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
    Object? interaction = freezed,
    Object? versioning = freezed,
    Object? versioningElement = freezed,
    Object? readHistory = freezed,
    Object? readHistoryElement = freezed,
    Object? updateCreate = freezed,
    Object? updateCreateElement = freezed,
    Object? conditionalCreate = freezed,
    Object? conditionalCreateElement = freezed,
    Object? conditionalRead = freezed,
    Object? conditionalReadElement = freezed,
    Object? conditionalUpdate = freezed,
    Object? conditionalUpdateElement = freezed,
    Object? conditionalDelete = freezed,
    Object? conditionalDeleteElement = freezed,
    Object? referencePolicy = freezed,
    Object? referencePolicyElement = freezed,
    Object? searchInclude = freezed,
    Object? searchIncludeElement = freezed,
    Object? searchRevInclude = freezed,
    Object? searchRevIncludeElement = freezed,
    Object? searchParam = freezed,
    Object? operation = freezed,
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
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      supportedProfile: freezed == supportedProfile
          ? _value.supportedProfile
          : supportedProfile // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      interaction: freezed == interaction
          ? _value.interaction
          : interaction // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementInteraction>?,
      versioning: freezed == versioning
          ? _value.versioning
          : versioning // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      versioningElement: freezed == versioningElement
          ? _value.versioningElement
          : versioningElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      readHistory: freezed == readHistory
          ? _value.readHistory
          : readHistory // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      readHistoryElement: freezed == readHistoryElement
          ? _value.readHistoryElement
          : readHistoryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      updateCreate: freezed == updateCreate
          ? _value.updateCreate
          : updateCreate // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      updateCreateElement: freezed == updateCreateElement
          ? _value.updateCreateElement
          : updateCreateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      conditionalCreate: freezed == conditionalCreate
          ? _value.conditionalCreate
          : conditionalCreate // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      conditionalCreateElement: freezed == conditionalCreateElement
          ? _value.conditionalCreateElement
          : conditionalCreateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      conditionalRead: freezed == conditionalRead
          ? _value.conditionalRead
          : conditionalRead // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      conditionalReadElement: freezed == conditionalReadElement
          ? _value.conditionalReadElement
          : conditionalReadElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      conditionalUpdate: freezed == conditionalUpdate
          ? _value.conditionalUpdate
          : conditionalUpdate // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      conditionalUpdateElement: freezed == conditionalUpdateElement
          ? _value.conditionalUpdateElement
          : conditionalUpdateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      conditionalDelete: freezed == conditionalDelete
          ? _value.conditionalDelete
          : conditionalDelete // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      conditionalDeleteElement: freezed == conditionalDeleteElement
          ? _value.conditionalDeleteElement
          : conditionalDeleteElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      referencePolicy: freezed == referencePolicy
          ? _value.referencePolicy
          : referencePolicy // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      referencePolicyElement: freezed == referencePolicyElement
          ? _value.referencePolicyElement
          : referencePolicyElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      searchInclude: freezed == searchInclude
          ? _value.searchInclude
          : searchInclude // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchIncludeElement: freezed == searchIncludeElement
          ? _value.searchIncludeElement
          : searchIncludeElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      searchRevInclude: freezed == searchRevInclude
          ? _value.searchRevInclude
          : searchRevInclude // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchRevIncludeElement: freezed == searchRevIncludeElement
          ? _value.searchRevIncludeElement
          : searchRevIncludeElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      searchParam: freezed == searchParam
          ? _value.searchParam
          : searchParam // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementSearchParam>?,
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementOperation>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CapabilityStatementResourceImplCopyWith<$Res>
    implements $CapabilityStatementResourceCopyWith<$Res> {
  factory _$$CapabilityStatementResourceImplCopyWith(
          _$CapabilityStatementResourceImpl value,
          $Res Function(_$CapabilityStatementResourceImpl) then) =
      __$$CapabilityStatementResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirCanonical? profile,
      List<FhirCanonical>? supportedProfile,
      FhirMarkdown? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
      List<CapabilityStatementInteraction>? interaction,
      FhirCode? versioning,
      @JsonKey(name: '_versioning') PrimitiveElement? versioningElement,
      FhirBoolean? readHistory,
      @JsonKey(name: '_readHistory') PrimitiveElement? readHistoryElement,
      FhirBoolean? updateCreate,
      @JsonKey(name: '_updateCreate') PrimitiveElement? updateCreateElement,
      FhirBoolean? conditionalCreate,
      @JsonKey(name: '_conditionalCreate')
      PrimitiveElement? conditionalCreateElement,
      FhirCode? conditionalRead,
      @JsonKey(name: '_conditionalRead')
      PrimitiveElement? conditionalReadElement,
      FhirBoolean? conditionalUpdate,
      @JsonKey(name: '_conditionalUpdate')
      PrimitiveElement? conditionalUpdateElement,
      FhirCode? conditionalDelete,
      @JsonKey(name: '_conditionalDelete')
      PrimitiveElement? conditionalDeleteElement,
      List<FhirCode>? referencePolicy,
      @JsonKey(name: '_referencePolicy')
      List<PrimitiveElement>? referencePolicyElement,
      List<String>? searchInclude,
      @JsonKey(name: '_searchInclude')
      List<PrimitiveElement>? searchIncludeElement,
      List<String>? searchRevInclude,
      @JsonKey(name: '_searchRevInclude')
      List<PrimitiveElement>? searchRevIncludeElement,
      List<CapabilityStatementSearchParam>? searchParam,
      List<CapabilityStatementOperation>? operation});
}

/// @nodoc
class __$$CapabilityStatementResourceImplCopyWithImpl<$Res>
    extends _$CapabilityStatementResourceCopyWithImpl<$Res,
        _$CapabilityStatementResourceImpl>
    implements _$$CapabilityStatementResourceImplCopyWith<$Res> {
  __$$CapabilityStatementResourceImplCopyWithImpl(
      _$CapabilityStatementResourceImpl _value,
      $Res Function(_$CapabilityStatementResourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? profile = freezed,
    Object? supportedProfile = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
    Object? interaction = freezed,
    Object? versioning = freezed,
    Object? versioningElement = freezed,
    Object? readHistory = freezed,
    Object? readHistoryElement = freezed,
    Object? updateCreate = freezed,
    Object? updateCreateElement = freezed,
    Object? conditionalCreate = freezed,
    Object? conditionalCreateElement = freezed,
    Object? conditionalRead = freezed,
    Object? conditionalReadElement = freezed,
    Object? conditionalUpdate = freezed,
    Object? conditionalUpdateElement = freezed,
    Object? conditionalDelete = freezed,
    Object? conditionalDeleteElement = freezed,
    Object? referencePolicy = freezed,
    Object? referencePolicyElement = freezed,
    Object? searchInclude = freezed,
    Object? searchIncludeElement = freezed,
    Object? searchRevInclude = freezed,
    Object? searchRevIncludeElement = freezed,
    Object? searchParam = freezed,
    Object? operation = freezed,
  }) {
    return _then(_$CapabilityStatementResourceImpl(
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
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      supportedProfile: freezed == supportedProfile
          ? _value._supportedProfile
          : supportedProfile // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      interaction: freezed == interaction
          ? _value._interaction
          : interaction // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementInteraction>?,
      versioning: freezed == versioning
          ? _value.versioning
          : versioning // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      versioningElement: freezed == versioningElement
          ? _value.versioningElement
          : versioningElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      readHistory: freezed == readHistory
          ? _value.readHistory
          : readHistory // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      readHistoryElement: freezed == readHistoryElement
          ? _value.readHistoryElement
          : readHistoryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      updateCreate: freezed == updateCreate
          ? _value.updateCreate
          : updateCreate // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      updateCreateElement: freezed == updateCreateElement
          ? _value.updateCreateElement
          : updateCreateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      conditionalCreate: freezed == conditionalCreate
          ? _value.conditionalCreate
          : conditionalCreate // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      conditionalCreateElement: freezed == conditionalCreateElement
          ? _value.conditionalCreateElement
          : conditionalCreateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      conditionalRead: freezed == conditionalRead
          ? _value.conditionalRead
          : conditionalRead // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      conditionalReadElement: freezed == conditionalReadElement
          ? _value.conditionalReadElement
          : conditionalReadElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      conditionalUpdate: freezed == conditionalUpdate
          ? _value.conditionalUpdate
          : conditionalUpdate // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      conditionalUpdateElement: freezed == conditionalUpdateElement
          ? _value.conditionalUpdateElement
          : conditionalUpdateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      conditionalDelete: freezed == conditionalDelete
          ? _value.conditionalDelete
          : conditionalDelete // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      conditionalDeleteElement: freezed == conditionalDeleteElement
          ? _value.conditionalDeleteElement
          : conditionalDeleteElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      referencePolicy: freezed == referencePolicy
          ? _value._referencePolicy
          : referencePolicy // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      referencePolicyElement: freezed == referencePolicyElement
          ? _value._referencePolicyElement
          : referencePolicyElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      searchInclude: freezed == searchInclude
          ? _value._searchInclude
          : searchInclude // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchIncludeElement: freezed == searchIncludeElement
          ? _value._searchIncludeElement
          : searchIncludeElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      searchRevInclude: freezed == searchRevInclude
          ? _value._searchRevInclude
          : searchRevInclude // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchRevIncludeElement: freezed == searchRevIncludeElement
          ? _value._searchRevIncludeElement
          : searchRevIncludeElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      searchParam: freezed == searchParam
          ? _value._searchParam
          : searchParam // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementSearchParam>?,
      operation: freezed == operation
          ? _value._operation
          : operation // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementOperation>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CapabilityStatementResourceImpl extends _CapabilityStatementResource {
  const _$CapabilityStatementResourceImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.profile,
      final List<FhirCanonical>? supportedProfile,
      this.documentation,
      @JsonKey(name: '_documentation') this.documentationElement,
      final List<CapabilityStatementInteraction>? interaction,
      this.versioning,
      @JsonKey(name: '_versioning') this.versioningElement,
      this.readHistory,
      @JsonKey(name: '_readHistory') this.readHistoryElement,
      this.updateCreate,
      @JsonKey(name: '_updateCreate') this.updateCreateElement,
      this.conditionalCreate,
      @JsonKey(name: '_conditionalCreate') this.conditionalCreateElement,
      this.conditionalRead,
      @JsonKey(name: '_conditionalRead') this.conditionalReadElement,
      this.conditionalUpdate,
      @JsonKey(name: '_conditionalUpdate') this.conditionalUpdateElement,
      this.conditionalDelete,
      @JsonKey(name: '_conditionalDelete') this.conditionalDeleteElement,
      final List<FhirCode>? referencePolicy,
      @JsonKey(name: '_referencePolicy')
      final List<PrimitiveElement>? referencePolicyElement,
      final List<String>? searchInclude,
      @JsonKey(name: '_searchInclude')
      final List<PrimitiveElement>? searchIncludeElement,
      final List<String>? searchRevInclude,
      @JsonKey(name: '_searchRevInclude')
      final List<PrimitiveElement>? searchRevIncludeElement,
      final List<CapabilityStatementSearchParam>? searchParam,
      final List<CapabilityStatementOperation>? operation})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _supportedProfile = supportedProfile,
        _interaction = interaction,
        _referencePolicy = referencePolicy,
        _referencePolicyElement = referencePolicyElement,
        _searchInclude = searchInclude,
        _searchIncludeElement = searchIncludeElement,
        _searchRevInclude = searchRevInclude,
        _searchRevIncludeElement = searchRevIncludeElement,
        _searchParam = searchParam,
        _operation = operation,
        super._();

  factory _$CapabilityStatementResourceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CapabilityStatementResourceImplFromJson(json);

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

  /// [type] A type of resource exposed via the restful interface.
  @override
  final FhirCode? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [profile] A specification of the profile that describes the solution's
  /// overall support for the resource, including any constraints on
  /// cardinality, bindings, lengths or other limitations. See further
  ///  discussion in [Using Profiles](profiling.html#profile-uses).
  @override
  final FhirCanonical? profile;

  /// [supportedProfile] A list of profiles that represent different use cases
  /// supported by the system. For a server, "supported by the system" means the
  /// system hosts/produces a set of resources that are conformant to a
  /// particular profile, and allows clients that use its services to search
  /// using this profile and to find appropriate data. For a client, it means
  /// the system will search by this profile and process data according to the
  /// guidance implicit in the profile. See further discussion in [Using
  ///  Profiles](profiling.html#profile-uses).
  final List<FhirCanonical>? _supportedProfile;

  /// [supportedProfile] A list of profiles that represent different use cases
  /// supported by the system. For a server, "supported by the system" means the
  /// system hosts/produces a set of resources that are conformant to a
  /// particular profile, and allows clients that use its services to search
  /// using this profile and to find appropriate data. For a client, it means
  /// the system will search by this profile and process data according to the
  /// guidance implicit in the profile. See further discussion in [Using
  ///  Profiles](profiling.html#profile-uses).
  @override
  List<FhirCanonical>? get supportedProfile {
    final value = _supportedProfile;
    if (value == null) return null;
    if (_supportedProfile is EqualUnmodifiableListView)
      return _supportedProfile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [documentation] Additional information about the resource type used by
  ///  the system.
  @override
  final FhirMarkdown? documentation;

  /// [documentationElement] Extensions for documentation
  @override
  @JsonKey(name: '_documentation')
  final PrimitiveElement? documentationElement;

  /// [interaction] Identifies a restful operation supported by the solution.
  final List<CapabilityStatementInteraction>? _interaction;

  /// [interaction] Identifies a restful operation supported by the solution.
  @override
  List<CapabilityStatementInteraction>? get interaction {
    final value = _interaction;
    if (value == null) return null;
    if (_interaction is EqualUnmodifiableListView) return _interaction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [versioning] This field is set to no-version to specify that the system
  /// does not support (server) or use (client) versioning for this resource
  /// type. If this has some other value, the server must at least correctly
  /// track and populate the versionId meta-property on resources. If the value
  /// is 'versioned-update', then the server supports all the versioning
  ///  features, including using e-tags for version integrity in the API.
  @override
  final FhirCode? versioning;

  /// [versioningElement] Extensions for versioning
  @override
  @JsonKey(name: '_versioning')
  final PrimitiveElement? versioningElement;

  /// [readHistory] A flag for whether the server is able to return past
  ///  versions as part of the vRead operation.
  @override
  final FhirBoolean? readHistory;

  /// [readHistoryElement] Extensions for readHistory
  @override
  @JsonKey(name: '_readHistory')
  final PrimitiveElement? readHistoryElement;

  /// [updateCreate] A flag to indicate that the server allows or needs to
  /// allow the client to create new identities on the server (that is, the
  /// client PUTs to a location where there is no existing resource). Allowing
  /// this operation means that the server allows the client to create new
  ///  identities on the server.
  @override
  final FhirBoolean? updateCreate;

  /// [updateCreateElement] Extensions for updateCreate
  @override
  @JsonKey(name: '_updateCreate')
  final PrimitiveElement? updateCreateElement;

  /// [conditionalCreate] A flag that indicates that the server supports
  ///  conditional create.
  @override
  final FhirBoolean? conditionalCreate;

  /// [conditionalCreateElement] Extensions for conditionalCreate
  @override
  @JsonKey(name: '_conditionalCreate')
  final PrimitiveElement? conditionalCreateElement;

  /// [conditionalRead] A code that indicates how the server supports
  ///  conditional read.
  @override
  final FhirCode? conditionalRead;

  /// [conditionalReadElement] Extensions for conditionalRead
  @override
  @JsonKey(name: '_conditionalRead')
  final PrimitiveElement? conditionalReadElement;

  /// [conditionalUpdate] A flag that indicates that the server supports
  ///  conditional update.
  @override
  final FhirBoolean? conditionalUpdate;

  /// [conditionalUpdateElement] Extensions for conditionalUpdate
  @override
  @JsonKey(name: '_conditionalUpdate')
  final PrimitiveElement? conditionalUpdateElement;

  /// [conditionalDelete] A code that indicates how the server supports
  ///  conditional delete.
  @override
  final FhirCode? conditionalDelete;

  /// [conditionalDeleteElement] Extensions for conditionalDelete
  @override
  @JsonKey(name: '_conditionalDelete')
  final PrimitiveElement? conditionalDeleteElement;

  /// [referencePolicy] A set of flags that defines how references are
  ///  supported.
  final List<FhirCode>? _referencePolicy;

  /// [referencePolicy] A set of flags that defines how references are
  ///  supported.
  @override
  List<FhirCode>? get referencePolicy {
    final value = _referencePolicy;
    if (value == null) return null;
    if (_referencePolicy is EqualUnmodifiableListView) return _referencePolicy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [referencePolicyElement] Extensions for referencePolicy
  final List<PrimitiveElement>? _referencePolicyElement;

  /// [referencePolicyElement] Extensions for referencePolicy
  @override
  @JsonKey(name: '_referencePolicy')
  List<PrimitiveElement>? get referencePolicyElement {
    final value = _referencePolicyElement;
    if (value == null) return null;
    if (_referencePolicyElement is EqualUnmodifiableListView)
      return _referencePolicyElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [searchInclude] A list of _include values supported by the server.
  final List<String>? _searchInclude;

  /// [searchInclude] A list of _include values supported by the server.
  @override
  List<String>? get searchInclude {
    final value = _searchInclude;
    if (value == null) return null;
    if (_searchInclude is EqualUnmodifiableListView) return _searchInclude;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [searchIncludeElement] Extensions for searchInclude
  final List<PrimitiveElement>? _searchIncludeElement;

  /// [searchIncludeElement] Extensions for searchInclude
  @override
  @JsonKey(name: '_searchInclude')
  List<PrimitiveElement>? get searchIncludeElement {
    final value = _searchIncludeElement;
    if (value == null) return null;
    if (_searchIncludeElement is EqualUnmodifiableListView)
      return _searchIncludeElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [searchRevInclude] A list of _revinclude (reverse include) values
  ///  supported by the server.
  final List<String>? _searchRevInclude;

  /// [searchRevInclude] A list of _revinclude (reverse include) values
  ///  supported by the server.
  @override
  List<String>? get searchRevInclude {
    final value = _searchRevInclude;
    if (value == null) return null;
    if (_searchRevInclude is EqualUnmodifiableListView)
      return _searchRevInclude;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [searchRevIncludeElement] Extensions for searchRevInclude
  final List<PrimitiveElement>? _searchRevIncludeElement;

  /// [searchRevIncludeElement] Extensions for searchRevInclude
  @override
  @JsonKey(name: '_searchRevInclude')
  List<PrimitiveElement>? get searchRevIncludeElement {
    final value = _searchRevIncludeElement;
    if (value == null) return null;
    if (_searchRevIncludeElement is EqualUnmodifiableListView)
      return _searchRevIncludeElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [searchParam] Search parameters for implementations to support and/or
  /// make use of - either references to ones defined in the specification, or
  ///  additional ones defined for/by the implementation.
  final List<CapabilityStatementSearchParam>? _searchParam;

  /// [searchParam] Search parameters for implementations to support and/or
  /// make use of - either references to ones defined in the specification, or
  ///  additional ones defined for/by the implementation.
  @override
  List<CapabilityStatementSearchParam>? get searchParam {
    final value = _searchParam;
    if (value == null) return null;
    if (_searchParam is EqualUnmodifiableListView) return _searchParam;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [operation] Definition of an operation or a named query together with its
  /// parameters and their meaning and type. Consult the definition of the
  /// operation for details about how to invoke the operation, and the
  ///  parameters.
  final List<CapabilityStatementOperation>? _operation;

  /// [operation] Definition of an operation or a named query together with its
  /// parameters and their meaning and type. Consult the definition of the
  /// operation for details about how to invoke the operation, and the
  ///  parameters.
  @override
  List<CapabilityStatementOperation>? get operation {
    final value = _operation;
    if (value == null) return null;
    if (_operation is EqualUnmodifiableListView) return _operation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapabilityStatementResourceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            const DeepCollectionEquality()
                .equals(other._supportedProfile, _supportedProfile) &&
            (identical(other.documentation, documentation) ||
                other.documentation == documentation) &&
            (identical(other.documentationElement, documentationElement) ||
                other.documentationElement == documentationElement) &&
            const DeepCollectionEquality()
                .equals(other._interaction, _interaction) &&
            (identical(other.versioning, versioning) ||
                other.versioning == versioning) &&
            (identical(other.versioningElement, versioningElement) ||
                other.versioningElement == versioningElement) &&
            (identical(other.readHistory, readHistory) ||
                other.readHistory == readHistory) &&
            (identical(other.readHistoryElement, readHistoryElement) ||
                other.readHistoryElement == readHistoryElement) &&
            (identical(other.updateCreate, updateCreate) ||
                other.updateCreate == updateCreate) &&
            (identical(other.updateCreateElement, updateCreateElement) ||
                other.updateCreateElement == updateCreateElement) &&
            (identical(other.conditionalCreate, conditionalCreate) ||
                other.conditionalCreate == conditionalCreate) &&
            (identical(
                    other.conditionalCreateElement, conditionalCreateElement) ||
                other.conditionalCreateElement == conditionalCreateElement) &&
            (identical(other.conditionalRead, conditionalRead) ||
                other.conditionalRead == conditionalRead) &&
            (identical(other.conditionalReadElement, conditionalReadElement) ||
                other.conditionalReadElement == conditionalReadElement) &&
            (identical(other.conditionalUpdate, conditionalUpdate) ||
                other.conditionalUpdate == conditionalUpdate) &&
            (identical(
                    other.conditionalUpdateElement, conditionalUpdateElement) ||
                other.conditionalUpdateElement == conditionalUpdateElement) &&
            (identical(other.conditionalDelete, conditionalDelete) ||
                other.conditionalDelete == conditionalDelete) &&
            (identical(
                    other.conditionalDeleteElement, conditionalDeleteElement) ||
                other.conditionalDeleteElement == conditionalDeleteElement) &&
            const DeepCollectionEquality()
                .equals(other._referencePolicy, _referencePolicy) &&
            const DeepCollectionEquality().equals(
                other._referencePolicyElement, _referencePolicyElement) &&
            const DeepCollectionEquality()
                .equals(other._searchInclude, _searchInclude) &&
            const DeepCollectionEquality()
                .equals(other._searchIncludeElement, _searchIncludeElement) &&
            const DeepCollectionEquality()
                .equals(other._searchRevInclude, _searchRevInclude) &&
            const DeepCollectionEquality().equals(
                other._searchRevIncludeElement, _searchRevIncludeElement) &&
            const DeepCollectionEquality()
                .equals(other._searchParam, _searchParam) &&
            const DeepCollectionEquality()
                .equals(other._operation, _operation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        type,
        typeElement,
        profile,
        const DeepCollectionEquality().hash(_supportedProfile),
        documentation,
        documentationElement,
        const DeepCollectionEquality().hash(_interaction),
        versioning,
        versioningElement,
        readHistory,
        readHistoryElement,
        updateCreate,
        updateCreateElement,
        conditionalCreate,
        conditionalCreateElement,
        conditionalRead,
        conditionalReadElement,
        conditionalUpdate,
        conditionalUpdateElement,
        conditionalDelete,
        conditionalDeleteElement,
        const DeepCollectionEquality().hash(_referencePolicy),
        const DeepCollectionEquality().hash(_referencePolicyElement),
        const DeepCollectionEquality().hash(_searchInclude),
        const DeepCollectionEquality().hash(_searchIncludeElement),
        const DeepCollectionEquality().hash(_searchRevInclude),
        const DeepCollectionEquality().hash(_searchRevIncludeElement),
        const DeepCollectionEquality().hash(_searchParam),
        const DeepCollectionEquality().hash(_operation)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapabilityStatementResourceImplCopyWith<_$CapabilityStatementResourceImpl>
      get copyWith => __$$CapabilityStatementResourceImplCopyWithImpl<
          _$CapabilityStatementResourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CapabilityStatementResourceImplToJson(
      this,
    );
  }
}

abstract class _CapabilityStatementResource
    extends CapabilityStatementResource {
  factory _CapabilityStatementResource(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirCode? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      final FhirCanonical? profile,
      final List<FhirCanonical>? supportedProfile,
      final FhirMarkdown? documentation,
      @JsonKey(name: '_documentation')
      final PrimitiveElement? documentationElement,
      final List<CapabilityStatementInteraction>? interaction,
      final FhirCode? versioning,
      @JsonKey(name: '_versioning') final PrimitiveElement? versioningElement,
      final FhirBoolean? readHistory,
      @JsonKey(name: '_readHistory') final PrimitiveElement? readHistoryElement,
      final FhirBoolean? updateCreate,
      @JsonKey(name: '_updateCreate')
      final PrimitiveElement? updateCreateElement,
      final FhirBoolean? conditionalCreate,
      @JsonKey(name: '_conditionalCreate')
      final PrimitiveElement? conditionalCreateElement,
      final FhirCode? conditionalRead,
      @JsonKey(name: '_conditionalRead')
      final PrimitiveElement? conditionalReadElement,
      final FhirBoolean? conditionalUpdate,
      @JsonKey(name: '_conditionalUpdate')
      final PrimitiveElement? conditionalUpdateElement,
      final FhirCode? conditionalDelete,
      @JsonKey(name: '_conditionalDelete')
      final PrimitiveElement? conditionalDeleteElement,
      final List<FhirCode>? referencePolicy,
      @JsonKey(name: '_referencePolicy')
      final List<PrimitiveElement>? referencePolicyElement,
      final List<String>? searchInclude,
      @JsonKey(name: '_searchInclude')
      final List<PrimitiveElement>? searchIncludeElement,
      final List<String>? searchRevInclude,
      @JsonKey(name: '_searchRevInclude')
      final List<PrimitiveElement>? searchRevIncludeElement,
      final List<CapabilityStatementSearchParam>? searchParam,
      final List<CapabilityStatementOperation>?
          operation}) = _$CapabilityStatementResourceImpl;
  const _CapabilityStatementResource._() : super._();

  factory _CapabilityStatementResource.fromJson(Map<String, dynamic> json) =
      _$CapabilityStatementResourceImpl.fromJson;

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

  /// [type] A type of resource exposed via the restful interface.
  FhirCode? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [profile] A specification of the profile that describes the solution's
  /// overall support for the resource, including any constraints on
  /// cardinality, bindings, lengths or other limitations. See further
  ///  discussion in [Using Profiles](profiling.html#profile-uses).
  FhirCanonical? get profile;
  @override

  /// [supportedProfile] A list of profiles that represent different use cases
  /// supported by the system. For a server, "supported by the system" means the
  /// system hosts/produces a set of resources that are conformant to a
  /// particular profile, and allows clients that use its services to search
  /// using this profile and to find appropriate data. For a client, it means
  /// the system will search by this profile and process data according to the
  /// guidance implicit in the profile. See further discussion in [Using
  ///  Profiles](profiling.html#profile-uses).
  List<FhirCanonical>? get supportedProfile;
  @override

  /// [documentation] Additional information about the resource type used by
  ///  the system.
  FhirMarkdown? get documentation;
  @override

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement;
  @override

  /// [interaction] Identifies a restful operation supported by the solution.
  List<CapabilityStatementInteraction>? get interaction;
  @override

  /// [versioning] This field is set to no-version to specify that the system
  /// does not support (server) or use (client) versioning for this resource
  /// type. If this has some other value, the server must at least correctly
  /// track and populate the versionId meta-property on resources. If the value
  /// is 'versioned-update', then the server supports all the versioning
  ///  features, including using e-tags for version integrity in the API.
  FhirCode? get versioning;
  @override

  /// [versioningElement] Extensions for versioning
  @JsonKey(name: '_versioning')
  PrimitiveElement? get versioningElement;
  @override

  /// [readHistory] A flag for whether the server is able to return past
  ///  versions as part of the vRead operation.
  FhirBoolean? get readHistory;
  @override

  /// [readHistoryElement] Extensions for readHistory
  @JsonKey(name: '_readHistory')
  PrimitiveElement? get readHistoryElement;
  @override

  /// [updateCreate] A flag to indicate that the server allows or needs to
  /// allow the client to create new identities on the server (that is, the
  /// client PUTs to a location where there is no existing resource). Allowing
  /// this operation means that the server allows the client to create new
  ///  identities on the server.
  FhirBoolean? get updateCreate;
  @override

  /// [updateCreateElement] Extensions for updateCreate
  @JsonKey(name: '_updateCreate')
  PrimitiveElement? get updateCreateElement;
  @override

  /// [conditionalCreate] A flag that indicates that the server supports
  ///  conditional create.
  FhirBoolean? get conditionalCreate;
  @override

  /// [conditionalCreateElement] Extensions for conditionalCreate
  @JsonKey(name: '_conditionalCreate')
  PrimitiveElement? get conditionalCreateElement;
  @override

  /// [conditionalRead] A code that indicates how the server supports
  ///  conditional read.
  FhirCode? get conditionalRead;
  @override

  /// [conditionalReadElement] Extensions for conditionalRead
  @JsonKey(name: '_conditionalRead')
  PrimitiveElement? get conditionalReadElement;
  @override

  /// [conditionalUpdate] A flag that indicates that the server supports
  ///  conditional update.
  FhirBoolean? get conditionalUpdate;
  @override

  /// [conditionalUpdateElement] Extensions for conditionalUpdate
  @JsonKey(name: '_conditionalUpdate')
  PrimitiveElement? get conditionalUpdateElement;
  @override

  /// [conditionalDelete] A code that indicates how the server supports
  ///  conditional delete.
  FhirCode? get conditionalDelete;
  @override

  /// [conditionalDeleteElement] Extensions for conditionalDelete
  @JsonKey(name: '_conditionalDelete')
  PrimitiveElement? get conditionalDeleteElement;
  @override

  /// [referencePolicy] A set of flags that defines how references are
  ///  supported.
  List<FhirCode>? get referencePolicy;
  @override

  /// [referencePolicyElement] Extensions for referencePolicy
  @JsonKey(name: '_referencePolicy')
  List<PrimitiveElement>? get referencePolicyElement;
  @override

  /// [searchInclude] A list of _include values supported by the server.
  List<String>? get searchInclude;
  @override

  /// [searchIncludeElement] Extensions for searchInclude
  @JsonKey(name: '_searchInclude')
  List<PrimitiveElement>? get searchIncludeElement;
  @override

  /// [searchRevInclude] A list of _revinclude (reverse include) values
  ///  supported by the server.
  List<String>? get searchRevInclude;
  @override

  /// [searchRevIncludeElement] Extensions for searchRevInclude
  @JsonKey(name: '_searchRevInclude')
  List<PrimitiveElement>? get searchRevIncludeElement;
  @override

  /// [searchParam] Search parameters for implementations to support and/or
  /// make use of - either references to ones defined in the specification, or
  ///  additional ones defined for/by the implementation.
  List<CapabilityStatementSearchParam>? get searchParam;
  @override

  /// [operation] Definition of an operation or a named query together with its
  /// parameters and their meaning and type. Consult the definition of the
  /// operation for details about how to invoke the operation, and the
  ///  parameters.
  List<CapabilityStatementOperation>? get operation;
  @override
  @JsonKey(ignore: true)
  _$$CapabilityStatementResourceImplCopyWith<_$CapabilityStatementResourceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CapabilityStatementInteraction _$CapabilityStatementInteractionFromJson(
    Map<String, dynamic> json) {
  return _CapabilityStatementInteraction.fromJson(json);
}

/// @nodoc
mixin _$CapabilityStatementInteraction {
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

  /// [code] Coded identifier of the operation, supported by the system
  ///  resource.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement => throw _privateConstructorUsedError;

  /// [documentation] Guidance specific to the implementation of this
  /// operation, such as 'delete is a logical delete' or 'updates are only
  /// allowed with version id' or 'creates permitted from pre-authorized
  ///  certificates only'.
  FhirMarkdown? get documentation => throw _privateConstructorUsedError;

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapabilityStatementInteractionCopyWith<CapabilityStatementInteraction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapabilityStatementInteractionCopyWith<$Res> {
  factory $CapabilityStatementInteractionCopyWith(
          CapabilityStatementInteraction value,
          $Res Function(CapabilityStatementInteraction) then) =
      _$CapabilityStatementInteractionCopyWithImpl<$Res,
          CapabilityStatementInteraction>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      FhirMarkdown? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement});
}

/// @nodoc
class _$CapabilityStatementInteractionCopyWithImpl<$Res,
        $Val extends CapabilityStatementInteraction>
    implements $CapabilityStatementInteractionCopyWith<$Res> {
  _$CapabilityStatementInteractionCopyWithImpl(this._value, this._then);

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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CapabilityStatementInteractionImplCopyWith<$Res>
    implements $CapabilityStatementInteractionCopyWith<$Res> {
  factory _$$CapabilityStatementInteractionImplCopyWith(
          _$CapabilityStatementInteractionImpl value,
          $Res Function(_$CapabilityStatementInteractionImpl) then) =
      __$$CapabilityStatementInteractionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      FhirMarkdown? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement});
}

/// @nodoc
class __$$CapabilityStatementInteractionImplCopyWithImpl<$Res>
    extends _$CapabilityStatementInteractionCopyWithImpl<$Res,
        _$CapabilityStatementInteractionImpl>
    implements _$$CapabilityStatementInteractionImplCopyWith<$Res> {
  __$$CapabilityStatementInteractionImplCopyWithImpl(
      _$CapabilityStatementInteractionImpl _value,
      $Res Function(_$CapabilityStatementInteractionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
  }) {
    return _then(_$CapabilityStatementInteractionImpl(
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
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CapabilityStatementInteractionImpl
    extends _CapabilityStatementInteraction {
  const _$CapabilityStatementInteractionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      this.documentation,
      @JsonKey(name: '_documentation') this.documentationElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CapabilityStatementInteractionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CapabilityStatementInteractionImplFromJson(json);

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

  /// [code] Coded identifier of the operation, supported by the system
  ///  resource.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final PrimitiveElement? codeElement;

  /// [documentation] Guidance specific to the implementation of this
  /// operation, such as 'delete is a logical delete' or 'updates are only
  /// allowed with version id' or 'creates permitted from pre-authorized
  ///  certificates only'.
  @override
  final FhirMarkdown? documentation;

  /// [documentationElement] Extensions for documentation
  @override
  @JsonKey(name: '_documentation')
  final PrimitiveElement? documentationElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapabilityStatementInteractionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement) &&
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
      code,
      codeElement,
      documentation,
      documentationElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapabilityStatementInteractionImplCopyWith<
          _$CapabilityStatementInteractionImpl>
      get copyWith => __$$CapabilityStatementInteractionImplCopyWithImpl<
          _$CapabilityStatementInteractionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CapabilityStatementInteractionImplToJson(
      this,
    );
  }
}

abstract class _CapabilityStatementInteraction
    extends CapabilityStatementInteraction {
  factory _CapabilityStatementInteraction(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCode? code,
          @JsonKey(name: '_code') final PrimitiveElement? codeElement,
          final FhirMarkdown? documentation,
          @JsonKey(name: '_documentation')
          final PrimitiveElement? documentationElement}) =
      _$CapabilityStatementInteractionImpl;
  const _CapabilityStatementInteraction._() : super._();

  factory _CapabilityStatementInteraction.fromJson(Map<String, dynamic> json) =
      _$CapabilityStatementInteractionImpl.fromJson;

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

  /// [code] Coded identifier of the operation, supported by the system
  ///  resource.
  FhirCode? get code;
  @override

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement;
  @override

  /// [documentation] Guidance specific to the implementation of this
  /// operation, such as 'delete is a logical delete' or 'updates are only
  /// allowed with version id' or 'creates permitted from pre-authorized
  ///  certificates only'.
  FhirMarkdown? get documentation;
  @override

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement;
  @override
  @JsonKey(ignore: true)
  _$$CapabilityStatementInteractionImplCopyWith<
          _$CapabilityStatementInteractionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CapabilityStatementSearchParam _$CapabilityStatementSearchParamFromJson(
    Map<String, dynamic> json) {
  return _CapabilityStatementSearchParam.fromJson(json);
}

/// @nodoc
mixin _$CapabilityStatementSearchParam {
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

  /// [name] The name of the search parameter used in the interface.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [definition] An absolute URI that is a formal reference to where this
  /// parameter was first defined, so that a client can be confident of the
  /// meaning of the search parameter (a reference to
  FhirCanonical? get definition => throw _privateConstructorUsedError;

  /// [type] The type of value a search parameter refers to, and how the
  ///  content is interpreted.
  FhirCode? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [documentation] This allows documentation of any distinct behaviors about
  ///  how the search parameter is used.  For example, text matching algorithms.
  FhirMarkdown? get documentation => throw _privateConstructorUsedError;

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapabilityStatementSearchParamCopyWith<CapabilityStatementSearchParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapabilityStatementSearchParamCopyWith<$Res> {
  factory $CapabilityStatementSearchParamCopyWith(
          CapabilityStatementSearchParam value,
          $Res Function(CapabilityStatementSearchParam) then) =
      _$CapabilityStatementSearchParamCopyWithImpl<$Res,
          CapabilityStatementSearchParam>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      FhirCanonical? definition,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirMarkdown? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement});
}

/// @nodoc
class _$CapabilityStatementSearchParamCopyWithImpl<$Res,
        $Val extends CapabilityStatementSearchParam>
    implements $CapabilityStatementSearchParamCopyWith<$Res> {
  _$CapabilityStatementSearchParamCopyWithImpl(this._value, this._then);

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
    Object? definition = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
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
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CapabilityStatementSearchParamImplCopyWith<$Res>
    implements $CapabilityStatementSearchParamCopyWith<$Res> {
  factory _$$CapabilityStatementSearchParamImplCopyWith(
          _$CapabilityStatementSearchParamImpl value,
          $Res Function(_$CapabilityStatementSearchParamImpl) then) =
      __$$CapabilityStatementSearchParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      FhirCanonical? definition,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirMarkdown? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement});
}

/// @nodoc
class __$$CapabilityStatementSearchParamImplCopyWithImpl<$Res>
    extends _$CapabilityStatementSearchParamCopyWithImpl<$Res,
        _$CapabilityStatementSearchParamImpl>
    implements _$$CapabilityStatementSearchParamImplCopyWith<$Res> {
  __$$CapabilityStatementSearchParamImplCopyWithImpl(
      _$CapabilityStatementSearchParamImpl _value,
      $Res Function(_$CapabilityStatementSearchParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? definition = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
  }) {
    return _then(_$CapabilityStatementSearchParamImpl(
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
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CapabilityStatementSearchParamImpl
    extends _CapabilityStatementSearchParam {
  const _$CapabilityStatementSearchParamImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.definition,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.documentation,
      @JsonKey(name: '_documentation') this.documentationElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CapabilityStatementSearchParamImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CapabilityStatementSearchParamImplFromJson(json);

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

  /// [name] The name of the search parameter used in the interface.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [definition] An absolute URI that is a formal reference to where this
  /// parameter was first defined, so that a client can be confident of the
  /// meaning of the search parameter (a reference to
  @override
  final FhirCanonical? definition;

  /// [type] The type of value a search parameter refers to, and how the
  ///  content is interpreted.
  @override
  final FhirCode? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [documentation] This allows documentation of any distinct behaviors about
  ///  how the search parameter is used.  For example, text matching algorithms.
  @override
  final FhirMarkdown? documentation;

  /// [documentationElement] Extensions for documentation
  @override
  @JsonKey(name: '_documentation')
  final PrimitiveElement? documentationElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapabilityStatementSearchParamImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
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
      definition,
      type,
      typeElement,
      documentation,
      documentationElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapabilityStatementSearchParamImplCopyWith<
          _$CapabilityStatementSearchParamImpl>
      get copyWith => __$$CapabilityStatementSearchParamImplCopyWithImpl<
          _$CapabilityStatementSearchParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CapabilityStatementSearchParamImplToJson(
      this,
    );
  }
}

abstract class _CapabilityStatementSearchParam
    extends CapabilityStatementSearchParam {
  factory _CapabilityStatementSearchParam(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final String? name,
          @JsonKey(name: '_name') final PrimitiveElement? nameElement,
          final FhirCanonical? definition,
          final FhirCode? type,
          @JsonKey(name: '_type') final PrimitiveElement? typeElement,
          final FhirMarkdown? documentation,
          @JsonKey(name: '_documentation')
          final PrimitiveElement? documentationElement}) =
      _$CapabilityStatementSearchParamImpl;
  const _CapabilityStatementSearchParam._() : super._();

  factory _CapabilityStatementSearchParam.fromJson(Map<String, dynamic> json) =
      _$CapabilityStatementSearchParamImpl.fromJson;

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

  /// [name] The name of the search parameter used in the interface.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [definition] An absolute URI that is a formal reference to where this
  /// parameter was first defined, so that a client can be confident of the
  /// meaning of the search parameter (a reference to
  FhirCanonical? get definition;
  @override

  /// [type] The type of value a search parameter refers to, and how the
  ///  content is interpreted.
  FhirCode? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [documentation] This allows documentation of any distinct behaviors about
  ///  how the search parameter is used.  For example, text matching algorithms.
  FhirMarkdown? get documentation;
  @override

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement;
  @override
  @JsonKey(ignore: true)
  _$$CapabilityStatementSearchParamImplCopyWith<
          _$CapabilityStatementSearchParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CapabilityStatementOperation _$CapabilityStatementOperationFromJson(
    Map<String, dynamic> json) {
  return _CapabilityStatementOperation.fromJson(json);
}

/// @nodoc
mixin _$CapabilityStatementOperation {
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

  /// [name] The name of the operation or query. For an operation, this is the
  /// name  prefixed with $ and used in the URL. For a query, this is the name
  ///  used in the _query parameter when the query is called.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [definition] Where the formal definition can be found. If a server
  /// references the base definition of an Operation (i.e. from the
  /// specification itself such as
  /// ```http://hl7.org/fhir/OperationDefinition/ValueSet-expand```), that means
  /// it supports the full capabilities of the operation - e.g. both GET and
  /// POST invocation.  If it only supports a subset, it must define its own
  /// custom [[[OperationDefinition]]] with a 'base' of the original
  /// OperationDefinition.  The custom definition would describe the specific
  ///  subset of functionality supported.
  FhirCanonical get definition => throw _privateConstructorUsedError;

  /// [documentation] Documentation that describes anything special about the
  /// operation behavior, possibly detailing different behavior for system, type
  ///  and instance-level invocation of the operation.
  FhirMarkdown? get documentation => throw _privateConstructorUsedError;

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapabilityStatementOperationCopyWith<CapabilityStatementOperation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapabilityStatementOperationCopyWith<$Res> {
  factory $CapabilityStatementOperationCopyWith(
          CapabilityStatementOperation value,
          $Res Function(CapabilityStatementOperation) then) =
      _$CapabilityStatementOperationCopyWithImpl<$Res,
          CapabilityStatementOperation>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      FhirCanonical definition,
      FhirMarkdown? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement});
}

/// @nodoc
class _$CapabilityStatementOperationCopyWithImpl<$Res,
        $Val extends CapabilityStatementOperation>
    implements $CapabilityStatementOperationCopyWith<$Res> {
  _$CapabilityStatementOperationCopyWithImpl(this._value, this._then);

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
    Object? definition = null,
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
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CapabilityStatementOperationImplCopyWith<$Res>
    implements $CapabilityStatementOperationCopyWith<$Res> {
  factory _$$CapabilityStatementOperationImplCopyWith(
          _$CapabilityStatementOperationImpl value,
          $Res Function(_$CapabilityStatementOperationImpl) then) =
      __$$CapabilityStatementOperationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      FhirCanonical definition,
      FhirMarkdown? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement});
}

/// @nodoc
class __$$CapabilityStatementOperationImplCopyWithImpl<$Res>
    extends _$CapabilityStatementOperationCopyWithImpl<$Res,
        _$CapabilityStatementOperationImpl>
    implements _$$CapabilityStatementOperationImplCopyWith<$Res> {
  __$$CapabilityStatementOperationImplCopyWithImpl(
      _$CapabilityStatementOperationImpl _value,
      $Res Function(_$CapabilityStatementOperationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? definition = null,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
  }) {
    return _then(_$CapabilityStatementOperationImpl(
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
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CapabilityStatementOperationImpl extends _CapabilityStatementOperation {
  const _$CapabilityStatementOperationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      required this.definition,
      this.documentation,
      @JsonKey(name: '_documentation') this.documentationElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CapabilityStatementOperationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CapabilityStatementOperationImplFromJson(json);

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

  /// [name] The name of the operation or query. For an operation, this is the
  /// name  prefixed with $ and used in the URL. For a query, this is the name
  ///  used in the _query parameter when the query is called.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [definition] Where the formal definition can be found. If a server
  /// references the base definition of an Operation (i.e. from the
  /// specification itself such as
  /// ```http://hl7.org/fhir/OperationDefinition/ValueSet-expand```), that means
  /// it supports the full capabilities of the operation - e.g. both GET and
  /// POST invocation.  If it only supports a subset, it must define its own
  /// custom [[[OperationDefinition]]] with a 'base' of the original
  /// OperationDefinition.  The custom definition would describe the specific
  ///  subset of functionality supported.
  @override
  final FhirCanonical definition;

  /// [documentation] Documentation that describes anything special about the
  /// operation behavior, possibly detailing different behavior for system, type
  ///  and instance-level invocation of the operation.
  @override
  final FhirMarkdown? documentation;

  /// [documentationElement] Extensions for documentation
  @override
  @JsonKey(name: '_documentation')
  final PrimitiveElement? documentationElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapabilityStatementOperationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
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
      definition,
      documentation,
      documentationElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapabilityStatementOperationImplCopyWith<
          _$CapabilityStatementOperationImpl>
      get copyWith => __$$CapabilityStatementOperationImplCopyWithImpl<
          _$CapabilityStatementOperationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CapabilityStatementOperationImplToJson(
      this,
    );
  }
}

abstract class _CapabilityStatementOperation
    extends CapabilityStatementOperation {
  factory _CapabilityStatementOperation(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final String? name,
          @JsonKey(name: '_name') final PrimitiveElement? nameElement,
          required final FhirCanonical definition,
          final FhirMarkdown? documentation,
          @JsonKey(name: '_documentation')
          final PrimitiveElement? documentationElement}) =
      _$CapabilityStatementOperationImpl;
  const _CapabilityStatementOperation._() : super._();

  factory _CapabilityStatementOperation.fromJson(Map<String, dynamic> json) =
      _$CapabilityStatementOperationImpl.fromJson;

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

  /// [name] The name of the operation or query. For an operation, this is the
  /// name  prefixed with $ and used in the URL. For a query, this is the name
  ///  used in the _query parameter when the query is called.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [definition] Where the formal definition can be found. If a server
  /// references the base definition of an Operation (i.e. from the
  /// specification itself such as
  /// ```http://hl7.org/fhir/OperationDefinition/ValueSet-expand```), that means
  /// it supports the full capabilities of the operation - e.g. both GET and
  /// POST invocation.  If it only supports a subset, it must define its own
  /// custom [[[OperationDefinition]]] with a 'base' of the original
  /// OperationDefinition.  The custom definition would describe the specific
  ///  subset of functionality supported.
  FhirCanonical get definition;
  @override

  /// [documentation] Documentation that describes anything special about the
  /// operation behavior, possibly detailing different behavior for system, type
  ///  and instance-level invocation of the operation.
  FhirMarkdown? get documentation;
  @override

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement;
  @override
  @JsonKey(ignore: true)
  _$$CapabilityStatementOperationImplCopyWith<
          _$CapabilityStatementOperationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CapabilityStatementInteraction1 _$CapabilityStatementInteraction1FromJson(
    Map<String, dynamic> json) {
  return _CapabilityStatementInteraction1.fromJson(json);
}

/// @nodoc
mixin _$CapabilityStatementInteraction1 {
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

  /// [code] A coded identifier of the operation, supported by the system.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement => throw _privateConstructorUsedError;

  /// [documentation] Guidance specific to the implementation of this
  /// operation, such as limitations on the kind of transactions allowed, or
  ///  information about system wide search is implemented.
  FhirMarkdown? get documentation => throw _privateConstructorUsedError;

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapabilityStatementInteraction1CopyWith<CapabilityStatementInteraction1>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapabilityStatementInteraction1CopyWith<$Res> {
  factory $CapabilityStatementInteraction1CopyWith(
          CapabilityStatementInteraction1 value,
          $Res Function(CapabilityStatementInteraction1) then) =
      _$CapabilityStatementInteraction1CopyWithImpl<$Res,
          CapabilityStatementInteraction1>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      FhirMarkdown? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement});
}

/// @nodoc
class _$CapabilityStatementInteraction1CopyWithImpl<$Res,
        $Val extends CapabilityStatementInteraction1>
    implements $CapabilityStatementInteraction1CopyWith<$Res> {
  _$CapabilityStatementInteraction1CopyWithImpl(this._value, this._then);

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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CapabilityStatementInteraction1ImplCopyWith<$Res>
    implements $CapabilityStatementInteraction1CopyWith<$Res> {
  factory _$$CapabilityStatementInteraction1ImplCopyWith(
          _$CapabilityStatementInteraction1Impl value,
          $Res Function(_$CapabilityStatementInteraction1Impl) then) =
      __$$CapabilityStatementInteraction1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      FhirMarkdown? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement});
}

/// @nodoc
class __$$CapabilityStatementInteraction1ImplCopyWithImpl<$Res>
    extends _$CapabilityStatementInteraction1CopyWithImpl<$Res,
        _$CapabilityStatementInteraction1Impl>
    implements _$$CapabilityStatementInteraction1ImplCopyWith<$Res> {
  __$$CapabilityStatementInteraction1ImplCopyWithImpl(
      _$CapabilityStatementInteraction1Impl _value,
      $Res Function(_$CapabilityStatementInteraction1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
  }) {
    return _then(_$CapabilityStatementInteraction1Impl(
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
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CapabilityStatementInteraction1Impl
    extends _CapabilityStatementInteraction1 {
  const _$CapabilityStatementInteraction1Impl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      this.documentation,
      @JsonKey(name: '_documentation') this.documentationElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CapabilityStatementInteraction1Impl.fromJson(
          Map<String, dynamic> json) =>
      _$$CapabilityStatementInteraction1ImplFromJson(json);

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

  /// [code] A coded identifier of the operation, supported by the system.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final PrimitiveElement? codeElement;

  /// [documentation] Guidance specific to the implementation of this
  /// operation, such as limitations on the kind of transactions allowed, or
  ///  information about system wide search is implemented.
  @override
  final FhirMarkdown? documentation;

  /// [documentationElement] Extensions for documentation
  @override
  @JsonKey(name: '_documentation')
  final PrimitiveElement? documentationElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapabilityStatementInteraction1Impl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement) &&
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
      code,
      codeElement,
      documentation,
      documentationElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapabilityStatementInteraction1ImplCopyWith<
          _$CapabilityStatementInteraction1Impl>
      get copyWith => __$$CapabilityStatementInteraction1ImplCopyWithImpl<
          _$CapabilityStatementInteraction1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CapabilityStatementInteraction1ImplToJson(
      this,
    );
  }
}

abstract class _CapabilityStatementInteraction1
    extends CapabilityStatementInteraction1 {
  factory _CapabilityStatementInteraction1(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCode? code,
          @JsonKey(name: '_code') final PrimitiveElement? codeElement,
          final FhirMarkdown? documentation,
          @JsonKey(name: '_documentation')
          final PrimitiveElement? documentationElement}) =
      _$CapabilityStatementInteraction1Impl;
  const _CapabilityStatementInteraction1._() : super._();

  factory _CapabilityStatementInteraction1.fromJson(Map<String, dynamic> json) =
      _$CapabilityStatementInteraction1Impl.fromJson;

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

  /// [code] A coded identifier of the operation, supported by the system.
  FhirCode? get code;
  @override

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement;
  @override

  /// [documentation] Guidance specific to the implementation of this
  /// operation, such as limitations on the kind of transactions allowed, or
  ///  information about system wide search is implemented.
  FhirMarkdown? get documentation;
  @override

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement;
  @override
  @JsonKey(ignore: true)
  _$$CapabilityStatementInteraction1ImplCopyWith<
          _$CapabilityStatementInteraction1Impl>
      get copyWith => throw _privateConstructorUsedError;
}

CapabilityStatementMessaging _$CapabilityStatementMessagingFromJson(
    Map<String, dynamic> json) {
  return _CapabilityStatementMessaging.fromJson(json);
}

/// @nodoc
mixin _$CapabilityStatementMessaging {
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

  /// [endpoint] An endpoint (network accessible address) to which messages
  ///  and/or replies are to be sent.
  List<CapabilityStatementEndpoint>? get endpoint =>
      throw _privateConstructorUsedError;

  /// [reliableCache] Length if the receiver's reliable messaging cache in
  /// minutes (if a receiver) or how long the cache length on the receiver
  ///  should be (if a sender).
  FhirUnsignedInt? get reliableCache => throw _privateConstructorUsedError;

  /// [reliableCacheElement] Extensions for reliableCache
  @JsonKey(name: '_reliableCache')
  PrimitiveElement? get reliableCacheElement =>
      throw _privateConstructorUsedError;

  /// [documentation] Documentation about the system's messaging capabilities
  /// for this endpoint not otherwise documented by the capability statement.
  /// For example, the process for becoming an authorized messaging exchange
  ///  partner.
  FhirMarkdown? get documentation => throw _privateConstructorUsedError;

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement =>
      throw _privateConstructorUsedError;

  /// [supportedMessage] References to message definitions for messages this
  ///  system can send or receive.
  List<CapabilityStatementSupportedMessage>? get supportedMessage =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapabilityStatementMessagingCopyWith<CapabilityStatementMessaging>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapabilityStatementMessagingCopyWith<$Res> {
  factory $CapabilityStatementMessagingCopyWith(
          CapabilityStatementMessaging value,
          $Res Function(CapabilityStatementMessaging) then) =
      _$CapabilityStatementMessagingCopyWithImpl<$Res,
          CapabilityStatementMessaging>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<CapabilityStatementEndpoint>? endpoint,
      FhirUnsignedInt? reliableCache,
      @JsonKey(name: '_reliableCache') PrimitiveElement? reliableCacheElement,
      FhirMarkdown? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
      List<CapabilityStatementSupportedMessage>? supportedMessage});
}

/// @nodoc
class _$CapabilityStatementMessagingCopyWithImpl<$Res,
        $Val extends CapabilityStatementMessaging>
    implements $CapabilityStatementMessagingCopyWith<$Res> {
  _$CapabilityStatementMessagingCopyWithImpl(this._value, this._then);

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
    Object? endpoint = freezed,
    Object? reliableCache = freezed,
    Object? reliableCacheElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
    Object? supportedMessage = freezed,
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
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementEndpoint>?,
      reliableCache: freezed == reliableCache
          ? _value.reliableCache
          : reliableCache // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      reliableCacheElement: freezed == reliableCacheElement
          ? _value.reliableCacheElement
          : reliableCacheElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      supportedMessage: freezed == supportedMessage
          ? _value.supportedMessage
          : supportedMessage // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementSupportedMessage>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CapabilityStatementMessagingImplCopyWith<$Res>
    implements $CapabilityStatementMessagingCopyWith<$Res> {
  factory _$$CapabilityStatementMessagingImplCopyWith(
          _$CapabilityStatementMessagingImpl value,
          $Res Function(_$CapabilityStatementMessagingImpl) then) =
      __$$CapabilityStatementMessagingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<CapabilityStatementEndpoint>? endpoint,
      FhirUnsignedInt? reliableCache,
      @JsonKey(name: '_reliableCache') PrimitiveElement? reliableCacheElement,
      FhirMarkdown? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
      List<CapabilityStatementSupportedMessage>? supportedMessage});
}

/// @nodoc
class __$$CapabilityStatementMessagingImplCopyWithImpl<$Res>
    extends _$CapabilityStatementMessagingCopyWithImpl<$Res,
        _$CapabilityStatementMessagingImpl>
    implements _$$CapabilityStatementMessagingImplCopyWith<$Res> {
  __$$CapabilityStatementMessagingImplCopyWithImpl(
      _$CapabilityStatementMessagingImpl _value,
      $Res Function(_$CapabilityStatementMessagingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? endpoint = freezed,
    Object? reliableCache = freezed,
    Object? reliableCacheElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
    Object? supportedMessage = freezed,
  }) {
    return _then(_$CapabilityStatementMessagingImpl(
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
      endpoint: freezed == endpoint
          ? _value._endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementEndpoint>?,
      reliableCache: freezed == reliableCache
          ? _value.reliableCache
          : reliableCache // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      reliableCacheElement: freezed == reliableCacheElement
          ? _value.reliableCacheElement
          : reliableCacheElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      supportedMessage: freezed == supportedMessage
          ? _value._supportedMessage
          : supportedMessage // ignore: cast_nullable_to_non_nullable
              as List<CapabilityStatementSupportedMessage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CapabilityStatementMessagingImpl extends _CapabilityStatementMessaging {
  const _$CapabilityStatementMessagingImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<CapabilityStatementEndpoint>? endpoint,
      this.reliableCache,
      @JsonKey(name: '_reliableCache') this.reliableCacheElement,
      this.documentation,
      @JsonKey(name: '_documentation') this.documentationElement,
      final List<CapabilityStatementSupportedMessage>? supportedMessage})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _endpoint = endpoint,
        _supportedMessage = supportedMessage,
        super._();

  factory _$CapabilityStatementMessagingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CapabilityStatementMessagingImplFromJson(json);

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

  /// [endpoint] An endpoint (network accessible address) to which messages
  ///  and/or replies are to be sent.
  final List<CapabilityStatementEndpoint>? _endpoint;

  /// [endpoint] An endpoint (network accessible address) to which messages
  ///  and/or replies are to be sent.
  @override
  List<CapabilityStatementEndpoint>? get endpoint {
    final value = _endpoint;
    if (value == null) return null;
    if (_endpoint is EqualUnmodifiableListView) return _endpoint;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [reliableCache] Length if the receiver's reliable messaging cache in
  /// minutes (if a receiver) or how long the cache length on the receiver
  ///  should be (if a sender).
  @override
  final FhirUnsignedInt? reliableCache;

  /// [reliableCacheElement] Extensions for reliableCache
  @override
  @JsonKey(name: '_reliableCache')
  final PrimitiveElement? reliableCacheElement;

  /// [documentation] Documentation about the system's messaging capabilities
  /// for this endpoint not otherwise documented by the capability statement.
  /// For example, the process for becoming an authorized messaging exchange
  ///  partner.
  @override
  final FhirMarkdown? documentation;

  /// [documentationElement] Extensions for documentation
  @override
  @JsonKey(name: '_documentation')
  final PrimitiveElement? documentationElement;

  /// [supportedMessage] References to message definitions for messages this
  ///  system can send or receive.
  final List<CapabilityStatementSupportedMessage>? _supportedMessage;

  /// [supportedMessage] References to message definitions for messages this
  ///  system can send or receive.
  @override
  List<CapabilityStatementSupportedMessage>? get supportedMessage {
    final value = _supportedMessage;
    if (value == null) return null;
    if (_supportedMessage is EqualUnmodifiableListView)
      return _supportedMessage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapabilityStatementMessagingImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other._endpoint, _endpoint) &&
            (identical(other.reliableCache, reliableCache) ||
                other.reliableCache == reliableCache) &&
            (identical(other.reliableCacheElement, reliableCacheElement) ||
                other.reliableCacheElement == reliableCacheElement) &&
            (identical(other.documentation, documentation) ||
                other.documentation == documentation) &&
            (identical(other.documentationElement, documentationElement) ||
                other.documentationElement == documentationElement) &&
            const DeepCollectionEquality()
                .equals(other._supportedMessage, _supportedMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_endpoint),
      reliableCache,
      reliableCacheElement,
      documentation,
      documentationElement,
      const DeepCollectionEquality().hash(_supportedMessage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapabilityStatementMessagingImplCopyWith<
          _$CapabilityStatementMessagingImpl>
      get copyWith => __$$CapabilityStatementMessagingImplCopyWithImpl<
          _$CapabilityStatementMessagingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CapabilityStatementMessagingImplToJson(
      this,
    );
  }
}

abstract class _CapabilityStatementMessaging
    extends CapabilityStatementMessaging {
  factory _CapabilityStatementMessaging(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final List<CapabilityStatementEndpoint>? endpoint,
          final FhirUnsignedInt? reliableCache,
          @JsonKey(name: '_reliableCache')
          final PrimitiveElement? reliableCacheElement,
          final FhirMarkdown? documentation,
          @JsonKey(name: '_documentation')
          final PrimitiveElement? documentationElement,
          final List<CapabilityStatementSupportedMessage>? supportedMessage}) =
      _$CapabilityStatementMessagingImpl;
  const _CapabilityStatementMessaging._() : super._();

  factory _CapabilityStatementMessaging.fromJson(Map<String, dynamic> json) =
      _$CapabilityStatementMessagingImpl.fromJson;

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

  /// [endpoint] An endpoint (network accessible address) to which messages
  ///  and/or replies are to be sent.
  List<CapabilityStatementEndpoint>? get endpoint;
  @override

  /// [reliableCache] Length if the receiver's reliable messaging cache in
  /// minutes (if a receiver) or how long the cache length on the receiver
  ///  should be (if a sender).
  FhirUnsignedInt? get reliableCache;
  @override

  /// [reliableCacheElement] Extensions for reliableCache
  @JsonKey(name: '_reliableCache')
  PrimitiveElement? get reliableCacheElement;
  @override

  /// [documentation] Documentation about the system's messaging capabilities
  /// for this endpoint not otherwise documented by the capability statement.
  /// For example, the process for becoming an authorized messaging exchange
  ///  partner.
  FhirMarkdown? get documentation;
  @override

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement;
  @override

  /// [supportedMessage] References to message definitions for messages this
  ///  system can send or receive.
  List<CapabilityStatementSupportedMessage>? get supportedMessage;
  @override
  @JsonKey(ignore: true)
  _$$CapabilityStatementMessagingImplCopyWith<
          _$CapabilityStatementMessagingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CapabilityStatementEndpoint _$CapabilityStatementEndpointFromJson(
    Map<String, dynamic> json) {
  return _CapabilityStatementEndpoint.fromJson(json);
}

/// @nodoc
mixin _$CapabilityStatementEndpoint {
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

  /// [protocol] A list of the messaging transport protocol(s) identifiers,
  ///  supported by this endpoint.
  Coding get protocol => throw _privateConstructorUsedError;

  /// [address] The network address of the endpoint. For solutions that do not
  ///  use network addresses for routing, it can be just an identifier.
  FhirUrl? get address => throw _privateConstructorUsedError;

  /// [addressElement] Extensions for address
  @JsonKey(name: '_address')
  PrimitiveElement? get addressElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapabilityStatementEndpointCopyWith<CapabilityStatementEndpoint>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapabilityStatementEndpointCopyWith<$Res> {
  factory $CapabilityStatementEndpointCopyWith(
          CapabilityStatementEndpoint value,
          $Res Function(CapabilityStatementEndpoint) then) =
      _$CapabilityStatementEndpointCopyWithImpl<$Res,
          CapabilityStatementEndpoint>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Coding protocol,
      FhirUrl? address,
      @JsonKey(name: '_address') PrimitiveElement? addressElement});

  $CodingCopyWith<$Res> get protocol;
}

/// @nodoc
class _$CapabilityStatementEndpointCopyWithImpl<$Res,
        $Val extends CapabilityStatementEndpoint>
    implements $CapabilityStatementEndpointCopyWith<$Res> {
  _$CapabilityStatementEndpointCopyWithImpl(this._value, this._then);

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
    Object? protocol = null,
    Object? address = freezed,
    Object? addressElement = freezed,
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
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as Coding,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      addressElement: freezed == addressElement
          ? _value.addressElement
          : addressElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodingCopyWith<$Res> get protocol {
    return $CodingCopyWith<$Res>(_value.protocol, (value) {
      return _then(_value.copyWith(protocol: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CapabilityStatementEndpointImplCopyWith<$Res>
    implements $CapabilityStatementEndpointCopyWith<$Res> {
  factory _$$CapabilityStatementEndpointImplCopyWith(
          _$CapabilityStatementEndpointImpl value,
          $Res Function(_$CapabilityStatementEndpointImpl) then) =
      __$$CapabilityStatementEndpointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Coding protocol,
      FhirUrl? address,
      @JsonKey(name: '_address') PrimitiveElement? addressElement});

  @override
  $CodingCopyWith<$Res> get protocol;
}

/// @nodoc
class __$$CapabilityStatementEndpointImplCopyWithImpl<$Res>
    extends _$CapabilityStatementEndpointCopyWithImpl<$Res,
        _$CapabilityStatementEndpointImpl>
    implements _$$CapabilityStatementEndpointImplCopyWith<$Res> {
  __$$CapabilityStatementEndpointImplCopyWithImpl(
      _$CapabilityStatementEndpointImpl _value,
      $Res Function(_$CapabilityStatementEndpointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? protocol = null,
    Object? address = freezed,
    Object? addressElement = freezed,
  }) {
    return _then(_$CapabilityStatementEndpointImpl(
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
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as Coding,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      addressElement: freezed == addressElement
          ? _value.addressElement
          : addressElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CapabilityStatementEndpointImpl extends _CapabilityStatementEndpoint {
  const _$CapabilityStatementEndpointImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.protocol,
      this.address,
      @JsonKey(name: '_address') this.addressElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CapabilityStatementEndpointImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CapabilityStatementEndpointImplFromJson(json);

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

  /// [protocol] A list of the messaging transport protocol(s) identifiers,
  ///  supported by this endpoint.
  @override
  final Coding protocol;

  /// [address] The network address of the endpoint. For solutions that do not
  ///  use network addresses for routing, it can be just an identifier.
  @override
  final FhirUrl? address;

  /// [addressElement] Extensions for address
  @override
  @JsonKey(name: '_address')
  final PrimitiveElement? addressElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapabilityStatementEndpointImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.addressElement, addressElement) ||
                other.addressElement == addressElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      protocol,
      address,
      addressElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapabilityStatementEndpointImplCopyWith<_$CapabilityStatementEndpointImpl>
      get copyWith => __$$CapabilityStatementEndpointImplCopyWithImpl<
          _$CapabilityStatementEndpointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CapabilityStatementEndpointImplToJson(
      this,
    );
  }
}

abstract class _CapabilityStatementEndpoint
    extends CapabilityStatementEndpoint {
  factory _CapabilityStatementEndpoint(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final Coding protocol,
          final FhirUrl? address,
          @JsonKey(name: '_address') final PrimitiveElement? addressElement}) =
      _$CapabilityStatementEndpointImpl;
  const _CapabilityStatementEndpoint._() : super._();

  factory _CapabilityStatementEndpoint.fromJson(Map<String, dynamic> json) =
      _$CapabilityStatementEndpointImpl.fromJson;

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

  /// [protocol] A list of the messaging transport protocol(s) identifiers,
  ///  supported by this endpoint.
  Coding get protocol;
  @override

  /// [address] The network address of the endpoint. For solutions that do not
  ///  use network addresses for routing, it can be just an identifier.
  FhirUrl? get address;
  @override

  /// [addressElement] Extensions for address
  @JsonKey(name: '_address')
  PrimitiveElement? get addressElement;
  @override
  @JsonKey(ignore: true)
  _$$CapabilityStatementEndpointImplCopyWith<_$CapabilityStatementEndpointImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CapabilityStatementSupportedMessage
    _$CapabilityStatementSupportedMessageFromJson(Map<String, dynamic> json) {
  return _CapabilityStatementSupportedMessage.fromJson(json);
}

/// @nodoc
mixin _$CapabilityStatementSupportedMessage {
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

  /// [mode] The mode of this event declaration - whether application is sender
  ///  or receiver.
  FhirCode? get mode => throw _privateConstructorUsedError;

  /// [modeElement] Extensions for mode
  @JsonKey(name: '_mode')
  PrimitiveElement? get modeElement => throw _privateConstructorUsedError;

  /// [definition] Points to a message definition that identifies the messaging
  ///  event, message structure, allowed responses, etc.
  FhirCanonical get definition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapabilityStatementSupportedMessageCopyWith<
          CapabilityStatementSupportedMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapabilityStatementSupportedMessageCopyWith<$Res> {
  factory $CapabilityStatementSupportedMessageCopyWith(
          CapabilityStatementSupportedMessage value,
          $Res Function(CapabilityStatementSupportedMessage) then) =
      _$CapabilityStatementSupportedMessageCopyWithImpl<$Res,
          CapabilityStatementSupportedMessage>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? mode,
      @JsonKey(name: '_mode') PrimitiveElement? modeElement,
      FhirCanonical definition});
}

/// @nodoc
class _$CapabilityStatementSupportedMessageCopyWithImpl<$Res,
        $Val extends CapabilityStatementSupportedMessage>
    implements $CapabilityStatementSupportedMessageCopyWith<$Res> {
  _$CapabilityStatementSupportedMessageCopyWithImpl(this._value, this._then);

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
    Object? mode = freezed,
    Object? modeElement = freezed,
    Object? definition = null,
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
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CapabilityStatementSupportedMessageImplCopyWith<$Res>
    implements $CapabilityStatementSupportedMessageCopyWith<$Res> {
  factory _$$CapabilityStatementSupportedMessageImplCopyWith(
          _$CapabilityStatementSupportedMessageImpl value,
          $Res Function(_$CapabilityStatementSupportedMessageImpl) then) =
      __$$CapabilityStatementSupportedMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? mode,
      @JsonKey(name: '_mode') PrimitiveElement? modeElement,
      FhirCanonical definition});
}

/// @nodoc
class __$$CapabilityStatementSupportedMessageImplCopyWithImpl<$Res>
    extends _$CapabilityStatementSupportedMessageCopyWithImpl<$Res,
        _$CapabilityStatementSupportedMessageImpl>
    implements _$$CapabilityStatementSupportedMessageImplCopyWith<$Res> {
  __$$CapabilityStatementSupportedMessageImplCopyWithImpl(
      _$CapabilityStatementSupportedMessageImpl _value,
      $Res Function(_$CapabilityStatementSupportedMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? mode = freezed,
    Object? modeElement = freezed,
    Object? definition = null,
  }) {
    return _then(_$CapabilityStatementSupportedMessageImpl(
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
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CapabilityStatementSupportedMessageImpl
    extends _CapabilityStatementSupportedMessage {
  const _$CapabilityStatementSupportedMessageImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.mode,
      @JsonKey(name: '_mode') this.modeElement,
      required this.definition})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CapabilityStatementSupportedMessageImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CapabilityStatementSupportedMessageImplFromJson(json);

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

  /// [mode] The mode of this event declaration - whether application is sender
  ///  or receiver.
  @override
  final FhirCode? mode;

  /// [modeElement] Extensions for mode
  @override
  @JsonKey(name: '_mode')
  final PrimitiveElement? modeElement;

  /// [definition] Points to a message definition that identifies the messaging
  ///  event, message structure, allowed responses, etc.
  @override
  final FhirCanonical definition;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapabilityStatementSupportedMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.modeElement, modeElement) ||
                other.modeElement == modeElement) &&
            (identical(other.definition, definition) ||
                other.definition == definition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      mode,
      modeElement,
      definition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapabilityStatementSupportedMessageImplCopyWith<
          _$CapabilityStatementSupportedMessageImpl>
      get copyWith => __$$CapabilityStatementSupportedMessageImplCopyWithImpl<
          _$CapabilityStatementSupportedMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CapabilityStatementSupportedMessageImplToJson(
      this,
    );
  }
}

abstract class _CapabilityStatementSupportedMessage
    extends CapabilityStatementSupportedMessage {
  factory _CapabilityStatementSupportedMessage(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCode? mode,
          @JsonKey(name: '_mode') final PrimitiveElement? modeElement,
          required final FhirCanonical definition}) =
      _$CapabilityStatementSupportedMessageImpl;
  const _CapabilityStatementSupportedMessage._() : super._();

  factory _CapabilityStatementSupportedMessage.fromJson(
          Map<String, dynamic> json) =
      _$CapabilityStatementSupportedMessageImpl.fromJson;

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

  /// [mode] The mode of this event declaration - whether application is sender
  ///  or receiver.
  FhirCode? get mode;
  @override

  /// [modeElement] Extensions for mode
  @JsonKey(name: '_mode')
  PrimitiveElement? get modeElement;
  @override

  /// [definition] Points to a message definition that identifies the messaging
  ///  event, message structure, allowed responses, etc.
  FhirCanonical get definition;
  @override
  @JsonKey(ignore: true)
  _$$CapabilityStatementSupportedMessageImplCopyWith<
          _$CapabilityStatementSupportedMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CapabilityStatementDocument _$CapabilityStatementDocumentFromJson(
    Map<String, dynamic> json) {
  return _CapabilityStatementDocument.fromJson(json);
}

/// @nodoc
mixin _$CapabilityStatementDocument {
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

  /// [mode] Mode of this document declaration - whether an application is a
  ///  producer or consumer.
  FhirCode? get mode => throw _privateConstructorUsedError;

  /// [modeElement] Extensions for mode
  @JsonKey(name: '_mode')
  PrimitiveElement? get modeElement => throw _privateConstructorUsedError;

  /// [documentation] A description of how the application supports or uses the
  /// specified document profile.  For example, when documents are created, what
  ///  action is taken with consumed documents, etc.
  FhirMarkdown? get documentation => throw _privateConstructorUsedError;

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement =>
      throw _privateConstructorUsedError;

  /// [profile] A profile on the document Bundle that constrains which
  ///  resources are present, and their contents.
  FhirCanonical get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapabilityStatementDocumentCopyWith<CapabilityStatementDocument>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapabilityStatementDocumentCopyWith<$Res> {
  factory $CapabilityStatementDocumentCopyWith(
          CapabilityStatementDocument value,
          $Res Function(CapabilityStatementDocument) then) =
      _$CapabilityStatementDocumentCopyWithImpl<$Res,
          CapabilityStatementDocument>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? mode,
      @JsonKey(name: '_mode') PrimitiveElement? modeElement,
      FhirMarkdown? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
      FhirCanonical profile});
}

/// @nodoc
class _$CapabilityStatementDocumentCopyWithImpl<$Res,
        $Val extends CapabilityStatementDocument>
    implements $CapabilityStatementDocumentCopyWith<$Res> {
  _$CapabilityStatementDocumentCopyWithImpl(this._value, this._then);

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
    Object? mode = freezed,
    Object? modeElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
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
              as FhirMarkdown?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CapabilityStatementDocumentImplCopyWith<$Res>
    implements $CapabilityStatementDocumentCopyWith<$Res> {
  factory _$$CapabilityStatementDocumentImplCopyWith(
          _$CapabilityStatementDocumentImpl value,
          $Res Function(_$CapabilityStatementDocumentImpl) then) =
      __$$CapabilityStatementDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? mode,
      @JsonKey(name: '_mode') PrimitiveElement? modeElement,
      FhirMarkdown? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
      FhirCanonical profile});
}

/// @nodoc
class __$$CapabilityStatementDocumentImplCopyWithImpl<$Res>
    extends _$CapabilityStatementDocumentCopyWithImpl<$Res,
        _$CapabilityStatementDocumentImpl>
    implements _$$CapabilityStatementDocumentImplCopyWith<$Res> {
  __$$CapabilityStatementDocumentImplCopyWithImpl(
      _$CapabilityStatementDocumentImpl _value,
      $Res Function(_$CapabilityStatementDocumentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? mode = freezed,
    Object? modeElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
    Object? profile = null,
  }) {
    return _then(_$CapabilityStatementDocumentImpl(
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
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
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
class _$CapabilityStatementDocumentImpl extends _CapabilityStatementDocument {
  const _$CapabilityStatementDocumentImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.mode,
      @JsonKey(name: '_mode') this.modeElement,
      this.documentation,
      @JsonKey(name: '_documentation') this.documentationElement,
      required this.profile})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CapabilityStatementDocumentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CapabilityStatementDocumentImplFromJson(json);

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

  /// [mode] Mode of this document declaration - whether an application is a
  ///  producer or consumer.
  @override
  final FhirCode? mode;

  /// [modeElement] Extensions for mode
  @override
  @JsonKey(name: '_mode')
  final PrimitiveElement? modeElement;

  /// [documentation] A description of how the application supports or uses the
  /// specified document profile.  For example, when documents are created, what
  ///  action is taken with consumed documents, etc.
  @override
  final FhirMarkdown? documentation;

  /// [documentationElement] Extensions for documentation
  @override
  @JsonKey(name: '_documentation')
  final PrimitiveElement? documentationElement;

  /// [profile] A profile on the document Bundle that constrains which
  ///  resources are present, and their contents.
  @override
  final FhirCanonical profile;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapabilityStatementDocumentImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.modeElement, modeElement) ||
                other.modeElement == modeElement) &&
            (identical(other.documentation, documentation) ||
                other.documentation == documentation) &&
            (identical(other.documentationElement, documentationElement) ||
                other.documentationElement == documentationElement) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      mode,
      modeElement,
      documentation,
      documentationElement,
      profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapabilityStatementDocumentImplCopyWith<_$CapabilityStatementDocumentImpl>
      get copyWith => __$$CapabilityStatementDocumentImplCopyWithImpl<
          _$CapabilityStatementDocumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CapabilityStatementDocumentImplToJson(
      this,
    );
  }
}

abstract class _CapabilityStatementDocument
    extends CapabilityStatementDocument {
  factory _CapabilityStatementDocument(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCode? mode,
          @JsonKey(name: '_mode') final PrimitiveElement? modeElement,
          final FhirMarkdown? documentation,
          @JsonKey(name: '_documentation')
          final PrimitiveElement? documentationElement,
          required final FhirCanonical profile}) =
      _$CapabilityStatementDocumentImpl;
  const _CapabilityStatementDocument._() : super._();

  factory _CapabilityStatementDocument.fromJson(Map<String, dynamic> json) =
      _$CapabilityStatementDocumentImpl.fromJson;

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

  /// [mode] Mode of this document declaration - whether an application is a
  ///  producer or consumer.
  FhirCode? get mode;
  @override

  /// [modeElement] Extensions for mode
  @JsonKey(name: '_mode')
  PrimitiveElement? get modeElement;
  @override

  /// [documentation] A description of how the application supports or uses the
  /// specified document profile.  For example, when documents are created, what
  ///  action is taken with consumed documents, etc.
  FhirMarkdown? get documentation;
  @override

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement;
  @override

  /// [profile] A profile on the document Bundle that constrains which
  ///  resources are present, and their contents.
  FhirCanonical get profile;
  @override
  @JsonKey(ignore: true)
  _$$CapabilityStatementDocumentImplCopyWith<_$CapabilityStatementDocumentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
