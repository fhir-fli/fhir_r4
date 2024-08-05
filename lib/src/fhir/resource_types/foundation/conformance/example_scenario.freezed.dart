// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'example_scenario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExampleScenario _$ExampleScenarioFromJson(Map<String, dynamic> json) {
  return _ExampleScenario.fromJson(json);
}

/// @nodoc
mixin _$ExampleScenario {
  @JsonKey(unknownEnumValue: R4ResourceType.ExampleScenario)
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

  /// [url] An absolute URI that is used to identify this example scenario when
  /// it is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// example scenario is (or will be) published. This URL can be the target of
  /// a canonical reference. It SHALL remain the same when the example scenario
  ///  is stored on different servers.
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [identifier] A formal identifier that is used to identify this example
  /// scenario when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [version] The identifier that is used to identify this version of the
  /// example scenario when it is referenced in a specification, model, design
  /// or instance. This is an arbitrary value managed by the example scenario
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There
  /// is also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  /// [name] A natural language name identifying the example scenario. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [status] The status of this example scenario. Enables tracking the
  ///  life-cycle of the content.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [experimental] A Boolean value to indicate that this example scenario is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  FhirBoolean? get experimental => throw _privateConstructorUsedError;

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement =>
      throw _privateConstructorUsedError;

  /// [date] The date  (and optionally time) when the example scenario was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  /// the substantive content of the example scenario changes. (e.g. the
  ///  'content logical definition').
  FhirDateTime? get date => throw _privateConstructorUsedError;

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [publisher] The name of the organization or individual that published the
  ///  example scenario.
  String? get publisher => throw _privateConstructorUsedError;

  /// [publisherElement] Extensions for publisher
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement => throw _privateConstructorUsedError;

  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  List<ContactDetail>? get contact => throw _privateConstructorUsedError;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate example scenario instances.
  List<UsageContext>? get useContext => throw _privateConstructorUsedError;

  /// [jurisdiction] A legal or geographic region in which the example scenario
  ///  is intended to be used.
  List<CodeableConcept>? get jurisdiction => throw _privateConstructorUsedError;

  /// [copyright] A copyright statement relating to the example scenario and/or
  /// its contents. Copyright statements are generally legal restrictions on the
  ///  use and publishing of the example scenario.
  FhirMarkdown? get copyright => throw _privateConstructorUsedError;

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement => throw _privateConstructorUsedError;

  /// [purpose] What the example scenario resource is created for. This should
  /// not be used to show the business purpose of the scenario itself, but the
  ///  purpose of documenting a scenario.
  FhirMarkdown? get purpose => throw _privateConstructorUsedError;

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement => throw _privateConstructorUsedError;

  /// [actor] Actor participating in the resource.
  List<ExampleScenarioActor>? get actor => throw _privateConstructorUsedError;

  /// [instance] Each resource and each version that is present in the
  ///  workflow.
  List<ExampleScenarioInstance>? get instance =>
      throw _privateConstructorUsedError;

  /// [process] Each major process - a group of operations.
  List<ExampleScenarioProcess>? get process =>
      throw _privateConstructorUsedError;

  /// [workflow] Another nested workflow.
  List<FhirCanonical>? get workflow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExampleScenarioCopyWith<ExampleScenario> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleScenarioCopyWith<$Res> {
  factory $ExampleScenarioCopyWith(
          ExampleScenario value, $Res Function(ExampleScenario) then) =
      _$ExampleScenarioCopyWithImpl<$Res, ExampleScenario>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ExampleScenario)
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
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      FhirBoolean? experimental,
      @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      String? publisher,
      @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
      List<ContactDetail>? contact,
      List<UsageContext>? useContext,
      List<CodeableConcept>? jurisdiction,
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
      FhirMarkdown? purpose,
      @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
      List<ExampleScenarioActor>? actor,
      List<ExampleScenarioInstance>? instance,
      List<ExampleScenarioProcess>? process,
      List<FhirCanonical>? workflow});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
}

/// @nodoc
class _$ExampleScenarioCopyWithImpl<$Res, $Val extends ExampleScenario>
    implements $ExampleScenarioCopyWith<$Res> {
  _$ExampleScenarioCopyWithImpl(this._value, this._then);

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
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? experimental = freezed,
    Object? experimentalElement = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? publisher = freezed,
    Object? publisherElement = freezed,
    Object? contact = freezed,
    Object? useContext = freezed,
    Object? jurisdiction = freezed,
    Object? copyright = freezed,
    Object? copyrightElement = freezed,
    Object? purpose = freezed,
    Object? purposeElement = freezed,
    Object? actor = freezed,
    Object? instance = freezed,
    Object? process = freezed,
    Object? workflow = freezed,
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
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      purposeElement: freezed == purposeElement
          ? _value.purposeElement
          : purposeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioActor>?,
      instance: freezed == instance
          ? _value.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioInstance>?,
      process: freezed == process
          ? _value.process
          : process // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioProcess>?,
      workflow: freezed == workflow
          ? _value.workflow
          : workflow // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$ExampleScenarioImplCopyWith<$Res>
    implements $ExampleScenarioCopyWith<$Res> {
  factory _$$ExampleScenarioImplCopyWith(_$ExampleScenarioImpl value,
          $Res Function(_$ExampleScenarioImpl) then) =
      __$$ExampleScenarioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ExampleScenario)
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
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      FhirBoolean? experimental,
      @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      String? publisher,
      @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
      List<ContactDetail>? contact,
      List<UsageContext>? useContext,
      List<CodeableConcept>? jurisdiction,
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
      FhirMarkdown? purpose,
      @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
      List<ExampleScenarioActor>? actor,
      List<ExampleScenarioInstance>? instance,
      List<ExampleScenarioProcess>? process,
      List<FhirCanonical>? workflow});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
}

/// @nodoc
class __$$ExampleScenarioImplCopyWithImpl<$Res>
    extends _$ExampleScenarioCopyWithImpl<$Res, _$ExampleScenarioImpl>
    implements _$$ExampleScenarioImplCopyWith<$Res> {
  __$$ExampleScenarioImplCopyWithImpl(
      _$ExampleScenarioImpl _value, $Res Function(_$ExampleScenarioImpl) _then)
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
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? experimental = freezed,
    Object? experimentalElement = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? publisher = freezed,
    Object? publisherElement = freezed,
    Object? contact = freezed,
    Object? useContext = freezed,
    Object? jurisdiction = freezed,
    Object? copyright = freezed,
    Object? copyrightElement = freezed,
    Object? purpose = freezed,
    Object? purposeElement = freezed,
    Object? actor = freezed,
    Object? instance = freezed,
    Object? process = freezed,
    Object? workflow = freezed,
  }) {
    return _then(_$ExampleScenarioImpl(
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
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      purposeElement: freezed == purposeElement
          ? _value.purposeElement
          : purposeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      actor: freezed == actor
          ? _value._actor
          : actor // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioActor>?,
      instance: freezed == instance
          ? _value._instance
          : instance // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioInstance>?,
      process: freezed == process
          ? _value._process
          : process // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioProcess>?,
      workflow: freezed == workflow
          ? _value._workflow
          : workflow // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExampleScenarioImpl extends _ExampleScenario {
  const _$ExampleScenarioImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.ExampleScenario)
      this.resourceType = R4ResourceType.ExampleScenario,
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
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.experimental,
      @JsonKey(name: '_experimental') this.experimentalElement,
      this.date,
      @JsonKey(name: '_date') this.dateElement,
      this.publisher,
      @JsonKey(name: '_publisher') this.publisherElement,
      final List<ContactDetail>? contact,
      final List<UsageContext>? useContext,
      final List<CodeableConcept>? jurisdiction,
      this.copyright,
      @JsonKey(name: '_copyright') this.copyrightElement,
      this.purpose,
      @JsonKey(name: '_purpose') this.purposeElement,
      final List<ExampleScenarioActor>? actor,
      final List<ExampleScenarioInstance>? instance,
      final List<ExampleScenarioProcess>? process,
      final List<FhirCanonical>? workflow})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _contact = contact,
        _useContext = useContext,
        _jurisdiction = jurisdiction,
        _actor = actor,
        _instance = instance,
        _process = process,
        _workflow = workflow,
        super._();

  factory _$ExampleScenarioImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExampleScenarioImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ExampleScenario)
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

  /// [url] An absolute URI that is used to identify this example scenario when
  /// it is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// example scenario is (or will be) published. This URL can be the target of
  /// a canonical reference. It SHALL remain the same when the example scenario
  ///  is stored on different servers.
  @override
  final FhirUri? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [identifier] A formal identifier that is used to identify this example
  /// scenario when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  final List<Identifier>? _identifier;

  /// [identifier] A formal identifier that is used to identify this example
  /// scenario when it is represented in other formats, or referenced in a
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
  /// example scenario when it is referenced in a specification, model, design
  /// or instance. This is an arbitrary value managed by the example scenario
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

  /// [name] A natural language name identifying the example scenario. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [status] The status of this example scenario. Enables tracking the
  ///  life-cycle of the content.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [experimental] A Boolean value to indicate that this example scenario is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  @override
  final FhirBoolean? experimental;

  /// [experimentalElement] Extensions for experimental
  @override
  @JsonKey(name: '_experimental')
  final PrimitiveElement? experimentalElement;

  /// [date] The date  (and optionally time) when the example scenario was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  /// the substantive content of the example scenario changes. (e.g. the
  ///  'content logical definition').
  @override
  final FhirDateTime? date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [publisher] The name of the organization or individual that published the
  ///  example scenario.
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

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate example scenario instances.
  final List<UsageContext>? _useContext;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate example scenario instances.
  @override
  List<UsageContext>? get useContext {
    final value = _useContext;
    if (value == null) return null;
    if (_useContext is EqualUnmodifiableListView) return _useContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [jurisdiction] A legal or geographic region in which the example scenario
  ///  is intended to be used.
  final List<CodeableConcept>? _jurisdiction;

  /// [jurisdiction] A legal or geographic region in which the example scenario
  ///  is intended to be used.
  @override
  List<CodeableConcept>? get jurisdiction {
    final value = _jurisdiction;
    if (value == null) return null;
    if (_jurisdiction is EqualUnmodifiableListView) return _jurisdiction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [copyright] A copyright statement relating to the example scenario and/or
  /// its contents. Copyright statements are generally legal restrictions on the
  ///  use and publishing of the example scenario.
  @override
  final FhirMarkdown? copyright;

  /// [copyrightElement] Extensions for copyright
  @override
  @JsonKey(name: '_copyright')
  final PrimitiveElement? copyrightElement;

  /// [purpose] What the example scenario resource is created for. This should
  /// not be used to show the business purpose of the scenario itself, but the
  ///  purpose of documenting a scenario.
  @override
  final FhirMarkdown? purpose;

  /// [purposeElement] Extensions for purpose
  @override
  @JsonKey(name: '_purpose')
  final PrimitiveElement? purposeElement;

  /// [actor] Actor participating in the resource.
  final List<ExampleScenarioActor>? _actor;

  /// [actor] Actor participating in the resource.
  @override
  List<ExampleScenarioActor>? get actor {
    final value = _actor;
    if (value == null) return null;
    if (_actor is EqualUnmodifiableListView) return _actor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [instance] Each resource and each version that is present in the
  ///  workflow.
  final List<ExampleScenarioInstance>? _instance;

  /// [instance] Each resource and each version that is present in the
  ///  workflow.
  @override
  List<ExampleScenarioInstance>? get instance {
    final value = _instance;
    if (value == null) return null;
    if (_instance is EqualUnmodifiableListView) return _instance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [process] Each major process - a group of operations.
  final List<ExampleScenarioProcess>? _process;

  /// [process] Each major process - a group of operations.
  @override
  List<ExampleScenarioProcess>? get process {
    final value = _process;
    if (value == null) return null;
    if (_process is EqualUnmodifiableListView) return _process;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [workflow] Another nested workflow.
  final List<FhirCanonical>? _workflow;

  /// [workflow] Another nested workflow.
  @override
  List<FhirCanonical>? get workflow {
    final value = _workflow;
    if (value == null) return null;
    if (_workflow is EqualUnmodifiableListView) return _workflow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleScenarioImpl &&
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
            const DeepCollectionEquality()
                .equals(other._useContext, _useContext) &&
            const DeepCollectionEquality()
                .equals(other._jurisdiction, _jurisdiction) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.copyrightElement, copyrightElement) ||
                other.copyrightElement == copyrightElement) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.purposeElement, purposeElement) ||
                other.purposeElement == purposeElement) &&
            const DeepCollectionEquality().equals(other._actor, _actor) &&
            const DeepCollectionEquality().equals(other._instance, _instance) &&
            const DeepCollectionEquality().equals(other._process, _process) &&
            const DeepCollectionEquality().equals(other._workflow, _workflow));
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
        status,
        statusElement,
        experimental,
        experimentalElement,
        date,
        dateElement,
        publisher,
        publisherElement,
        const DeepCollectionEquality().hash(_contact),
        const DeepCollectionEquality().hash(_useContext),
        const DeepCollectionEquality().hash(_jurisdiction),
        copyright,
        copyrightElement,
        purpose,
        purposeElement,
        const DeepCollectionEquality().hash(_actor),
        const DeepCollectionEquality().hash(_instance),
        const DeepCollectionEquality().hash(_process),
        const DeepCollectionEquality().hash(_workflow)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleScenarioImplCopyWith<_$ExampleScenarioImpl> get copyWith =>
      __$$ExampleScenarioImplCopyWithImpl<_$ExampleScenarioImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExampleScenarioImplToJson(
      this,
    );
  }
}

