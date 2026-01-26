import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'data_requirement.g.dart';

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
    SubjectXDataRequirement? subjectX,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    this.mustSupport,
    this.codeFilter,
    this.dateFilter,
    this.limit,
    this.sort,
    super.disallowExtensions,
  }) : subjectX = subjectX ?? subjectCodeableConcept ?? subjectReference;

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
              {...v as Map<String, dynamic>},
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
      subjectX: JsonParser.parsePolymorphic<SubjectXDataRequirement>(
        json,
        {
          'subjectCodeableConcept': CodeableConcept.fromJson,
          'subjectReference': Reference.fromJson,
        },
      ),
      mustSupport: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'mustSupport',
        FhirString.fromJson,
      ),
      codeFilter: (json['codeFilter'] as List<dynamic>?)
          ?.map<DataRequirementCodeFilter>(
            (v) => DataRequirementCodeFilter.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      dateFilter: (json['dateFilter'] as List<dynamic>?)
          ?.map<DataRequirementDateFilter>(
            (v) => DataRequirementDateFilter.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return DataRequirement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [subjectCodeableConcept] as a CodeableConcept
  CodeableConcept? get subjectCodeableConcept =>
      subjectX?.isAs<CodeableConcept>();

  /// Getter for [subjectReference] as a Reference
  Reference? get subjectReference => subjectX?.isAs<Reference>();

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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'type',
      type,
    );
    addField(
      'profile',
      profile,
    );
    if (subjectX != null) {
      final fhirType = subjectX!.fhirType;
      addField(
        'subject${fhirType.capitalize()}',
        subjectX,
      );
    }

    addField(
      'mustSupport',
      mustSupport,
    );
    addField(
      'codeFilter',
      codeFilter,
    );
    addField(
      'dateFilter',
      dateFilter,
    );
    addField(
      'limit',
      limit,
    );
    addField(
      'sort',
      sort,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'type',
      'profile',
      'subjectX',
      'mustSupport',
      'codeFilter',
      'dateFilter',
      'limit',
      'sort',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'type':
        fields.add(type);
      case 'profile':
        if (profile != null) {
          fields.addAll(profile!);
        }
      case 'subject':
        if (subjectX != null) {
          fields.add(subjectX!);
        }
      case 'subjectX':
        if (subjectX != null) {
          fields.add(subjectX!);
        }
      case 'subjectCodeableConcept':
        if (subjectX is CodeableConcept) {
          fields.add(subjectX!);
        }
      case 'subjectReference':
        if (subjectX is Reference) {
          fields.add(subjectX!);
        }
      case 'mustSupport':
        if (mustSupport != null) {
          fields.addAll(mustSupport!);
        }
      case 'codeFilter':
        if (codeFilter != null) {
          fields.addAll(codeFilter!);
        }
      case 'dateFilter':
        if (dateFilter != null) {
          fields.addAll(dateFilter!);
        }
      case 'limit':
        if (limit != null) {
          fields.add(limit!);
        }
      case 'sort':
        if (sort != null) {
          fields.addAll(sort!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DataRequirement clone() => copyWith();

  /// Copy function for [DataRequirement]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DataRequirementCopyWith<DataRequirement> get copyWith =>
      _$DataRequirementCopyWithImpl<DataRequirement>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DataRequirement) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirCanonical>(
      profile,
      o.profile,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      subjectX,
      o.subjectX,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirString>(
      mustSupport,
      o.mustSupport,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<DataRequirementCodeFilter>(
      codeFilter,
      o.codeFilter,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<DataRequirementDateFilter>(
      dateFilter,
      o.dateFilter,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      limit,
      o.limit,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<DataRequirementSort>(
      sort,
      o.sort,
    )) {
      return false;
    }
    return true;
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
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return DataRequirementCodeFilter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'path',
      path,
    );
    addField(
      'searchParam',
      searchParam,
    );
    addField(
      'valueSet',
      valueSet,
    );
    addField(
      'code',
      code,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'path',
      'searchParam',
      'valueSet',
      'code',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'path':
        if (path != null) {
          fields.add(path!);
        }
      case 'searchParam':
        if (searchParam != null) {
          fields.add(searchParam!);
        }
      case 'valueSet':
        if (valueSet != null) {
          fields.add(valueSet!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DataRequirementCodeFilter clone() => copyWith();

  /// Copy function for [DataRequirementCodeFilter]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DataRequirementCodeFilterCopyWith<DataRequirementCodeFilter> get copyWith =>
      _$DataRequirementCodeFilterCopyWithImpl<DataRequirementCodeFilter>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DataRequirementCodeFilter) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      path,
      o.path,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      searchParam,
      o.searchParam,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      valueSet,
      o.valueSet,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Coding>(
      code,
      o.code,
    )) {
      return false;
    }
    return true;
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
    ValueXDataRequirementDateFilter? valueX,
    FhirDateTime? valueDateTime,
    Period? valuePeriod,
    FhirDuration? valueDuration,
    super.disallowExtensions,
  }) : valueX = valueX ?? valueDateTime ?? valuePeriod ?? valueDuration;

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
              {...v as Map<String, dynamic>},
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
      valueX: JsonParser.parsePolymorphic<ValueXDataRequirementDateFilter>(
        json,
        {
          'valueDateTime': FhirDateTime.fromJson,
          'valuePeriod': Period.fromJson,
          'valueDuration': FhirDuration.fromJson,
        },
      ),
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
    if (json is Map<String, dynamic>) {
      return DataRequirementDateFilter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [valueDateTime] as a FhirDateTime
  FhirDateTime? get valueDateTime => valueX?.isAs<FhirDateTime>();

  /// Getter for [valuePeriod] as a Period
  Period? get valuePeriod => valueX?.isAs<Period>();

  /// Getter for [valueDuration] as a FhirDuration
  FhirDuration? get valueDuration => valueX?.isAs<FhirDuration>();
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'path',
      path,
    );
    addField(
      'searchParam',
      searchParam,
    );
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField(
        'value${fhirType.capitalize()}',
        valueX,
      );
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'path',
      'searchParam',
      'valueX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'path':
        if (path != null) {
          fields.add(path!);
        }
      case 'searchParam':
        if (searchParam != null) {
          fields.add(searchParam!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTime) {
          fields.add(valueX!);
        }
      case 'valuePeriod':
        if (valueX is Period) {
          fields.add(valueX!);
        }
      case 'valueDuration':
        if (valueX is FhirDuration) {
          fields.add(valueX!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DataRequirementDateFilter clone() => copyWith();

  /// Copy function for [DataRequirementDateFilter]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DataRequirementDateFilterCopyWith<DataRequirementDateFilter> get copyWith =>
      _$DataRequirementDateFilterCopyWithImpl<DataRequirementDateFilter>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DataRequirementDateFilter) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      path,
      o.path,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      searchParam,
      o.searchParam,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
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
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return DataRequirementSort.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'path',
      path,
    );
    addField(
      'direction',
      direction,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'path',
      'direction',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'path':
        fields.add(path);
      case 'direction':
        fields.add(direction);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DataRequirementSort clone() => copyWith();

  /// Copy function for [DataRequirementSort]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DataRequirementSortCopyWith<DataRequirementSort> get copyWith =>
      _$DataRequirementSortCopyWithImpl<DataRequirementSort>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DataRequirementSort) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      path,
      o.path,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      direction,
      o.direction,
    )) {
      return false;
    }
    return true;
  }
}
