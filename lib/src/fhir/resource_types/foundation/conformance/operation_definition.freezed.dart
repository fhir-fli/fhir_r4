// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OperationDefinition _$OperationDefinitionFromJson(Map<String, dynamic> json) {
  return _OperationDefinition.fromJson(json);
}

/// @nodoc
mixin _$OperationDefinition {
  @JsonKey(unknownEnumValue: R4ResourceType.OperationDefinition)
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

  /// [url] An absolute URI that is used to identify this operation definition
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this operation definition is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  ///  operation definition is stored on different servers.
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [version] The identifier that is used to identify this version of the
  /// operation definition when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the operation
  /// definition author and is not expected to be globally unique. For example,
  /// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
  /// available. There is also no expectation that versions can be placed in a
  ///  lexicographical sequence.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  /// [name] A natural language name identifying the operation definition. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [title] A short, descriptive, user-friendly title for the operation
  ///  definition.
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;

  /// [status] The status of this operation definition. Enables tracking the
  ///  life-cycle of the content.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [kind] Whether this is an operation or a named query.
  FhirCode? get kind => throw _privateConstructorUsedError;

  /// [kindElement] Extensions for kind
  @JsonKey(name: '_kind')
  PrimitiveElement? get kindElement => throw _privateConstructorUsedError;

  /// [experimental] A Boolean value to indicate that this operation definition
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  FhirBoolean? get experimental => throw _privateConstructorUsedError;

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement =>
      throw _privateConstructorUsedError;

  /// [date] The date  (and optionally time) when the operation definition was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the operation definition changes.
  FhirDateTime? get date => throw _privateConstructorUsedError;

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [publisher] The name of the organization or individual that published the
  ///  operation definition.
  String? get publisher => throw _privateConstructorUsedError;

  /// [publisherElement] Extensions for publisher
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement => throw _privateConstructorUsedError;

  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  List<ContactDetail>? get contact => throw _privateConstructorUsedError;

  /// [description] A free text natural language description of the operation
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
  ///  and searching for appropriate operation definition instances.
  List<UsageContext>? get useContext => throw _privateConstructorUsedError;

  /// [jurisdiction] A legal or geographic region in which the operation
  ///  definition is intended to be used.
  List<CodeableConcept>? get jurisdiction => throw _privateConstructorUsedError;

  /// [purpose] Explanation of why this operation definition is needed and why
  ///  it has been designed as it has.
  FhirMarkdown? get purpose => throw _privateConstructorUsedError;

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement => throw _privateConstructorUsedError;

  /// [affectsState] Whether the operation affects state. Side effects such as
  ///  producing audit trail entries do not count as 'affecting  state'.
  FhirBoolean? get affectsState => throw _privateConstructorUsedError;

  /// [affectsStateElement] Extensions for affectsState
  @JsonKey(name: '_affectsState')
  PrimitiveElement? get affectsStateElement =>
      throw _privateConstructorUsedError;

  /// [code] The name used to invoke the operation.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement => throw _privateConstructorUsedError;

  /// [comment] Additional information about how to use this operation or named
  ///  query.
  FhirMarkdown? get comment => throw _privateConstructorUsedError;

  /// [commentElement] Extensions for comment
  @JsonKey(name: '_comment')
  PrimitiveElement? get commentElement => throw _privateConstructorUsedError;

  /// [base] Indicates that this operation definition is a constraining profile
  ///  on the base.
  FhirCanonical? get base => throw _privateConstructorUsedError;

  /// [resource] The types on which this operation can be executed.
  List<FhirCode>? get resource => throw _privateConstructorUsedError;

  /// [resourceElement] Extensions for resource
  @JsonKey(name: '_resource')
  List<Element?>? get resourceElement => throw _privateConstructorUsedError;

  /// [system] Indicates whether this operation or named query can be invoked
  /// at the system level (e.g. without needing to choose a resource type for
  ///  the context).
  FhirBoolean? get system => throw _privateConstructorUsedError;

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  PrimitiveElement? get systemElement => throw _privateConstructorUsedError;

  /// [type] Indicates whether this operation or named query can be invoked at
  /// the resource type level for any given resource type level (e.g. without
  ///  needing to choose a specific resource id for the context).
  FhirBoolean? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [instance] Indicates whether this operation can be invoked on a
  ///  particular instance of one of the given types.
  FhirBoolean? get instance => throw _privateConstructorUsedError;

  /// [instanceElement] Extensions for instance
  @JsonKey(name: '_instance')
  PrimitiveElement? get instanceElement => throw _privateConstructorUsedError;

  /// [inputProfile] Additional validation information for the in parameters -
  /// a single profile that covers all the parameters. The profile is a
  ///  constraint on the parameters resource as a whole.
  FhirCanonical? get inputProfile => throw _privateConstructorUsedError;

  /// [outputProfile] Additional validation information for the out parameters
  /// - a single profile that covers all the parameters. The profile is a
  ///  constraint on the parameters resource.
  FhirCanonical? get outputProfile => throw _privateConstructorUsedError;

  /// [parameter] The parameters for the operation/query.
  List<OperationDefinitionParameter>? get parameter =>
      throw _privateConstructorUsedError;

  /// [overload] Defines an appropriate combination of parameters to use when
  /// invoking this operation, to help code generators when generating
  ///  overloaded parameter sets for this operation.
  List<OperationDefinitionOverload>? get overload =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationDefinitionCopyWith<OperationDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationDefinitionCopyWith<$Res> {
  factory $OperationDefinitionCopyWith(
          OperationDefinition value, $Res Function(OperationDefinition) then) =
      _$OperationDefinitionCopyWithImpl<$Res, OperationDefinition>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.OperationDefinition)
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
      FhirCode? kind,
      @JsonKey(name: '_kind') PrimitiveElement? kindElement,
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
      FhirBoolean? affectsState,
      @JsonKey(name: '_affectsState') PrimitiveElement? affectsStateElement,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      FhirMarkdown? comment,
      @JsonKey(name: '_comment') PrimitiveElement? commentElement,
      FhirCanonical? base,
      List<FhirCode>? resource,
      @JsonKey(name: '_resource') List<Element?>? resourceElement,
      FhirBoolean? system,
      @JsonKey(name: '_system') PrimitiveElement? systemElement,
      FhirBoolean? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirBoolean? instance,
      @JsonKey(name: '_instance') PrimitiveElement? instanceElement,
      FhirCanonical? inputProfile,
      FhirCanonical? outputProfile,
      List<OperationDefinitionParameter>? parameter,
      List<OperationDefinitionOverload>? overload});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
}

/// @nodoc
class _$OperationDefinitionCopyWithImpl<$Res, $Val extends OperationDefinition>
    implements $OperationDefinitionCopyWith<$Res> {
  _$OperationDefinitionCopyWithImpl(this._value, this._then);

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
    Object? kind = freezed,
    Object? kindElement = freezed,
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
    Object? affectsState = freezed,
    Object? affectsStateElement = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
    Object? base = freezed,
    Object? resource = freezed,
    Object? resourceElement = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? instance = freezed,
    Object? instanceElement = freezed,
    Object? inputProfile = freezed,
    Object? outputProfile = freezed,
    Object? parameter = freezed,
    Object? overload = freezed,
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
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      kindElement: freezed == kindElement
          ? _value.kindElement
          : kindElement // ignore: cast_nullable_to_non_nullable
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
      affectsState: freezed == affectsState
          ? _value.affectsState
          : affectsState // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      affectsStateElement: freezed == affectsStateElement
          ? _value.affectsStateElement
          : affectsStateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      commentElement: freezed == commentElement
          ? _value.commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      resourceElement: freezed == resourceElement
          ? _value.resourceElement
          : resourceElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      instance: freezed == instance
          ? _value.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      instanceElement: freezed == instanceElement
          ? _value.instanceElement
          : instanceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      inputProfile: freezed == inputProfile
          ? _value.inputProfile
          : inputProfile // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      outputProfile: freezed == outputProfile
          ? _value.outputProfile
          : outputProfile // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      parameter: freezed == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as List<OperationDefinitionParameter>?,
      overload: freezed == overload
          ? _value.overload
          : overload // ignore: cast_nullable_to_non_nullable
              as List<OperationDefinitionOverload>?,
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
abstract class _$$OperationDefinitionImplCopyWith<$Res>
    implements $OperationDefinitionCopyWith<$Res> {
  factory _$$OperationDefinitionImplCopyWith(_$OperationDefinitionImpl value,
          $Res Function(_$OperationDefinitionImpl) then) =
      __$$OperationDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.OperationDefinition)
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
      FhirCode? kind,
      @JsonKey(name: '_kind') PrimitiveElement? kindElement,
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
      FhirBoolean? affectsState,
      @JsonKey(name: '_affectsState') PrimitiveElement? affectsStateElement,
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      FhirMarkdown? comment,
      @JsonKey(name: '_comment') PrimitiveElement? commentElement,
      FhirCanonical? base,
      List<FhirCode>? resource,
      @JsonKey(name: '_resource') List<Element?>? resourceElement,
      FhirBoolean? system,
      @JsonKey(name: '_system') PrimitiveElement? systemElement,
      FhirBoolean? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirBoolean? instance,
      @JsonKey(name: '_instance') PrimitiveElement? instanceElement,
      FhirCanonical? inputProfile,
      FhirCanonical? outputProfile,
      List<OperationDefinitionParameter>? parameter,
      List<OperationDefinitionOverload>? overload});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
}

