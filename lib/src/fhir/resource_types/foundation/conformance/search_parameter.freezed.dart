// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_parameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchParameter _$SearchParameterFromJson(Map<String, dynamic> json) {
  return _SearchParameter.fromJson(json);
}

/// @nodoc
mixin _$SearchParameter {
  @JsonKey(unknownEnumValue: R4ResourceType.SearchParameter)
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

  /// [url] An absolute URI that is used to identify this search parameter when
  /// it is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// search parameter is (or will be) published. This URL can be the target of
  /// a canonical reference. It SHALL remain the same when the search parameter
  ///  is stored on different servers.
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [version] The identifier that is used to identify this version of the
  /// search parameter when it is referenced in a specification, model, design
  /// or instance. This is an arbitrary value managed by the search parameter
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There
  /// is also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  /// [name] A natural language name identifying the search parameter. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [derivedFrom] Where this search parameter is originally defined. If a
  /// derivedFrom is provided, then the details in the search parameter must be
  /// consistent with the definition from which it is defined. i.e. the
  /// parameter should have the same meaning, and (usually) the functionality
  ///  should be a proper subset of the underlying search parameter.
  FhirCanonical? get derivedFrom => throw _privateConstructorUsedError;

  /// [status] The status of this search parameter. Enables tracking the
  ///  life-cycle of the content.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [experimental] A Boolean value to indicate that this search parameter is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  FhirBoolean? get experimental => throw _privateConstructorUsedError;

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement =>
      throw _privateConstructorUsedError;

  /// [date] The date  (and optionally time) when the search parameter was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the search parameter changes.
  FhirDateTime? get date => throw _privateConstructorUsedError;

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  /// [publisher] The name of the organization or individual that published the
  ///  search parameter.
  String? get publisher => throw _privateConstructorUsedError;

  /// [publisherElement] Extensions for publisher
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement => throw _privateConstructorUsedError;

  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  List<ContactDetail>? get contact => throw _privateConstructorUsedError;

  /// [description] And how it used.
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate search parameter instances.
  List<UsageContext>? get useContext => throw _privateConstructorUsedError;

  /// [jurisdiction] A legal or geographic region in which the search parameter
  ///  is intended to be used.
  List<CodeableConcept>? get jurisdiction => throw _privateConstructorUsedError;

  /// [purpose] Explanation of why this search parameter is needed and why it
  ///  has been designed as it has.
  FhirMarkdown? get purpose => throw _privateConstructorUsedError;

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement => throw _privateConstructorUsedError;

  /// [code] The code used in the URL or the parameter name in a parameters
  ///  resource for this search parameter.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement => throw _privateConstructorUsedError;

  /// [base] The base resource type(s) that this search parameter can be used
  ///  against.
  List<FhirCode>? get base => throw _privateConstructorUsedError;

  /// [baseElement] Extensions for base
  @JsonKey(name: '_base')
  List<PrimitiveElement>? get baseElement => throw _privateConstructorUsedError;

  /// [type] The type of value that a search parameter may contain, and how the
  ///  content is interpreted.
  FhirCode? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [expression] A FHIRPath expression that returns a set of elements for the
  ///  search parameter.
  String? get expression => throw _privateConstructorUsedError;

  /// [expressionElement] Extensions for expression
  @JsonKey(name: '_expression')
  PrimitiveElement? get expressionElement => throw _privateConstructorUsedError;

  /// [xpath] An XPath expression that returns a set of elements for the search
  ///  parameter.
  String? get xpath => throw _privateConstructorUsedError;

  /// [xpathElement] Extensions for xpath
  @JsonKey(name: '_xpath')
  PrimitiveElement? get xpathElement => throw _privateConstructorUsedError;

  /// [xpathUsage] How the search parameter relates to the set of elements
  ///  returned by evaluating the xpath query.
  FhirCode? get xpathUsage => throw _privateConstructorUsedError;

  /// [xpathUsageElement] Extensions for xpathUsage
  @JsonKey(name: '_xpathUsage')
  PrimitiveElement? get xpathUsageElement => throw _privateConstructorUsedError;

  /// [target] Types of resource (if a resource is referenced).
  List<FhirCode>? get target => throw _privateConstructorUsedError;

  /// [targetElement] Extensions for target
  @JsonKey(name: '_target')
  List<PrimitiveElement>? get targetElement =>
      throw _privateConstructorUsedError;

  /// [multipleOr] Whether multiple values are allowed for each time the
  /// parameter exists. Values are separated by commas, and the parameter
  ///  matches if any of the values match.
  FhirBoolean? get multipleOr => throw _privateConstructorUsedError;

  /// [multipleOrElement] Extensions for multipleOr
  @JsonKey(name: '_multipleOr')
  PrimitiveElement? get multipleOrElement => throw _privateConstructorUsedError;

  /// [multipleAnd] Whether multiple parameters are allowed - e.g. more than
  /// one parameter with the same name. The search matches if all the parameters
  ///  match.
  FhirBoolean? get multipleAnd => throw _privateConstructorUsedError;

  /// [multipleAndElement] Extensions for multipleAnd
  @JsonKey(name: '_multipleAnd')
  PrimitiveElement? get multipleAndElement =>
      throw _privateConstructorUsedError;

  /// [comparator] Comparators supported for the search parameter.
  List<FhirCode>? get comparator => throw _privateConstructorUsedError;

  /// [comparatorElement] Extensions for comparator
  @JsonKey(name: '_comparator')
  List<PrimitiveElement>? get comparatorElement =>
      throw _privateConstructorUsedError;

  /// [modifier] A modifier supported for the search parameter.
  List<FhirCode>? get modifier => throw _privateConstructorUsedError;

  /// [modifierElement] Extensions for modifier
  @JsonKey(name: '_modifier')
  List<PrimitiveElement>? get modifierElement =>
      throw _privateConstructorUsedError;

  /// [chain] Contains the names of any search parameters which may be chained
  /// to the containing search parameter. Chained parameters may be added to
  /// search parameters of type reference and specify that resources will only
  /// be returned if they contain a reference to a resource which matches the
  /// chained parameter value. Values for this field should be drawn from
  ///  SearchParameter.code for a parameter on the target resource type.
  List<String>? get chain => throw _privateConstructorUsedError;

  /// [chainElement] Extensions for chain
  @JsonKey(name: '_chain')
  List<PrimitiveElement>? get chainElement =>
      throw _privateConstructorUsedError;

  /// [component] Used to define the parts of a composite search parameter.
  List<SearchParameterComponent>? get component =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchParameterCopyWith<SearchParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchParameterCopyWith<$Res> {
  factory $SearchParameterCopyWith(
          SearchParameter value, $Res Function(SearchParameter) then) =
      _$SearchParameterCopyWithImpl<$Res, SearchParameter>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.SearchParameter)
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
      FhirCanonical? derivedFrom,
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
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      List<FhirCode>? base,
      @JsonKey(name: '_base') List<PrimitiveElement>? baseElement,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      String? expression,
      @JsonKey(name: '_expression') PrimitiveElement? expressionElement,
      String? xpath,
      @JsonKey(name: '_xpath') PrimitiveElement? xpathElement,
      FhirCode? xpathUsage,
      @JsonKey(name: '_xpathUsage') PrimitiveElement? xpathUsageElement,
      List<FhirCode>? target,
      @JsonKey(name: '_target') List<PrimitiveElement>? targetElement,
      FhirBoolean? multipleOr,
      @JsonKey(name: '_multipleOr') PrimitiveElement? multipleOrElement,
      FhirBoolean? multipleAnd,
      @JsonKey(name: '_multipleAnd') PrimitiveElement? multipleAndElement,
      List<FhirCode>? comparator,
      @JsonKey(name: '_comparator') List<PrimitiveElement>? comparatorElement,
      List<FhirCode>? modifier,
      @JsonKey(name: '_modifier') List<PrimitiveElement>? modifierElement,
      List<String>? chain,
      @JsonKey(name: '_chain') List<PrimitiveElement>? chainElement,
      List<SearchParameterComponent>? component});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
}

