import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MeasureReport]
/// The MeasureReport resource contains the results of the calculation of a
/// measure; and optionally a reference to the resources involved in that
/// calculation.
class MeasureReport extends DomainResource {
  /// Primary constructor for
  /// [MeasureReport]

  const MeasureReport({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    required this.type,
    required this.measure,
    this.subject,
    this.date,
    this.reporter,
    required this.period,
    this.improvementNotation,
    this.group,
    this.evaluatedResource,
  }) : super(
          resourceType: R4ResourceType.MeasureReport,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReport.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureReport(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<MeasureReportStatus>(
        json,
        'status',
        MeasureReportStatus.fromJson,
      )!,
      type: JsonParser.parsePrimitive<MeasureReportType>(
        json,
        'type',
        MeasureReportType.fromJson,
      )!,
      measure: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'measure',
        FhirCanonical.fromJson,
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      reporter: JsonParser.parseObject<Reference>(
        json,
        'reporter',
        Reference.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      )!,
      improvementNotation: JsonParser.parseObject<CodeableConcept>(
        json,
        'improvementNotation',
        CodeableConcept.fromJson,
      ),
      group: (json['group'] as List<dynamic>?)
          ?.map<MeasureReportGroup>(
            (v) => MeasureReportGroup.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      evaluatedResource: (json['evaluatedResource'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MeasureReport]
  /// from a [String] or [YamlMap] object
  factory MeasureReport.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReport.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReport.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReport '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReport]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReport.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureReport.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MeasureReport';

  /// [identifier]
  /// A formal identifier that is used to identify this MeasureReport when it
  /// is represented in other formats or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [status]
  /// The MeasureReport status. No data will be available until the
  /// MeasureReport status is complete.
  final MeasureReportStatus status;

  /// [type]
  /// The type of measure report. This may be an individual report, which
  /// provides the score for the measure for an individual member of the
  /// population; a subject-listing, which returns the list of members that
  /// meet the various criteria in the measure; a summary report, which
  /// returns a population count for each of the criteria in the measure; or
  /// a data-collection, which enables the MeasureReport to be used to
  /// exchange the data-of-interest for a quality measure.
  final MeasureReportType type;

  /// [measure]
  /// A reference to the Measure that was calculated to produce this report.
  final FhirCanonical measure;

  /// [subject]
  /// Optional subject identifying the individual or individuals the report
  /// is for.
  final Reference? subject;

  /// [date]
  /// The date this measure report was generated.
  final FhirDateTime? date;

  /// [reporter]
  /// The individual, location, or organization that is reporting the data.
  final Reference? reporter;

  /// [period]
  /// The reporting period for which the report was calculated.
  final Period period;

  /// [improvementNotation]
  /// Whether improvement in the measure is noted by an increase or decrease
  /// in the measure score.
  final CodeableConcept? improvementNotation;

  /// [group]
  /// The results of the calculation, one for each population group in the
  /// measure.
  final List<MeasureReportGroup>? group;

  /// [evaluatedResource]
  /// A reference to a Bundle containing the Resources that were used in the
  /// calculation of this measure.
  final List<Reference>? evaluatedResource;
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

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('status', status);
    addField('type', type);
    addField('measure', measure);
    addField('subject', subject);
    addField('date', date);
    addField('reporter', reporter);
    addField('period', period);
    addField('improvementNotation', improvementNotation);
    addField('group', group);
    addField('evaluatedResource', evaluatedResource);
    return json;
  }

  @override
  MeasureReport clone() => throw UnimplementedError();
  @override
  MeasureReport copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    MeasureReportStatus? status,
    MeasureReportType? type,
    FhirCanonical? measure,
    Reference? subject,
    FhirDateTime? date,
    Reference? reporter,
    Period? period,
    CodeableConcept? improvementNotation,
    List<MeasureReportGroup>? group,
    List<Reference>? evaluatedResource,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MeasureReport(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      type: type ?? this.type,
      measure: measure ?? this.measure,
      subject: subject ?? this.subject,
      date: date ?? this.date,
      reporter: reporter ?? this.reporter,
      period: period ?? this.period,
      improvementNotation: improvementNotation ?? this.improvementNotation,
      group: group ?? this.group,
      evaluatedResource: evaluatedResource ?? this.evaluatedResource,
    );
  }
}

/// [MeasureReportGroup]
/// The results of the calculation, one for each population group in the
/// measure.
class MeasureReportGroup extends BackboneElement {
  /// Primary constructor for
  /// [MeasureReportGroup]

  const MeasureReportGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.population,
    this.measureScore,
    this.stratifier,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureReportGroup(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      population: (json['population'] as List<dynamic>?)
          ?.map<MeasureReportPopulation>(
            (v) => MeasureReportPopulation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      measureScore: JsonParser.parseObject<Quantity>(
        json,
        'measureScore',
        Quantity.fromJson,
      ),
      stratifier: (json['stratifier'] as List<dynamic>?)
          ?.map<MeasureReportStratifier>(
            (v) => MeasureReportStratifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MeasureReportGroup]
  /// from a [String] or [YamlMap] object
  factory MeasureReportGroup.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportGroup.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportGroup.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportGroup '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportGroup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportGroup.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureReportGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MeasureReportGroup';

  /// [code]
  /// The meaning of the population group as defined in the measure
  /// definition.
  final CodeableConcept? code;

  /// [population]
  /// The populations that make up the population group, one for each type of
  /// population appropriate for the measure.
  final List<MeasureReportPopulation>? population;

  /// [measureScore]
  /// The measure score for this population group, calculated as appropriate
  /// for the measure type and scoring method, and based on the contents of
  /// the populations defined in the group.
  final Quantity? measureScore;

  /// [stratifier]
  /// When a measure includes multiple stratifiers, there will be a
  /// stratifier group for each stratifier defined by the measure.
  final List<MeasureReportStratifier>? stratifier;
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
    addField('modifierExtension', modifierExtension);
    addField('code', code);
    addField('population', population);
    addField('measureScore', measureScore);
    addField('stratifier', stratifier);
    return json;
  }

  @override
  MeasureReportGroup clone() => throw UnimplementedError();
  @override
  MeasureReportGroup copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    List<MeasureReportPopulation>? population,
    Quantity? measureScore,
    List<MeasureReportStratifier>? stratifier,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MeasureReportGroup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      population: population ?? this.population,
      measureScore: measureScore ?? this.measureScore,
      stratifier: stratifier ?? this.stratifier,
    );
  }
}

/// [MeasureReportPopulation]
/// The populations that make up the population group, one for each type of
/// population appropriate for the measure.
class MeasureReportPopulation extends BackboneElement {
  /// Primary constructor for
  /// [MeasureReportPopulation]