/// @nodoc
class __$$OperationDefinitionImplCopyWithImpl<$Res>
    extends _$OperationDefinitionCopyWithImpl<$Res, _$OperationDefinitionImpl>
    implements _$$OperationDefinitionImplCopyWith<$Res> {
  __$$OperationDefinitionImplCopyWithImpl(_$OperationDefinitionImpl _value,
      $Res Function(_$OperationDefinitionImpl) _then)
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
    Object? kind = freezed,
    Object? kindElement = freezed,
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
    Object? affectsState = freezed,
    Object? affectsStateElement = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
    Object? base = freezed,
    Object? resource = freezed,
    Object? resourceElement = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? instance = freezed,
    Object? instanceElement = freezed,
    Object? inputProfile = freezed,
    Object? outputProfile = freezed,
    Object? parameter = freezed,
    Object? overload = freezed,
  }) {
    return _then(_$OperationDefinitionImpl(
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
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      kindElement: freezed == kindElement
          ? _value.kindElement
          : kindElement // ignore: cast_nullable_to_non_nullable
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
      affectsState: freezed == affectsState
          ? _value.affectsState
          : affectsState // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      affectsStateElement: freezed == affectsStateElement
          ? _value.affectsStateElement
          : affectsStateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      commentElement: freezed == commentElement
          ? _value.commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      resource: freezed == resource
          ? _value._resource
          : resource // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      resourceElement: freezed == resourceElement
          ? _value._resourceElement
          : resourceElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      instance: freezed == instance
          ? _value.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      instanceElement: freezed == instanceElement
          ? _value.instanceElement
          : instanceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      inputProfile: freezed == inputProfile
          ? _value.inputProfile
          : inputProfile // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      outputProfile: freezed == outputProfile
          ? _value.outputProfile
          : outputProfile // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      parameter: freezed == parameter
          ? _value._parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as List<OperationDefinitionParameter>?,
      overload: freezed == overload
          ? _value._overload
          : overload // ignore: cast_nullable_to_non_nullable
              as List<OperationDefinitionOverload>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OperationDefinitionImpl extends _OperationDefinition {
  const _$OperationDefinitionImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.OperationDefinition)
      this.resourceType = R4ResourceType.OperationDefinition,
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
      this.kind,
      @JsonKey(name: '_kind') this.kindElement,
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
      this.affectsState,
      @JsonKey(name: '_affectsState') this.affectsStateElement,
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      this.comment,
      @JsonKey(name: '_comment') this.commentElement,
      this.base,
      final List<FhirCode>? resource,
      @JsonKey(name: '_resource') final List<Element?>? resourceElement,
      this.system,
      @JsonKey(name: '_system') this.systemElement,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.instance,
      @JsonKey(name: '_instance') this.instanceElement,
      this.inputProfile,
      this.outputProfile,
      final List<OperationDefinitionParameter>? parameter,
      final List<OperationDefinitionOverload>? overload})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _contact = contact,
        _useContext = useContext,
        _jurisdiction = jurisdiction,
        _resource = resource,
        _resourceElement = resourceElement,
        _parameter = parameter,
        _overload = overload,
        super._();

  factory _$OperationDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OperationDefinitionImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.OperationDefinition)
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

  /// [url] An absolute URI that is used to identify this operation definition
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this operation definition is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  ///  operation definition is stored on different servers.
  @override
  final FhirUri? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [version] The identifier that is used to identify this version of the
  /// operation definition when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the operation
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

  /// [name] A natural language name identifying the operation definition. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [title] A short, descriptive, user-friendly title for the operation
  ///  definition.
  @override
  final String? title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;

  /// [status] The status of this operation definition. Enables tracking the
  ///  life-cycle of the content.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [kind] Whether this is an operation or a named query.
  @override
  final FhirCode? kind;

  /// [kindElement] Extensions for kind
  @override
  @JsonKey(name: '_kind')
  final PrimitiveElement? kindElement;

  /// [experimental] A Boolean value to indicate that this operation definition
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  @override
  final FhirBoolean? experimental;

  /// [experimentalElement] Extensions for experimental
  @override
  @JsonKey(name: '_experimental')
  final PrimitiveElement? experimentalElement;

  /// [date] The date  (and optionally time) when the operation definition was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the operation definition changes.
  @override
  final FhirDateTime? date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [publisher] The name of the organization or individual that published the
  ///  operation definition.
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

  /// [description] A free text natural language description of the operation
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
  ///  and searching for appropriate operation definition instances.
  final List<UsageContext>? _useContext;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate operation definition instances.
  @override
  List<UsageContext>? get useContext {
    final value = _useContext;
    if (value == null) return null;
    if (_useContext is EqualUnmodifiableListView) return _useContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [jurisdiction] A legal or geographic region in which the operation
  ///  definition is intended to be used.
  final List<CodeableConcept>? _jurisdiction;

  /// [jurisdiction] A legal or geographic region in which the operation
  ///  definition is intended to be used.
  @override
  List<CodeableConcept>? get jurisdiction {
    final value = _jurisdiction;
    if (value == null) return null;
    if (_jurisdiction is EqualUnmodifiableListView) return _jurisdiction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [purpose] Explanation of why this operation definition is needed and why
  ///  it has been designed as it has.
  @override
  final FhirMarkdown? purpose;

  /// [purposeElement] Extensions for purpose
  @override
  @JsonKey(name: '_purpose')
  final PrimitiveElement? purposeElement;

  /// [affectsState] Whether the operation affects state. Side effects such as
  ///  producing audit trail entries do not count as 'affecting  state'.
  @override
  final FhirBoolean? affectsState;

  /// [affectsStateElement] Extensions for affectsState
  @override
  @JsonKey(name: '_affectsState')
  final PrimitiveElement? affectsStateElement;

  /// [code] The name used to invoke the operation.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final PrimitiveElement? codeElement;

  /// [comment] Additional information about how to use this operation or named
  ///  query.
  @override
  final FhirMarkdown? comment;

  /// [commentElement] Extensions for comment
  @override
  @JsonKey(name: '_comment')
  final PrimitiveElement? commentElement;

  /// [base] Indicates that this operation definition is a constraining profile
  ///  on the base.
  @override
  final FhirCanonical? base;

  /// [resource] The types on which this operation can be executed.
  final List<FhirCode>? _resource;

  /// [resource] The types on which this operation can be executed.
  @override
  List<FhirCode>? get resource {
    final value = _resource;
    if (value == null) return null;
    if (_resource is EqualUnmodifiableListView) return _resource;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [resourceElement] Extensions for resource
  final List<Element?>? _resourceElement;

  /// [resourceElement] Extensions for resource
  @override
  @JsonKey(name: '_resource')
  List<Element?>? get resourceElement {
    final value = _resourceElement;
    if (value == null) return null;
    if (_resourceElement is EqualUnmodifiableListView) return _resourceElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [system] Indicates whether this operation or named query can be invoked
  /// at the system level (e.g. without needing to choose a resource type for
  ///  the context).
  @override
  final FhirBoolean? system;

  /// [systemElement] Extensions for system
  @override
  @JsonKey(name: '_system')
  final PrimitiveElement? systemElement;

  /// [type] Indicates whether this operation or named query can be invoked at
  /// the resource type level for any given resource type level (e.g. without
  ///  needing to choose a specific resource id for the context).
  @override
  final FhirBoolean? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [instance] Indicates whether this operation can be invoked on a
  ///  particular instance of one of the given types.
  @override
  final FhirBoolean? instance;

  /// [instanceElement] Extensions for instance
  @override
  @JsonKey(name: '_instance')
  final PrimitiveElement? instanceElement;

  /// [inputProfile] Additional validation information for the in parameters -
  /// a single profile that covers all the parameters. The profile is a
  ///  constraint on the parameters resource as a whole.
  @override
  final FhirCanonical? inputProfile;

  /// [outputProfile] Additional validation information for the out parameters
  /// - a single profile that covers all the parameters. The profile is a
  ///  constraint on the parameters resource.
  @override
  final FhirCanonical? outputProfile;

  /// [parameter] The parameters for the operation/query.
  final List<OperationDefinitionParameter>? _parameter;

  /// [parameter] The parameters for the operation/query.
  @override
  List<OperationDefinitionParameter>? get parameter {
    final value = _parameter;
    if (value == null) return null;
    if (_parameter is EqualUnmodifiableListView) return _parameter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [overload] Defines an appropriate combination of parameters to use when
  /// invoking this operation, to help code generators when generating
  ///  overloaded parameter sets for this operation.
  final List<OperationDefinitionOverload>? _overload;

  /// [overload] Defines an appropriate combination of parameters to use when
  /// invoking this operation, to help code generators when generating
  ///  overloaded parameter sets for this operation.
  @override
  List<OperationDefinitionOverload>? get overload {
    final value = _overload;
    if (value == null) return null;
    if (_overload is EqualUnmodifiableListView) return _overload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OperationDefinition(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, url: $url, urlElement: $urlElement, version: $version, versionElement: $versionElement, name: $name, nameElement: $nameElement, title: $title, titleElement: $titleElement, status: $status, statusElement: $statusElement, kind: $kind, kindElement: $kindElement, experimental: $experimental, experimentalElement: $experimentalElement, date: $date, dateElement: $dateElement, publisher: $publisher, publisherElement: $publisherElement, contact: $contact, description: $description, descriptionElement: $descriptionElement, useContext: $useContext, jurisdiction: $jurisdiction, purpose: $purpose, purposeElement: $purposeElement, affectsState: $affectsState, affectsStateElement: $affectsStateElement, code: $code, codeElement: $codeElement, comment: $comment, commentElement: $commentElement, base: $base, resource: $resource, resourceElement: $resourceElement, system: $system, systemElement: $systemElement, type: $type, typeElement: $typeElement, instance: $instance, instanceElement: $instanceElement, inputProfile: $inputProfile, outputProfile: $outputProfile, parameter: $parameter, overload: $overload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationDefinitionImpl &&
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
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.kindElement, kindElement) ||
                other.kindElement == kindElement) &&
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
            (identical(other.affectsState, affectsState) ||
                other.affectsState == affectsState) &&
            (identical(other.affectsStateElement, affectsStateElement) ||
                other.affectsStateElement == affectsStateElement) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.commentElement, commentElement) ||
                other.commentElement == commentElement) &&
            (identical(other.base, base) || other.base == base) &&
            const DeepCollectionEquality().equals(other._resource, _resource) &&
            const DeepCollectionEquality()
                .equals(other._resourceElement, _resourceElement) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.systemElement, systemElement) ||
                other.systemElement == systemElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.instance, instance) ||
                other.instance == instance) &&
            (identical(other.instanceElement, instanceElement) ||
                other.instanceElement == instanceElement) &&
            (identical(other.inputProfile, inputProfile) ||
                other.inputProfile == inputProfile) &&
            (identical(other.outputProfile, outputProfile) ||
                other.outputProfile == outputProfile) &&
            const DeepCollectionEquality()
                .equals(other._parameter, _parameter) &&
            const DeepCollectionEquality().equals(other._overload, _overload));
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
        kind,
        kindElement,
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
        affectsState,
        affectsStateElement,
        code,
        codeElement,
        comment,
        commentElement,
        base,
        const DeepCollectionEquality().hash(_resource),
        const DeepCollectionEquality().hash(_resourceElement),
        system,
        systemElement,
        type,
        typeElement,
        instance,
        instanceElement,
        inputProfile,
        outputProfile,
        const DeepCollectionEquality().hash(_parameter),
        const DeepCollectionEquality().hash(_overload)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationDefinitionImplCopyWith<_$OperationDefinitionImpl> get copyWith =>
      __$$OperationDefinitionImplCopyWithImpl<_$OperationDefinitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OperationDefinitionImplToJson(
      this,
    );
  }
}