/// @nodoc
class _$SearchParameterCopyWithImpl<$Res, $Val extends SearchParameter>
    implements $SearchParameterCopyWith<$Res> {
  _$SearchParameterCopyWithImpl(this._value, this._then);

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
    Object? derivedFrom = freezed,
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
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? base = freezed,
    Object? baseElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? expression = freezed,
    Object? expressionElement = freezed,
    Object? xpath = freezed,
    Object? xpathElement = freezed,
    Object? xpathUsage = freezed,
    Object? xpathUsageElement = freezed,
    Object? target = freezed,
    Object? targetElement = freezed,
    Object? multipleOr = freezed,
    Object? multipleOrElement = freezed,
    Object? multipleAnd = freezed,
    Object? multipleAndElement = freezed,
    Object? comparator = freezed,
    Object? comparatorElement = freezed,
    Object? modifier = freezed,
    Object? modifierElement = freezed,
    Object? chain = freezed,
    Object? chainElement = freezed,
    Object? component = freezed,
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
      derivedFrom: freezed == derivedFrom
          ? _value.derivedFrom
          : derivedFrom // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      baseElement: freezed == baseElement
          ? _value.baseElement
          : baseElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
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
      xpath: freezed == xpath
          ? _value.xpath
          : xpath // ignore: cast_nullable_to_non_nullable
              as String?,
      xpathElement: freezed == xpathElement
          ? _value.xpathElement
          : xpathElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      xpathUsage: freezed == xpathUsage
          ? _value.xpathUsage
          : xpathUsage // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      xpathUsageElement: freezed == xpathUsageElement
          ? _value.xpathUsageElement
          : xpathUsageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      targetElement: freezed == targetElement
          ? _value.targetElement
          : targetElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      multipleOr: freezed == multipleOr
          ? _value.multipleOr
          : multipleOr // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      multipleOrElement: freezed == multipleOrElement
          ? _value.multipleOrElement
          : multipleOrElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      multipleAnd: freezed == multipleAnd
          ? _value.multipleAnd
          : multipleAnd // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      multipleAndElement: freezed == multipleAndElement
          ? _value.multipleAndElement
          : multipleAndElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      comparator: freezed == comparator
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      comparatorElement: freezed == comparatorElement
          ? _value.comparatorElement
          : comparatorElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      modifier: freezed == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      modifierElement: freezed == modifierElement
          ? _value.modifierElement
          : modifierElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      chain: freezed == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      chainElement: freezed == chainElement
          ? _value.chainElement
          : chainElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      component: freezed == component
          ? _value.component
          : component // ignore: cast_nullable_to_non_nullable
              as List<SearchParameterComponent>?,
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
abstract class _$$SearchParameterImplCopyWith<$Res>
    implements $SearchParameterCopyWith<$Res> {
  factory _$$SearchParameterImplCopyWith(_$SearchParameterImpl value,
          $Res Function(_$SearchParameterImpl) then) =
      __$$SearchParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.SearchParameter)
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
      FhirCanonical? derivedFrom,
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
      FhirCode? code,
      @JsonKey(name: '_code') PrimitiveElement? codeElement,
      List<FhirCode>? base,
      @JsonKey(name: '_base') List<PrimitiveElement>? baseElement,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      String? expression,
      @JsonKey(name: '_expression') PrimitiveElement? expressionElement,
      String? xpath,
      @JsonKey(name: '_xpath') PrimitiveElement? xpathElement,
      FhirCode? xpathUsage,
      @JsonKey(name: '_xpathUsage') PrimitiveElement? xpathUsageElement,
      List<FhirCode>? target,
      @JsonKey(name: '_target') List<PrimitiveElement>? targetElement,
      FhirBoolean? multipleOr,
      @JsonKey(name: '_multipleOr') PrimitiveElement? multipleOrElement,
      FhirBoolean? multipleAnd,
      @JsonKey(name: '_multipleAnd') PrimitiveElement? multipleAndElement,
      List<FhirCode>? comparator,
      @JsonKey(name: '_comparator') List<PrimitiveElement>? comparatorElement,
      List<FhirCode>? modifier,
      @JsonKey(name: '_modifier') List<PrimitiveElement>? modifierElement,
      List<String>? chain,
      @JsonKey(name: '_chain') List<PrimitiveElement>? chainElement,
      List<SearchParameterComponent>? component});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
}