  const MeasureReportPopulation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.count,
    this.subjectResults,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportPopulation.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureReportPopulation(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      count: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'count',
        FhirInteger.fromJson,
      ),
      subjectResults: JsonParser.parseObject<Reference>(
        json,
        'subjectResults',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [MeasureReportPopulation]
  /// from a [String] or [YamlMap] object
  factory MeasureReportPopulation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportPopulation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportPopulation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportPopulation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportPopulation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportPopulation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureReportPopulation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MeasureReportPopulation';

  /// [code]
  /// The type of the population.
  final CodeableConcept? code;

  /// [count]
  /// The number of members of the population.
  final FhirInteger? count;

  /// [subjectResults]
  /// This element refers to a List of subject level MeasureReport resources,
  /// one for each subject in this population.
  final Reference? subjectResults;
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
    addField('modifierExtension', modifierExtension);
    addField('code', code);
    addField('count', count);
    addField('subjectResults', subjectResults);
    return json;
  }

  @override
  MeasureReportPopulation clone() => throw UnimplementedError();
  @override
  MeasureReportPopulation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirInteger? count,
    Reference? subjectResults,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MeasureReportPopulation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      count: count ?? this.count,
      subjectResults: subjectResults ?? this.subjectResults,
    );
  }
}

/// [MeasureReportStratifier]
/// When a measure includes multiple stratifiers, there will be a
/// stratifier group for each stratifier defined by the measure.
class MeasureReportStratifier extends BackboneElement {
  /// Primary constructor for
  /// [MeasureReportStratifier]

  const MeasureReportStratifier({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.stratum,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportStratifier.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureReportStratifier(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      stratum: (json['stratum'] as List<dynamic>?)
          ?.map<MeasureReportStratum>(
            (v) => MeasureReportStratum.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MeasureReportStratifier]
  /// from a [String] or [YamlMap] object
  factory MeasureReportStratifier.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportStratifier.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportStratifier.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportStratifier '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportStratifier]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportStratifier.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureReportStratifier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MeasureReportStratifier';

  /// [code]
  /// The meaning of this stratifier, as defined in the measure definition.
  final List<CodeableConcept>? code;

  /// [stratum]
  /// This element contains the results for a single stratum within the
  /// stratifier. For example, when stratifying on administrative gender,
  /// there will be four strata, one for each possible gender value.
  final List<MeasureReportStratum>? stratum;
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
    addField('modifierExtension', modifierExtension);
    addField('code', code);
    addField('stratum', stratum);
    return json;
  }

  @override
  MeasureReportStratifier clone() => throw UnimplementedError();
  @override
  MeasureReportStratifier copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? code,
    List<MeasureReportStratum>? stratum,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MeasureReportStratifier(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      stratum: stratum ?? this.stratum,
    );
  }
}

/// [MeasureReportStratum]
/// This element contains the results for a single stratum within the
/// stratifier. For example, when stratifying on administrative gender,
/// there will be four strata, one for each possible gender value.
class MeasureReportStratum extends BackboneElement {
  /// Primary constructor for
  /// [MeasureReportStratum]