abstract class _ExampleScenario extends ExampleScenario {
  factory _ExampleScenario(
      {@JsonKey(unknownEnumValue: R4ResourceType.ExampleScenario)
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
      final List<UsageContext>? useContext,
      final List<CodeableConcept>? jurisdiction,
      final FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') final PrimitiveElement? copyrightElement,
      final FhirMarkdown? purpose,
      @JsonKey(name: '_purpose') final PrimitiveElement? purposeElement,
      final List<ExampleScenarioActor>? actor,
      final List<ExampleScenarioInstance>? instance,
      final List<ExampleScenarioProcess>? process,
      final List<FhirCanonical>? workflow}) = _$ExampleScenarioImpl;
  const _ExampleScenario._() : super._();

  factory _ExampleScenario.fromJson(Map<String, dynamic> json) =
      _$ExampleScenarioImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ExampleScenario)
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

  /// [url] An absolute URI that is used to identify this example scenario when
  /// it is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// example scenario is (or will be) published. This URL can be the target of
  /// a canonical reference. It SHALL remain the same when the example scenario
  ///  is stored on different servers.
  FhirUri? get url;
  @override

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override

  /// [identifier] A formal identifier that is used to identify this example
  /// scenario when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  List<Identifier>? get identifier;
  @override

  /// [version] The identifier that is used to identify this version of the
  /// example scenario when it is referenced in a specification, model, design
  /// or instance. This is an arbitrary value managed by the example scenario
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

  /// [name] A natural language name identifying the example scenario. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [status] The status of this example scenario. Enables tracking the
  ///  life-cycle of the content.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [experimental] A Boolean value to indicate that this example scenario is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  FhirBoolean? get experimental;
  @override

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement;
  @override

  /// [date] The date  (and optionally time) when the example scenario was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  /// the substantive content of the example scenario changes. (e.g. the
  ///  'content logical definition').
  FhirDateTime? get date;
  @override

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override

  /// [publisher] The name of the organization or individual that published the
  ///  example scenario.
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

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate example scenario instances.
  List<UsageContext>? get useContext;
  @override

  /// [jurisdiction] A legal or geographic region in which the example scenario
  ///  is intended to be used.
  List<CodeableConcept>? get jurisdiction;
  @override

  /// [copyright] A copyright statement relating to the example scenario and/or
  /// its contents. Copyright statements are generally legal restrictions on the
  ///  use and publishing of the example scenario.
  FhirMarkdown? get copyright;
  @override

  /// [copyrightElement] Extensions for copyright
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement;
  @override

  /// [purpose] What the example scenario resource is created for. This should
  /// not be used to show the business purpose of the scenario itself, but the
  ///  purpose of documenting a scenario.
  FhirMarkdown? get purpose;
  @override

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement;
  @override

  /// [actor] Actor participating in the resource.
  List<ExampleScenarioActor>? get actor;
  @override

  /// [instance] Each resource and each version that is present in the
  ///  workflow.
  List<ExampleScenarioInstance>? get instance;
  @override

  /// [process] Each major process - a group of operations.
  List<ExampleScenarioProcess>? get process;
  @override

  /// [workflow] Another nested workflow.
  List<FhirCanonical>? get workflow;
  @override
  @JsonKey(ignore: true)
  _$$ExampleScenarioImplCopyWith<_$ExampleScenarioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExampleScenarioActor _$ExampleScenarioActorFromJson(Map<String, dynamic> json) {
  return _ExampleScenarioActor.fromJson(json);
}

/// @nodoc
mixin _$ExampleScenarioActor {
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

  /// [actorId] ID or acronym of actor.
  String? get actorId => throw _privateConstructorUsedError;

  /// [actorIdElement] Extensions for actorId
  @JsonKey(name: '_actorId')
  PrimitiveElement? get actorIdElement => throw _privateConstructorUsedError;

  /// [type] The type of actor - person or system.
  FhirCode? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [name] The name of the actor as shown in the page.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [description] The description of the actor.
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExampleScenarioActorCopyWith<ExampleScenarioActor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleScenarioActorCopyWith<$Res> {
  factory $ExampleScenarioActorCopyWith(ExampleScenarioActor value,
          $Res Function(ExampleScenarioActor) then) =
      _$ExampleScenarioActorCopyWithImpl<$Res, ExampleScenarioActor>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? actorId,
      @JsonKey(name: '_actorId') PrimitiveElement? actorIdElement,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement});
}

/// @nodoc
class _$ExampleScenarioActorCopyWithImpl<$Res,
        $Val extends ExampleScenarioActor>
    implements $ExampleScenarioActorCopyWith<$Res> {
  _$ExampleScenarioActorCopyWithImpl(this._value, this._then);

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
    Object? actorId = freezed,
    Object? actorIdElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
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
      actorId: freezed == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String?,
      actorIdElement: freezed == actorIdElement
          ? _value.actorIdElement
          : actorIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExampleScenarioActorImplCopyWith<$Res>
    implements $ExampleScenarioActorCopyWith<$Res> {
  factory _$$ExampleScenarioActorImplCopyWith(_$ExampleScenarioActorImpl value,
          $Res Function(_$ExampleScenarioActorImpl) then) =
      __$$ExampleScenarioActorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? actorId,
      @JsonKey(name: '_actorId') PrimitiveElement? actorIdElement,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement});
}

