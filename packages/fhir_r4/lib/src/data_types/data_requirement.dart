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
    super.objectPath = 'DataRequirement',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DataRequirement.empty() => DataRequirement(
        type: FHIRAllTypes.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DataRequirement.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'DataRequirement';
    return DataRequirement(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<FHIRAllTypes>(
        json,
        'type',
        FHIRAllTypes.fromJson,
        '$objectPath.type',
      )!,
      profile: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
        '$objectPath.profile',
      ),
      subjectX: JsonParser.parsePolymorphic<SubjectXDataRequirement>(
        json,
        {
          'subjectCodeableConcept': CodeableConcept.fromJson,
          'subjectReference': Reference.fromJson,
        },
        objectPath,
      ),
      mustSupport: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'mustSupport',
        FhirString.fromJson,
        '$objectPath.mustSupport',
      ),
      codeFilter: (json['codeFilter'] as List<dynamic>?)
          ?.map<DataRequirementCodeFilter>(
            (v) => DataRequirementCodeFilter.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.codeFilter',
              },
            ),
          )
          .toList(),
      dateFilter: (json['dateFilter'] as List<dynamic>?)
          ?.map<DataRequirementDateFilter>(
            (v) => DataRequirementDateFilter.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dateFilter',
              },
            ),
          )
          .toList(),
      limit: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'limit',
        FhirPositiveInt.fromJson,
        '$objectPath.limit',
      ),
      sort: (json['sort'] as List<dynamic>?)
          ?.map<DataRequirementSort>(
            (v) => DataRequirementSort.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.sort',
              },
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
        fields.add(subjectX!);
      case 'subjectX':
        fields.add(subjectX!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is FHIRAllTypes) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'profile':
        {
          if (child is List<FhirCanonical>) {
            // Add all elements from passed list
            final newList = [...?profile, ...child];
            return copyWith(profile: newList);
          } else if (child is FhirCanonical) {
            // Add single element to existing list or create new list
            final newList = [...?profile, child];
            return copyWith(profile: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subjectX':
        {
          if (child is SubjectXDataRequirement) {
            return copyWith(subjectX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(subjectX: child);
            }
            if (child is Reference) {
              return copyWith(subjectX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subjectCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(subjectX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subjectReference':
        {
          if (child is Reference) {
            return copyWith(subjectX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'mustSupport':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?mustSupport, ...child];
            return copyWith(mustSupport: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [...?mustSupport, child];
            return copyWith(mustSupport: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'codeFilter':
        {
          if (child is List<DataRequirementCodeFilter>) {
            // Add all elements from passed list
            final newList = [...?codeFilter, ...child];
            return copyWith(codeFilter: newList);
          } else if (child is DataRequirementCodeFilter) {
            // Add single element to existing list or create new list
            final newList = [...?codeFilter, child];
            return copyWith(codeFilter: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dateFilter':
        {
          if (child is List<DataRequirementDateFilter>) {
            // Add all elements from passed list
            final newList = [...?dateFilter, ...child];
            return copyWith(dateFilter: newList);
          } else if (child is DataRequirementDateFilter) {
            // Add single element to existing list or create new list
            final newList = [...?dateFilter, child];
            return copyWith(dateFilter: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'limit':
        {
          if (child is FhirPositiveInt) {
            return copyWith(limit: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sort':
        {
          if (child is List<DataRequirementSort>) {
            // Add all elements from passed list
            final newList = [...?sort, ...child];
            return copyWith(sort: newList);
          } else if (child is DataRequirementSort) {
            // Add single element to existing list or create new list
            final newList = [...?sort, child];
            return copyWith(sort: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'type':
        return ['FhirCode'];
      case 'profile':
        return ['FhirCanonical'];
      case 'subject':
      case 'subjectX':
        return ['CodeableConcept', 'Reference'];
      case 'subjectCodeableConcept':
        return ['CodeableConcept'];
      case 'subjectReference':
        return ['Reference'];
      case 'mustSupport':
        return ['FhirString'];
      case 'codeFilter':
        return ['DataRequirementCodeFilter'];
      case 'dateFilter':
        return ['DataRequirementDateFilter'];
      case 'limit':
        return ['FhirPositiveInt'];
      case 'sort':
        return ['DataRequirementSort'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DataRequirement]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DataRequirement createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: FHIRAllTypes.empty(),
          );
        }
      case 'profile':
        {
          return copyWith(
            profile: <FhirCanonical>[],
          );
        }
      case 'subject':
      case 'subjectX':
      case 'subjectCodeableConcept':
        {
          return copyWith(
            subjectX: CodeableConcept.empty(),
          );
        }
      case 'subjectReference':
        {
          return copyWith(
            subjectX: Reference.empty(),
          );
        }
      case 'mustSupport':
        {
          return copyWith(
            mustSupport: <FhirString>[],
          );
        }
      case 'codeFilter':
        {
          return copyWith(
            codeFilter: <DataRequirementCodeFilter>[],
          );
        }
      case 'dateFilter':
        {
          return copyWith(
            dateFilter: <DataRequirementDateFilter>[],
          );
        }
      case 'limit':
        {
          return copyWith(
            limit: FhirPositiveInt.empty(),
          );
        }
      case 'sort':
        {
          return copyWith(
            sort: <DataRequirementSort>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DataRequirement clear({
    bool id = false,
    bool extension_ = false,
    bool profile = false,
    bool subject = false,
    bool mustSupport = false,
    bool codeFilter = false,
    bool dateFilter = false,
    bool limit = false,
    bool sort = false,
  }) {
    return DataRequirement(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      type: type,
      profile: profile ? null : this.profile,
      subjectX: subject ? null : subjectX,
      mustSupport: mustSupport ? null : this.mustSupport,
      codeFilter: codeFilter ? null : this.codeFilter,
      dateFilter: dateFilter ? null : this.dateFilter,
      limit: limit ? null : this.limit,
      sort: sort ? null : this.sort,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return DataRequirement(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      profile: profile
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.profile',
                ),
              )
              .toList() ??
          this.profile,
      subjectX: subjectX?.copyWith(
            objectPath: '$newObjectPath.subjectX',
          ) as SubjectXDataRequirement? ??
          this.subjectX,
      mustSupport: mustSupport
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.mustSupport',
                ),
              )
              .toList() ??
          this.mustSupport,
      codeFilter: codeFilter
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.codeFilter',
                ),
              )
              .toList() ??
          this.codeFilter,
      dateFilter: dateFilter
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.dateFilter',
                ),
              )
              .toList() ??
          this.dateFilter,
      limit: limit?.copyWith(
            objectPath: '$newObjectPath.limit',
          ) ??
          this.limit,
      sort: sort
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.sort',
                ),
              )
              .toList() ??
          this.sort,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DataRequirement) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      profile,
      o.profile,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subjectX,
      o.subjectX,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      mustSupport,
      o.mustSupport,
    )) {
      return false;
    }
    if (!listEquals<DataRequirementCodeFilter>(
      codeFilter,
      o.codeFilter,
    )) {
      return false;
    }
    if (!listEquals<DataRequirementDateFilter>(
      dateFilter,
      o.dateFilter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      limit,
      o.limit,
    )) {
      return false;
    }
    if (!listEquals<DataRequirementSort>(
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
    super.objectPath = 'DataRequirementCodeFilter',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DataRequirementCodeFilter.empty() =>
      const DataRequirementCodeFilter();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DataRequirementCodeFilter.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'DataRequirementCodeFilter';
    return DataRequirementCodeFilter(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
        '$objectPath.path',
      ),
      searchParam: JsonParser.parsePrimitive<FhirString>(
        json,
        'searchParam',
        FhirString.fromJson,
        '$objectPath.searchParam',
      ),
      valueSet: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'valueSet',
        FhirCanonical.fromJson,
        '$objectPath.valueSet',
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'path':
        {
          if (child is FhirString) {
            return copyWith(path: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'searchParam':
        {
          if (child is FhirString) {
            return copyWith(searchParam: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueSet':
        {
          if (child is FhirCanonical) {
            return copyWith(valueSet: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is List<Coding>) {
            // Add all elements from passed list
            final newList = [...?code, ...child];
            return copyWith(code: newList);
          } else if (child is Coding) {
            // Add single element to existing list or create new list
            final newList = [...?code, child];
            return copyWith(code: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'path':
        return ['FhirString'];
      case 'searchParam':
        return ['FhirString'];
      case 'valueSet':
        return ['FhirCanonical'];
      case 'code':
        return ['Coding'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DataRequirementCodeFilter]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DataRequirementCodeFilter createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'path':
        {
          return copyWith(
            path: FhirString.empty(),
          );
        }
      case 'searchParam':
        {
          return copyWith(
            searchParam: FhirString.empty(),
          );
        }
      case 'valueSet':
        {
          return copyWith(
            valueSet: FhirCanonical.empty(),
          );
        }
      case 'code':
        {
          return copyWith(
            code: <Coding>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DataRequirementCodeFilter clear({
    bool id = false,
    bool extension_ = false,
    bool path = false,
    bool searchParam = false,
    bool valueSet = false,
    bool code = false,
  }) {
    return DataRequirementCodeFilter(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      path: path ? null : this.path,
      searchParam: searchParam ? null : this.searchParam,
      valueSet: valueSet ? null : this.valueSet,
      code: code ? null : this.code,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return DataRequirementCodeFilter(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      path: path?.copyWith(
            objectPath: '$newObjectPath.path',
          ) ??
          this.path,
      searchParam: searchParam?.copyWith(
            objectPath: '$newObjectPath.searchParam',
          ) ??
          this.searchParam,
      valueSet: valueSet?.copyWith(
            objectPath: '$newObjectPath.valueSet',
          ) ??
          this.valueSet,
      code: code
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.code',
                ),
              )
              .toList() ??
          this.code,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DataRequirementCodeFilter) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      path,
      o.path,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      searchParam,
      o.searchParam,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueSet,
      o.valueSet,
    )) {
      return false;
    }
    if (!listEquals<Coding>(
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
    this.valueX,
    super.disallowExtensions,
    super.objectPath = 'DataRequirementDateFilter',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DataRequirementDateFilter.empty() =>
      const DataRequirementDateFilter();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DataRequirementDateFilter.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'DataRequirementDateFilter';
    return DataRequirementDateFilter(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
        '$objectPath.path',
      ),
      searchParam: JsonParser.parsePrimitive<FhirString>(
        json,
        'searchParam',
        FhirString.fromJson,
        '$objectPath.searchParam',
      ),
      valueX: JsonParser.parsePolymorphic<ValueXDataRequirementDateFilter>(
        json,
        {
          'valueDateTime': FhirDateTime.fromJson,
          'valuePeriod': Period.fromJson,
          'valueDuration': FhirDuration.fromJson,
        },
        objectPath,
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
        fields.add(valueX!);
      case 'valueX':
        fields.add(valueX!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'path':
        {
          if (child is FhirString) {
            return copyWith(path: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'searchParam':
        {
          if (child is FhirString) {
            return copyWith(searchParam: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueX':
        {
          if (child is ValueXDataRequirementDateFilter) {
            return copyWith(valueX: child);
          } else {
            if (child is FhirDateTime) {
              return copyWith(valueX: child);
            }
            if (child is Period) {
              return copyWith(valueX: child);
            }
            if (child is FhirDuration) {
              return copyWith(valueX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valuePeriod':
        {
          if (child is Period) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirDuration':
        {
          if (child is FhirDuration) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'path':
        return ['FhirString'];
      case 'searchParam':
        return ['FhirString'];
      case 'value':
      case 'valueX':
        return ['FhirDateTime', 'Period', 'FhirDuration'];
      case 'valueDateTime':
        return ['FhirDateTime'];
      case 'valuePeriod':
        return ['Period'];
      case 'valueDuration':
        return ['FhirDuration'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DataRequirementDateFilter]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DataRequirementDateFilter createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'path':
        {
          return copyWith(
            path: FhirString.empty(),
          );
        }
      case 'searchParam':
        {
          return copyWith(
            searchParam: FhirString.empty(),
          );
        }
      case 'value':
      case 'valueX':
      case 'valueDateTime':
        {
          return copyWith(
            valueX: FhirDateTime.empty(),
          );
        }
      case 'valuePeriod':
        {
          return copyWith(
            valueX: Period.empty(),
          );
        }
      case 'valueDuration':
        {
          return copyWith(
            valueX: FhirDuration.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DataRequirementDateFilter clear({
    bool id = false,
    bool extension_ = false,
    bool path = false,
    bool searchParam = false,
    bool value = false,
  }) {
    return DataRequirementDateFilter(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      path: path ? null : this.path,
      searchParam: searchParam ? null : this.searchParam,
      valueX: value ? null : valueX,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return DataRequirementDateFilter(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      path: path?.copyWith(
            objectPath: '$newObjectPath.path',
          ) ??
          this.path,
      searchParam: searchParam?.copyWith(
            objectPath: '$newObjectPath.searchParam',
          ) ??
          this.searchParam,
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXDataRequirementDateFilter? ??
          this.valueX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DataRequirementDateFilter) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      path,
      o.path,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      searchParam,
      o.searchParam,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
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
    super.objectPath = 'DataRequirementSort',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DataRequirementSort.empty() => DataRequirementSort(
        path: FhirString.empty(),
        direction: SortDirection.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DataRequirementSort.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'DataRequirementSort';
    return DataRequirementSort(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
        '$objectPath.path',
      )!,
      direction: JsonParser.parsePrimitive<SortDirection>(
        json,
        'direction',
        SortDirection.fromJson,
        '$objectPath.direction',
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'path':
        {
          if (child is FhirString) {
            return copyWith(path: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'direction':
        {
          if (child is SortDirection) {
            return copyWith(direction: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'path':
        return ['FhirString'];
      case 'direction':
        return ['FhirCode'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DataRequirementSort]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DataRequirementSort createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'path':
        {
          return copyWith(
            path: FhirString.empty(),
          );
        }
      case 'direction':
        {
          return copyWith(
            direction: SortDirection.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DataRequirementSort clear({
    bool id = false,
    bool extension_ = false,
  }) {
    return DataRequirementSort(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      path: path,
      direction: direction,
    );
  }

  @override
  DataRequirementSort clone() => throw UnimplementedError();
  @override
  DataRequirementSort copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? path,
    SortDirection? direction,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return DataRequirementSort(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      path: path?.copyWith(
            objectPath: '$newObjectPath.path',
          ) ??
          this.path,
      direction: direction?.copyWith(
            objectPath: '$newObjectPath.direction',
          ) ??
          this.direction,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DataRequirementSort) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      path,
      o.path,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      direction,
      o.direction,
    )) {
      return false;
    }
    return true;
  }
}