  const MeasureReportStratum({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.value,
    this.component,
    this.population,
    this.measureScore,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportStratum.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureReportStratum(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      value: JsonParser.parseObject<CodeableConcept>(
        json,
        'value',
        CodeableConcept.fromJson,
      ),
      component: (json['component'] as List<dynamic>?)
          ?.map<MeasureReportComponent>(
            (v) => MeasureReportComponent.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      population: (json['population'] as List<dynamic>?)
          ?.map<MeasureReportPopulation>(
            (v) => MeasureReportPopulation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      measureScore: JsonParser.parseObject<Quantity>(
        json,
        'measureScore',
        Quantity.fromJson,
      ),
    );
  }

  /// Deserialize [MeasureReportStratum]
  /// from a [String] or [YamlMap] object
  factory MeasureReportStratum.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportStratum.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportStratum.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportStratum '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportStratum]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportStratum.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureReportStratum.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MeasureReportStratum';

  /// [value]
  /// The value for this stratum, expressed as a CodeableConcept. When
  /// defining stratifiers on complex values, the value must be rendered such
  /// that the value for each stratum within the stratifier is unique.
  final CodeableConcept? value;

  /// [component]
  /// A stratifier component value.
  final List<MeasureReportComponent>? component;

  /// [population]
  /// The populations that make up the stratum, one for each type of
  /// population appropriate to the measure.
  final List<MeasureReportPopulation>? population;

  /// [measureScore]
  /// The measure score for this stratum, calculated as appropriate for the
  /// measure type and scoring method, and based on only the members of this
  /// stratum.
  final Quantity? measureScore;
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
    addField('modifierExtension', modifierExtension);
    addField('value', value);
    addField('component', component);
    addField('population', population);
    addField('measureScore', measureScore);
    return json;
  }

  @override
  MeasureReportStratum clone() => throw UnimplementedError();
  @override
  MeasureReportStratum copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? value,
    List<MeasureReportComponent>? component,
    List<MeasureReportPopulation>? population,
    Quantity? measureScore,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MeasureReportStratum(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      value: value ?? this.value,
      component: component ?? this.component,
      population: population ?? this.population,
      measureScore: measureScore ?? this.measureScore,
    );
  }
}

/// [MeasureReportComponent]
/// A stratifier component value.
class MeasureReportComponent extends BackboneElement {
  /// Primary constructor for
  /// [MeasureReportComponent]

  const MeasureReportComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.value,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportComponent.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureReportComponent(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      value: JsonParser.parseObject<CodeableConcept>(
        json,
        'value',
        CodeableConcept.fromJson,
      )!,
    );
  }

  /// Deserialize [MeasureReportComponent]
  /// from a [String] or [YamlMap] object
  factory MeasureReportComponent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportComponent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportComponent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportComponent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportComponent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportComponent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureReportComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MeasureReportComponent';

  /// [code]
  /// The code for the stratum component value.
  final CodeableConcept code;

  /// [value]
  /// The stratum component value.
  final CodeableConcept value;
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
    addField('modifierExtension', modifierExtension);
    addField('code', code);
    addField('value', value);
    return json;
  }

  @override
  MeasureReportComponent clone() => throw UnimplementedError();
  @override
  MeasureReportComponent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? value,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MeasureReportComponent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      value: value ?? this.value,
    );
  }
}

/// [MeasureReportPopulation1]
/// The populations that make up the stratum, one for each type of
/// population appropriate to the measure.
class MeasureReportPopulation1 extends BackboneElement {
  /// Primary constructor for
  /// [MeasureReportPopulation1]

  const MeasureReportPopulation1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.count,
    this.subjectResults,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportPopulation1.fromJson(
    Map<String, dynamic> json,
  ) {
    return MeasureReportPopulation1(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      count: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'count',
        FhirInteger.fromJson,
      ),
      subjectResults: JsonParser.parseObject<Reference>(
        json,
        'subjectResults',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [MeasureReportPopulation1]
  /// from a [String] or [YamlMap] object
  factory MeasureReportPopulation1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MeasureReportPopulation1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MeasureReportPopulation1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MeasureReportPopulation1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MeasureReportPopulation1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MeasureReportPopulation1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureReportPopulation1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MeasureReportPopulation1';

  /// [code]
  /// The type of the population.
  final CodeableConcept? code;

  /// [count]
  /// The number of members of the population in this stratum.
  final FhirInteger? count;

  /// [subjectResults]
  /// This element refers to a List of subject level MeasureReport resources,
  /// one for each subject in this population in this stratum.
  final Reference? subjectResults;
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
    addField('modifierExtension', modifierExtension);
    addField('code', code);
    addField('count', count);
    addField('subjectResults', subjectResults);
    return json;
  }

  @override
  MeasureReportPopulation1 clone() => throw UnimplementedError();
  @override
  MeasureReportPopulation1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirInteger? count,
    Reference? subjectResults,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MeasureReportPopulation1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      count: count ?? this.count,
      subjectResults: subjectResults ?? this.subjectResults,
    );
  }
}