/// @nodoc
class __$$ExampleScenarioActorImplCopyWithImpl<$Res>
    extends _$ExampleScenarioActorCopyWithImpl<$Res, _$ExampleScenarioActorImpl>
    implements _$$ExampleScenarioActorImplCopyWith<$Res> {
  __$$ExampleScenarioActorImplCopyWithImpl(_$ExampleScenarioActorImpl _value,
      $Res Function(_$ExampleScenarioActorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? actorId = freezed,
    Object? actorIdElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
  }) {
    return _then(_$ExampleScenarioActorImpl(
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
      actorId: freezed == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String?,
      actorIdElement: freezed == actorIdElement
          ? _value.actorIdElement
          : actorIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
class _$ExampleScenarioActorImpl extends _ExampleScenarioActor {
  const _$ExampleScenarioActorImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.actorId,
      @JsonKey(name: '_actorId') this.actorIdElement,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ExampleScenarioActorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExampleScenarioActorImplFromJson(json);

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

  /// [actorId] ID or acronym of actor.
  @override
  final String? actorId;

  /// [actorIdElement] Extensions for actorId
  @override
  @JsonKey(name: '_actorId')
  final PrimitiveElement? actorIdElement;

  /// [type] The type of actor - person or system.
  @override
  final FhirCode? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [name] The name of the actor as shown in the page.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [description] The description of the actor.
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
            other is _$ExampleScenarioActorImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.actorId, actorId) || other.actorId == actorId) &&
            (identical(other.actorIdElement, actorIdElement) ||
                other.actorIdElement == actorIdElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
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
      actorId,
      actorIdElement,
      type,
      typeElement,
      name,
      nameElement,
      description,
      descriptionElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleScenarioActorImplCopyWith<_$ExampleScenarioActorImpl>
      get copyWith =>
          __$$ExampleScenarioActorImplCopyWithImpl<_$ExampleScenarioActorImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExampleScenarioActorImplToJson(
      this,
    );
  }
}

abstract class _ExampleScenarioActor extends ExampleScenarioActor {
  factory _ExampleScenarioActor(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? actorId,
      @JsonKey(name: '_actorId') final PrimitiveElement? actorIdElement,
      final FhirCode? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      final String? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      final FhirMarkdown? description,
      @JsonKey(name: '_description')
      final PrimitiveElement? descriptionElement}) = _$ExampleScenarioActorImpl;
  const _ExampleScenarioActor._() : super._();

  factory _ExampleScenarioActor.fromJson(Map<String, dynamic> json) =
      _$ExampleScenarioActorImpl.fromJson;

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

  /// [actorId] ID or acronym of actor.
  String? get actorId;
  @override

  /// [actorIdElement] Extensions for actorId
  @JsonKey(name: '_actorId')
  PrimitiveElement? get actorIdElement;
  @override

  /// [type] The type of actor - person or system.
  FhirCode? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [name] The name of the actor as shown in the page.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [description] The description of the actor.
  FhirMarkdown? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override
  @JsonKey(ignore: true)
  _$$ExampleScenarioActorImplCopyWith<_$ExampleScenarioActorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExampleScenarioInstance _$ExampleScenarioInstanceFromJson(
    Map<String, dynamic> json) {
  return _ExampleScenarioInstance.fromJson(json);
}

/// @nodoc
mixin _$ExampleScenarioInstance {
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

  /// [resourceId] The id of the resource for referencing.
  String? get resourceId => throw _privateConstructorUsedError;

  /// [resourceIdElement] Extensions for resourceId
  @JsonKey(name: '_resourceId')
  PrimitiveElement? get resourceIdElement => throw _privateConstructorUsedError;

  /// [resourceType] The type of the resource.
  FhirCode? get resourceType => throw _privateConstructorUsedError;

  /// [resourceTypeElement] Extensions for resourceType
  @JsonKey(name: '_resourceType')
  PrimitiveElement? get resourceTypeElement =>
      throw _privateConstructorUsedError;

  /// [name] A short name for the resource instance.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [description] Human-friendly description of the resource instance.
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [version] A specific version of the resource.
  List<ExampleScenarioVersion>? get version =>
      throw _privateConstructorUsedError;

  /// [containedInstance] Resources contained in the instance (e.g. the
  ///  observations contained in a bundle).
  List<ExampleScenarioContainedInstance>? get containedInstance =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExampleScenarioInstanceCopyWith<ExampleScenarioInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleScenarioInstanceCopyWith<$Res> {
  factory $ExampleScenarioInstanceCopyWith(ExampleScenarioInstance value,
          $Res Function(ExampleScenarioInstance) then) =
      _$ExampleScenarioInstanceCopyWithImpl<$Res, ExampleScenarioInstance>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? resourceId,
      @JsonKey(name: '_resourceId') PrimitiveElement? resourceIdElement,
      FhirCode? resourceType,
      @JsonKey(name: '_resourceType') PrimitiveElement? resourceTypeElement,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<ExampleScenarioVersion>? version,
      List<ExampleScenarioContainedInstance>? containedInstance});
}

/// @nodoc
class _$ExampleScenarioInstanceCopyWithImpl<$Res,
        $Val extends ExampleScenarioInstance>
    implements $ExampleScenarioInstanceCopyWith<$Res> {
  _$ExampleScenarioInstanceCopyWithImpl(this._value, this._then);

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
    Object? resourceId = freezed,
    Object? resourceIdElement = freezed,
    Object? resourceType = freezed,
    Object? resourceTypeElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? version = freezed,
    Object? containedInstance = freezed,
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
      resourceId: freezed == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceIdElement: freezed == resourceIdElement
          ? _value.resourceIdElement
          : resourceIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      resourceType: freezed == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      resourceTypeElement: freezed == resourceTypeElement
          ? _value.resourceTypeElement
          : resourceTypeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioVersion>?,
      containedInstance: freezed == containedInstance
          ? _value.containedInstance
          : containedInstance // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioContainedInstance>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExampleScenarioInstanceImplCopyWith<$Res>
    implements $ExampleScenarioInstanceCopyWith<$Res> {
  factory _$$ExampleScenarioInstanceImplCopyWith(
          _$ExampleScenarioInstanceImpl value,
          $Res Function(_$ExampleScenarioInstanceImpl) then) =
      __$$ExampleScenarioInstanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? resourceId,
      @JsonKey(name: '_resourceId') PrimitiveElement? resourceIdElement,
      FhirCode? resourceType,
      @JsonKey(name: '_resourceType') PrimitiveElement? resourceTypeElement,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<ExampleScenarioVersion>? version,
      List<ExampleScenarioContainedInstance>? containedInstance});
}

/// @nodoc
class __$$ExampleScenarioInstanceImplCopyWithImpl<$Res>
    extends _$ExampleScenarioInstanceCopyWithImpl<$Res,
        _$ExampleScenarioInstanceImpl>
    implements _$$ExampleScenarioInstanceImplCopyWith<$Res> {
  __$$ExampleScenarioInstanceImplCopyWithImpl(
      _$ExampleScenarioInstanceImpl _value,
      $Res Function(_$ExampleScenarioInstanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? resourceId = freezed,
    Object? resourceIdElement = freezed,
    Object? resourceType = freezed,
    Object? resourceTypeElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? version = freezed,
    Object? containedInstance = freezed,
  }) {
    return _then(_$ExampleScenarioInstanceImpl(
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
      resourceId: freezed == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceIdElement: freezed == resourceIdElement
          ? _value.resourceIdElement
          : resourceIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      resourceType: freezed == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      resourceTypeElement: freezed == resourceTypeElement
          ? _value.resourceTypeElement
          : resourceTypeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      version: freezed == version
          ? _value._version
          : version // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioVersion>?,
      containedInstance: freezed == containedInstance
          ? _value._containedInstance
          : containedInstance // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioContainedInstance>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExampleScenarioInstanceImpl extends _ExampleScenarioInstance {
  const _$ExampleScenarioInstanceImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.resourceId,
      @JsonKey(name: '_resourceId') this.resourceIdElement,
      this.resourceType,
      @JsonKey(name: '_resourceType') this.resourceTypeElement,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      final List<ExampleScenarioVersion>? version,
      final List<ExampleScenarioContainedInstance>? containedInstance})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _version = version,
        _containedInstance = containedInstance,
        super._();

  factory _$ExampleScenarioInstanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExampleScenarioInstanceImplFromJson(json);

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

  /// [resourceId] The id of the resource for referencing.
  @override
  final String? resourceId;

  /// [resourceIdElement] Extensions for resourceId
  @override
  @JsonKey(name: '_resourceId')
  final PrimitiveElement? resourceIdElement;

  /// [resourceType] The type of the resource.
  @override
  final FhirCode? resourceType;

  /// [resourceTypeElement] Extensions for resourceType
  @override
  @JsonKey(name: '_resourceType')
  final PrimitiveElement? resourceTypeElement;

  /// [name] A short name for the resource instance.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [description] Human-friendly description of the resource instance.
  @override
  final FhirMarkdown? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [version] A specific version of the resource.
  final List<ExampleScenarioVersion>? _version;

  /// [version] A specific version of the resource.
  @override
  List<ExampleScenarioVersion>? get version {
    final value = _version;
    if (value == null) return null;
    if (_version is EqualUnmodifiableListView) return _version;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [containedInstance] Resources contained in the instance (e.g. the
  ///  observations contained in a bundle).
  final List<ExampleScenarioContainedInstance>? _containedInstance;

  /// [containedInstance] Resources contained in the instance (e.g. the
  ///  observations contained in a bundle).
  @override
  List<ExampleScenarioContainedInstance>? get containedInstance {
    final value = _containedInstance;
    if (value == null) return null;
    if (_containedInstance is EqualUnmodifiableListView)
      return _containedInstance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleScenarioInstanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.resourceId, resourceId) ||
                other.resourceId == resourceId) &&
            (identical(other.resourceIdElement, resourceIdElement) ||
                other.resourceIdElement == resourceIdElement) &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.resourceTypeElement, resourceTypeElement) ||
                other.resourceTypeElement == resourceTypeElement) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            const DeepCollectionEquality().equals(other._version, _version) &&
            const DeepCollectionEquality()
                .equals(other._containedInstance, _containedInstance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      resourceId,
      resourceIdElement,
      resourceType,
      resourceTypeElement,
      name,
      nameElement,
      description,
      descriptionElement,
      const DeepCollectionEquality().hash(_version),
      const DeepCollectionEquality().hash(_containedInstance));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleScenarioInstanceImplCopyWith<_$ExampleScenarioInstanceImpl>
      get copyWith => __$$ExampleScenarioInstanceImplCopyWithImpl<
          _$ExampleScenarioInstanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExampleScenarioInstanceImplToJson(
      this,
    );
  }
}

