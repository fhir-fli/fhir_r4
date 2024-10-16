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
    this.extension_,
    required this.type,
    this.profile,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.mustSupport,
    this.codeFilter,
    this.dateFilter,
    this.limit,
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
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: FHIRAllTypes.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      profile: parsePrimitiveList<FhirCanonical>(
          json['profile'] as List<dynamic>?, json['_profile'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
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
      mustSupport: parsePrimitiveList<FhirString>(
          json['mustSupport'] as List<dynamic>?,
          json['_mustSupport'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      codeFilter: json['codeFilter'] != null
          ? (json['codeFilter'] as List<dynamic>)
              .map<DataRequirementCodeFilter>(
                (v) => DataRequirementCodeFilter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      dateFilter: json['dateFilter'] != null
          ? (json['dateFilter'] as List<dynamic>)
              .map<DataRequirementDateFilter>(
                (v) => DataRequirementDateFilter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      limit: json['limit'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['limit'],
              '_value': json['_limit'],
            })
          : null,
      sort: json['sort'] != null
          ? (json['sort'] as List<dynamic>)
              .map<DataRequirementSort>(
                (v) => DataRequirementSort.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [DataRequirement] from a [String]
  /// or [YamlMap] object
  factory DataRequirement.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DataRequirement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('DataRequirement cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DataRequirement]
  /// that takes in a [String]
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// The type of the required data, specified as the type name of a
  /// resource. For profiles, this value is set to the type of the base
  /// resource of the profile.
  final FHIRAllTypes type;

  /// [profile]
  /// The profile of the required data, specified as the uri of the profile
  /// definition.
  final List<FhirCanonical>? profile;

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

  /// [sort]
  /// Specifies the order of the results to be returned.
  final List<DataRequirementSort>? sort;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    final fieldJson2 = type.toJson();
    json['type'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_type'] = fieldJson2['_value'];
    }

    if (profile != null && profile!.isNotEmpty) {
      final fieldJson3 = profile!.map((e) => e.toJson()).toList();
      json['profile'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_profile'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (subjectCodeableConcept != null) {
      final fieldJson4 = subjectCodeableConcept!.toJson();
      json['subjectCodeableConcept'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_subjectCodeableConcept'] = fieldJson4['_value'];
      }
    }

    if (subjectReference != null) {
      final fieldJson5 = subjectReference!.toJson();
      json['subjectReference'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_subjectReference'] = fieldJson5['_value'];
      }
    }

    if (mustSupport != null && mustSupport!.isNotEmpty) {
      final fieldJson6 = mustSupport!.map((e) => e.toJson()).toList();
      json['mustSupport'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_mustSupport'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (codeFilter != null && codeFilter!.isNotEmpty) {
      final fieldJson7 = codeFilter!.map((e) => e.toJson()).toList();
      json['codeFilter'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_codeFilter'] = fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (dateFilter != null && dateFilter!.isNotEmpty) {
      final fieldJson8 = dateFilter!.map((e) => e.toJson()).toList();
      json['dateFilter'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_dateFilter'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (limit != null) {
      final fieldJson9 = limit!.toJson();
      json['limit'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_limit'] = fieldJson9['_value'];
      }
    }

    if (sort != null && sort!.isNotEmpty) {
      final fieldJson10 = sort!.map((e) => e.toJson()).toList();
      json['sort'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_sort'] = fieldJson10.map((e) => e['_value']).toList();
      }
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
    List<FhirCanonical>? profile,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    List<FhirString>? mustSupport,
    List<DataRequirementCodeFilter>? codeFilter,
    List<DataRequirementDateFilter>? dateFilter,
    FhirPositiveInt? limit,
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
      profile: profile ?? this.profile,
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
      mustSupport: mustSupport ?? this.mustSupport,
      codeFilter: codeFilter ?? this.codeFilter,
      dateFilter: dateFilter ?? this.dateFilter,
      limit: limit ?? this.limit,
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
    this.extension_,
    this.path,
    this.searchParam,
    this.valueSet,
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
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      path: json['path'] != null
          ? FhirString.fromJson({
              'value': json['path'],
              '_value': json['_path'],
            })
          : null,
      searchParam: json['searchParam'] != null
          ? FhirString.fromJson({
              'value': json['searchParam'],
              '_value': json['_searchParam'],
            })
          : null,
      valueSet: json['valueSet'] != null
          ? FhirCanonical.fromJson({
              'value': json['valueSet'],
              '_value': json['_valueSet'],
            })
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [DataRequirementCodeFilter] from a [String]
  /// or [YamlMap] object
  factory DataRequirementCodeFilter.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirementCodeFilter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DataRequirementCodeFilter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DataRequirementCodeFilter cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DataRequirementCodeFilter]
  /// that takes in a [String]
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [searchParam]
  /// A token parameter that refers to a search parameter defined on the
  /// specified type of the DataRequirement, and which searches on elements
  /// of type code, Coding, or CodeableConcept.
  final FhirString? searchParam;

  /// [valueSet]
  /// The valueset for the code filter. The valueSet and code elements are
  /// additive. If valueSet is specified, the filter will return only those
  /// data items for which the value of the code-valued element specified in
  /// the path is a member of the specified valueset.
  final FhirCanonical? valueSet;

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
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (path != null) {
      final fieldJson2 = path!.toJson();
      json['path'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_path'] = fieldJson2['_value'];
      }
    }

    if (searchParam != null) {
      final fieldJson3 = searchParam!.toJson();
      json['searchParam'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_searchParam'] = fieldJson3['_value'];
      }
    }

    if (valueSet != null) {
      final fieldJson4 = valueSet!.toJson();
      json['valueSet'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueSet'] = fieldJson4['_value'];
      }
    }

    if (code != null && code!.isNotEmpty) {
      final fieldJson5 = code!.map((e) => e.toJson()).toList();
      json['code'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_code'] = fieldJson5.map((e) => e['_value']).toList();
      }
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
    FhirString? searchParam,
    FhirCanonical? valueSet,
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
      searchParam: searchParam ?? this.searchParam,
      valueSet: valueSet ?? this.valueSet,
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
    this.extension_,
    this.path,
    this.searchParam,
    this.valueDateTime,
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
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      path: json['path'] != null
          ? FhirString.fromJson({
              'value': json['path'],
              '_value': json['_path'],
            })
          : null,
      searchParam: json['searchParam'] != null
          ? FhirString.fromJson({
              'value': json['searchParam'],
              '_value': json['_searchParam'],
            })
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['valueDateTime'],
              '_value': json['_valueDateTime'],
            })
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

  /// Deserialize [DataRequirementDateFilter] from a [String]
  /// or [YamlMap] object
  factory DataRequirementDateFilter.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirementDateFilter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DataRequirementDateFilter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DataRequirementDateFilter cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DataRequirementDateFilter]
  /// that takes in a [String]
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [searchParam]
  /// A date parameter that refers to a search parameter defined on the
  /// specified type of the DataRequirement, and which searches on elements
  /// of type date, dateTime, Period, Schedule, or Timing.
  final FhirString? searchParam;

  /// [valueDateTime]
  /// The value of the filter. If period is specified, the filter will return
  /// only those data items that fall within the bounds determined by the
  /// Period, inclusive of the period boundaries. If dateTime is specified,
  /// the filter will return only those data items that are equal to the
  /// specified dateTime. If a Duration is specified, the filter will return
  /// only those data items that fall within Duration before now.
  final FhirDateTime? valueDateTime;

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
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (path != null) {
      final fieldJson2 = path!.toJson();
      json['path'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_path'] = fieldJson2['_value'];
      }
    }

    if (searchParam != null) {
      final fieldJson3 = searchParam!.toJson();
      json['searchParam'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_searchParam'] = fieldJson3['_value'];
      }
    }

    if (valueDateTime != null) {
      final fieldJson4 = valueDateTime!.toJson();
      json['valueDateTime'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueDateTime'] = fieldJson4['_value'];
      }
    }

    if (valuePeriod != null) {
      final fieldJson5 = valuePeriod!.toJson();
      json['valuePeriod'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_valuePeriod'] = fieldJson5['_value'];
      }
    }

    if (valueDuration != null) {
      final fieldJson6 = valueDuration!.toJson();
      json['valueDuration'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueDuration'] = fieldJson6['_value'];
      }
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
    FhirString? searchParam,
    FhirDateTime? valueDateTime,
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
      searchParam: searchParam ?? this.searchParam,
      valueDateTime: valueDateTime ?? this.valueDateTime,
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
    this.extension_,
    required this.path,
    required this.direction,
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
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      path: FhirString.fromJson({
        'value': json['path'],
        '_value': json['_path'],
      }),
      direction: SortDirection.fromJson({
        'value': json['direction'],
        '_value': json['_direction'],
      }),
    );
  }

  /// Deserialize [DataRequirementSort] from a [String]
  /// or [YamlMap] object
  factory DataRequirementSort.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirementSort.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DataRequirementSort.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DataRequirementSort cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DataRequirementSort]
  /// that takes in a [String]
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [path]
  /// The attribute of the sort. The specified path must be resolvable from
  /// the type of the required data. The path is allowed to contain
  /// qualifiers (.) to traverse sub-elements, as well as indexers ([x]) to
  /// traverse multiple-cardinality sub-elements. Note that the index must be
  /// an integer constant.
  final FhirString path;

  /// [direction]
  /// The direction of the sort, ascending or descending.
  final SortDirection direction;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    final fieldJson2 = path.toJson();
    json['path'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_path'] = fieldJson2['_value'];
    }

    final fieldJson3 = direction.toJson();
    json['direction'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_direction'] = fieldJson3['_value'];
    }

    return json;
  }

  @override
  DataRequirementSort clone() => throw UnimplementedError();
  @override
  DataRequirementSort copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? path,
    SortDirection? direction,
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
      direction: direction ?? this.direction,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