abstract class _OperationDefinition extends OperationDefinition {
  const factory _OperationDefinition(
      {@JsonKey(unknownEnumValue: R4ResourceType.OperationDefinition)
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
      final FhirCode? kind,
      @JsonKey(name: '_kind') final PrimitiveElement? kindElement,
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
      final FhirBoolean? affectsState,
      @JsonKey(name: '_affectsState')
      final PrimitiveElement? affectsStateElement,
      final FhirCode? code,
      @JsonKey(name: '_code') final PrimitiveElement? codeElement,
      final FhirMarkdown? comment,
      @JsonKey(name: '_comment') final PrimitiveElement? commentElement,
      final FhirCanonical? base,
      final List<FhirCode>? resource,
      @JsonKey(name: '_resource') final List<Element?>? resourceElement,
      final FhirBoolean? system,
      @JsonKey(name: '_system') final PrimitiveElement? systemElement,
      final FhirBoolean? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      final FhirBoolean? instance,
      @JsonKey(name: '_instance') final PrimitiveElement? instanceElement,
      final FhirCanonical? inputProfile,
      final FhirCanonical? outputProfile,
      final List<OperationDefinitionParameter>? parameter,
      final List<OperationDefinitionOverload>?
          overload}) = _$OperationDefinitionImpl;
  const _OperationDefinition._() : super._();