abstract class _ExampleScenarioInstance extends ExampleScenarioInstance {
  factory _ExampleScenarioInstance(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? resourceId,
      @JsonKey(name: '_resourceId') final PrimitiveElement? resourceIdElement,
      final FhirCode? resourceType,
      @JsonKey(name: '_resourceType')
      final PrimitiveElement? resourceTypeElement,
      final String? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final List<ExampleScenarioVersion>? version,
      final List<ExampleScenarioContainedInstance>?
          containedInstance}) = _$ExampleScenarioInstanceImpl;
  const _ExampleScenarioInstance._() : super._();

  factory _ExampleScenarioInstance.fromJson(Map<String, dynamic> json) =
      _$ExampleScenarioInstanceImpl.fromJson;

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

  /// [resourceId] The id of the resource for referencing.
  String? get resourceId;
  @override

  /// [resourceIdElement] Extensions for resourceId
  @JsonKey(name: '_resourceId')
  PrimitiveElement? get resourceIdElement;
  @override

  /// [resourceType] The type of the resource.
  FhirCode? get resourceType;
  @override

  /// [resourceTypeElement] Extensions for resourceType
  @JsonKey(name: '_resourceType')
  PrimitiveElement? get resourceTypeElement;
  @override

  /// [name] A short name for the resource instance.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [description] Human-friendly description of the resource instance.
  FhirMarkdown? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [version] A specific version of the resource.
  List<ExampleScenarioVersion>? get version;
  @override

  /// [containedInstance] Resources contained in the instance (e.g. the
  ///  observations contained in a bundle).
  List<ExampleScenarioContainedInstance>? get containedInstance;
  @override
  @JsonKey(ignore: true)
  _$$ExampleScenarioInstanceImplCopyWith<_$ExampleScenarioInstanceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExampleScenarioVersion _$ExampleScenarioVersionFromJson(
    Map<String, dynamic> json) {
  return _ExampleScenarioVersion.fromJson(json);
}

/// @nodoc
mixin _$ExampleScenarioVersion {
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

  /// [versionId] The identifier of a specific version of a resource.
  String? get versionId => throw _privateConstructorUsedError;

  /// [versionIdElement] Extensions for versionId
  @JsonKey(name: '_versionId')
  PrimitiveElement? get versionIdElement => throw _privateConstructorUsedError;

  /// [description] The description of the resource version.
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExampleScenarioVersionCopyWith<ExampleScenarioVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleScenarioVersionCopyWith<$Res> {
  factory $ExampleScenarioVersionCopyWith(ExampleScenarioVersion value,
          $Res Function(ExampleScenarioVersion) then) =
      _$ExampleScenarioVersionCopyWithImpl<$Res, ExampleScenarioVersion>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? versionId,
      @JsonKey(name: '_versionId') PrimitiveElement? versionIdElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement});
}

/// @nodoc
class _$ExampleScenarioVersionCopyWithImpl<$Res,
        $Val extends ExampleScenarioVersion>
    implements $ExampleScenarioVersionCopyWith<$Res> {
  _$ExampleScenarioVersionCopyWithImpl(this._value, this._then);

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
    Object? versionId = freezed,
    Object? versionIdElement = freezed,
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
      versionId: freezed == versionId
          ? _value.versionId
          : versionId // ignore: cast_nullable_to_non_nullable
              as String?,
      versionIdElement: freezed == versionIdElement
          ? _value.versionIdElement
          : versionIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
abstract class _$$ExampleScenarioVersionImplCopyWith<$Res>
    implements $ExampleScenarioVersionCopyWith<$Res> {
  factory _$$ExampleScenarioVersionImplCopyWith(
          _$ExampleScenarioVersionImpl value,
          $Res Function(_$ExampleScenarioVersionImpl) then) =
      __$$ExampleScenarioVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? versionId,
      @JsonKey(name: '_versionId') PrimitiveElement? versionIdElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement});
}

/// @nodoc
class __$$ExampleScenarioVersionImplCopyWithImpl<$Res>
    extends _$ExampleScenarioVersionCopyWithImpl<$Res,
        _$ExampleScenarioVersionImpl>
    implements _$$ExampleScenarioVersionImplCopyWith<$Res> {
  __$$ExampleScenarioVersionImplCopyWithImpl(
      _$ExampleScenarioVersionImpl _value,
      $Res Function(_$ExampleScenarioVersionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? versionId = freezed,
    Object? versionIdElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
  }) {
    return _then(_$ExampleScenarioVersionImpl(
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
      versionId: freezed == versionId
          ? _value.versionId
          : versionId // ignore: cast_nullable_to_non_nullable
              as String?,
      versionIdElement: freezed == versionIdElement
          ? _value.versionIdElement
          : versionIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
class _$ExampleScenarioVersionImpl extends _ExampleScenarioVersion {
  const _$ExampleScenarioVersionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.versionId,
      @JsonKey(name: '_versionId') this.versionIdElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ExampleScenarioVersionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExampleScenarioVersionImplFromJson(json);

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

  /// [versionId] The identifier of a specific version of a resource.
  @override
  final String? versionId;

  /// [versionIdElement] Extensions for versionId
  @override
  @JsonKey(name: '_versionId')
  final PrimitiveElement? versionIdElement;

  /// [description] The description of the resource version.
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
            other is _$ExampleScenarioVersionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.versionId, versionId) ||
                other.versionId == versionId) &&
            (identical(other.versionIdElement, versionIdElement) ||
                other.versionIdElement == versionIdElement) &&
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
      versionId,
      versionIdElement,
      description,
      descriptionElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleScenarioVersionImplCopyWith<_$ExampleScenarioVersionImpl>
      get copyWith => __$$ExampleScenarioVersionImplCopyWithImpl<
          _$ExampleScenarioVersionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExampleScenarioVersionImplToJson(
      this,
    );
  }
}

abstract class _ExampleScenarioVersion extends ExampleScenarioVersion {
  factory _ExampleScenarioVersion(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final String? versionId,
          @JsonKey(name: '_versionId') final PrimitiveElement? versionIdElement,
          final FhirMarkdown? description,
          @JsonKey(name: '_description')
          final PrimitiveElement? descriptionElement}) =
      _$ExampleScenarioVersionImpl;
  const _ExampleScenarioVersion._() : super._();

  factory _ExampleScenarioVersion.fromJson(Map<String, dynamic> json) =
      _$ExampleScenarioVersionImpl.fromJson;

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

  /// [versionId] The identifier of a specific version of a resource.
  String? get versionId;
  @override

  /// [versionIdElement] Extensions for versionId
  @JsonKey(name: '_versionId')
  PrimitiveElement? get versionIdElement;
  @override

  /// [description] The description of the resource version.
  FhirMarkdown? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override
  @JsonKey(ignore: true)
  _$$ExampleScenarioVersionImplCopyWith<_$ExampleScenarioVersionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExampleScenarioContainedInstance _$ExampleScenarioContainedInstanceFromJson(
    Map<String, dynamic> json) {
  return _ExampleScenarioContainedInstance.fromJson(json);
}

/// @nodoc
mixin _$ExampleScenarioContainedInstance {
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

  /// [resourceId] Each resource contained in the instance.
  String? get resourceId => throw _privateConstructorUsedError;

  /// [resourceIdElement] Extensions for resourceId
  @JsonKey(name: '_resourceId')
  PrimitiveElement? get resourceIdElement => throw _privateConstructorUsedError;

  /// [versionId] A specific version of a resource contained in the instance.
  String? get versionId => throw _privateConstructorUsedError;

  /// [versionIdElement] Extensions for versionId
  @JsonKey(name: '_versionId')
  PrimitiveElement? get versionIdElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExampleScenarioContainedInstanceCopyWith<ExampleScenarioContainedInstance>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleScenarioContainedInstanceCopyWith<$Res> {
  factory $ExampleScenarioContainedInstanceCopyWith(
          ExampleScenarioContainedInstance value,
          $Res Function(ExampleScenarioContainedInstance) then) =
      _$ExampleScenarioContainedInstanceCopyWithImpl<$Res,
          ExampleScenarioContainedInstance>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? resourceId,
      @JsonKey(name: '_resourceId') PrimitiveElement? resourceIdElement,
      String? versionId,
      @JsonKey(name: '_versionId') PrimitiveElement? versionIdElement});
}

/// @nodoc
class _$ExampleScenarioContainedInstanceCopyWithImpl<$Res,
        $Val extends ExampleScenarioContainedInstance>
    implements $ExampleScenarioContainedInstanceCopyWith<$Res> {
  _$ExampleScenarioContainedInstanceCopyWithImpl(this._value, this._then);

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
    Object? resourceId = freezed,
    Object? resourceIdElement = freezed,
    Object? versionId = freezed,
    Object? versionIdElement = freezed,
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
      resourceId: freezed == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceIdElement: freezed == resourceIdElement
          ? _value.resourceIdElement
          : resourceIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      versionId: freezed == versionId
          ? _value.versionId
          : versionId // ignore: cast_nullable_to_non_nullable
              as String?,
      versionIdElement: freezed == versionIdElement
          ? _value.versionIdElement
          : versionIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExampleScenarioContainedInstanceImplCopyWith<$Res>
    implements $ExampleScenarioContainedInstanceCopyWith<$Res> {
  factory _$$ExampleScenarioContainedInstanceImplCopyWith(
          _$ExampleScenarioContainedInstanceImpl value,
          $Res Function(_$ExampleScenarioContainedInstanceImpl) then) =
      __$$ExampleScenarioContainedInstanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? resourceId,
      @JsonKey(name: '_resourceId') PrimitiveElement? resourceIdElement,
      String? versionId,
      @JsonKey(name: '_versionId') PrimitiveElement? versionIdElement});
}

