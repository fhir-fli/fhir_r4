import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'data_requirement.g.dart';

/// [DataRequirement] /// Describes a required data item for evaluation in terms of the type of data,
/// and optional code or date-based filters of the data.
@JsonSerializable()
class DataRequirement extends DataType {
  DataRequirement({
    super.id,
    super.extension_,
    required this.type,
    this.typeElement,
    this.profile,
    this.profileElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.mustSupport,
    this.mustSupportElement,
    this.codeFilter,
    this.dateFilter,
    this.limit,
    this.limitElement,
    this.sort,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'DataRequirement');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of the required data, specified as the type name of a resource.
  /// For profiles, this value is set to the type of the base resource of the
  /// profile.
  @JsonKey(name: 'type')
  final FHIRAllTypes type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [profile] /// The profile of the required data, specified as the uri of the profile
  /// definition.
  @JsonKey(name: 'profile')
  final List<FhirCanonical>? profile;
  @JsonKey(name: '_profile')
  final List<Element>? profileElement;

  /// [subjectCodeableConcept] /// The intended subjects of the data requirement. If this element is not
  /// provided, a Patient subject is assumed.
  @JsonKey(name: 'subjectCodeableConcept')
  final SubjectType? subjectCodeableConcept;

  /// [subjectReference] /// The intended subjects of the data requirement. If this element is not
  /// provided, a Patient subject is assumed.
  @JsonKey(name: 'subjectReference')
  final SubjectType? subjectReference;

  /// [mustSupport] /// Indicates that specific elements of the type are referenced by the
  /// knowledge module and must be supported by the consumer in order to obtain
  /// an effective evaluation. This does not mean that a value is required for
  /// this element, only that the consuming system must understand the element
  /// and be able to provide values for it if they are available.
  ///
  /// The value of mustSupport SHALL be a FHIRPath resolveable on the type of the
  /// DataRequirement. The path SHALL consist only of identifiers, constant
  /// indexers, and .resolve() (see the [Simple FHIRPath
  /// Profile](fhirpath.html#simple) for full details).
  @JsonKey(name: 'mustSupport')
  final List<FhirString>? mustSupport;
  @JsonKey(name: '_mustSupport')
  final List<Element>? mustSupportElement;

  /// [codeFilter] /// Code filters specify additional constraints on the data, specifying the
  /// value set of interest for a particular element of the data. Each code
  /// filter defines an additional constraint on the data, i.e. code filters are
  /// AND'ed, not OR'ed.
  @JsonKey(name: 'codeFilter')
  final List<DataRequirementCodeFilter>? codeFilter;

  /// [dateFilter] /// Date filters specify additional constraints on the data in terms of the
  /// applicable date range for specific elements. Each date filter specifies an
  /// additional constraint on the data, i.e. date filters are AND'ed, not OR'ed.
  @JsonKey(name: 'dateFilter')
  final List<DataRequirementDateFilter>? dateFilter;

  /// [limit] /// Specifies a maximum number of results that are required (uses the _count
  /// search parameter).
  @JsonKey(name: 'limit')
  final FhirPositiveInt? limit;
  @JsonKey(name: '_limit')
  final Element? limitElement;

  /// [sort] /// Specifies the order of the results to be returned.
  @JsonKey(name: 'sort')
  final List<DataRequirementSort>? sort;
  factory DataRequirement.fromJson(Map<String, dynamic> json) =>
      _$DataRequirementFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DataRequirementToJson(this);

  @override
  DataRequirement clone() => throw UnimplementedError();
  @override
  DataRequirement copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FHIRAllTypes? type,
    Element? typeElement,
    List<FhirCanonical>? profile,
    List<Element>? profileElement,
    SubjectType? subjectCodeableConcept,
    SubjectType? subjectReference,
    List<FhirString>? mustSupport,
    List<Element>? mustSupportElement,
    List<DataRequirementCodeFilter>? codeFilter,
    List<DataRequirementDateFilter>? dateFilter,
    FhirPositiveInt? limit,
    Element? limitElement,
    List<DataRequirementSort>? sort,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DataRequirement(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      profile: profile ?? this.profile,
      profileElement: profileElement ?? this.profileElement,
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
      mustSupport: mustSupport ?? this.mustSupport,
      mustSupportElement: mustSupportElement ?? this.mustSupportElement,
      codeFilter: codeFilter ?? this.codeFilter,
      dateFilter: dateFilter ?? this.dateFilter,
      limit: limit ?? this.limit,
      limitElement: limitElement ?? this.limitElement,
      sort: sort ?? this.sort,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory DataRequirement.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DataRequirement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DataRequirement cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DataRequirement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DataRequirement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DataRequirementCodeFilter] /// Code filters specify additional constraints on the data, specifying the
/// value set of interest for a particular element of the data. Each code
/// filter defines an additional constraint on the data, i.e. code filters are
/// AND'ed, not OR'ed.
@JsonSerializable()
class DataRequirementCodeFilter extends Element {
  DataRequirementCodeFilter({
    super.id,
    super.extension_,
    this.path,
    this.pathElement,
    this.searchParam,
    this.searchParamElement,
    this.valueSet,
    this.valueSetElement,
    this.code,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'DataRequirementCodeFilter');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [path] /// The code-valued attribute of the filter. The specified path SHALL be a
  /// FHIRPath resolveable on the specified type of the DataRequirement, and
  /// SHALL consist only of identifiers, constant indexers, and .resolve(). The
  /// path is allowed to contain qualifiers (.) to traverse sub-elements, as well
  /// as indexers ([x]) to traverse multiple-cardinality sub-elements (see the
  /// [Simple FHIRPath Profile](fhirpath.html#simple) for full details). Note
  /// that the index must be an integer constant. The path must resolve to an
  /// element of type code, Coding, or CodeableConcept.
  @JsonKey(name: 'path')
  final FhirString? path;
  @JsonKey(name: '_path')
  final Element? pathElement;

  /// [searchParam] /// A token parameter that refers to a search parameter defined on the
  /// specified type of the DataRequirement, and which searches on elements of
  /// type code, Coding, or CodeableConcept.
  @JsonKey(name: 'searchParam')
  final FhirString? searchParam;
  @JsonKey(name: '_searchParam')
  final Element? searchParamElement;

  /// [valueSet] /// The valueset for the code filter. The valueSet and code elements are
  /// additive. If valueSet is specified, the filter will return only those data
  /// items for which the value of the code-valued element specified in the path
  /// is a member of the specified valueset.
  @JsonKey(name: 'valueSet')
  final FhirCanonical? valueSet;
  @JsonKey(name: '_valueSet')
  final Element? valueSetElement;

  /// [code] /// The codes for the code filter. If values are given, the filter will return
  /// only those data items for which the code-valued attribute specified by the
  /// path has a value that is one of the specified codes. If codes are specified
  /// in addition to a value set, the filter returns items matching a code in the
  /// value set or one of the specified codes.
  @JsonKey(name: 'code')
  final List<Coding>? code;
  factory DataRequirementCodeFilter.fromJson(Map<String, dynamic> json) =>
      _$DataRequirementCodeFilterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DataRequirementCodeFilterToJson(this);

  @override
  DataRequirementCodeFilter clone() => throw UnimplementedError();
  @override
  DataRequirementCodeFilter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? path,
    Element? pathElement,
    FhirString? searchParam,
    Element? searchParamElement,
    FhirCanonical? valueSet,
    Element? valueSetElement,
    List<Coding>? code,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DataRequirementCodeFilter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      path: path ?? this.path,
      pathElement: pathElement ?? this.pathElement,
      searchParam: searchParam ?? this.searchParam,
      searchParamElement: searchParamElement ?? this.searchParamElement,
      valueSet: valueSet ?? this.valueSet,
      valueSetElement: valueSetElement ?? this.valueSetElement,
      code: code ?? this.code,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory DataRequirementCodeFilter.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirementCodeFilter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DataRequirementCodeFilter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DataRequirementCodeFilter cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DataRequirementCodeFilter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DataRequirementCodeFilter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DataRequirementDateFilter] /// Date filters specify additional constraints on the data in terms of the
/// applicable date range for specific elements. Each date filter specifies an
/// additional constraint on the data, i.e. date filters are AND'ed, not OR'ed.
@JsonSerializable()
class DataRequirementDateFilter extends Element {
  DataRequirementDateFilter({
    super.id,
    super.extension_,
    this.path,
    this.pathElement,
    this.searchParam,
    this.searchParamElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    this.valuePeriod,
    this.valueDuration,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'DataRequirementDateFilter');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [path] /// The date-valued attribute of the filter. The specified path SHALL be a
  /// FHIRPath resolveable on the specified type of the DataRequirement, and
  /// SHALL consist only of identifiers, constant indexers, and .resolve(). The
  /// path is allowed to contain qualifiers (.) to traverse sub-elements, as well
  /// as indexers ([x]) to traverse multiple-cardinality sub-elements (see the
  /// [Simple FHIRPath Profile](fhirpath.html#simple) for full details). Note
  /// that the index must be an integer constant. The path must resolve to an
  /// element of type date, dateTime, Period, Schedule, or Timing.
  @JsonKey(name: 'path')
  final FhirString? path;
  @JsonKey(name: '_path')
  final Element? pathElement;

  /// [searchParam] /// A date parameter that refers to a search parameter defined on the specified
  /// type of the DataRequirement, and which searches on elements of type date,
  /// dateTime, Period, Schedule, or Timing.
  @JsonKey(name: 'searchParam')
  final FhirString? searchParam;
  @JsonKey(name: '_searchParam')
  final Element? searchParamElement;

  /// [valueDateTime] /// The value of the filter. If period is specified, the filter will return
  /// only those data items that fall within the bounds determined by the Period,
  /// inclusive of the period boundaries. If dateTime is specified, the filter
  /// will return only those data items that are equal to the specified dateTime.
  /// If a Duration is specified, the filter will return only those data items
  /// that fall within Duration before now.
  @JsonKey(name: 'valueDateTime')
  final FhirDateTime? valueDateTime;
  @JsonKey(name: '_valueDateTime')
  final Element? valueDateTimeElement;

  /// [valuePeriod] /// The value of the filter. If period is specified, the filter will return
  /// only those data items that fall within the bounds determined by the Period,
  /// inclusive of the period boundaries. If dateTime is specified, the filter
  /// will return only those data items that are equal to the specified dateTime.
  /// If a Duration is specified, the filter will return only those data items
  /// that fall within Duration before now.
  @JsonKey(name: 'valuePeriod')
  final Period? valuePeriod;

  /// [valueDuration] /// The value of the filter. If period is specified, the filter will return
  /// only those data items that fall within the bounds determined by the Period,
  /// inclusive of the period boundaries. If dateTime is specified, the filter
  /// will return only those data items that are equal to the specified dateTime.
  /// If a Duration is specified, the filter will return only those data items
  /// that fall within Duration before now.
  @JsonKey(name: 'valueDuration')
  final FhirDuration? valueDuration;
  factory DataRequirementDateFilter.fromJson(Map<String, dynamic> json) =>
      _$DataRequirementDateFilterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DataRequirementDateFilterToJson(this);

  @override
  DataRequirementDateFilter clone() => throw UnimplementedError();
  @override
  DataRequirementDateFilter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? path,
    Element? pathElement,
    FhirString? searchParam,
    Element? searchParamElement,
    FhirDateTime? valueDateTime,
    Element? valueDateTimeElement,
    Period? valuePeriod,
    FhirDuration? valueDuration,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DataRequirementDateFilter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      path: path ?? this.path,
      pathElement: pathElement ?? this.pathElement,
      searchParam: searchParam ?? this.searchParam,
      searchParamElement: searchParamElement ?? this.searchParamElement,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDateTimeElement: valueDateTimeElement ?? this.valueDateTimeElement,
      valuePeriod: valuePeriod ?? this.valuePeriod,
      valueDuration: valueDuration ?? this.valueDuration,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory DataRequirementDateFilter.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirementDateFilter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DataRequirementDateFilter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DataRequirementDateFilter cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DataRequirementDateFilter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DataRequirementDateFilter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DataRequirementSort] /// Specifies the order of the results to be returned.
@JsonSerializable()
class DataRequirementSort extends Element {
  DataRequirementSort({
    super.id,
    super.extension_,
    required this.path,
    this.pathElement,
    required this.direction,
    this.directionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'DataRequirementSort');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [path] /// The attribute of the sort. The specified path must be resolvable from the
  /// type of the required data. The path is allowed to contain qualifiers (.) to
  /// traverse sub-elements, as well as indexers ([x]) to traverse
  /// multiple-cardinality sub-elements. Note that the index must be an integer
  /// constant.
  @JsonKey(name: 'path')
  final FhirString path;
  @JsonKey(name: '_path')
  final Element? pathElement;

  /// [direction] /// The direction of the sort, ascending or descending.
  @JsonKey(name: 'direction')
  final SortDirection direction;
  @JsonKey(name: '_direction')
  final Element? directionElement;
  factory DataRequirementSort.fromJson(Map<String, dynamic> json) =>
      _$DataRequirementSortFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DataRequirementSortToJson(this);

  @override
  DataRequirementSort clone() => throw UnimplementedError();
  @override
  DataRequirementSort copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? path,
    Element? pathElement,
    SortDirection? direction,
    Element? directionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DataRequirementSort(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      path: path ?? this.path,
      pathElement: pathElement ?? this.pathElement,
      direction: direction ?? this.direction,
      directionElement: directionElement ?? this.directionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory DataRequirementSort.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirementSort.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DataRequirementSort.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DataRequirementSort cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DataRequirementSort.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DataRequirementSort.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