  factory _OperationDefinition.fromJson(Map<String, dynamic> json) =
      _$OperationDefinitionImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.OperationDefinition)
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

  /// [url] An absolute URI that is used to identify this operation definition
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this operation definition is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  ///  operation definition is stored on different servers.
  FhirUri? get url;
  @override

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override

  /// [version] The identifier that is used to identify this version of the
  /// operation definition when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the operation
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

  /// [name] A natural language name identifying the operation definition. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [title] A short, descriptive, user-friendly title for the operation
  ///  definition.
  String? get title;
  @override

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;
  @override

  /// [status] The status of this operation definition. Enables tracking the
  ///  life-cycle of the content.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [kind] Whether this is an operation or a named query.
  FhirCode? get kind;
  @override

  /// [kindElement] Extensions for kind
  @JsonKey(name: '_kind')
  PrimitiveElement? get kindElement;
  @override

  /// [experimental] A Boolean value to indicate that this operation definition
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  FhirBoolean? get experimental;
  @override

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement;
  @override

  /// [date] The date  (and optionally time) when the operation definition was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the operation definition changes.
  FhirDateTime? get date;
  @override

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override

  /// [publisher] The name of the organization or individual that published the
  ///  operation definition.
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

  /// [description] A free text natural language description of the operation
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
  ///  and searching for appropriate operation definition instances.
  List<UsageContext>? get useContext;
  @override

  /// [jurisdiction] A legal or geographic region in which the operation
  ///  definition is intended to be used.
  List<CodeableConcept>? get jurisdiction;
  @override

  /// [purpose] Explanation of why this operation definition is needed and why
  ///  it has been designed as it has.
  FhirMarkdown? get purpose;
  @override

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement;
  @override

  /// [affectsState] Whether the operation affects state. Side effects such as
  ///  producing audit trail entries do not count as 'affecting  state'.
  FhirBoolean? get affectsState;
  @override

  /// [affectsStateElement] Extensions for affectsState
  @JsonKey(name: '_affectsState')
  PrimitiveElement? get affectsStateElement;
  @override

  /// [code] The name used to invoke the operation.
  FhirCode? get code;
  @override

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement;
  @override

  /// [comment] Additional information about how to use this operation or named
  ///  query.
  FhirMarkdown? get comment;
  @override

  /// [commentElement] Extensions for comment
  @JsonKey(name: '_comment')
  PrimitiveElement? get commentElement;
  @override

  /// [base] Indicates that this operation definition is a constraining profile
  ///  on the base.
  FhirCanonical? get base;
  @override

  /// [resource] The types on which this operation can be executed.
  List<FhirCode>? get resource;
  @override

  /// [resourceElement] Extensions for resource
  @JsonKey(name: '_resource')
  List<Element?>? get resourceElement;
  @override

  /// [system] Indicates whether this operation or named query can be invoked
  /// at the system level (e.g. without needing to choose a resource type for
  ///  the context).
  FhirBoolean? get system;
  @override

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  PrimitiveElement? get systemElement;
  @override

  /// [type] Indicates whether this operation or named query can be invoked at
  /// the resource type level for any given resource type level (e.g. without
  ///  needing to choose a specific resource id for the context).
  FhirBoolean? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [instance] Indicates whether this operation can be invoked on a
  ///  particular instance of one of the given types.
  FhirBoolean? get instance;
  @override

  /// [instanceElement] Extensions for instance
  @JsonKey(name: '_instance')
  PrimitiveElement? get instanceElement;
  @override

  /// [inputProfile] Additional validation information for the in parameters -
  /// a single profile that covers all the parameters. The profile is a
  ///  constraint on the parameters resource as a whole.
  FhirCanonical? get inputProfile;
  @override

  /// [outputProfile] Additional validation information for the out parameters
  /// - a single profile that covers all the parameters. The profile is a
  ///  constraint on the parameters resource.
  FhirCanonical? get outputProfile;
  @override

  /// [parameter] The parameters for the operation/query.
  List<OperationDefinitionParameter>? get parameter;
  @override

  /// [overload] Defines an appropriate combination of parameters to use when
  /// invoking this operation, to help code generators when generating
  ///  overloaded parameter sets for this operation.
  List<OperationDefinitionOverload>? get overload;
  @override
  @JsonKey(ignore: true)
  _$$OperationDefinitionImplCopyWith<_$OperationDefinitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OperationDefinitionParameter _$OperationDefinitionParameterFromJson(
    Map<String, dynamic> json) {
  return _OperationDefinitionParameter.fromJson(json);
}

/// @nodoc
mixin _$OperationDefinitionParameter {
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

  /// [name] The name of used to identify the parameter.
  FhirCode? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [use] Whether this is an input or an output parameter.
  FhirCode? get use => throw _privateConstructorUsedError;

  /// [useElement] Extensions for use
  @JsonKey(name: '_use')
  PrimitiveElement? get useElement => throw _privateConstructorUsedError;

  /// [min] The minimum number of times this parameter SHALL appear in the
  ///  request or response.
  FhirInteger? get min => throw _privateConstructorUsedError;

  /// [minElement] Extensions for min
  @JsonKey(name: '_min')
  PrimitiveElement? get minElement => throw _privateConstructorUsedError;

  /// [max] The maximum number of times this element is permitted to appear in
  ///  the request or response.
  String? get max => throw _privateConstructorUsedError;

  /// [maxElement] Extensions for max
  @JsonKey(name: '_max')
  PrimitiveElement? get maxElement => throw _privateConstructorUsedError;

  /// [documentation] Describes the meaning or use of this parameter.
  String? get documentation => throw _privateConstructorUsedError;

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement =>
      throw _privateConstructorUsedError;

  /// [type] The type for this parameter.
  FhirCode? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [targetProfile] Used when the type is "Reference" or "canonical", and
  /// identifies a profile structure or implementation Guide that applies to the
  /// target of the reference this parameter refers to. If any profiles are
  /// specified, then the content must conform to at least one of them. The URL
  /// can be a local reference - to a contained StructureDefinition, or a
  /// reference to another StructureDefinition or Implementation Guide by a
  /// canonical URL. When an implementation guide is specified, the target
  /// resource SHALL conform to at least one profile defined in the
  ///  implementation guide.
  List<FhirCanonical>? get targetProfile => throw _privateConstructorUsedError;

  /// [searchType] How the parameter is understood as a search parameter. This
  ///  is only used if the parameter type is 'string'.
  FhirCode? get searchType => throw _privateConstructorUsedError;

  /// [searchTypeElement] Extensions for searchType
  @JsonKey(name: '_searchType')
  PrimitiveElement? get searchTypeElement => throw _privateConstructorUsedError;

  /// [binding] Binds to a value set if this parameter is coded (code, Coding,
  ///  CodeableConcept).
  OperationDefinitionBinding? get binding => throw _privateConstructorUsedError;

  /// [referencedFrom] Identifies other resource parameters within the
  ///  operation invocation that are expected to resolve to this resource.
  List<OperationDefinitionReferencedFrom>? get referencedFrom =>
      throw _privateConstructorUsedError;

  /// [part] The parts of a nested Parameter.
  @JsonKey(name: 'part')
  List<OperationDefinitionParameter>? get part_ =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationDefinitionParameterCopyWith<OperationDefinitionParameter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationDefinitionParameterCopyWith<$Res> {
  factory $OperationDefinitionParameterCopyWith(
          OperationDefinitionParameter value,
          $Res Function(OperationDefinitionParameter) then) =
      _$OperationDefinitionParameterCopyWithImpl<$Res,
          OperationDefinitionParameter>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      FhirCode? use,
      @JsonKey(name: '_use') PrimitiveElement? useElement,
      FhirInteger? min,
      @JsonKey(name: '_min') PrimitiveElement? minElement,
      String? max,
      @JsonKey(name: '_max') PrimitiveElement? maxElement,
      String? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      List<FhirCanonical>? targetProfile,
      FhirCode? searchType,
      @JsonKey(name: '_searchType') PrimitiveElement? searchTypeElement,
      OperationDefinitionBinding? binding,
      List<OperationDefinitionReferencedFrom>? referencedFrom,
      @JsonKey(name: 'part') List<OperationDefinitionParameter>? part_});

  $OperationDefinitionBindingCopyWith<$Res>? get binding;
}