/// @nodoc
class __$$ExampleScenarioContainedInstanceImplCopyWithImpl<$Res>
    extends _$ExampleScenarioContainedInstanceCopyWithImpl<$Res,
        _$ExampleScenarioContainedInstanceImpl>
    implements _$$ExampleScenarioContainedInstanceImplCopyWith<$Res> {
  __$$ExampleScenarioContainedInstanceImplCopyWithImpl(
      _$ExampleScenarioContainedInstanceImpl _value,
      $Res Function(_$ExampleScenarioContainedInstanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? resourceId = freezed,
    Object? resourceIdElement = freezed,
    Object? versionId = freezed,
    Object? versionIdElement = freezed,
  }) {
    return _then(_$ExampleScenarioContainedInstanceImpl(
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
      resourceId: freezed == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceIdElement: freezed == resourceIdElement
          ? _value.resourceIdElement
          : resourceIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      versionId: freezed == versionId
          ? _value.versionId
          : versionId // ignore: cast_nullable_to_non_nullable
              as String?,
      versionIdElement: freezed == versionIdElement
          ? _value.versionIdElement
          : versionIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExampleScenarioContainedInstanceImpl
    extends _ExampleScenarioContainedInstance {
  const _$ExampleScenarioContainedInstanceImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.resourceId,
      @JsonKey(name: '_resourceId') this.resourceIdElement,
      this.versionId,
      @JsonKey(name: '_versionId') this.versionIdElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ExampleScenarioContainedInstanceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ExampleScenarioContainedInstanceImplFromJson(json);

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

  /// [resourceId] Each resource contained in the instance.
  @override
  final String? resourceId;

  /// [resourceIdElement] Extensions for resourceId
  @override
  @JsonKey(name: '_resourceId')
  final PrimitiveElement? resourceIdElement;

  /// [versionId] A specific version of a resource contained in the instance.
  @override
  final String? versionId;

  /// [versionIdElement] Extensions for versionId
  @override
  @JsonKey(name: '_versionId')
  final PrimitiveElement? versionIdElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleScenarioContainedInstanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.resourceId, resourceId) ||
                other.resourceId == resourceId) &&
            (identical(other.resourceIdElement, resourceIdElement) ||
                other.resourceIdElement == resourceIdElement) &&
            (identical(other.versionId, versionId) ||
                other.versionId == versionId) &&
            (identical(other.versionIdElement, versionIdElement) ||
                other.versionIdElement == versionIdElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      resourceId,
      resourceIdElement,
      versionId,
      versionIdElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleScenarioContainedInstanceImplCopyWith<
          _$ExampleScenarioContainedInstanceImpl>
      get copyWith => __$$ExampleScenarioContainedInstanceImplCopyWithImpl<
          _$ExampleScenarioContainedInstanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExampleScenarioContainedInstanceImplToJson(
      this,
    );
  }
}

abstract class _ExampleScenarioContainedInstance
    extends ExampleScenarioContainedInstance {
  factory _ExampleScenarioContainedInstance(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? resourceId,
      @JsonKey(name: '_resourceId') final PrimitiveElement? resourceIdElement,
      final String? versionId,
      @JsonKey(name: '_versionId')
      final PrimitiveElement?
          versionIdElement}) = _$ExampleScenarioContainedInstanceImpl;
  const _ExampleScenarioContainedInstance._() : super._();

  factory _ExampleScenarioContainedInstance.fromJson(
          Map<String, dynamic> json) =
      _$ExampleScenarioContainedInstanceImpl.fromJson;

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

  /// [resourceId] Each resource contained in the instance.
  String? get resourceId;
  @override

  /// [resourceIdElement] Extensions for resourceId
  @JsonKey(name: '_resourceId')
  PrimitiveElement? get resourceIdElement;
  @override

  /// [versionId] A specific version of a resource contained in the instance.
  String? get versionId;
  @override

  /// [versionIdElement] Extensions for versionId
  @JsonKey(name: '_versionId')
  PrimitiveElement? get versionIdElement;
  @override
  @JsonKey(ignore: true)
  _$$ExampleScenarioContainedInstanceImplCopyWith<
          _$ExampleScenarioContainedInstanceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExampleScenarioProcess _$ExampleScenarioProcessFromJson(
    Map<String, dynamic> json) {
  return _ExampleScenarioProcess.fromJson(json);
}

/// @nodoc
mixin _$ExampleScenarioProcess {
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

  /// [title] The diagram title of the group of operations.
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;

  /// [description] A longer description of the group of operations.
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [preConditions] Description of initial status before the process starts.
  FhirMarkdown? get preConditions => throw _privateConstructorUsedError;

  /// [preConditionsElement] Extensions for preConditions
  @JsonKey(name: '_preConditions')
  PrimitiveElement? get preConditionsElement =>
      throw _privateConstructorUsedError;

  /// [postConditions] Description of final status after the process ends.
  FhirMarkdown? get postConditions => throw _privateConstructorUsedError;

  /// [postConditionsElement] Extensions for postConditions
  @JsonKey(name: '_postConditions')
  PrimitiveElement? get postConditionsElement =>
      throw _privateConstructorUsedError;

  /// [step] Each step of the process.
  List<ExampleScenarioStep>? get step => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExampleScenarioProcessCopyWith<ExampleScenarioProcess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleScenarioProcessCopyWith<$Res> {
  factory $ExampleScenarioProcessCopyWith(ExampleScenarioProcess value,
          $Res Function(ExampleScenarioProcess) then) =
      _$ExampleScenarioProcessCopyWithImpl<$Res, ExampleScenarioProcess>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirMarkdown? preConditions,
      @JsonKey(name: '_preConditions') PrimitiveElement? preConditionsElement,
      FhirMarkdown? postConditions,
      @JsonKey(name: '_postConditions') PrimitiveElement? postConditionsElement,
      List<ExampleScenarioStep>? step});
}

/// @nodoc
class _$ExampleScenarioProcessCopyWithImpl<$Res,
        $Val extends ExampleScenarioProcess>
    implements $ExampleScenarioProcessCopyWith<$Res> {
  _$ExampleScenarioProcessCopyWithImpl(this._value, this._then);

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
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? preConditions = freezed,
    Object? preConditionsElement = freezed,
    Object? postConditions = freezed,
    Object? postConditionsElement = freezed,
    Object? step = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      preConditions: freezed == preConditions
          ? _value.preConditions
          : preConditions // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      preConditionsElement: freezed == preConditionsElement
          ? _value.preConditionsElement
          : preConditionsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      postConditions: freezed == postConditions
          ? _value.postConditions
          : postConditions // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      postConditionsElement: freezed == postConditionsElement
          ? _value.postConditionsElement
          : postConditionsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      step: freezed == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioStep>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExampleScenarioProcessImplCopyWith<$Res>
    implements $ExampleScenarioProcessCopyWith<$Res> {
  factory _$$ExampleScenarioProcessImplCopyWith(
          _$ExampleScenarioProcessImpl value,
          $Res Function(_$ExampleScenarioProcessImpl) then) =
      __$$ExampleScenarioProcessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirMarkdown? preConditions,
      @JsonKey(name: '_preConditions') PrimitiveElement? preConditionsElement,
      FhirMarkdown? postConditions,
      @JsonKey(name: '_postConditions') PrimitiveElement? postConditionsElement,
      List<ExampleScenarioStep>? step});
}

/// @nodoc
class __$$ExampleScenarioProcessImplCopyWithImpl<$Res>
    extends _$ExampleScenarioProcessCopyWithImpl<$Res,
        _$ExampleScenarioProcessImpl>
    implements _$$ExampleScenarioProcessImplCopyWith<$Res> {
  __$$ExampleScenarioProcessImplCopyWithImpl(
      _$ExampleScenarioProcessImpl _value,
      $Res Function(_$ExampleScenarioProcessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? preConditions = freezed,
    Object? preConditionsElement = freezed,
    Object? postConditions = freezed,
    Object? postConditionsElement = freezed,
    Object? step = freezed,
  }) {
    return _then(_$ExampleScenarioProcessImpl(
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      preConditions: freezed == preConditions
          ? _value.preConditions
          : preConditions // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      preConditionsElement: freezed == preConditionsElement
          ? _value.preConditionsElement
          : preConditionsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      postConditions: freezed == postConditions
          ? _value.postConditions
          : postConditions // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      postConditionsElement: freezed == postConditionsElement
          ? _value.postConditionsElement
          : postConditionsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      step: freezed == step
          ? _value._step
          : step // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioStep>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExampleScenarioProcessImpl extends _ExampleScenarioProcess {
  const _$ExampleScenarioProcessImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.title,
      @JsonKey(name: '_title') this.titleElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.preConditions,
      @JsonKey(name: '_preConditions') this.preConditionsElement,
      this.postConditions,
      @JsonKey(name: '_postConditions') this.postConditionsElement,
      final List<ExampleScenarioStep>? step})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _step = step,
        super._();

  factory _$ExampleScenarioProcessImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExampleScenarioProcessImplFromJson(json);

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

  /// [title] The diagram title of the group of operations.
  @override
  final String? title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;

  /// [description] A longer description of the group of operations.
  @override
  final FhirMarkdown? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [preConditions] Description of initial status before the process starts.
  @override
  final FhirMarkdown? preConditions;

  /// [preConditionsElement] Extensions for preConditions
  @override
  @JsonKey(name: '_preConditions')
  final PrimitiveElement? preConditionsElement;

  /// [postConditions] Description of final status after the process ends.
  @override
  final FhirMarkdown? postConditions;

  /// [postConditionsElement] Extensions for postConditions
  @override
  @JsonKey(name: '_postConditions')
  final PrimitiveElement? postConditionsElement;

  /// [step] Each step of the process.
  final List<ExampleScenarioStep>? _step;

  /// [step] Each step of the process.
  @override
  List<ExampleScenarioStep>? get step {
    final value = _step;
    if (value == null) return null;
    if (_step is EqualUnmodifiableListView) return _step;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleScenarioProcessImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleElement, titleElement) ||
                other.titleElement == titleElement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.preConditions, preConditions) ||
                other.preConditions == preConditions) &&
            (identical(other.preConditionsElement, preConditionsElement) ||
                other.preConditionsElement == preConditionsElement) &&
            (identical(other.postConditions, postConditions) ||
                other.postConditions == postConditions) &&
            (identical(other.postConditionsElement, postConditionsElement) ||
                other.postConditionsElement == postConditionsElement) &&
            const DeepCollectionEquality().equals(other._step, _step));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      title,
      titleElement,
      description,
      descriptionElement,
      preConditions,
      preConditionsElement,
      postConditions,
      postConditionsElement,
      const DeepCollectionEquality().hash(_step));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleScenarioProcessImplCopyWith<_$ExampleScenarioProcessImpl>
      get copyWith => __$$ExampleScenarioProcessImplCopyWithImpl<
          _$ExampleScenarioProcessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExampleScenarioProcessImplToJson(
      this,
    );
  }
}