/// @nodoc
class __$$SearchParameterImplCopyWithImpl<$Res>
    extends _$SearchParameterCopyWithImpl<$Res, _$SearchParameterImpl>
    implements _$$SearchParameterImplCopyWith<$Res> {
  __$$SearchParameterImplCopyWithImpl(
      _$SearchParameterImpl _value, $Res Function(_$SearchParameterImpl) _then)
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
    Object? derivedFrom = freezed,
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
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? base = freezed,
    Object? baseElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? expression = freezed,
    Object? expressionElement = freezed,
    Object? xpath = freezed,
    Object? xpathElement = freezed,
    Object? xpathUsage = freezed,
    Object? xpathUsageElement = freezed,
    Object? target = freezed,
    Object? targetElement = freezed,
    Object? multipleOr = freezed,
    Object? multipleOrElement = freezed,
    Object? multipleAnd = freezed,
    Object? multipleAndElement = freezed,
    Object? comparator = freezed,
    Object? comparatorElement = freezed,
    Object? modifier = freezed,
    Object? modifierElement = freezed,
    Object? chain = freezed,
    Object? chainElement = freezed,
    Object? component = freezed,
  }) {
    return _then(_$SearchParameterImpl(
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
      derivedFrom: freezed == derivedFrom
          ? _value.derivedFrom
          : derivedFrom // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      base: freezed == base
          ? _value._base
          : base // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      baseElement: freezed == baseElement
          ? _value._baseElement
          : baseElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
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
      xpath: freezed == xpath
          ? _value.xpath
          : xpath // ignore: cast_nullable_to_non_nullable
              as String?,
      xpathElement: freezed == xpathElement
          ? _value.xpathElement
          : xpathElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      xpathUsage: freezed == xpathUsage
          ? _value.xpathUsage
          : xpathUsage // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      xpathUsageElement: freezed == xpathUsageElement
          ? _value.xpathUsageElement
          : xpathUsageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      target: freezed == target
          ? _value._target
          : target // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      targetElement: freezed == targetElement
          ? _value._targetElement
          : targetElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      multipleOr: freezed == multipleOr
          ? _value.multipleOr
          : multipleOr // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      multipleOrElement: freezed == multipleOrElement
          ? _value.multipleOrElement
          : multipleOrElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      multipleAnd: freezed == multipleAnd
          ? _value.multipleAnd
          : multipleAnd // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      multipleAndElement: freezed == multipleAndElement
          ? _value.multipleAndElement
          : multipleAndElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      comparator: freezed == comparator
          ? _value._comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      comparatorElement: freezed == comparatorElement
          ? _value._comparatorElement
          : comparatorElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      modifier: freezed == modifier
          ? _value._modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      modifierElement: freezed == modifierElement
          ? _value._modifierElement
          : modifierElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      chain: freezed == chain
          ? _value._chain
          : chain // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      chainElement: freezed == chainElement
          ? _value._chainElement
          : chainElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      component: freezed == component
          ? _value._component
          : component // ignore: cast_nullable_to_non_nullable
              as List<SearchParameterComponent>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchParameterImpl extends _SearchParameter {
  const _$SearchParameterImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.SearchParameter)
      this.resourceType = R4ResourceType.SearchParameter,
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
      this.derivedFrom,
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
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      final List<FhirCode>? base,
      @JsonKey(name: '_base') final List<PrimitiveElement>? baseElement,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.expression,
      @JsonKey(name: '_expression') this.expressionElement,
      this.xpath,
      @JsonKey(name: '_xpath') this.xpathElement,
      this.xpathUsage,
      @JsonKey(name: '_xpathUsage') this.xpathUsageElement,
      final List<FhirCode>? target,
      @JsonKey(name: '_target') final List<PrimitiveElement>? targetElement,
      this.multipleOr,
      @JsonKey(name: '_multipleOr') this.multipleOrElement,
      this.multipleAnd,
      @JsonKey(name: '_multipleAnd') this.multipleAndElement,
      final List<FhirCode>? comparator,
      @JsonKey(name: '_comparator')
      final List<PrimitiveElement>? comparatorElement,
      final List<FhirCode>? modifier,
      @JsonKey(name: '_modifier') final List<PrimitiveElement>? modifierElement,
      final List<String>? chain,
      @JsonKey(name: '_chain') final List<PrimitiveElement>? chainElement,
      final List<SearchParameterComponent>? component})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _contact = contact,
        _useContext = useContext,
        _jurisdiction = jurisdiction,
        _base = base,
        _baseElement = baseElement,
        _target = target,
        _targetElement = targetElement,
        _comparator = comparator,
        _comparatorElement = comparatorElement,
        _modifier = modifier,
        _modifierElement = modifierElement,
        _chain = chain,
        _chainElement = chainElement,
        _component = component,
        super._();

  factory _$SearchParameterImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchParameterImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.SearchParameter)
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

  /// [url] An absolute URI that is used to identify this search parameter when
  /// it is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// search parameter is (or will be) published. This URL can be the target of
  /// a canonical reference. It SHALL remain the same when the search parameter
  ///  is stored on different servers.
  @override
  final FhirUri? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [version] The identifier that is used to identify this version of the
  /// search parameter when it is referenced in a specification, model, design
  /// or instance. This is an arbitrary value managed by the search parameter
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

  /// [name] A natural language name identifying the search parameter. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [derivedFrom] Where this search parameter is originally defined. If a
  /// derivedFrom is provided, then the details in the search parameter must be
  /// consistent with the definition from which it is defined. i.e. the
  /// parameter should have the same meaning, and (usually) the functionality
  ///  should be a proper subset of the underlying search parameter.
  @override
  final FhirCanonical? derivedFrom;

  /// [status] The status of this search parameter. Enables tracking the
  ///  life-cycle of the content.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [experimental] A Boolean value to indicate that this search parameter is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  @override
  final FhirBoolean? experimental;

  /// [experimentalElement] Extensions for experimental
  @override
  @JsonKey(name: '_experimental')
  final PrimitiveElement? experimentalElement;

  /// [date] The date  (and optionally time) when the search parameter was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the search parameter changes.
  @override
  final FhirDateTime? date;

  /// [dateElement] Extensions for date
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  /// [publisher] The name of the organization or individual that published the
  ///  search parameter.
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

  /// [description] And how it used.
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
  ///  and searching for appropriate search parameter instances.
  final List<UsageContext>? _useContext;

  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate search parameter instances.
  @override
  List<UsageContext>? get useContext {
    final value = _useContext;
    if (value == null) return null;
    if (_useContext is EqualUnmodifiableListView) return _useContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [jurisdiction] A legal or geographic region in which the search parameter
  ///  is intended to be used.
  final List<CodeableConcept>? _jurisdiction;

  /// [jurisdiction] A legal or geographic region in which the search parameter
  ///  is intended to be used.
  @override
  List<CodeableConcept>? get jurisdiction {
    final value = _jurisdiction;
    if (value == null) return null;
    if (_jurisdiction is EqualUnmodifiableListView) return _jurisdiction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [purpose] Explanation of why this search parameter is needed and why it
  ///  has been designed as it has.
  @override
  final FhirMarkdown? purpose;

  /// [purposeElement] Extensions for purpose
  @override
  @JsonKey(name: '_purpose')
  final PrimitiveElement? purposeElement;

  /// [code] The code used in the URL or the parameter name in a parameters
  ///  resource for this search parameter.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final PrimitiveElement? codeElement;

  /// [base] The base resource type(s) that this search parameter can be used
  ///  against.
  final List<FhirCode>? _base;

  /// [base] The base resource type(s) that this search parameter can be used
  ///  against.
  @override
  List<FhirCode>? get base {
    final value = _base;
    if (value == null) return null;
    if (_base is EqualUnmodifiableListView) return _base;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [baseElement] Extensions for base
  final List<PrimitiveElement>? _baseElement;

  /// [baseElement] Extensions for base
  @override
  @JsonKey(name: '_base')
  List<PrimitiveElement>? get baseElement {
    final value = _baseElement;
    if (value == null) return null;
    if (_baseElement is EqualUnmodifiableListView) return _baseElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] The type of value that a search parameter may contain, and how the
  ///  content is interpreted.
  @override
  final FhirCode? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [expression] A FHIRPath expression that returns a set of elements for the
  ///  search parameter.
  @override
  final String? expression;

  /// [expressionElement] Extensions for expression
  @override
  @JsonKey(name: '_expression')
  final PrimitiveElement? expressionElement;

  /// [xpath] An XPath expression that returns a set of elements for the search
  ///  parameter.
  @override
  final String? xpath;

  /// [xpathElement] Extensions for xpath
  @override
  @JsonKey(name: '_xpath')
  final PrimitiveElement? xpathElement;

  /// [xpathUsage] How the search parameter relates to the set of elements
  ///  returned by evaluating the xpath query.
  @override
  final FhirCode? xpathUsage;

  /// [xpathUsageElement] Extensions for xpathUsage
  @override
  @JsonKey(name: '_xpathUsage')
  final PrimitiveElement? xpathUsageElement;

  /// [target] Types of resource (if a resource is referenced).
  final List<FhirCode>? _target;

  /// [target] Types of resource (if a resource is referenced).
  @override
  List<FhirCode>? get target {
    final value = _target;
    if (value == null) return null;
    if (_target is EqualUnmodifiableListView) return _target;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [targetElement] Extensions for target
  final List<PrimitiveElement>? _targetElement;

  /// [targetElement] Extensions for target
  @override
  @JsonKey(name: '_target')
  List<PrimitiveElement>? get targetElement {
    final value = _targetElement;
    if (value == null) return null;
    if (_targetElement is EqualUnmodifiableListView) return _targetElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [multipleOr] Whether multiple values are allowed for each time the
  /// parameter exists. Values are separated by commas, and the parameter
  ///  matches if any of the values match.
  @override
  final FhirBoolean? multipleOr;

  /// [multipleOrElement] Extensions for multipleOr
  @override
  @JsonKey(name: '_multipleOr')
  final PrimitiveElement? multipleOrElement;

  /// [multipleAnd] Whether multiple parameters are allowed - e.g. more than
  /// one parameter with the same name. The search matches if all the parameters
  ///  match.
  @override
  final FhirBoolean? multipleAnd;

  /// [multipleAndElement] Extensions for multipleAnd
  @override
  @JsonKey(name: '_multipleAnd')
  final PrimitiveElement? multipleAndElement;

  /// [comparator] Comparators supported for the search parameter.
  final List<FhirCode>? _comparator;

  /// [comparator] Comparators supported for the search parameter.
  @override
  List<FhirCode>? get comparator {
    final value = _comparator;
    if (value == null) return null;
    if (_comparator is EqualUnmodifiableListView) return _comparator;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [comparatorElement] Extensions for comparator
  final List<PrimitiveElement>? _comparatorElement;

  /// [comparatorElement] Extensions for comparator
  @override
  @JsonKey(name: '_comparator')
  List<PrimitiveElement>? get comparatorElement {
    final value = _comparatorElement;
    if (value == null) return null;
    if (_comparatorElement is EqualUnmodifiableListView)
      return _comparatorElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifier] A modifier supported for the search parameter.
  final List<FhirCode>? _modifier;

  /// [modifier] A modifier supported for the search parameter.
  @override
  List<FhirCode>? get modifier {
    final value = _modifier;
    if (value == null) return null;
    if (_modifier is EqualUnmodifiableListView) return _modifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierElement] Extensions for modifier
  final List<PrimitiveElement>? _modifierElement;

  /// [modifierElement] Extensions for modifier
  @override
  @JsonKey(name: '_modifier')
  List<PrimitiveElement>? get modifierElement {
    final value = _modifierElement;
    if (value == null) return null;
    if (_modifierElement is EqualUnmodifiableListView) return _modifierElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [chain] Contains the names of any search parameters which may be chained
  /// to the containing search parameter. Chained parameters may be added to
  /// search parameters of type reference and specify that resources will only
  /// be returned if they contain a reference to a resource which matches the
  /// chained parameter value. Values for this field should be drawn from
  ///  SearchParameter.code for a parameter on the target resource type.
  final List<String>? _chain;

  /// [chain] Contains the names of any search parameters which may be chained
  /// to the containing search parameter. Chained parameters may be added to
  /// search parameters of type reference and specify that resources will only
  /// be returned if they contain a reference to a resource which matches the
  /// chained parameter value. Values for this field should be drawn from
  ///  SearchParameter.code for a parameter on the target resource type.
  @override
  List<String>? get chain {
    final value = _chain;
    if (value == null) return null;
    if (_chain is EqualUnmodifiableListView) return _chain;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [chainElement] Extensions for chain
  final List<PrimitiveElement>? _chainElement;

  /// [chainElement] Extensions for chain
  @override
  @JsonKey(name: '_chain')
  List<PrimitiveElement>? get chainElement {
    final value = _chainElement;
    if (value == null) return null;
    if (_chainElement is EqualUnmodifiableListView) return _chainElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [component] Used to define the parts of a composite search parameter.
  final List<SearchParameterComponent>? _component;

  /// [component] Used to define the parts of a composite search parameter.
  @override
  List<SearchParameterComponent>? get component {
    final value = _component;
    if (value == null) return null;
    if (_component is EqualUnmodifiableListView) return _component;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchParameter(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, url: $url, urlElement: $urlElement, version: $version, versionElement: $versionElement, name: $name, nameElement: $nameElement, derivedFrom: $derivedFrom, status: $status, statusElement: $statusElement, experimental: $experimental, experimentalElement: $experimentalElement, date: $date, dateElement: $dateElement, publisher: $publisher, publisherElement: $publisherElement, contact: $contact, description: $description, descriptionElement: $descriptionElement, useContext: $useContext, jurisdiction: $jurisdiction, purpose: $purpose, purposeElement: $purposeElement, code: $code, codeElement: $codeElement, base: $base, baseElement: $baseElement, type: $type, typeElement: $typeElement, expression: $expression, expressionElement: $expressionElement, xpath: $xpath, xpathElement: $xpathElement, xpathUsage: $xpathUsage, xpathUsageElement: $xpathUsageElement, target: $target, targetElement: $targetElement, multipleOr: $multipleOr, multipleOrElement: $multipleOrElement, multipleAnd: $multipleAnd, multipleAndElement: $multipleAndElement, comparator: $comparator, comparatorElement: $comparatorElement, modifier: $modifier, modifierElement: $modifierElement, chain: $chain, chainElement: $chainElement, component: $component)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchParameterImpl &&
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
            (identical(other.derivedFrom, derivedFrom) ||
                other.derivedFrom == derivedFrom) &&
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
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement) &&
            const DeepCollectionEquality().equals(other._base, _base) &&
            const DeepCollectionEquality()
                .equals(other._baseElement, _baseElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.expression, expression) ||
                other.expression == expression) &&
            (identical(other.expressionElement, expressionElement) ||
                other.expressionElement == expressionElement) &&
            (identical(other.xpath, xpath) || other.xpath == xpath) &&
            (identical(other.xpathElement, xpathElement) ||
                other.xpathElement == xpathElement) &&
            (identical(other.xpathUsage, xpathUsage) ||
                other.xpathUsage == xpathUsage) &&
            (identical(other.xpathUsageElement, xpathUsageElement) ||
                other.xpathUsageElement == xpathUsageElement) &&
            const DeepCollectionEquality().equals(other._target, _target) &&
            const DeepCollectionEquality()
                .equals(other._targetElement, _targetElement) &&
            (identical(other.multipleOr, multipleOr) ||
                other.multipleOr == multipleOr) &&
            (identical(other.multipleOrElement, multipleOrElement) ||
                other.multipleOrElement == multipleOrElement) &&
            (identical(other.multipleAnd, multipleAnd) ||
                other.multipleAnd == multipleAnd) &&
            (identical(other.multipleAndElement, multipleAndElement) ||
                other.multipleAndElement == multipleAndElement) &&
            const DeepCollectionEquality()
                .equals(other._comparator, _comparator) &&
            const DeepCollectionEquality()
                .equals(other._comparatorElement, _comparatorElement) &&
            const DeepCollectionEquality().equals(other._modifier, _modifier) &&
            const DeepCollectionEquality()
                .equals(other._modifierElement, _modifierElement) &&
            const DeepCollectionEquality().equals(other._chain, _chain) &&
            const DeepCollectionEquality()
                .equals(other._chainElement, _chainElement) &&
            const DeepCollectionEquality()
                .equals(other._component, _component));
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
        derivedFrom,
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
        code,
        codeElement,
        const DeepCollectionEquality().hash(_base),
        const DeepCollectionEquality().hash(_baseElement),
        type,
        typeElement,
        expression,
        expressionElement,
        xpath,
        xpathElement,
        xpathUsage,
        xpathUsageElement,
        const DeepCollectionEquality().hash(_target),
        const DeepCollectionEquality().hash(_targetElement),
        multipleOr,
        multipleOrElement,
        multipleAnd,
        multipleAndElement,
        const DeepCollectionEquality().hash(_comparator),
        const DeepCollectionEquality().hash(_comparatorElement),
        const DeepCollectionEquality().hash(_modifier),
        const DeepCollectionEquality().hash(_modifierElement),
        const DeepCollectionEquality().hash(_chain),
        const DeepCollectionEquality().hash(_chainElement),
        const DeepCollectionEquality().hash(_component)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchParameterImplCopyWith<_$SearchParameterImpl> get copyWith =>
      __$$SearchParameterImplCopyWithImpl<_$SearchParameterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchParameterImplToJson(
      this,
    );
  }
}

abstract class _SearchParameter extends SearchParameter {
  const factory _SearchParameter(
      {@JsonKey(unknownEnumValue: R4ResourceType.SearchParameter)
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
      final FhirCanonical? derivedFrom,
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
      final FhirCode? code,
      @JsonKey(name: '_code') final PrimitiveElement? codeElement,
      final List<FhirCode>? base,
      @JsonKey(name: '_base') final List<PrimitiveElement>? baseElement,
      final FhirCode? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      final String? expression,
      @JsonKey(name: '_expression') final PrimitiveElement? expressionElement,
      final String? xpath,
      @JsonKey(name: '_xpath') final PrimitiveElement? xpathElement,
      final FhirCode? xpathUsage,
      @JsonKey(name: '_xpathUsage') final PrimitiveElement? xpathUsageElement,
      final List<FhirCode>? target,
      @JsonKey(name: '_target') final List<PrimitiveElement>? targetElement,
      final FhirBoolean? multipleOr,
      @JsonKey(name: '_multipleOr') final PrimitiveElement? multipleOrElement,
      final FhirBoolean? multipleAnd,
      @JsonKey(name: '_multipleAnd') final PrimitiveElement? multipleAndElement,
      final List<FhirCode>? comparator,
      @JsonKey(name: '_comparator')
      final List<PrimitiveElement>? comparatorElement,
      final List<FhirCode>? modifier,
      @JsonKey(name: '_modifier') final List<PrimitiveElement>? modifierElement,
      final List<String>? chain,
      @JsonKey(name: '_chain') final List<PrimitiveElement>? chainElement,
      final List<SearchParameterComponent>? component}) = _$SearchParameterImpl;
  const _SearchParameter._() : super._();

  factory _SearchParameter.fromJson(Map<String, dynamic> json) =
      _$SearchParameterImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.SearchParameter)
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

  /// [url] An absolute URI that is used to identify this search parameter when
  /// it is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// search parameter is (or will be) published. This URL can be the target of
  /// a canonical reference. It SHALL remain the same when the search parameter
  ///  is stored on different servers.
  FhirUri? get url;
  @override

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override

  /// [version] The identifier that is used to identify this version of the
  /// search parameter when it is referenced in a specification, model, design
  /// or instance. This is an arbitrary value managed by the search parameter
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

  /// [name] A natural language name identifying the search parameter. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [derivedFrom] Where this search parameter is originally defined. If a
  /// derivedFrom is provided, then the details in the search parameter must be
  /// consistent with the definition from which it is defined. i.e. the
  /// parameter should have the same meaning, and (usually) the functionality
  ///  should be a proper subset of the underlying search parameter.
  FhirCanonical? get derivedFrom;
  @override

  /// [status] The status of this search parameter. Enables tracking the
  ///  life-cycle of the content.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [experimental] A Boolean value to indicate that this search parameter is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  FhirBoolean? get experimental;
  @override

  /// [experimentalElement] Extensions for experimental
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement;
  @override

  /// [date] The date  (and optionally time) when the search parameter was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the search parameter changes.
  FhirDateTime? get date;
  @override

  /// [dateElement] Extensions for date
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override

  /// [publisher] The name of the organization or individual that published the
  ///  search parameter.
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

  /// [description] And how it used.
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
  ///  and searching for appropriate search parameter instances.
  List<UsageContext>? get useContext;
  @override

  /// [jurisdiction] A legal or geographic region in which the search parameter
  ///  is intended to be used.
  List<CodeableConcept>? get jurisdiction;
  @override

  /// [purpose] Explanation of why this search parameter is needed and why it
  ///  has been designed as it has.
  FhirMarkdown? get purpose;
  @override

  /// [purposeElement] Extensions for purpose
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement;
  @override

  /// [code] The code used in the URL or the parameter name in a parameters
  ///  resource for this search parameter.
  FhirCode? get code;
  @override

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  PrimitiveElement? get codeElement;
  @override

  /// [base] The base resource type(s) that this search parameter can be used
  ///  against.
  List<FhirCode>? get base;
  @override

  /// [baseElement] Extensions for base
  @JsonKey(name: '_base')
  List<PrimitiveElement>? get baseElement;
  @override

  /// [type] The type of value that a search parameter may contain, and how the
  ///  content is interpreted.
  FhirCode? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [expression] A FHIRPath expression that returns a set of elements for the
  ///  search parameter.
  String? get expression;
  @override

  /// [expressionElement] Extensions for expression
  @JsonKey(name: '_expression')
  PrimitiveElement? get expressionElement;
  @override

  /// [xpath] An XPath expression that returns a set of elements for the search
  ///  parameter.
  String? get xpath;
  @override

  /// [xpathElement] Extensions for xpath
  @JsonKey(name: '_xpath')
  PrimitiveElement? get xpathElement;
  @override

  /// [xpathUsage] How the search parameter relates to the set of elements
  ///  returned by evaluating the xpath query.
  FhirCode? get xpathUsage;
  @override

  /// [xpathUsageElement] Extensions for xpathUsage
  @JsonKey(name: '_xpathUsage')
  PrimitiveElement? get xpathUsageElement;
  @override

  /// [target] Types of resource (if a resource is referenced).
  List<FhirCode>? get target;
  @override

  /// [targetElement] Extensions for target
  @JsonKey(name: '_target')
  List<PrimitiveElement>? get targetElement;
  @override

  /// [multipleOr] Whether multiple values are allowed for each time the
  /// parameter exists. Values are separated by commas, and the parameter
  ///  matches if any of the values match.
  FhirBoolean? get multipleOr;
  @override

  /// [multipleOrElement] Extensions for multipleOr
  @JsonKey(name: '_multipleOr')
  PrimitiveElement? get multipleOrElement;
  @override

  /// [multipleAnd] Whether multiple parameters are allowed - e.g. more than
  /// one parameter with the same name. The search matches if all the parameters
  ///  match.
  FhirBoolean? get multipleAnd;
  @override

  /// [multipleAndElement] Extensions for multipleAnd
  @JsonKey(name: '_multipleAnd')
  PrimitiveElement? get multipleAndElement;
  @override

  /// [comparator] Comparators supported for the search parameter.
  List<FhirCode>? get comparator;
  @override

  /// [comparatorElement] Extensions for comparator
  @JsonKey(name: '_comparator')
  List<PrimitiveElement>? get comparatorElement;
  @override

  /// [modifier] A modifier supported for the search parameter.
  List<FhirCode>? get modifier;
  @override

  /// [modifierElement] Extensions for modifier
  @JsonKey(name: '_modifier')
  List<PrimitiveElement>? get modifierElement;
  @override

  /// [chain] Contains the names of any search parameters which may be chained
  /// to the containing search parameter. Chained parameters may be added to
  /// search parameters of type reference and specify that resources will only
  /// be returned if they contain a reference to a resource which matches the
  /// chained parameter value. Values for this field should be drawn from
  ///  SearchParameter.code for a parameter on the target resource type.
  List<String>? get chain;
  @override

  /// [chainElement] Extensions for chain
  @JsonKey(name: '_chain')
  List<PrimitiveElement>? get chainElement;
  @override

  /// [component] Used to define the parts of a composite search parameter.
  List<SearchParameterComponent>? get component;
  @override
  @JsonKey(ignore: true)
  _$$SearchParameterImplCopyWith<_$SearchParameterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchParameterComponent _$SearchParameterComponentFromJson(
    Map<String, dynamic> json) {
  return _SearchParameterComponent.fromJson(json);
}

/// @nodoc
mixin _$SearchParameterComponent {
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

  /// [definition] The definition of the search parameter that describes this
  ///  part.
  FhirCanonical get definition => throw _privateConstructorUsedError;

  /// [expression] A sub-expression that defines how to extract values for this
  ///  component from the output of the main SearchParameter.expression.
  String? get expression => throw _privateConstructorUsedError;

  /// [expressionElement] Extensions for expression
  @JsonKey(name: '_expression')
  PrimitiveElement? get expressionElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchParameterComponentCopyWith<SearchParameterComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchParameterComponentCopyWith<$Res> {
  factory $SearchParameterComponentCopyWith(SearchParameterComponent value,
          $Res Function(SearchParameterComponent) then) =
      _$SearchParameterComponentCopyWithImpl<$Res, SearchParameterComponent>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCanonical definition,
      String? expression,
      @JsonKey(name: '_expression') PrimitiveElement? expressionElement});
}

/// @nodoc
class _$SearchParameterComponentCopyWithImpl<$Res,
        $Val extends SearchParameterComponent>
    implements $SearchParameterComponentCopyWith<$Res> {
  _$SearchParameterComponentCopyWithImpl(this._value, this._then);

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
    Object? definition = null,
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
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
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
abstract class _$$SearchParameterComponentImplCopyWith<$Res>
    implements $SearchParameterComponentCopyWith<$Res> {
  factory _$$SearchParameterComponentImplCopyWith(
          _$SearchParameterComponentImpl value,
          $Res Function(_$SearchParameterComponentImpl) then) =
      __$$SearchParameterComponentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCanonical definition,
      String? expression,
      @JsonKey(name: '_expression') PrimitiveElement? expressionElement});
}

/// @nodoc
class __$$SearchParameterComponentImplCopyWithImpl<$Res>
    extends _$SearchParameterComponentCopyWithImpl<$Res,
        _$SearchParameterComponentImpl>
    implements _$$SearchParameterComponentImplCopyWith<$Res> {
  __$$SearchParameterComponentImplCopyWithImpl(
      _$SearchParameterComponentImpl _value,
      $Res Function(_$SearchParameterComponentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? definition = null,
    Object? expression = freezed,
    Object? expressionElement = freezed,
  }) {
    return _then(_$SearchParameterComponentImpl(
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
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as FhirCanonical,
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
class _$SearchParameterComponentImpl extends _SearchParameterComponent {
  const _$SearchParameterComponentImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.definition,
      this.expression,
      @JsonKey(name: '_expression') this.expressionElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$SearchParameterComponentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchParameterComponentImplFromJson(json);

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

  /// [definition] The definition of the search parameter that describes this
  ///  part.
  @override
  final FhirCanonical definition;

  /// [expression] A sub-expression that defines how to extract values for this
  ///  component from the output of the main SearchParameter.expression.
  @override
  final String? expression;

  /// [expressionElement] Extensions for expression
  @override
  @JsonKey(name: '_expression')
  final PrimitiveElement? expressionElement;

  @override
  String toString() {
    return 'SearchParameterComponent(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, definition: $definition, expression: $expression, expressionElement: $expressionElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchParameterComponentImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
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
      definition,
      expression,
      expressionElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchParameterComponentImplCopyWith<_$SearchParameterComponentImpl>
      get copyWith => __$$SearchParameterComponentImplCopyWithImpl<
          _$SearchParameterComponentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchParameterComponentImplToJson(
      this,
    );
  }
}

abstract class _SearchParameterComponent extends SearchParameterComponent {
  const factory _SearchParameterComponent(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final FhirCanonical definition,
          final String? expression,
          @JsonKey(name: '_expression')
          final PrimitiveElement? expressionElement}) =
      _$SearchParameterComponentImpl;
  const _SearchParameterComponent._() : super._();

  factory _SearchParameterComponent.fromJson(Map<String, dynamic> json) =
      _$SearchParameterComponentImpl.fromJson;

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

  /// [definition] The definition of the search parameter that describes this
  ///  part.
  FhirCanonical get definition;
  @override

  /// [expression] A sub-expression that defines how to extract values for this
  ///  component from the output of the main SearchParameter.expression.
  String? get expression;
  @override

  /// [expressionElement] Extensions for expression
  @JsonKey(name: '_expression')
  PrimitiveElement? get expressionElement;
  @override
  @JsonKey(ignore: true)
  _$$SearchParameterComponentImplCopyWith<_$SearchParameterComponentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
