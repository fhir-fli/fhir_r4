import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [DataRequirement]
/// Describes a required data item for evaluation in terms of the type of
/// data, and optional code or date-based filters of the data.
class DataRequirement extends DataType {
  /// Primary constructor for [DataRequirement]

  DataRequirement({
    super.id,
    super.extension_,
    required this.type,

    /// Extensions for [type]
    this.typeElement,
    this.profile,

    /// Extensions for [profile]
    this.profileElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.mustSupport,

    /// Extensions for [mustSupport]
    this.mustSupportElement,
    this.codeFilter,
    this.dateFilter,
    this.limit,

    /// Extensions for [limit]
    this.limitElement,
    this.sort,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DataRequirement.fromJson(Map<String, dynamic> json) {
    return DataRequirement(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: FHIRAllTypes.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(
              json['_type'] as Map<String, dynamic>,
            )
          : null,
      profile: json['profile'] != null
          ? (json['profile'] as List<dynamic>)
              .map<FhirCanonical>(
                (dynamic v) => FhirCanonical.fromJson(v as dynamic),
              )
              .toList()
          : null,
      profileElement: json['_profile'] != null
          ? (json['_profile'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      subjectCodeableConcept: json['subjectCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['subjectCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      subjectReference: json['subjectReference'] != null
          ? Reference.fromJson(
              json['subjectReference'] as Map<String, dynamic>,
            )
          : null,
      mustSupport: json['mustSupport'] != null
          ? (json['mustSupport'] as List<dynamic>)
              .map<FhirString>(
                (dynamic v) => FhirString.fromJson(v as dynamic),
              )
              .toList()
          : null,
      mustSupportElement: json['_mustSupport'] != null
          ? (json['_mustSupport'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      codeFilter: json['codeFilter'] != null
          ? (json['codeFilter'] as List<dynamic>)
              .map<DataRequirementCodeFilter>(
                (dynamic v) => DataRequirementCodeFilter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      dateFilter: json['dateFilter'] != null
          ? (json['dateFilter'] as List<dynamic>)
              .map<DataRequirementDateFilter>(
                (dynamic v) => DataRequirementDateFilter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      limit: json['limit'] != null
          ? FhirPositiveInt.fromJson(json['limit'])
          : null,
      limitElement: json['_limit'] != null
          ? Element.fromJson(
              json['_limit'] as Map<String, dynamic>,
            )
          : null,
      sort: json['sort'] != null
          ? (json['sort'] as List<dynamic>)
              .map<DataRequirementSort>(
                (dynamic v) => DataRequirementSort.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [DataRequirement] from a [String] or [YamlMap] object
  factory DataRequirement.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DataRequirement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DataRequirement cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DataRequirement] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DataRequirement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DataRequirement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DataRequirement';

  /// [type]
  /// The type of the required data, specified as the type name of a
  /// resource. For profiles, this value is set to the type of the base
  /// resource of the profile.
  final FHIRAllTypes type;

  /// Extensions for [type]
  final Element? typeElement;

  /// [profile]
  /// The profile of the required data, specified as the uri of the profile
  /// definition.
  final List<FhirCanonical>? profile;

  /// Extensions for [profile]
  final List<Element>? profileElement;

  /// [subjectCodeableConcept]
  /// The intended subjects of the data requirement. If this element is not
  /// provided, a Patient subject is assumed.
  final CodeableConcept? subjectCodeableConcept;

  /// [subjectReference]
  /// The intended subjects of the data requirement. If this element is not
  /// provided, a Patient subject is assumed.
  final Reference? subjectReference;

  /// [mustSupport]
  /// Indicates that specific elements of the type are referenced by the
  /// knowledge module and must be supported by the consumer in order to
  /// obtain an effective evaluation. This does not mean that a value is
  /// required for this element, only that the consuming system must
  /// understand the element and be able to provide values for it if they are
  /// available.
  ///
  /// The value of mustSupport SHALL be a FHIRPath resolveable on the type of
  /// the DataRequirement. The path SHALL consist only of identifiers,
  /// constant indexers, and .resolve() (see the [Simple FHIRPath
  /// Profile](fhirpath.html#simple) for full details).
  final List<FhirString>? mustSupport;

  /// Extensions for [mustSupport]
  final List<Element>? mustSupportElement;

  /// [codeFilter]
  /// Code filters specify additional constraints on the data, specifying the
  /// value set of interest for a particular element of the data. Each code
  /// filter defines an additional constraint on the data, i.e. code filters
  /// are AND'ed, not OR'ed.
  final List<DataRequirementCodeFilter>? codeFilter;

  /// [dateFilter]
  /// Date filters specify additional constraints on the data in terms of the
  /// applicable date range for specific elements. Each date filter specifies
  /// an additional constraint on the data, i.e. date filters are AND'ed, not
  /// OR'ed.
  final List<DataRequirementDateFilter>? dateFilter;

  /// [limit]
  /// Specifies a maximum number of results that are required (uses the
  /// _count search parameter).
  final FhirPositiveInt? limit;

  /// Extensions for [limit]
  final Element? limitElement;

  /// [sort]
  /// Specifies the order of the results to be returned.
  final List<DataRequirementSort>? sort;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['type'] = type.toJson();
    if (profile != null && profile!.isNotEmpty) {
      json['profile'] = profile!.map((FhirCanonical v) => v.toJson()).toList();
    }
    if (profileElement != null && profileElement!.isNotEmpty) {
      json['_profile'] =
          profileElement!.map((Element v) => v.toJson()).toList();
    }
    if (subjectCodeableConcept != null) {
      json['subjectCodeableConcept'] = subjectCodeableConcept!.toJson();
    }
    if (subjectReference != null) {
      json['subjectReference'] = subjectReference!.toJson();
    }
    if (mustSupport != null && mustSupport!.isNotEmpty) {
      json['mustSupport'] =
          mustSupport!.map((FhirString v) => v.toJson()).toList();
    }
    if (mustSupportElement != null && mustSupportElement!.isNotEmpty) {
      json['_mustSupport'] =
          mustSupportElement!.map((Element v) => v.toJson()).toList();
    }
    if (codeFilter != null && codeFilter!.isNotEmpty) {
      json['codeFilter'] =
          codeFilter!.map((DataRequirementCodeFilter v) => v.toJson()).toList();
    }
    if (dateFilter != null && dateFilter!.isNotEmpty) {
      json['dateFilter'] =
          dateFilter!.map((DataRequirementDateFilter v) => v.toJson()).toList();
    }
    if (limit?.value != null) {
      json['limit'] = limit!.toJson();
    }
    if (limitElement != null) {
      json['_limit'] = limitElement!.toJson();
    }
    if (sort != null && sort!.isNotEmpty) {
      json['sort'] = sort!.map((DataRequirementSort v) => v.toJson()).toList();
    }
    return json;
  }

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
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
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
}

/// [DataRequirementCodeFilter]
/// Code filters specify additional constraints on the data, specifying the
/// value set of interest for a particular element of the data. Each code
/// filter defines an additional constraint on the data, i.e. code filters
/// are AND'ed, not OR'ed.
class DataRequirementCodeFilter extends Element {
  /// Primary constructor for [DataRequirementCodeFilter]

  DataRequirementCodeFilter({
    super.id,
    super.extension_,
    this.path,

    /// Extensions for [path]
    this.pathElement,
    this.searchParam,

    /// Extensions for [searchParam]
    this.searchParamElement,
    this.valueSet,

    /// Extensions for [valueSet]
    this.valueSetElement,
    this.code,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DataRequirementCodeFilter.fromJson(Map<String, dynamic> json) {
    return DataRequirementCodeFilter(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      path: json['path'] != null ? FhirString.fromJson(json['path']) : null,
      pathElement: json['_path'] != null
          ? Element.fromJson(
              json['_path'] as Map<String, dynamic>,
            )
          : null,
      searchParam: json['searchParam'] != null
          ? FhirString.fromJson(json['searchParam'])
          : null,
      searchParamElement: json['_searchParam'] != null
          ? Element.fromJson(
              json['_searchParam'] as Map<String, dynamic>,
            )
          : null,
      valueSet: json['valueSet'] != null
          ? FhirCanonical.fromJson(json['valueSet'])
          : null,
      valueSetElement: json['_valueSet'] != null
          ? Element.fromJson(
              json['_valueSet'] as Map<String, dynamic>,
            )
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<Coding>(
                (dynamic v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [DataRequirementCodeFilter] from a [String] or [YamlMap] object
  factory DataRequirementCodeFilter.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirementCodeFilter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DataRequirementCodeFilter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DataRequirementCodeFilter cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DataRequirementCodeFilter] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DataRequirementCodeFilter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DataRequirementCodeFilter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DataRequirementCodeFilter';

  /// [path]
  /// The code-valued attribute of the filter. The specified path SHALL be a
  /// FHIRPath resolveable on the specified type of the DataRequirement, and
  /// SHALL consist only of identifiers, constant indexers, and .resolve().
  /// The path is allowed to contain qualifiers (.) to traverse sub-elements,
  /// as well as indexers ([x]) to traverse multiple-cardinality sub-elements
  /// (see the [Simple FHIRPath Profile](fhirpath.html#simple) for full
  /// details). Note that the index must be an integer constant. The path
  /// must resolve to an element of type code, Coding, or CodeableConcept.
  final FhirString? path;

  /// Extensions for [path]
  final Element? pathElement;

  /// [searchParam]
  /// A token parameter that refers to a search parameter defined on the
  /// specified type of the DataRequirement, and which searches on elements
  /// of type code, Coding, or CodeableConcept.
  final FhirString? searchParam;

  /// Extensions for [searchParam]
  final Element? searchParamElement;

  /// [valueSet]
  /// The valueset for the code filter. The valueSet and code elements are
  /// additive. If valueSet is specified, the filter will return only those
  /// data items for which the value of the code-valued element specified in
  /// the path is a member of the specified valueset.
  final FhirCanonical? valueSet;

  /// Extensions for [valueSet]
  final Element? valueSetElement;

  /// [code]
  /// The codes for the code filter. If values are given, the filter will
  /// return only those data items for which the code-valued attribute
  /// specified by the path has a value that is one of the specified codes.
  /// If codes are specified in addition to a value set, the filter returns
  /// items matching a code in the value set or one of the specified codes.
  final List<Coding>? code;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (path?.value != null) {
      json['path'] = path!.toJson();
    }
    if (pathElement != null) {
      json['_path'] = pathElement!.toJson();
    }
    if (searchParam?.value != null) {
      json['searchParam'] = searchParam!.toJson();
    }
    if (searchParamElement != null) {
      json['_searchParam'] = searchParamElement!.toJson();
    }
    if (valueSet?.value != null) {
      json['valueSet'] = valueSet!.toJson();
    }
    if (valueSetElement != null) {
      json['_valueSet'] = valueSetElement!.toJson();
    }
    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((Coding v) => v.toJson()).toList();
    }
    return json;
  }

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
}

/// [DataRequirementDateFilter]
/// Date filters specify additional constraints on the data in terms of the
/// applicable date range for specific elements. Each date filter specifies
/// an additional constraint on the data, i.e. date filters are AND'ed, not
/// OR'ed.
class DataRequirementDateFilter extends Element {
  /// Primary constructor for [DataRequirementDateFilter]

  DataRequirementDateFilter({
    super.id,
    super.extension_,
    this.path,

    /// Extensions for [path]
    this.pathElement,
    this.searchParam,

    /// Extensions for [searchParam]
    this.searchParamElement,
    this.valueDateTime,

    /// Extensions for [valueDateTime]
    this.valueDateTimeElement,
    this.valuePeriod,
    this.valueDuration,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DataRequirementDateFilter.fromJson(Map<String, dynamic> json) {
    return DataRequirementDateFilter(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      path: json['path'] != null ? FhirString.fromJson(json['path']) : null,
      pathElement: json['_path'] != null
          ? Element.fromJson(
              json['_path'] as Map<String, dynamic>,
            )
          : null,
      searchParam: json['searchParam'] != null
          ? FhirString.fromJson(json['searchParam'])
          : null,
      searchParamElement: json['_searchParam'] != null
          ? Element.fromJson(
              json['_searchParam'] as Map<String, dynamic>,
            )
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime.fromJson(json['valueDateTime'])
          : null,
      valueDateTimeElement: json['_valueDateTime'] != null
          ? Element.fromJson(
              json['_valueDateTime'] as Map<String, dynamic>,
            )
          : null,
      valuePeriod: json['valuePeriod'] != null
          ? Period.fromJson(
              json['valuePeriod'] as Map<String, dynamic>,
            )
          : null,
      valueDuration: json['valueDuration'] != null
          ? FhirDuration.fromJson(
              json['valueDuration'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [DataRequirementDateFilter] from a [String] or [YamlMap] object
  factory DataRequirementDateFilter.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirementDateFilter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DataRequirementDateFilter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DataRequirementDateFilter cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DataRequirementDateFilter] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DataRequirementDateFilter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DataRequirementDateFilter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DataRequirementDateFilter';

  /// [path]
  /// The date-valued attribute of the filter. The specified path SHALL be a
  /// FHIRPath resolveable on the specified type of the DataRequirement, and
  /// SHALL consist only of identifiers, constant indexers, and .resolve().
  /// The path is allowed to contain qualifiers (.) to traverse sub-elements,
  /// as well as indexers ([x]) to traverse multiple-cardinality sub-elements
  /// (see the [Simple FHIRPath Profile](fhirpath.html#simple) for full
  /// details). Note that the index must be an integer constant. The path
  /// must resolve to an element of type date, dateTime, Period, Schedule, or
  /// Timing.
  final FhirString? path;

  /// Extensions for [path]
  final Element? pathElement;

  /// [searchParam]
  /// A date parameter that refers to a search parameter defined on the
  /// specified type of the DataRequirement, and which searches on elements
  /// of type date, dateTime, Period, Schedule, or Timing.
  final FhirString? searchParam;

  /// Extensions for [searchParam]
  final Element? searchParamElement;

  /// [valueDateTime]
  /// The value of the filter. If period is specified, the filter will return
  /// only those data items that fall within the bounds determined by the
  /// Period, inclusive of the period boundaries. If dateTime is specified,
  /// the filter will return only those data items that are equal to the
  /// specified dateTime. If a Duration is specified, the filter will return
  /// only those data items that fall within Duration before now.
  final FhirDateTime? valueDateTime;

  /// Extensions for [valueDateTime]
  final Element? valueDateTimeElement;

  /// [valuePeriod]
  /// The value of the filter. If period is specified, the filter will return
  /// only those data items that fall within the bounds determined by the
  /// Period, inclusive of the period boundaries. If dateTime is specified,
  /// the filter will return only those data items that are equal to the
  /// specified dateTime. If a Duration is specified, the filter will return
  /// only those data items that fall within Duration before now.
  final Period? valuePeriod;

  /// [valueDuration]
  /// The value of the filter. If period is specified, the filter will return
  /// only those data items that fall within the bounds determined by the
  /// Period, inclusive of the period boundaries. If dateTime is specified,
  /// the filter will return only those data items that are equal to the
  /// specified dateTime. If a Duration is specified, the filter will return
  /// only those data items that fall within Duration before now.
  final FhirDuration? valueDuration;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (path?.value != null) {
      json['path'] = path!.toJson();
    }
    if (pathElement != null) {
      json['_path'] = pathElement!.toJson();
    }
    if (searchParam?.value != null) {
      json['searchParam'] = searchParam!.toJson();
    }
    if (searchParamElement != null) {
      json['_searchParam'] = searchParamElement!.toJson();
    }
    if (valueDateTime?.value != null) {
      json['valueDateTime'] = valueDateTime!.toJson();
    }
    if (valueDateTimeElement != null) {
      json['_valueDateTime'] = valueDateTimeElement!.toJson();
    }
    if (valuePeriod != null) {
      json['valuePeriod'] = valuePeriod!.toJson();
    }
    if (valueDuration != null) {
      json['valueDuration'] = valueDuration!.toJson();
    }
    return json;
  }

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
}

/// [DataRequirementSort]
/// Specifies the order of the results to be returned.
class DataRequirementSort extends Element {
  /// Primary constructor for [DataRequirementSort]

  DataRequirementSort({
    super.id,
    super.extension_,
    required this.path,

    /// Extensions for [path]
    this.pathElement,
    required this.direction,

    /// Extensions for [direction]
    this.directionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DataRequirementSort.fromJson(Map<String, dynamic> json) {
    return DataRequirementSort(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      path: FhirString.fromJson(json['path']),
      pathElement: json['_path'] != null
          ? Element.fromJson(
              json['_path'] as Map<String, dynamic>,
            )
          : null,
      direction: SortDirection.fromJson(json['direction']),
      directionElement: json['_direction'] != null
          ? Element.fromJson(
              json['_direction'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [DataRequirementSort] from a [String] or [YamlMap] object
  factory DataRequirementSort.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirementSort.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DataRequirementSort.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DataRequirementSort cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DataRequirementSort] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DataRequirementSort.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DataRequirementSort.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DataRequirementSort';

  /// [path]
  /// The attribute of the sort. The specified path must be resolvable from
  /// the type of the required data. The path is allowed to contain
  /// qualifiers (.) to traverse sub-elements, as well as indexers ([x]) to
  /// traverse multiple-cardinality sub-elements. Note that the index must be
  /// an integer constant.
  final FhirString path;

  /// Extensions for [path]
  final Element? pathElement;

  /// [direction]
  /// The direction of the sort, ascending or descending.
  final SortDirection direction;

  /// Extensions for [direction]
  final Element? directionElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['path'] = path.toJson();
    if (pathElement != null) {
      json['_path'] = pathElement!.toJson();
    }
    json['direction'] = direction.toJson();
    return json;
  }

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
}