abstract class _ExampleScenarioProcess extends ExampleScenarioProcess {
  factory _ExampleScenarioProcess(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? title,
      @JsonKey(name: '_title') final PrimitiveElement? titleElement,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final FhirMarkdown? preConditions,
      @JsonKey(name: '_preConditions')
      final PrimitiveElement? preConditionsElement,
      final FhirMarkdown? postConditions,
      @JsonKey(name: '_postConditions')
      final PrimitiveElement? postConditionsElement,
      final List<ExampleScenarioStep>? step}) = _$ExampleScenarioProcessImpl;
  const _ExampleScenarioProcess._() : super._();

  factory _ExampleScenarioProcess.fromJson(Map<String, dynamic> json) =
      _$ExampleScenarioProcessImpl.fromJson;

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

  /// [title] The diagram title of the group of operations.
  String? get title;
  @override

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;
  @override

  /// [description] A longer description of the group of operations.
  FhirMarkdown? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [preConditions] Description of initial status before the process starts.
  FhirMarkdown? get preConditions;
  @override

  /// [preConditionsElement] Extensions for preConditions
  @JsonKey(name: '_preConditions')
  PrimitiveElement? get preConditionsElement;
  @override

  /// [postConditions] Description of final status after the process ends.
  FhirMarkdown? get postConditions;
  @override

  /// [postConditionsElement] Extensions for postConditions
  @JsonKey(name: '_postConditions')
  PrimitiveElement? get postConditionsElement;
  @override

  /// [step] Each step of the process.
  List<ExampleScenarioStep>? get step;
  @override
  @JsonKey(ignore: true)
  _$$ExampleScenarioProcessImplCopyWith<_$ExampleScenarioProcessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExampleScenarioStep _$ExampleScenarioStepFromJson(Map<String, dynamic> json) {
  return _ExampleScenarioStep.fromJson(json);
}

/// @nodoc
mixin _$ExampleScenarioStep {
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

  /// [process] Nested process.
  List<ExampleScenarioProcess>? get process =>
      throw _privateConstructorUsedError;

  /// [pause] If there is a pause in the flow.
  FhirBoolean? get pause => throw _privateConstructorUsedError;

  /// [pauseElement] Extensions for pause
  @JsonKey(name: '_pause')
  PrimitiveElement? get pauseElement => throw _privateConstructorUsedError;

  /// [operation] Each interaction or action.
  ExampleScenarioOperation? get operation => throw _privateConstructorUsedError;

  /// [alternative] Indicates an alternative step that can be taken instead of
  ///  the operations on the base step in exceptional/atypical circumstances.
  List<ExampleScenarioAlternative>? get alternative =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExampleScenarioStepCopyWith<ExampleScenarioStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleScenarioStepCopyWith<$Res> {
  factory $ExampleScenarioStepCopyWith(
          ExampleScenarioStep value, $Res Function(ExampleScenarioStep) then) =
      _$ExampleScenarioStepCopyWithImpl<$Res, ExampleScenarioStep>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<ExampleScenarioProcess>? process,
      FhirBoolean? pause,
      @JsonKey(name: '_pause') PrimitiveElement? pauseElement,
      ExampleScenarioOperation? operation,
      List<ExampleScenarioAlternative>? alternative});

  $ExampleScenarioOperationCopyWith<$Res>? get operation;
}

/// @nodoc
class _$ExampleScenarioStepCopyWithImpl<$Res, $Val extends ExampleScenarioStep>
    implements $ExampleScenarioStepCopyWith<$Res> {
  _$ExampleScenarioStepCopyWithImpl(this._value, this._then);

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
    Object? process = freezed,
    Object? pause = freezed,
    Object? pauseElement = freezed,
    Object? operation = freezed,
    Object? alternative = freezed,
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
      process: freezed == process
          ? _value.process
          : process // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioProcess>?,
      pause: freezed == pause
          ? _value.pause
          : pause // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      pauseElement: freezed == pauseElement
          ? _value.pauseElement
          : pauseElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as ExampleScenarioOperation?,
      alternative: freezed == alternative
          ? _value.alternative
          : alternative // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioAlternative>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExampleScenarioOperationCopyWith<$Res>? get operation {
    if (_value.operation == null) {
      return null;
    }

    return $ExampleScenarioOperationCopyWith<$Res>(_value.operation!, (value) {
      return _then(_value.copyWith(operation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExampleScenarioStepImplCopyWith<$Res>
    implements $ExampleScenarioStepCopyWith<$Res> {
  factory _$$ExampleScenarioStepImplCopyWith(_$ExampleScenarioStepImpl value,
          $Res Function(_$ExampleScenarioStepImpl) then) =
      __$$ExampleScenarioStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<ExampleScenarioProcess>? process,
      FhirBoolean? pause,
      @JsonKey(name: '_pause') PrimitiveElement? pauseElement,
      ExampleScenarioOperation? operation,
      List<ExampleScenarioAlternative>? alternative});

  @override
  $ExampleScenarioOperationCopyWith<$Res>? get operation;
}

/// @nodoc
class __$$ExampleScenarioStepImplCopyWithImpl<$Res>
    extends _$ExampleScenarioStepCopyWithImpl<$Res, _$ExampleScenarioStepImpl>
    implements _$$ExampleScenarioStepImplCopyWith<$Res> {
  __$$ExampleScenarioStepImplCopyWithImpl(_$ExampleScenarioStepImpl _value,
      $Res Function(_$ExampleScenarioStepImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? process = freezed,
    Object? pause = freezed,
    Object? pauseElement = freezed,
    Object? operation = freezed,
    Object? alternative = freezed,
  }) {
    return _then(_$ExampleScenarioStepImpl(
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
      process: freezed == process
          ? _value._process
          : process // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioProcess>?,
      pause: freezed == pause
          ? _value.pause
          : pause // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      pauseElement: freezed == pauseElement
          ? _value.pauseElement
          : pauseElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as ExampleScenarioOperation?,
      alternative: freezed == alternative
          ? _value._alternative
          : alternative // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioAlternative>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExampleScenarioStepImpl extends _ExampleScenarioStep {
  const _$ExampleScenarioStepImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<ExampleScenarioProcess>? process,
      this.pause,
      @JsonKey(name: '_pause') this.pauseElement,
      this.operation,
      final List<ExampleScenarioAlternative>? alternative})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _process = process,
        _alternative = alternative,
        super._();

  factory _$ExampleScenarioStepImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExampleScenarioStepImplFromJson(json);

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

  /// [process] Nested process.
  final List<ExampleScenarioProcess>? _process;

  /// [process] Nested process.
  @override
  List<ExampleScenarioProcess>? get process {
    final value = _process;
    if (value == null) return null;
    if (_process is EqualUnmodifiableListView) return _process;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [pause] If there is a pause in the flow.
  @override
  final FhirBoolean? pause;

  /// [pauseElement] Extensions for pause
  @override
  @JsonKey(name: '_pause')
  final PrimitiveElement? pauseElement;

  /// [operation] Each interaction or action.
  @override
  final ExampleScenarioOperation? operation;

  /// [alternative] Indicates an alternative step that can be taken instead of
  ///  the operations on the base step in exceptional/atypical circumstances.
  final List<ExampleScenarioAlternative>? _alternative;

  /// [alternative] Indicates an alternative step that can be taken instead of
  ///  the operations on the base step in exceptional/atypical circumstances.
  @override
  List<ExampleScenarioAlternative>? get alternative {
    final value = _alternative;
    if (value == null) return null;
    if (_alternative is EqualUnmodifiableListView) return _alternative;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleScenarioStepImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other._process, _process) &&
            (identical(other.pause, pause) || other.pause == pause) &&
            (identical(other.pauseElement, pauseElement) ||
                other.pauseElement == pauseElement) &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            const DeepCollectionEquality()
                .equals(other._alternative, _alternative));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_process),
      pause,
      pauseElement,
      operation,
      const DeepCollectionEquality().hash(_alternative));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleScenarioStepImplCopyWith<_$ExampleScenarioStepImpl> get copyWith =>
      __$$ExampleScenarioStepImplCopyWithImpl<_$ExampleScenarioStepImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExampleScenarioStepImplToJson(
      this,
    );
  }
}

abstract class _ExampleScenarioStep extends ExampleScenarioStep {
  factory _ExampleScenarioStep(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final List<ExampleScenarioProcess>? process,
          final FhirBoolean? pause,
          @JsonKey(name: '_pause') final PrimitiveElement? pauseElement,
          final ExampleScenarioOperation? operation,
          final List<ExampleScenarioAlternative>? alternative}) =
      _$ExampleScenarioStepImpl;
  const _ExampleScenarioStep._() : super._();

  factory _ExampleScenarioStep.fromJson(Map<String, dynamic> json) =
      _$ExampleScenarioStepImpl.fromJson;

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

  /// [process] Nested process.
  List<ExampleScenarioProcess>? get process;
  @override

  /// [pause] If there is a pause in the flow.
  FhirBoolean? get pause;
  @override

  /// [pauseElement] Extensions for pause
  @JsonKey(name: '_pause')
  PrimitiveElement? get pauseElement;
  @override

  /// [operation] Each interaction or action.
  ExampleScenarioOperation? get operation;
  @override

  /// [alternative] Indicates an alternative step that can be taken instead of
  ///  the operations on the base step in exceptional/atypical circumstances.
  List<ExampleScenarioAlternative>? get alternative;
  @override
  @JsonKey(ignore: true)
  _$$ExampleScenarioStepImplCopyWith<_$ExampleScenarioStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExampleScenarioOperation _$ExampleScenarioOperationFromJson(
    Map<String, dynamic> json) {
  return _ExampleScenarioOperation.fromJson(json);
}

/// @nodoc
mixin _$ExampleScenarioOperation {
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

  /// [number] The sequential number of the interaction, e.g. 1.2.5.
  String? get number => throw _privateConstructorUsedError;

  /// [numberElement] Extensions for number
  @JsonKey(name: '_number')
  PrimitiveElement? get numberElement => throw _privateConstructorUsedError;

  /// [type] The type of operation - CRUD.
  String? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [name] The human-friendly name of the interaction.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [initiator] Who starts the transaction.
  String? get initiator => throw _privateConstructorUsedError;

  /// [initiatorElement] Extensions for initiator
  @JsonKey(name: '_initiator')
  PrimitiveElement? get initiatorElement => throw _privateConstructorUsedError;

  /// [receiver] Who receives the transaction.
  String? get receiver => throw _privateConstructorUsedError;

  /// [receiverElement] Extensions for receiver
  @JsonKey(name: '_receiver')
  PrimitiveElement? get receiverElement => throw _privateConstructorUsedError;

  /// [description] A comment to be inserted in the diagram.
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [initiatorActive] Whether the initiator is deactivated right after the
  ///  transaction.
  FhirBoolean? get initiatorActive => throw _privateConstructorUsedError;

  /// [initiatorActiveElement] Extensions for initiatorActive
  @JsonKey(name: '_initiatorActive')
  PrimitiveElement? get initiatorActiveElement =>
      throw _privateConstructorUsedError;

  /// [receiverActive] Whether the receiver is deactivated right after the
  ///  transaction.
  FhirBoolean? get receiverActive => throw _privateConstructorUsedError;

  /// [receiverActiveElement] Extensions for receiverActive
  @JsonKey(name: '_receiverActive')
  PrimitiveElement? get receiverActiveElement =>
      throw _privateConstructorUsedError;

  /// [request] Each resource instance used by the initiator.
  ExampleScenarioContainedInstance? get request =>
      throw _privateConstructorUsedError;

  /// [response] Each resource instance used by the responder.
  ExampleScenarioContainedInstance? get response =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExampleScenarioOperationCopyWith<ExampleScenarioOperation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleScenarioOperationCopyWith<$Res> {
  factory $ExampleScenarioOperationCopyWith(ExampleScenarioOperation value,
          $Res Function(ExampleScenarioOperation) then) =
      _$ExampleScenarioOperationCopyWithImpl<$Res, ExampleScenarioOperation>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? number,
      @JsonKey(name: '_number') PrimitiveElement? numberElement,
      String? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? initiator,
      @JsonKey(name: '_initiator') PrimitiveElement? initiatorElement,
      String? receiver,
      @JsonKey(name: '_receiver') PrimitiveElement? receiverElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirBoolean? initiatorActive,
      @JsonKey(name: '_initiatorActive')
      PrimitiveElement? initiatorActiveElement,
      FhirBoolean? receiverActive,
      @JsonKey(name: '_receiverActive') PrimitiveElement? receiverActiveElement,
      ExampleScenarioContainedInstance? request,
      ExampleScenarioContainedInstance? response});

  $ExampleScenarioContainedInstanceCopyWith<$Res>? get request;
  $ExampleScenarioContainedInstanceCopyWith<$Res>? get response;
}