/// @nodoc
class _$OperationDefinitionParameterCopyWithImpl<$Res,
        $Val extends OperationDefinitionParameter>
    implements $OperationDefinitionParameterCopyWith<$Res> {
  _$OperationDefinitionParameterCopyWithImpl(this._value, this._then);

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
    Object? use = freezed,
    Object? useElement = freezed,
    Object? min = freezed,
    Object? minElement = freezed,
    Object? max = freezed,
    Object? maxElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? targetProfile = freezed,
    Object? searchType = freezed,
    Object? searchTypeElement = freezed,
    Object? binding = freezed,
    Object? referencedFrom = freezed,
    Object? part_ = freezed,
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
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      useElement: freezed == useElement
          ? _value.useElement
          : useElement // ignore: cast_nullable_to_non_nullable
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
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      targetProfile: freezed == targetProfile
          ? _value.targetProfile
          : targetProfile // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      searchType: freezed == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      searchTypeElement: freezed == searchTypeElement
          ? _value.searchTypeElement
          : searchTypeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      binding: freezed == binding
          ? _value.binding
          : binding // ignore: cast_nullable_to_non_nullable
              as OperationDefinitionBinding?,
      referencedFrom: freezed == referencedFrom
          ? _value.referencedFrom
          : referencedFrom // ignore: cast_nullable_to_non_nullable
              as List<OperationDefinitionReferencedFrom>?,
      part_: freezed == part_
          ? _value.part_
          : part_ // ignore: cast_nullable_to_non_nullable
              as List<OperationDefinitionParameter>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OperationDefinitionBindingCopyWith<$Res>? get binding {
    if (_value.binding == null) {
      return null;
    }

    return $OperationDefinitionBindingCopyWith<$Res>(_value.binding!, (value) {
      return _then(_value.copyWith(binding: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OperationDefinitionParameterImplCopyWith<$Res>
    implements $OperationDefinitionParameterCopyWith<$Res> {
  factory _$$OperationDefinitionParameterImplCopyWith(
          _$OperationDefinitionParameterImpl value,
          $Res Function(_$OperationDefinitionParameterImpl) then) =
      __$$OperationDefinitionParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      FhirCode? use,
      @JsonKey(name: '_use') PrimitiveElement? useElement,
      FhirInteger? min,
      @JsonKey(name: '_min') PrimitiveElement? minElement,
      String? max,
      @JsonKey(name: '_max') PrimitiveElement? maxElement,
      String? documentation,
      @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      List<FhirCanonical>? targetProfile,
      FhirCode? searchType,
      @JsonKey(name: '_searchType') PrimitiveElement? searchTypeElement,
      OperationDefinitionBinding? binding,
      List<OperationDefinitionReferencedFrom>? referencedFrom,
      @JsonKey(name: 'part') List<OperationDefinitionParameter>? part_});

  @override
  $OperationDefinitionBindingCopyWith<$Res>? get binding;
}

/// @nodoc
class __$$OperationDefinitionParameterImplCopyWithImpl<$Res>
    extends _$OperationDefinitionParameterCopyWithImpl<$Res,
        _$OperationDefinitionParameterImpl>
    implements _$$OperationDefinitionParameterImplCopyWith<$Res> {
  __$$OperationDefinitionParameterImplCopyWithImpl(
      _$OperationDefinitionParameterImpl _value,
      $Res Function(_$OperationDefinitionParameterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? use = freezed,
    Object? useElement = freezed,
    Object? min = freezed,
    Object? minElement = freezed,
    Object? max = freezed,
    Object? maxElement = freezed,
    Object? documentation = freezed,
    Object? documentationElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? targetProfile = freezed,
    Object? searchType = freezed,
    Object? searchTypeElement = freezed,
    Object? binding = freezed,
    Object? referencedFrom = freezed,
    Object? part_ = freezed,
  }) {
    return _then(_$OperationDefinitionParameterImpl(
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
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      useElement: freezed == useElement
          ? _value.useElement
          : useElement // ignore: cast_nullable_to_non_nullable
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
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      documentationElement: freezed == documentationElement
          ? _value.documentationElement
          : documentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      targetProfile: freezed == targetProfile
          ? _value._targetProfile
          : targetProfile // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      searchType: freezed == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      searchTypeElement: freezed == searchTypeElement
          ? _value.searchTypeElement
          : searchTypeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      binding: freezed == binding
          ? _value.binding
          : binding // ignore: cast_nullable_to_non_nullable
              as OperationDefinitionBinding?,
      referencedFrom: freezed == referencedFrom
          ? _value._referencedFrom
          : referencedFrom // ignore: cast_nullable_to_non_nullable
              as List<OperationDefinitionReferencedFrom>?,
      part_: freezed == part_
          ? _value._part_
          : part_ // ignore: cast_nullable_to_non_nullable
              as List<OperationDefinitionParameter>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OperationDefinitionParameterImpl extends _OperationDefinitionParameter {
  const _$OperationDefinitionParameterImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.use,
      @JsonKey(name: '_use') this.useElement,
      this.min,
      @JsonKey(name: '_min') this.minElement,
      this.max,
      @JsonKey(name: '_max') this.maxElement,
      this.documentation,
      @JsonKey(name: '_documentation') this.documentationElement,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      final List<FhirCanonical>? targetProfile,
      this.searchType,
      @JsonKey(name: '_searchType') this.searchTypeElement,
      this.binding,
      final List<OperationDefinitionReferencedFrom>? referencedFrom,
      @JsonKey(name: 'part') final List<OperationDefinitionParameter>? part_})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _targetProfile = targetProfile,
        _referencedFrom = referencedFrom,
        _part_ = part_,
        super._();

  factory _$OperationDefinitionParameterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OperationDefinitionParameterImplFromJson(json);

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

  /// [name] The name of used to identify the parameter.
  @override
  final FhirCode? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [use] Whether this is an input or an output parameter.
  @override
  final FhirCode? use;

  /// [useElement] Extensions for use
  @override
  @JsonKey(name: '_use')
  final PrimitiveElement? useElement;

  /// [min] The minimum number of times this parameter SHALL appear in the
  ///  request or response.
  @override
  final FhirInteger? min;

  /// [minElement] Extensions for min
  @override
  @JsonKey(name: '_min')
  final PrimitiveElement? minElement;

  /// [max] The maximum number of times this element is permitted to appear in
  ///  the request or response.
  @override
  final String? max;

  /// [maxElement] Extensions for max
  @override
  @JsonKey(name: '_max')
  final PrimitiveElement? maxElement;

  /// [documentation] Describes the meaning or use of this parameter.
  @override
  final String? documentation;

  /// [documentationElement] Extensions for documentation
  @override
  @JsonKey(name: '_documentation')
  final PrimitiveElement? documentationElement;

  /// [type] The type for this parameter.
  @override
  final FhirCode? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [targetProfile] Used when the type is "Reference" or "canonical", and
  /// identifies a profile structure or implementation Guide that applies to the
  /// target of the reference this parameter refers to. If any profiles are
  /// specified, then the content must conform to at least one of them. The URL
  /// can be a local reference - to a contained StructureDefinition, or a
  /// reference to another StructureDefinition or Implementation Guide by a
  /// canonical URL. When an implementation guide is specified, the target
  /// resource SHALL conform to at least one profile defined in the
  ///  implementation guide.
  final List<FhirCanonical>? _targetProfile;

  /// [targetProfile] Used when the type is "Reference" or "canonical", and
  /// identifies a profile structure or implementation Guide that applies to the
  /// target of the reference this parameter refers to. If any profiles are
  /// specified, then the content must conform to at least one of them. The URL
  /// can be a local reference - to a contained StructureDefinition, or a
  /// reference to another StructureDefinition or Implementation Guide by a
  /// canonical URL. When an implementation guide is specified, the target
  /// resource SHALL conform to at least one profile defined in the
  ///  implementation guide.
  @override
  List<FhirCanonical>? get targetProfile {
    final value = _targetProfile;
    if (value == null) return null;
    if (_targetProfile is EqualUnmodifiableListView) return _targetProfile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [searchType] How the parameter is understood as a search parameter. This
  ///  is only used if the parameter type is 'string'.
  @override
  final FhirCode? searchType;

  /// [searchTypeElement] Extensions for searchType
  @override
  @JsonKey(name: '_searchType')
  final PrimitiveElement? searchTypeElement;

  /// [binding] Binds to a value set if this parameter is coded (code, Coding,
  ///  CodeableConcept).
  @override
  final OperationDefinitionBinding? binding;

  /// [referencedFrom] Identifies other resource parameters within the
  ///  operation invocation that are expected to resolve to this resource.
  final List<OperationDefinitionReferencedFrom>? _referencedFrom;

  /// [referencedFrom] Identifies other resource parameters within the
  ///  operation invocation that are expected to resolve to this resource.
  @override
  List<OperationDefinitionReferencedFrom>? get referencedFrom {
    final value = _referencedFrom;
    if (value == null) return null;
    if (_referencedFrom is EqualUnmodifiableListView) return _referencedFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [part] The parts of a nested Parameter.
  final List<OperationDefinitionParameter>? _part_;

  /// [part] The parts of a nested Parameter.
  @override
  @JsonKey(name: 'part')
  List<OperationDefinitionParameter>? get part_ {
    final value = _part_;
    if (value == null) return null;
    if (_part_ is EqualUnmodifiableListView) return _part_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OperationDefinitionParameter(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, name: $name, nameElement: $nameElement, use: $use, useElement: $useElement, min: $min, minElement: $minElement, max: $max, maxElement: $maxElement, documentation: $documentation, documentationElement: $documentationElement, type: $type, typeElement: $typeElement, targetProfile: $targetProfile, searchType: $searchType, searchTypeElement: $searchTypeElement, binding: $binding, referencedFrom: $referencedFrom, part_: $part_)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationDefinitionParameterImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.use, use) || other.use == use) &&
            (identical(other.useElement, useElement) ||
                other.useElement == useElement) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.minElement, minElement) ||
                other.minElement == minElement) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.maxElement, maxElement) ||
                other.maxElement == maxElement) &&
            (identical(other.documentation, documentation) ||
                other.documentation == documentation) &&
            (identical(other.documentationElement, documentationElement) ||
                other.documentationElement == documentationElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            const DeepCollectionEquality()
                .equals(other._targetProfile, _targetProfile) &&
            (identical(other.searchType, searchType) ||
                other.searchType == searchType) &&
            (identical(other.searchTypeElement, searchTypeElement) ||
                other.searchTypeElement == searchTypeElement) &&
            (identical(other.binding, binding) || other.binding == binding) &&
            const DeepCollectionEquality()
                .equals(other._referencedFrom, _referencedFrom) &&
            const DeepCollectionEquality().equals(other._part_, _part_));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        name,
        nameElement,
        use,
        useElement,
        min,
        minElement,
        max,
        maxElement,
        documentation,
        documentationElement,
        type,
        typeElement,
        const DeepCollectionEquality().hash(_targetProfile),
        searchType,
        searchTypeElement,
        binding,
        const DeepCollectionEquality().hash(_referencedFrom),
        const DeepCollectionEquality().hash(_part_)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationDefinitionParameterImplCopyWith<
          _$OperationDefinitionParameterImpl>
      get copyWith => __$$OperationDefinitionParameterImplCopyWithImpl<
          _$OperationDefinitionParameterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OperationDefinitionParameterImplToJson(
      this,
    );
  }
}

abstract class _OperationDefinitionParameter
    extends OperationDefinitionParameter {
  const factory _OperationDefinitionParameter(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirCode? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      final FhirCode? use,
      @JsonKey(name: '_use') final PrimitiveElement? useElement,
      final FhirInteger? min,
      @JsonKey(name: '_min') final PrimitiveElement? minElement,
      final String? max,
      @JsonKey(name: '_max') final PrimitiveElement? maxElement,
      final String? documentation,
      @JsonKey(name: '_documentation')
      final PrimitiveElement? documentationElement,
      final FhirCode? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      final List<FhirCanonical>? targetProfile,
      final FhirCode? searchType,
      @JsonKey(name: '_searchType') final PrimitiveElement? searchTypeElement,
      final OperationDefinitionBinding? binding,
      final List<OperationDefinitionReferencedFrom>? referencedFrom,
      @JsonKey(name: 'part')
      final List<OperationDefinitionParameter>?
          part_}) = _$OperationDefinitionParameterImpl;
  const _OperationDefinitionParameter._() : super._();

  factory _OperationDefinitionParameter.fromJson(Map<String, dynamic> json) =
      _$OperationDefinitionParameterImpl.fromJson;

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

  /// [name] The name of used to identify the parameter.
  FhirCode? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [use] Whether this is an input or an output parameter.
  FhirCode? get use;
  @override

  /// [useElement] Extensions for use
  @JsonKey(name: '_use')
  PrimitiveElement? get useElement;
  @override

  /// [min] The minimum number of times this parameter SHALL appear in the
  ///  request or response.
  FhirInteger? get min;
  @override

  /// [minElement] Extensions for min
  @JsonKey(name: '_min')
  PrimitiveElement? get minElement;
  @override

  /// [max] The maximum number of times this element is permitted to appear in
  ///  the request or response.
  String? get max;
  @override

  /// [maxElement] Extensions for max
  @JsonKey(name: '_max')
  PrimitiveElement? get maxElement;
  @override

  /// [documentation] Describes the meaning or use of this parameter.
  String? get documentation;
  @override

  /// [documentationElement] Extensions for documentation
  @JsonKey(name: '_documentation')
  PrimitiveElement? get documentationElement;
  @override

  /// [type] The type for this parameter.
  FhirCode? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [targetProfile] Used when the type is "Reference" or "canonical", and
  /// identifies a profile structure or implementation Guide that applies to the
  /// target of the reference this parameter refers to. If any profiles are
  /// specified, then the content must conform to at least one of them. The URL
  /// can be a local reference - to a contained StructureDefinition, or a
  /// reference to another StructureDefinition or Implementation Guide by a
  /// canonical URL. When an implementation guide is specified, the target
  /// resource SHALL conform to at least one profile defined in the
  ///  implementation guide.
  List<FhirCanonical>? get targetProfile;
  @override

  /// [searchType] How the parameter is understood as a search parameter. This
  ///  is only used if the parameter type is 'string'.
  FhirCode? get searchType;
  @override

  /// [searchTypeElement] Extensions for searchType
  @JsonKey(name: '_searchType')
  PrimitiveElement? get searchTypeElement;
  @override

  /// [binding] Binds to a value set if this parameter is coded (code, Coding,
  ///  CodeableConcept).
  OperationDefinitionBinding? get binding;
  @override

  /// [referencedFrom] Identifies other resource parameters within the
  ///  operation invocation that are expected to resolve to this resource.
  List<OperationDefinitionReferencedFrom>? get referencedFrom;
  @override

  /// [part] The parts of a nested Parameter.
  @JsonKey(name: 'part')
  List<OperationDefinitionParameter>? get part_;
  @override
  @JsonKey(ignore: true)
  _$$OperationDefinitionParameterImplCopyWith<
          _$OperationDefinitionParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OperationDefinitionBinding _$OperationDefinitionBindingFromJson(
    Map<String, dynamic> json) {
  return _OperationDefinitionBinding.fromJson(json);
}

/// @nodoc
mixin _$OperationDefinitionBinding {
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

  /// [strength] Indicates the degree of conformance expectations associated
  /// with this binding - that is, the degree to which the provided value set
  ///  must be adhered to in the instances.
  FhirCode? get strength => throw _privateConstructorUsedError;

  /// [strengthElement] Extensions for strength
  @JsonKey(name: '_strength')
  PrimitiveElement? get strengthElement => throw _privateConstructorUsedError;

  /// [valueSet] Points to the value set or external definition (e.g. implicit
  ///  value set) that identifies the set of codes to be used.
  FhirCanonical get valueSet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationDefinitionBindingCopyWith<OperationDefinitionBinding>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationDefinitionBindingCopyWith<$Res> {
  factory $OperationDefinitionBindingCopyWith(OperationDefinitionBinding value,
          $Res Function(OperationDefinitionBinding) then) =
      _$OperationDefinitionBindingCopyWithImpl<$Res,
          OperationDefinitionBinding>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? strength,
      @JsonKey(name: '_strength') PrimitiveElement? strengthElement,
      FhirCanonical valueSet});
}

/// @nodoc
class _$OperationDefinitionBindingCopyWithImpl<$Res,
        $Val extends OperationDefinitionBinding>
    implements $OperationDefinitionBindingCopyWith<$Res> {
  _$OperationDefinitionBindingCopyWithImpl(this._value, this._then);

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
    Object? strength = freezed,
    Object? strengthElement = freezed,
    Object? valueSet = null,
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
      strength: freezed == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      strengthElement: freezed == strengthElement
          ? _value.strengthElement
          : strengthElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueSet: null == valueSet
          ? _value.valueSet
          : valueSet // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OperationDefinitionBindingImplCopyWith<$Res>
    implements $OperationDefinitionBindingCopyWith<$Res> {
  factory _$$OperationDefinitionBindingImplCopyWith(
          _$OperationDefinitionBindingImpl value,
          $Res Function(_$OperationDefinitionBindingImpl) then) =
      __$$OperationDefinitionBindingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? strength,
      @JsonKey(name: '_strength') PrimitiveElement? strengthElement,
      FhirCanonical valueSet});
}

