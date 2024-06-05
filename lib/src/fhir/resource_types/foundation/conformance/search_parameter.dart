// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'search_parameter.freezed.dart';
part 'search_parameter.g.dart';

/// [SearchParameter] A search parameter that defines a named search item
@freezed
class SearchParameter with _$SearchParameter implements DomainResource {
  /// [SearchParameter] A search parameter that defines a named search item
  const SearchParameter._();

  /// [SearchParameter] A search parameter that defines a named search item
  ///  that can be used to search/filter on a resource.
  ///
  /// [resourceType] This is a SearchParameter resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
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
  ///
  /// [url] An absolute URI that is used to identify this search parameter when
  /// it is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// search parameter is (or will be) published. This URL can be the target of
  /// a canonical reference. It SHALL remain the same when the search parameter
  ///  is stored on different servers.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [version] The identifier that is used to identify this version of the
  /// search parameter when it is referenced in a specification, model, design
  /// or instance. This is an arbitrary value managed by the search parameter
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There
  /// is also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [name] A natural language name identifying the search parameter. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [derivedFrom] Where this search parameter is originally defined. If a
  /// derivedFrom is provided, then the details in the search parameter must be
  /// consistent with the definition from which it is defined. i.e. the
  /// parameter should have the same meaning, and (usually) the functionality
  ///  should be a proper subset of the underlying search parameter.
  ///
  /// [status] The status of this search parameter. Enables tracking the
  ///  life-cycle of the content.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this search parameter is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  ///
  /// [experimentalElement] Extensions for experimental
  ///
  /// [date] The date  (and optionally time) when the search parameter was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the search parameter changes.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [publisher] The name of the organization or individual that published the
  ///  search parameter.
  ///
  /// [publisherElement] Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] And how it used.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate search parameter instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the search parameter
  ///  is intended to be used.
  ///
  /// [purpose] Explanation of why this search parameter is needed and why it
  ///  has been designed as it has.
  ///
  /// [purposeElement] Extensions for purpose
  ///
  /// [code] The code used in the URL or the parameter name in a parameters
  ///  resource for this search parameter.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [base] The base resource type(s) that this search parameter can be used
  ///  against.
  ///
  /// [baseElement] Extensions for base
  ///
  /// [type] The type of value that a search parameter may contain, and how the
  ///  content is interpreted.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [expression] A FHIRPath expression that returns a set of elements for the
  ///  search parameter.
  ///
  /// [expressionElement] Extensions for expression
  ///
  /// [xpath] An XPath expression that returns a set of elements for the search
  ///  parameter.
  ///
  /// [xpathElement] Extensions for xpath
  ///
  /// [xpathUsage] How the search parameter relates to the set of elements
  ///  returned by evaluating the xpath query.
  ///
  /// [xpathUsageElement] Extensions for xpathUsage
  ///
  /// [target] Types of resource (if a resource is referenced).
  ///
  /// [targetElement] Extensions for target
  ///
  /// [multipleOr] Whether multiple values are allowed for each time the
  /// parameter exists. Values are separated by commas, and the parameter
  ///  matches if any of the values match.
  ///
  /// [multipleOrElement] Extensions for multipleOr
  ///
  /// [multipleAnd] Whether multiple parameters are allowed - e.g. more than
  /// one parameter with the same name. The search matches if all the parameters
  ///  match.
  ///
  /// [multipleAndElement] Extensions for multipleAnd
  ///
  /// [comparator] Comparators supported for the search parameter.
  ///
  /// [comparatorElement] Extensions for comparator
  ///
  /// [modifier] A modifier supported for the search parameter.
  ///
  /// [modifierElement] Extensions for modifier
  ///
  /// [chain] Contains the names of any search parameters which may be chained
  /// to the containing search parameter. Chained parameters may be added to
  /// search parameters of type reference and specify that resources will only
  /// be returned if they contain a reference to a resource which matches the
  /// chained parameter value. Values for this field should be drawn from
  ///  SearchParameter.code for a parameter on the target resource type.
  ///
  /// [chainElement] Extensions for chain
  ///
  /// [component] Used to define the parts of a composite search parameter.
  const factory SearchParameter({
    @Default(R4ResourceType.SearchParameter)
    @JsonKey(unknownEnumValue: R4ResourceType.SearchParameter)

    /// [resourceType] This is a SearchParameter resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [url] An absolute URI that is used to identify this search parameter when
    /// it is referenced in a specification, model, design or an instance; also
    /// called its canonical identifier. This SHOULD be globally unique and SHOULD
    /// be a literal address at which at which an authoritative instance of this
    /// search parameter is (or will be) published. This URL can be the target of
    /// a canonical reference. It SHALL remain the same when the search parameter
    ///  is stored on different servers.
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [version] The identifier that is used to identify this version of the
    /// search parameter when it is referenced in a specification, model, design
    /// or instance. This is an arbitrary value managed by the search parameter
    /// author and is not expected to be globally unique. For example, it might be
    /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There
    /// is also no expectation that versions can be placed in a lexicographical
    ///  sequence.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [name] A natural language name identifying the search parameter. This
    /// name should be usable as an identifier for the module by machine
    ///  processing applications such as code generation.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [derivedFrom] Where this search parameter is originally defined. If a
    /// derivedFrom is provided, then the details in the search parameter must be
    /// consistent with the definition from which it is defined. i.e. the
    /// parameter should have the same meaning, and (usually) the functionality
    ///  should be a proper subset of the underlying search parameter.
    FhirCanonical? derivedFrom,

    /// [status] The status of this search parameter. Enables tracking the
    ///  life-cycle of the content.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [experimental] A Boolean value to indicate that this search parameter is
    /// authored for testing purposes (or education/evaluation/marketing) and is
    ///  not intended to be used for genuine usage.
    FhirBoolean? experimental,

    /// [experimentalElement] Extensions for experimental
    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,

    /// [date] The date  (and optionally time) when the search parameter was
    /// published. The date must change when the business version changes and it
    /// must change if the status code changes. In addition, it should change when
    ///  the substantive content of the search parameter changes.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [publisher] The name of the organization or individual that published the
    ///  search parameter.
    String? publisher,

    /// [publisherElement] Extensions for publisher
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the publisher.
    List<ContactDetail>? contact,

    /// [description] And how it used.
    FhirMarkdown? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of
    /// supporting the contexts that are listed. These contexts may be general
    /// categories (gender, age, ...) or may be references to specific programs
    /// (insurance plans, studies, ...) and may be used to assist with indexing
    ///  and searching for appropriate search parameter instances.
    List<UsageContext>? useContext,

    /// [jurisdiction] A legal or geographic region in which the search parameter
    ///  is intended to be used.
    List<CodeableConcept>? jurisdiction,

    /// [purpose] Explanation of why this search parameter is needed and why it
    ///  has been designed as it has.
    FhirMarkdown? purpose,

    /// [purposeElement] Extensions for purpose
    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,

    /// [code] The code used in the URL or the parameter name in a parameters
    ///  resource for this search parameter.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [base] The base resource type(s) that this search parameter can be used
    ///  against.
    List<FhirCode>? base,

    /// [baseElement] Extensions for base
    @JsonKey(name: '_base') List<PrimitiveElement>? baseElement,

    /// [type] The type of value that a search parameter may contain, and how the
    ///  content is interpreted.
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [expression] A FHIRPath expression that returns a set of elements for the
    ///  search parameter.
    String? expression,

    /// [expressionElement] Extensions for expression
    @JsonKey(name: '_expression') PrimitiveElement? expressionElement,

    /// [xpath] An XPath expression that returns a set of elements for the search
    ///  parameter.
    String? xpath,

    /// [xpathElement] Extensions for xpath
    @JsonKey(name: '_xpath') PrimitiveElement? xpathElement,

    /// [xpathUsage] How the search parameter relates to the set of elements
    ///  returned by evaluating the xpath query.
    FhirCode? xpathUsage,

    /// [xpathUsageElement] Extensions for xpathUsage
    @JsonKey(name: '_xpathUsage') PrimitiveElement? xpathUsageElement,

    /// [target] Types of resource (if a resource is referenced).
    List<FhirCode>? target,

    /// [targetElement] Extensions for target
    @JsonKey(name: '_target') List<PrimitiveElement>? targetElement,

    /// [multipleOr] Whether multiple values are allowed for each time the
    /// parameter exists. Values are separated by commas, and the parameter
    ///  matches if any of the values match.
    FhirBoolean? multipleOr,

    /// [multipleOrElement] Extensions for multipleOr
    @JsonKey(name: '_multipleOr') PrimitiveElement? multipleOrElement,

    /// [multipleAnd] Whether multiple parameters are allowed - e.g. more than
    /// one parameter with the same name. The search matches if all the parameters
    ///  match.
    FhirBoolean? multipleAnd,

    /// [multipleAndElement] Extensions for multipleAnd
    @JsonKey(name: '_multipleAnd') PrimitiveElement? multipleAndElement,

    /// [comparator] Comparators supported for the search parameter.
    List<FhirCode>? comparator,

    /// [comparatorElement] Extensions for comparator
    @JsonKey(name: '_comparator') List<PrimitiveElement>? comparatorElement,

    /// [modifier] A modifier supported for the search parameter.
    List<FhirCode>? modifier,

    /// [modifierElement] Extensions for modifier
    @JsonKey(name: '_modifier') List<PrimitiveElement>? modifierElement,

    /// [chain] Contains the names of any search parameters which may be chained
    /// to the containing search parameter. Chained parameters may be added to
    /// search parameters of type reference and specify that resources will only
    /// be returned if they contain a reference to a resource which matches the
    /// chained parameter value. Values for this field should be drawn from
    ///  SearchParameter.code for a parameter on the target resource type.
    List<String>? chain,

    /// [chainElement] Extensions for chain
    @JsonKey(name: '_chain') List<PrimitiveElement>? chainElement,

    /// [component] Used to define the parts of a composite search parameter.
    List<SearchParameterComponent>? component,
  }) = _SearchParameter;