/// @nodoc
class _$ExampleScenarioOperationCopyWithImpl<$Res,
        $Val extends ExampleScenarioOperation>
    implements $ExampleScenarioOperationCopyWith<$Res> {
  _$ExampleScenarioOperationCopyWithImpl(this._value, this._then);

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
    Object? number = freezed,
    Object? numberElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? initiator = freezed,
    Object? initiatorElement = freezed,
    Object? receiver = freezed,
    Object? receiverElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? initiatorActive = freezed,
    Object? initiatorActiveElement = freezed,
    Object? receiverActive = freezed,
    Object? receiverActiveElement = freezed,
    Object? request = freezed,
    Object? response = freezed,
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
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      numberElement: freezed == numberElement
          ? _value.numberElement
          : numberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      initiator: freezed == initiator
          ? _value.initiator
          : initiator // ignore: cast_nullable_to_non_nullable
              as String?,
      initiatorElement: freezed == initiatorElement
          ? _value.initiatorElement
          : initiatorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverElement: freezed == receiverElement
          ? _value.receiverElement
          : receiverElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      initiatorActive: freezed == initiatorActive
          ? _value.initiatorActive
          : initiatorActive // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      initiatorActiveElement: freezed == initiatorActiveElement
          ? _value.initiatorActiveElement
          : initiatorActiveElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      receiverActive: freezed == receiverActive
          ? _value.receiverActive
          : receiverActive // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      receiverActiveElement: freezed == receiverActiveElement
          ? _value.receiverActiveElement
          : receiverActiveElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ExampleScenarioContainedInstance?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ExampleScenarioContainedInstance?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExampleScenarioContainedInstanceCopyWith<$Res>? get request {
    if (_value.request == null) {
      return null;
    }

    return $ExampleScenarioContainedInstanceCopyWith<$Res>(_value.request!,
        (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExampleScenarioContainedInstanceCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $ExampleScenarioContainedInstanceCopyWith<$Res>(_value.response!,
        (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExampleScenarioOperationImplCopyWith<$Res>
    implements $ExampleScenarioOperationCopyWith<$Res> {
  factory _$$ExampleScenarioOperationImplCopyWith(
          _$ExampleScenarioOperationImpl value,
          $Res Function(_$ExampleScenarioOperationImpl) then) =
      __$$ExampleScenarioOperationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? number,
      @JsonKey(name: '_number') PrimitiveElement? numberElement,
      String? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? initiator,
      @JsonKey(name: '_initiator') PrimitiveElement? initiatorElement,
      String? receiver,
      @JsonKey(name: '_receiver') PrimitiveElement? receiverElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirBoolean? initiatorActive,
      @JsonKey(name: '_initiatorActive')
      PrimitiveElement? initiatorActiveElement,
      FhirBoolean? receiverActive,
      @JsonKey(name: '_receiverActive') PrimitiveElement? receiverActiveElement,
      ExampleScenarioContainedInstance? request,
      ExampleScenarioContainedInstance? response});

  @override
  $ExampleScenarioContainedInstanceCopyWith<$Res>? get request;
  @override
  $ExampleScenarioContainedInstanceCopyWith<$Res>? get response;
}

/// @nodoc
class __$$ExampleScenarioOperationImplCopyWithImpl<$Res>
    extends _$ExampleScenarioOperationCopyWithImpl<$Res,
        _$ExampleScenarioOperationImpl>
    implements _$$ExampleScenarioOperationImplCopyWith<$Res> {
  __$$ExampleScenarioOperationImplCopyWithImpl(
      _$ExampleScenarioOperationImpl _value,
      $Res Function(_$ExampleScenarioOperationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? number = freezed,
    Object? numberElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? initiator = freezed,
    Object? initiatorElement = freezed,
    Object? receiver = freezed,
    Object? receiverElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? initiatorActive = freezed,
    Object? initiatorActiveElement = freezed,
    Object? receiverActive = freezed,
    Object? receiverActiveElement = freezed,
    Object? request = freezed,
    Object? response = freezed,
  }) {
    return _then(_$ExampleScenarioOperationImpl(
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
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      numberElement: freezed == numberElement
          ? _value.numberElement
          : numberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      initiator: freezed == initiator
          ? _value.initiator
          : initiator // ignore: cast_nullable_to_non_nullable
              as String?,
      initiatorElement: freezed == initiatorElement
          ? _value.initiatorElement
          : initiatorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverElement: freezed == receiverElement
          ? _value.receiverElement
          : receiverElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      initiatorActive: freezed == initiatorActive
          ? _value.initiatorActive
          : initiatorActive // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      initiatorActiveElement: freezed == initiatorActiveElement
          ? _value.initiatorActiveElement
          : initiatorActiveElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      receiverActive: freezed == receiverActive
          ? _value.receiverActive
          : receiverActive // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      receiverActiveElement: freezed == receiverActiveElement
          ? _value.receiverActiveElement
          : receiverActiveElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ExampleScenarioContainedInstance?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ExampleScenarioContainedInstance?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExampleScenarioOperationImpl extends _ExampleScenarioOperation {
  const _$ExampleScenarioOperationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.number,
      @JsonKey(name: '_number') this.numberElement,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.initiator,
      @JsonKey(name: '_initiator') this.initiatorElement,
      this.receiver,
      @JsonKey(name: '_receiver') this.receiverElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.initiatorActive,
      @JsonKey(name: '_initiatorActive') this.initiatorActiveElement,
      this.receiverActive,
      @JsonKey(name: '_receiverActive') this.receiverActiveElement,
      this.request,
      this.response})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$ExampleScenarioOperationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExampleScenarioOperationImplFromJson(json);

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

  /// [number] The sequential number of the interaction, e.g. 1.2.5.
  @override
  final String? number;

  /// [numberElement] Extensions for number
  @override
  @JsonKey(name: '_number')
  final PrimitiveElement? numberElement;

  /// [type] The type of operation - CRUD.
  @override
  final String? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [name] The human-friendly name of the interaction.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [initiator] Who starts the transaction.
  @override
  final String? initiator;

  /// [initiatorElement] Extensions for initiator
  @override
  @JsonKey(name: '_initiator')
  final PrimitiveElement? initiatorElement;

  /// [receiver] Who receives the transaction.
  @override
  final String? receiver;

  /// [receiverElement] Extensions for receiver
  @override
  @JsonKey(name: '_receiver')
  final PrimitiveElement? receiverElement;

  /// [description] A comment to be inserted in the diagram.
  @override
  final FhirMarkdown? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [initiatorActive] Whether the initiator is deactivated right after the
  ///  transaction.
  @override
  final FhirBoolean? initiatorActive;

  /// [initiatorActiveElement] Extensions for initiatorActive
  @override
  @JsonKey(name: '_initiatorActive')
  final PrimitiveElement? initiatorActiveElement;

  /// [receiverActive] Whether the receiver is deactivated right after the
  ///  transaction.
  @override
  final FhirBoolean? receiverActive;

  /// [receiverActiveElement] Extensions for receiverActive
  @override
  @JsonKey(name: '_receiverActive')
  final PrimitiveElement? receiverActiveElement;

  /// [request] Each resource instance used by the initiator.
  @override
  final ExampleScenarioContainedInstance? request;

  /// [response] Each resource instance used by the responder.
  @override
  final ExampleScenarioContainedInstance? response;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleScenarioOperationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.numberElement, numberElement) ||
                other.numberElement == numberElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.initiator, initiator) ||
                other.initiator == initiator) &&
            (identical(other.initiatorElement, initiatorElement) ||
                other.initiatorElement == initiatorElement) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.receiverElement, receiverElement) ||
                other.receiverElement == receiverElement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.initiatorActive, initiatorActive) ||
                other.initiatorActive == initiatorActive) &&
            (identical(other.initiatorActiveElement, initiatorActiveElement) ||
                other.initiatorActiveElement == initiatorActiveElement) &&
            (identical(other.receiverActive, receiverActive) ||
                other.receiverActive == receiverActive) &&
            (identical(other.receiverActiveElement, receiverActiveElement) ||
                other.receiverActiveElement == receiverActiveElement) &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        number,
        numberElement,
        type,
        typeElement,
        name,
        nameElement,
        initiator,
        initiatorElement,
        receiver,
        receiverElement,
        description,
        descriptionElement,
        initiatorActive,
        initiatorActiveElement,
        receiverActive,
        receiverActiveElement,
        request,
        response
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleScenarioOperationImplCopyWith<_$ExampleScenarioOperationImpl>
      get copyWith => __$$ExampleScenarioOperationImplCopyWithImpl<
          _$ExampleScenarioOperationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExampleScenarioOperationImplToJson(
      this,
    );
  }
}