/// @nodoc
class __$$OperationDefinitionBindingImplCopyWithImpl<$Res>
    extends _$OperationDefinitionBindingCopyWithImpl<$Res,
        _$OperationDefinitionBindingImpl>
    implements _$$OperationDefinitionBindingImplCopyWith<$Res> {
  __$$OperationDefinitionBindingImplCopyWithImpl(
      _$OperationDefinitionBindingImpl _value,
      $Res Function(_$OperationDefinitionBindingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? strength = freezed,
    Object? strengthElement = freezed,
    Object? valueSet = null,
  }) {
    return _then(_$OperationDefinitionBindingImpl(
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
      strength: freezed == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      strengthElement: freezed == strengthElement
          ? _value.strengthElement
          : strengthElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueSet: null == valueSet
          ? _value.valueSet
          : valueSet // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OperationDefinitionBindingImpl extends _OperationDefinitionBinding {
  const _$OperationDefinitionBindingImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.strength,
      @JsonKey(name: '_strength') this.strengthElement,
      required this.valueSet})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$OperationDefinitionBindingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OperationDefinitionBindingImplFromJson(json);

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

  /// [strength] Indicates the degree of conformance expectations associated
  /// with this binding - that is, the degree to which the provided value set
  ///  must be adhered to in the instances.
  @override
  final FhirCode? strength;

  /// [strengthElement] Extensions for strength
  @override
  @JsonKey(name: '_strength')
  final PrimitiveElement? strengthElement;

  /// [valueSet] Points to the value set or external definition (e.g. implicit
  ///  value set) that identifies the set of codes to be used.
  @override
  final FhirCanonical valueSet;

  @override
  String toString() {
    return 'OperationDefinitionBinding(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, strength: $strength, strengthElement: $strengthElement, valueSet: $valueSet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationDefinitionBindingImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.strength, strength) ||
                other.strength == strength) &&
            (identical(other.strengthElement, strengthElement) ||
                other.strengthElement == strengthElement) &&
            (identical(other.valueSet, valueSet) ||
                other.valueSet == valueSet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      strength,
      strengthElement,
      valueSet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationDefinitionBindingImplCopyWith<_$OperationDefinitionBindingImpl>
      get copyWith => __$$OperationDefinitionBindingImplCopyWithImpl<
          _$OperationDefinitionBindingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OperationDefinitionBindingImplToJson(
      this,
    );
  }
}

abstract class _OperationDefinitionBinding extends OperationDefinitionBinding {
  const factory _OperationDefinitionBinding(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCode? strength,
          @JsonKey(name: '_strength') final PrimitiveElement? strengthElement,
          required final FhirCanonical valueSet}) =
      _$OperationDefinitionBindingImpl;
  const _OperationDefinitionBinding._() : super._();

  factory _OperationDefinitionBinding.fromJson(Map<String, dynamic> json) =
      _$OperationDefinitionBindingImpl.fromJson;

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

  /// [strength] Indicates the degree of conformance expectations associated
  /// with this binding - that is, the degree to which the provided value set
  ///  must be adhered to in the instances.
  FhirCode? get strength;
  @override

  /// [strengthElement] Extensions for strength
  @JsonKey(name: '_strength')
  PrimitiveElement? get strengthElement;
  @override

  /// [valueSet] Points to the value set or external definition (e.g. implicit
  ///  value set) that identifies the set of codes to be used.
  FhirCanonical get valueSet;
  @override
  @JsonKey(ignore: true)
  _$$OperationDefinitionBindingImplCopyWith<_$OperationDefinitionBindingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OperationDefinitionReferencedFrom _$OperationDefinitionReferencedFromFromJson(
    Map<String, dynamic> json) {
  return _OperationDefinitionReferencedFrom.fromJson(json);
}

/// @nodoc
mixin _$OperationDefinitionReferencedFrom {
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

  /// [source] The name of the parameter or dot-separated path of parameter
  /// names pointing to the resource parameter that is expected to contain a
  ///  reference to this resource.
  String? get source => throw _privateConstructorUsedError;

  /// [sourceElement] Extensions for source
  @JsonKey(name: '_source')
  PrimitiveElement? get sourceElement => throw _privateConstructorUsedError;

  /// [sourceId] The id of the element in the referencing resource that is
  ///  expected to resolve to this resource.
  String? get sourceId => throw _privateConstructorUsedError;

  /// [sourceIdElement] Extensions for sourceId
  @JsonKey(name: '_sourceId')
  PrimitiveElement? get sourceIdElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationDefinitionReferencedFromCopyWith<OperationDefinitionReferencedFrom>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationDefinitionReferencedFromCopyWith<$Res> {
  factory $OperationDefinitionReferencedFromCopyWith(
          OperationDefinitionReferencedFrom value,
          $Res Function(OperationDefinitionReferencedFrom) then) =
      _$OperationDefinitionReferencedFromCopyWithImpl<$Res,
          OperationDefinitionReferencedFrom>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? source,
      @JsonKey(name: '_source') PrimitiveElement? sourceElement,
      String? sourceId,
      @JsonKey(name: '_sourceId') PrimitiveElement? sourceIdElement});
}