  @override
  String get fhirType => 'SearchParameter';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SearchParameter.fromYaml(dynamic yaml) => yaml is String
      ? SearchParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SearchParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SearchParameter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SearchParameter.fromJson(Map<String, dynamic> json) =>
      _$SearchParameterFromJson(json);

  /// Acts like a constructor, returns a [SearchParameter], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SearchParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SearchParameterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(meta));
}

/// [SearchParameterComponent] A search parameter that defines a named
@freezed

/// [SearchParameterComponent] A search parameter that defines a named
@freezed
class SearchParameterComponent
    with _$SearchParameterComponent
    implements BackboneElement {
  /// [SearchParameterComponent] A search parameter that defines a named
  const SearchParameterComponent._();

  /// [SearchParameterComponent] A search parameter that defines a named
  ///  search item that can be used to search/filter on a resource.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [definition] The definition of the search parameter that describes this
  ///  part.
  ///
  /// [expression] A sub-expression that defines how to extract values for this
  ///  component from the output of the main SearchParameter.expression.
  ///
  /// [expressionElement] Extensions for expression
  const factory SearchParameterComponent({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [definition] The definition of the search parameter that describes this
    ///  part.
    required FhirCanonical definition,

    /// [expression] A sub-expression that defines how to extract values for this
    ///  component from the output of the main SearchParameter.expression.
    String? expression,

    /// [expressionElement] Extensions for expression
    @JsonKey(name: '_expression') PrimitiveElement? expressionElement,
  }) = _SearchParameterComponent;

  @override
  String get fhirType => 'SearchParameterComponent';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SearchParameterComponent.fromYaml(dynamic yaml) => yaml is String
      ? SearchParameterComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SearchParameterComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SearchParameterComponent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SearchParameterComponent.fromJson(Map<String, dynamic> json) =>
      _$SearchParameterComponentFromJson(json);

  /// Acts like a constructor, returns a [SearchParameterComponent], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SearchParameterComponent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SearchParameterComponentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