abstract class _ExampleScenarioOperation extends ExampleScenarioOperation {
  factory _ExampleScenarioOperation(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? number,
      @JsonKey(name: '_number') final PrimitiveElement? numberElement,
      final String? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      final String? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      final String? initiator,
      @JsonKey(name: '_initiator') final PrimitiveElement? initiatorElement,
      final String? receiver,
      @JsonKey(name: '_receiver') final PrimitiveElement? receiverElement,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final FhirBoolean? initiatorActive,
      @JsonKey(name: '_initiatorActive')
      final PrimitiveElement? initiatorActiveElement,
      final FhirBoolean? receiverActive,
      @JsonKey(name: '_receiverActive')
      final PrimitiveElement? receiverActiveElement,
      final ExampleScenarioContainedInstance? request,
      final ExampleScenarioContainedInstance?
          response}) = _$ExampleScenarioOperationImpl;
  const _ExampleScenarioOperation._() : super._();

  factory _ExampleScenarioOperation.fromJson(Map<String, dynamic> json) =
      _$ExampleScenarioOperationImpl.fromJson;

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

  /// [number] The sequential number of the interaction, e.g. 1.2.5.
  String? get number;
  @override

  /// [numberElement] Extensions for number
  @JsonKey(name: '_number')
  PrimitiveElement? get numberElement;
  @override

  /// [type] The type of operation - CRUD.
  String? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [name] The human-friendly name of the interaction.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [initiator] Who starts the transaction.
  String? get initiator;
  @override

  /// [initiatorElement] Extensions for initiator
  @JsonKey(name: '_initiator')
  PrimitiveElement? get initiatorElement;
  @override

  /// [receiver] Who receives the transaction.
  String? get receiver;
  @override

  /// [receiverElement] Extensions for receiver
  @JsonKey(name: '_receiver')
  PrimitiveElement? get receiverElement;
  @override

  /// [description] A comment to be inserted in the diagram.
  FhirMarkdown? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [initiatorActive] Whether the initiator is deactivated right after the
  ///  transaction.
  FhirBoolean? get initiatorActive;
  @override

  /// [initiatorActiveElement] Extensions for initiatorActive
  @JsonKey(name: '_initiatorActive')
  PrimitiveElement? get initiatorActiveElement;
  @override

  /// [receiverActive] Whether the receiver is deactivated right after the
  ///  transaction.
  FhirBoolean? get receiverActive;
  @override

  /// [receiverActiveElement] Extensions for receiverActive
  @JsonKey(name: '_receiverActive')
  PrimitiveElement? get receiverActiveElement;
  @override

  /// [request] Each resource instance used by the initiator.
  ExampleScenarioContainedInstance? get request;
  @override

  /// [response] Each resource instance used by the responder.
  ExampleScenarioContainedInstance? get response;
  @override
  @JsonKey(ignore: true)
  _$$ExampleScenarioOperationImplCopyWith<_$ExampleScenarioOperationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExampleScenarioAlternative _$ExampleScenarioAlternativeFromJson(
    Map<String, dynamic> json) {
  return _ExampleScenarioAlternative.fromJson(json);
}

/// @nodoc
mixin _$ExampleScenarioAlternative {
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

  /// [title] The label to display for the alternative that gives a sense of
  ///  the circumstance in which the alternative should be invoked.
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;

  /// [description] A human-readable description of the alternative explaining
  ///  when the alternative should occur rather than the base step.
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [step] What happens in each alternative option.
  List<ExampleScenarioStep>? get step => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExampleScenarioAlternativeCopyWith<ExampleScenarioAlternative>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleScenarioAlternativeCopyWith<$Res> {
  factory $ExampleScenarioAlternativeCopyWith(ExampleScenarioAlternative value,
          $Res Function(ExampleScenarioAlternative) then) =
      _$ExampleScenarioAlternativeCopyWithImpl<$Res,
          ExampleScenarioAlternative>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<ExampleScenarioStep>? step});
}

/// @nodoc
class _$ExampleScenarioAlternativeCopyWithImpl<$Res,
        $Val extends ExampleScenarioAlternative>
    implements $ExampleScenarioAlternativeCopyWith<$Res> {
  _$ExampleScenarioAlternativeCopyWithImpl(this._value, this._then);

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
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? step = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      step: freezed == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioStep>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExampleScenarioAlternativeImplCopyWith<$Res>
    implements $ExampleScenarioAlternativeCopyWith<$Res> {
  factory _$$ExampleScenarioAlternativeImplCopyWith(
          _$ExampleScenarioAlternativeImpl value,
          $Res Function(_$ExampleScenarioAlternativeImpl) then) =
      __$$ExampleScenarioAlternativeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<ExampleScenarioStep>? step});
}

/// @nodoc
class __$$ExampleScenarioAlternativeImplCopyWithImpl<$Res>
    extends _$ExampleScenarioAlternativeCopyWithImpl<$Res,
        _$ExampleScenarioAlternativeImpl>
    implements _$$ExampleScenarioAlternativeImplCopyWith<$Res> {
  __$$ExampleScenarioAlternativeImplCopyWithImpl(
      _$ExampleScenarioAlternativeImpl _value,
      $Res Function(_$ExampleScenarioAlternativeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? step = freezed,
  }) {
    return _then(_$ExampleScenarioAlternativeImpl(
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      step: freezed == step
          ? _value._step
          : step // ignore: cast_nullable_to_non_nullable
              as List<ExampleScenarioStep>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExampleScenarioAlternativeImpl extends _ExampleScenarioAlternative {
  const _$ExampleScenarioAlternativeImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.title,
      @JsonKey(name: '_title') this.titleElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      final List<ExampleScenarioStep>? step})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _step = step,
        super._();

  factory _$ExampleScenarioAlternativeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ExampleScenarioAlternativeImplFromJson(json);

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

  /// [title] The label to display for the alternative that gives a sense of
  ///  the circumstance in which the alternative should be invoked.
  @override
  final String? title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;

  /// [description] A human-readable description of the alternative explaining
  ///  when the alternative should occur rather than the base step.
  @override
  final FhirMarkdown? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [step] What happens in each alternative option.
  final List<ExampleScenarioStep>? _step;

  /// [step] What happens in each alternative option.
  @override
  List<ExampleScenarioStep>? get step {
    final value = _step;
    if (value == null) return null;
    if (_step is EqualUnmodifiableListView) return _step;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleScenarioAlternativeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleElement, titleElement) ||
                other.titleElement == titleElement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            const DeepCollectionEquality().equals(other._step, _step));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      title,
      titleElement,
      description,
      descriptionElement,
      const DeepCollectionEquality().hash(_step));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleScenarioAlternativeImplCopyWith<_$ExampleScenarioAlternativeImpl>
      get copyWith => __$$ExampleScenarioAlternativeImplCopyWithImpl<
          _$ExampleScenarioAlternativeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExampleScenarioAlternativeImplToJson(
      this,
    );
  }
}

abstract class _ExampleScenarioAlternative extends ExampleScenarioAlternative {
  factory _ExampleScenarioAlternative(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? title,
      @JsonKey(name: '_title') final PrimitiveElement? titleElement,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final List<ExampleScenarioStep>?
          step}) = _$ExampleScenarioAlternativeImpl;
  const _ExampleScenarioAlternative._() : super._();

  factory _ExampleScenarioAlternative.fromJson(Map<String, dynamic> json) =
      _$ExampleScenarioAlternativeImpl.fromJson;

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

  /// [title] The label to display for the alternative that gives a sense of
  ///  the circumstance in which the alternative should be invoked.
  String? get title;
  @override

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;
  @override

  /// [description] A human-readable description of the alternative explaining
  ///  when the alternative should occur rather than the base step.
  FhirMarkdown? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [step] What happens in each alternative option.
  List<ExampleScenarioStep>? get step;
  @override
  @JsonKey(ignore: true)
  _$$ExampleScenarioAlternativeImplCopyWith<_$ExampleScenarioAlternativeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