/// @nodoc
class _$OperationDefinitionReferencedFromCopyWithImpl<$Res,
        $Val extends OperationDefinitionReferencedFrom>
    implements $OperationDefinitionReferencedFromCopyWith<$Res> {
  _$OperationDefinitionReferencedFromCopyWithImpl(this._value, this._then);

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
    Object? source = freezed,
    Object? sourceElement = freezed,
    Object? sourceId = freezed,
    Object? sourceIdElement = freezed,
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
              as String?,
      sourceElement: freezed == sourceElement
          ? _value.sourceElement
          : sourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceIdElement: freezed == sourceIdElement
          ? _value.sourceIdElement
          : sourceIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OperationDefinitionReferencedFromImplCopyWith<$Res>
    implements $OperationDefinitionReferencedFromCopyWith<$Res> {
  factory _$$OperationDefinitionReferencedFromImplCopyWith(
          _$OperationDefinitionReferencedFromImpl value,
          $Res Function(_$OperationDefinitionReferencedFromImpl) then) =
      __$$OperationDefinitionReferencedFromImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? source,
      @JsonKey(name: '_source') PrimitiveElement? sourceElement,
      String? sourceId,
      @JsonKey(name: '_sourceId') PrimitiveElement? sourceIdElement});
}

/// @nodoc
class __$$OperationDefinitionReferencedFromImplCopyWithImpl<$Res>
    extends _$OperationDefinitionReferencedFromCopyWithImpl<$Res,
        _$OperationDefinitionReferencedFromImpl>
    implements _$$OperationDefinitionReferencedFromImplCopyWith<$Res> {
  __$$OperationDefinitionReferencedFromImplCopyWithImpl(
      _$OperationDefinitionReferencedFromImpl _value,
      $Res Function(_$OperationDefinitionReferencedFromImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? source = freezed,
    Object? sourceElement = freezed,
    Object? sourceId = freezed,
    Object? sourceIdElement = freezed,
  }) {
    return _then(_$OperationDefinitionReferencedFromImpl(
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
              as String?,
      sourceElement: freezed == sourceElement
          ? _value.sourceElement
          : sourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceIdElement: freezed == sourceIdElement
          ? _value.sourceIdElement
          : sourceIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OperationDefinitionReferencedFromImpl
    extends _OperationDefinitionReferencedFrom {
  const _$OperationDefinitionReferencedFromImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.source,
      @JsonKey(name: '_source') this.sourceElement,
      this.sourceId,
      @JsonKey(name: '_sourceId') this.sourceIdElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$OperationDefinitionReferencedFromImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OperationDefinitionReferencedFromImplFromJson(json);

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

  /// [source] The name of the parameter or dot-separated path of parameter
  /// names pointing to the resource parameter that is expected to contain a
  ///  reference to this resource.
  @override
  final String? source;

  /// [sourceElement] Extensions for source
  @override
  @JsonKey(name: '_source')
  final PrimitiveElement? sourceElement;

  /// [sourceId] The id of the element in the referencing resource that is
  ///  expected to resolve to this resource.
  @override
  final String? sourceId;

  /// [sourceIdElement] Extensions for sourceId
  @override
  @JsonKey(name: '_sourceId')
  final PrimitiveElement? sourceIdElement;

  @override
  String toString() {
    return 'OperationDefinitionReferencedFrom(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, source: $source, sourceElement: $sourceElement, sourceId: $sourceId, sourceIdElement: $sourceIdElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationDefinitionReferencedFromImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourceElement, sourceElement) ||
                other.sourceElement == sourceElement) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.sourceIdElement, sourceIdElement) ||
                other.sourceIdElement == sourceIdElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      source,
      sourceElement,
      sourceId,
      sourceIdElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationDefinitionReferencedFromImplCopyWith<
          _$OperationDefinitionReferencedFromImpl>
      get copyWith => __$$OperationDefinitionReferencedFromImplCopyWithImpl<
          _$OperationDefinitionReferencedFromImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OperationDefinitionReferencedFromImplToJson(
      this,
    );
  }
}

abstract class _OperationDefinitionReferencedFrom
    extends OperationDefinitionReferencedFrom {
  const factory _OperationDefinitionReferencedFrom(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final String? source,
          @JsonKey(name: '_source') final PrimitiveElement? sourceElement,
          final String? sourceId,
          @JsonKey(name: '_sourceId')
          final PrimitiveElement? sourceIdElement}) =
      _$OperationDefinitionReferencedFromImpl;
  const _OperationDefinitionReferencedFrom._() : super._();

  factory _OperationDefinitionReferencedFrom.fromJson(
          Map<String, dynamic> json) =
      _$OperationDefinitionReferencedFromImpl.fromJson;

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

  /// [source] The name of the parameter or dot-separated path of parameter
  /// names pointing to the resource parameter that is expected to contain a
  ///  reference to this resource.
  String? get source;
  @override

  /// [sourceElement] Extensions for source
  @JsonKey(name: '_source')
  PrimitiveElement? get sourceElement;
  @override

  /// [sourceId] The id of the element in the referencing resource that is
  ///  expected to resolve to this resource.
  String? get sourceId;
  @override

  /// [sourceIdElement] Extensions for sourceId
  @JsonKey(name: '_sourceId')
  PrimitiveElement? get sourceIdElement;
  @override
  @JsonKey(ignore: true)
  _$$OperationDefinitionReferencedFromImplCopyWith<
          _$OperationDefinitionReferencedFromImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OperationDefinitionOverload _$OperationDefinitionOverloadFromJson(
    Map<String, dynamic> json) {
  return _OperationDefinitionOverload.fromJson(json);
}

/// @nodoc
mixin _$OperationDefinitionOverload {
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

  /// [parameterName] Name of parameter to include in overload.
  List<String>? get parameterName => throw _privateConstructorUsedError;

  /// [parameterNameElement] Extensions for parameterName
  @JsonKey(name: '_parameterName')
  List<Element?>? get parameterNameElement =>
      throw _privateConstructorUsedError;

  /// [comment] Comments to go on overload.
  String? get comment => throw _privateConstructorUsedError;

  /// [commentElement] Extensions for comment
  @JsonKey(name: '_comment')
  PrimitiveElement? get commentElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationDefinitionOverloadCopyWith<OperationDefinitionOverload>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationDefinitionOverloadCopyWith<$Res> {
  factory $OperationDefinitionOverloadCopyWith(
          OperationDefinitionOverload value,
          $Res Function(OperationDefinitionOverload) then) =
      _$OperationDefinitionOverloadCopyWithImpl<$Res,
          OperationDefinitionOverload>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<String>? parameterName,
      @JsonKey(name: '_parameterName') List<Element?>? parameterNameElement,
      String? comment,
      @JsonKey(name: '_comment') PrimitiveElement? commentElement});
}

/// @nodoc
class _$OperationDefinitionOverloadCopyWithImpl<$Res,
        $Val extends OperationDefinitionOverload>
    implements $OperationDefinitionOverloadCopyWith<$Res> {
  _$OperationDefinitionOverloadCopyWithImpl(this._value, this._then);

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
    Object? parameterName = freezed,
    Object? parameterNameElement = freezed,
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
      parameterName: freezed == parameterName
          ? _value.parameterName
          : parameterName // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      parameterNameElement: freezed == parameterNameElement
          ? _value.parameterNameElement
          : parameterNameElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
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
abstract class _$$OperationDefinitionOverloadImplCopyWith<$Res>
    implements $OperationDefinitionOverloadCopyWith<$Res> {
  factory _$$OperationDefinitionOverloadImplCopyWith(
          _$OperationDefinitionOverloadImpl value,
          $Res Function(_$OperationDefinitionOverloadImpl) then) =
      __$$OperationDefinitionOverloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<String>? parameterName,
      @JsonKey(name: '_parameterName') List<Element?>? parameterNameElement,
      String? comment,
      @JsonKey(name: '_comment') PrimitiveElement? commentElement});
}

