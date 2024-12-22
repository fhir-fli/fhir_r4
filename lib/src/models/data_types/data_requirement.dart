import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [DataRequirement]
/// Describes a required data item for evaluation in terms of the type of
/// data, and optional code or date-based filters of the data.
class DataRequirement extends DataType
    implements
        ValueXParametersParameter,
        DefinitionXResearchElementDefinitionCharacteristic,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [DataRequirement]

  const DataRequirement({
    super.id,
    super.extension_,
    required this.type,
    this.profile,
    this.subjectX,
    this.mustSupport,
    this.codeFilter,
    this.dateFilter,
    this.limit,
    this.sort,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DataRequirement.fromJson(
    Map<String, dynamic> json,
  ) {
    return DataRequirement(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<FHIRAllTypes>(
        json,
        'type',
        FHIRAllTypes.fromJson,
      )!,
      profile: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
      ),
      subjectX: JsonParser.parsePolymorphic<SubjectXDataRequirement>(json, {
        'subjectCodeableConcept': CodeableConcept.fromJson,
        'subjectReference': Reference.fromJson,
      }),
      mustSupport: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'mustSupport',
        FhirString.fromJson,
      ),
      codeFilter: (json['codeFilter'] as List<dynamic>?)
          ?.map<DataRequirementCodeFilter>(
            (v) => DataRequirementCodeFilter.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      dateFilter: (json['dateFilter'] as List<dynamic>?)
          ?.map<DataRequirementDateFilter>(
            (v) => DataRequirementDateFilter.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      limit: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'limit',
        FhirPositiveInt.fromJson,
      ),
      sort: (json['sort'] as List<dynamic>?)
          ?.map<DataRequirementSort>(
            (v) => DataRequirementSort.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DataRequirement]
  /// from a [String] or [YamlMap] object
  factory DataRequirement.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DataRequirement.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DataRequirement.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DataRequirement '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DataRequirement]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DataRequirement.fromJsonString(
    String source,
  ) {
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

  /// [profile]
  /// The profile of the required data, specified as the uri of the profile
  /// definition.
  final List<FhirCanonical>? profile;

  /// [subjectX]
  /// The intended subjects of the data requirement. If this element is not
  /// provided, a Patient subject is assumed.
  final SubjectXDataRequirement? subjectX;

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('type', type);
    addField('profile', profile);
    if (subjectX != null) {
      final fhirType = subjectX!.fhirType;
      addField('subject${fhirType.capitalize()}', subjectX);
    }

    addField('mustSupport', mustSupport);
    addField('codeFilter', codeFilter);
    addField('dateFilter', dateFilter);
    addField('limit', limit);
    addField('sort', sort);
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
    SubjectXDataRequirement? subjectX,
    List<FhirString>? mustSupport,
    List<DataRequirementCodeFilter>? codeFilter,
    List<DataRequirementDateFilter>? dateFilter,
    FhirPositiveInt? limit,
    List<DataRequirementSort>? sort,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return DataRequirement(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      profile: profile ?? this.profile,
      subjectX: subjectX ?? this.subjectX,
      mustSupport: mustSupport ?? this.mustSupport,
      codeFilter: codeFilter ?? this.codeFilter,
      dateFilter: dateFilter ?? this.dateFilter,
      limit: limit ?? this.limit,
      sort: sort ?? this.sort,
    );
  }
}

/// [DataRequirementCodeFilter]
/// Code filters specify additional constraints on the data, specifying the
/// value set of interest for a particular element of the data. Each code
/// filter defines an additional constraint on the data, i.e. code filters
/// are AND'ed, not OR'ed.
class DataRequirementCodeFilter extends Element {
  /// Primary constructor for
  /// [DataRequirementCodeFilter]

  const DataRequirementCodeFilter({
    super.id,
    super.extension_,
    this.path,
    this.searchParam,
    this.valueSet,
    this.code,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DataRequirementCodeFilter.fromJson(
    Map<String, dynamic> json,
  ) {
    return DataRequirementCodeFilter(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
      ),
      searchParam: JsonParser.parsePrimitive<FhirString>(
        json,
        'searchParam',
        FhirString.fromJson,
      ),
      valueSet: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'valueSet',
        FhirCanonical.fromJson,
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DataRequirementCodeFilter]
  /// from a [String] or [YamlMap] object
  factory DataRequirementCodeFilter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DataRequirementCodeFilter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DataRequirementCodeFilter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DataRequirementCodeFilter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DataRequirementCodeFilter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DataRequirementCodeFilter.fromJsonString(
    String source,
  ) {
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('path', path);
    addField('searchParam', searchParam);
    addField('valueSet', valueSet);
    addField('code', code);
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
  }) {
    return DataRequirementCodeFilter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      path: path ?? this.path,
      searchParam: searchParam ?? this.searchParam,
      valueSet: valueSet ?? this.valueSet,
      code: code ?? this.code,
    );
  }
}

/// [DataRequirementDateFilter]
/// Date filters specify additional constraints on the data in terms of the
/// applicable date range for specific elements. Each date filter specifies
/// an additional constraint on the data, i.e. date filters are AND'ed, not
/// OR'ed.
class DataRequirementDateFilter extends Element {
  /// Primary constructor for
  /// [DataRequirementDateFilter]

  const DataRequirementDateFilter({
    super.id,
    super.extension_,
    this.path,
    this.searchParam,
    this.valueX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DataRequirementDateFilter.fromJson(
    Map<String, dynamic> json,
  ) {
    return DataRequirementDateFilter(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
      ),
      searchParam: JsonParser.parsePrimitive<FhirString>(
        json,
        'searchParam',
        FhirString.fromJson,
      ),
      valueX:
          JsonParser.parsePolymorphic<ValueXDataRequirementDateFilter>(json, {
        'valueDateTime': FhirDateTime.fromJson,
        'valuePeriod': Period.fromJson,
        'valueDuration': FhirDuration.fromJson,
      }),
    );
  }

  /// Deserialize [DataRequirementDateFilter]
  /// from a [String] or [YamlMap] object
  factory DataRequirementDateFilter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DataRequirementDateFilter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DataRequirementDateFilter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DataRequirementDateFilter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DataRequirementDateFilter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DataRequirementDateFilter.fromJsonString(
    String source,
  ) {
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

  /// [searchParam]
  /// A date parameter that refers to a search parameter defined on the
  /// specified type of the DataRequirement, and which searches on elements
  /// of type date, dateTime, Period, Schedule, or Timing.
  final FhirString? searchParam;

  /// [valueX]
  /// The value of the filter. If period is specified, the filter will return
  /// only those data items that fall within the bounds determined by the
  /// Period, inclusive of the period boundaries. If dateTime is specified,
  /// the filter will return only those data items that are equal to the
  /// specified dateTime. If a Duration is specified, the filter will return
  /// only those data items that fall within Duration before now.
  final ValueXDataRequirementDateFilter? valueX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('path', path);
    addField('searchParam', searchParam);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalize()}', valueX);
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
    ValueXDataRequirementDateFilter? valueX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return DataRequirementDateFilter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      path: path ?? this.path,
      searchParam: searchParam ?? this.searchParam,
      valueX: valueX ?? this.valueX,
    );
  }
}

/// [DataRequirementSort]
/// Specifies the order of the results to be returned.
class DataRequirementSort extends Element {
  /// Primary constructor for
  /// [DataRequirementSort]

  const DataRequirementSort({
    super.id,
    super.extension_,
    required this.path,
    required this.direction,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DataRequirementSort.fromJson(
    Map<String, dynamic> json,
  ) {
    return DataRequirementSort(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
      )!,
      direction: JsonParser.parsePrimitive<SortDirection>(
        json,
        'direction',
        SortDirection.fromJson,
      )!,
    );
  }

  /// Deserialize [DataRequirementSort]
  /// from a [String] or [YamlMap] object
  factory DataRequirementSort.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DataRequirementSort.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DataRequirementSort.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DataRequirementSort '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DataRequirementSort]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DataRequirementSort.fromJsonString(
    String source,
  ) {
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

  /// [direction]
  /// The direction of the sort, ascending or descending.
  final SortDirection direction;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('path', path);
    addField('direction', direction);
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
  }) {
    return DataRequirementSort(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      path: path ?? this.path,
      direction: direction ?? this.direction,
    );
  }
}