/// @nodoc
class __$$OperationDefinitionOverloadImplCopyWithImpl<$Res>
    extends _$OperationDefinitionOverloadCopyWithImpl<$Res,
        _$OperationDefinitionOverloadImpl>
    implements _$$OperationDefinitionOverloadImplCopyWith<$Res> {
  __$$OperationDefinitionOverloadImplCopyWithImpl(
      _$OperationDefinitionOverloadImpl _value,
      $Res Function(_$OperationDefinitionOverloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? parameterName = freezed,
    Object? parameterNameElement = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
  }) {
    return _then(_$OperationDefinitionOverloadImpl(
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
      parameterName: freezed == parameterName
          ? _value._parameterName
          : parameterName // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      parameterNameElement: freezed == parameterNameElement
          ? _value._parameterNameElement
          : parameterNameElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
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
class _$OperationDefinitionOverloadImpl extends _OperationDefinitionOverload {
  const _$OperationDefinitionOverloadImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<String>? parameterName,
      @JsonKey(name: '_parameterName')
      final List<Element?>? parameterNameElement,
      this.comment,
      @JsonKey(name: '_comment') this.commentElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _parameterName = parameterName,
        _parameterNameElement = parameterNameElement,
        super._();

  factory _$OperationDefinitionOverloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OperationDefinitionOverloadImplFromJson(json);

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

  /// [parameterName] Name of parameter to include in overload.
  final List<String>? _parameterName;

  /// [parameterName] Name of parameter to include in overload.
  @override
  List<String>? get parameterName {
    final value = _parameterName;
    if (value == null) return null;
    if (_parameterName is EqualUnmodifiableListView) return _parameterName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [parameterNameElement] Extensions for parameterName
  final List<Element?>? _parameterNameElement;

  /// [parameterNameElement] Extensions for parameterName
  @override
  @JsonKey(name: '_parameterName')
  List<Element?>? get parameterNameElement {
    final value = _parameterNameElement;
    if (value == null) return null;
    if (_parameterNameElement is EqualUnmodifiableListView)
      return _parameterNameElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [comment] Comments to go on overload.
  @override
  final String? comment;

  /// [commentElement] Extensions for comment
  @override
  @JsonKey(name: '_comment')
  final PrimitiveElement? commentElement;

  @override
  String toString() {
    return 'OperationDefinitionOverload(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, parameterName: $parameterName, parameterNameElement: $parameterNameElement, comment: $comment, commentElement: $commentElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationDefinitionOverloadImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._parameterName, _parameterName) &&
            const DeepCollectionEquality()
                .equals(other._parameterNameElement, _parameterNameElement) &&
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
      const DeepCollectionEquality().hash(_parameterName),
      const DeepCollectionEquality().hash(_parameterNameElement),
      comment,
      commentElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationDefinitionOverloadImplCopyWith<_$OperationDefinitionOverloadImpl>
      get copyWith => __$$OperationDefinitionOverloadImplCopyWithImpl<
          _$OperationDefinitionOverloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OperationDefinitionOverloadImplToJson(
      this,
    );
  }
}

abstract class _OperationDefinitionOverload
    extends OperationDefinitionOverload {
  const factory _OperationDefinitionOverload(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final List<String>? parameterName,
          @JsonKey(name: '_parameterName')
          final List<Element?>? parameterNameElement,
          final String? comment,
          @JsonKey(name: '_comment') final PrimitiveElement? commentElement}) =
      _$OperationDefinitionOverloadImpl;
  const _OperationDefinitionOverload._() : super._();

  factory _OperationDefinitionOverload.fromJson(Map<String, dynamic> json) =
      _$OperationDefinitionOverloadImpl.fromJson;

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

  /// [parameterName] Name of parameter to include in overload.
  List<String>? get parameterName;
  @override

  /// [parameterNameElement] Extensions for parameterName
  @JsonKey(name: '_parameterName')
  List<Element?>? get parameterNameElement;
  @override

  /// [comment] Comments to go on overload.
  String? get comment;
  @override

  /// [commentElement] Extensions for comment
  @JsonKey(name: '_comment')
  PrimitiveElement? get commentElement;
  @override
  @JsonKey(ignore: true)
  _$$OperationDefinitionOverloadImplCopyWith<_$OperationDefinitionOverloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}
