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
          objectPath: 'MeasureReport',
          resourceType: R4ResourceType.MeasureReport,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MeasureReport.empty() => MeasureReport(
        status: MeasureReportStatus.values.first,
        type: MeasureReportType.values.first,
        measure: FhirCanonical.empty(),
        period: Period.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReport.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MeasureReport';
    return MeasureReport(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<MeasureReportStatus>(
        json,
        'status',
        MeasureReportStatus.fromJson,
        '$objectPath.status',
      )!,
      type: JsonParser.parsePrimitive<MeasureReportType>(
        json,
        'type',
        MeasureReportType.fromJson,
        '$objectPath.type',
      )!,
      measure: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'measure',
        FhirCanonical.fromJson,
        '$objectPath.measure',
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      ),
      reporter: JsonParser.parseObject<Reference>(
        json,
        'reporter',
        Reference.fromJson,
        '$objectPath.reporter',
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      )!,
      improvementNotation: JsonParser.parseObject<CodeableConcept>(
        json,
        'improvementNotation',
        CodeableConcept.fromJson,
        '$objectPath.improvementNotation',
      ),
      group: (json['group'] as List<dynamic>?)
          ?.map<MeasureReportGroup>(
            (v) => MeasureReportGroup.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.group',
              },
            ),
          )
          .toList(),
      evaluatedResource: (json['evaluatedResource'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.evaluatedResource',
              },
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
    if (json is Map<String, dynamic>) {
      return MeasureReport.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'status',
      'type',
      'measure',
      'subject',
      'date',
      'reporter',
      'period',
      'improvementNotation',
      'group',
      'evaluatedResource',
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
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'status':
        fields.add(status);
      case 'type':
        fields.add(type);
      case 'measure':
        fields.add(measure);
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'reporter':
        if (reporter != null) {
          fields.add(reporter!);
        }
      case 'period':
        fields.add(period);
      case 'improvementNotation':
        if (improvementNotation != null) {
          fields.add(improvementNotation!);
        }
      case 'group':
        if (group != null) {
          fields.addAll(group!);
        }
      case 'evaluatedResource':
        if (evaluatedResource != null) {
          fields.addAll(evaluatedResource!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is MeasureReportStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is MeasureReportType) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'measure':
        {
          if (child is FhirCanonical) {
            return copyWith(measure: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subject':
        {
          if (child is Reference) {
            return copyWith(subject: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reporter':
        {
          if (child is Reference) {
            return copyWith(reporter: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'period':
        {
          if (child is Period) {
            return copyWith(period: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'improvementNotation':
        {
          if (child is CodeableConcept) {
            return copyWith(improvementNotation: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'group':
        {
          if (child is List<MeasureReportGroup>) {
            return copyWith(group: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'evaluatedResource':
        {
          if (child is List<Reference>) {
            return copyWith(evaluatedResource: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return MeasureReport(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      measure: measure?.copyWith(
            objectPath: '$newObjectPath.measure',
          ) ??
          this.measure,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      reporter: reporter?.copyWith(
            objectPath: '$newObjectPath.reporter',
          ) ??
          this.reporter,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
      improvementNotation: improvementNotation?.copyWith(
            objectPath: '$newObjectPath.improvementNotation',
          ) ??
          this.improvementNotation,
      group: group
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.group',
                ),
              )
              .toList() ??
          this.group,
      evaluatedResource: evaluatedResource
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.evaluatedResource',
                ),
              )
              .toList() ??
          this.evaluatedResource,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureReport) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(measure, o.measure)) {
      return false;
    }
    if (!equalsDeepWithNull(subject, o.subject)) {
      return false;
    }
    if (!equalsDeepWithNull(date, o.date)) {
      return false;
    }
    if (!equalsDeepWithNull(reporter, o.reporter)) {
      return false;
    }
    if (!equalsDeepWithNull(period, o.period)) {
      return false;
    }
    if (!equalsDeepWithNull(improvementNotation, o.improvementNotation)) {
      return false;
    }
    if (!listEquals<MeasureReportGroup>(
      group,
      o.group,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      evaluatedResource,
      o.evaluatedResource,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'MeasureReport.group',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MeasureReportGroup.empty() => const MeasureReportGroup();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MeasureReport.group';
    return MeasureReportGroup(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      population: (json['population'] as List<dynamic>?)
          ?.map<MeasureReportPopulation>(
            (v) => MeasureReportPopulation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.population',
              },
            ),
          )
          .toList(),
      measureScore: JsonParser.parseObject<Quantity>(
        json,
        'measureScore',
        Quantity.fromJson,
        '$objectPath.measureScore',
      ),
      stratifier: (json['stratifier'] as List<dynamic>?)
          ?.map<MeasureReportStratifier>(
            (v) => MeasureReportStratifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.stratifier',
              },
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
    if (json is Map<String, dynamic>) {
      return MeasureReportGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'population',
      'measureScore',
      'stratifier',
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'population':
        if (population != null) {
          fields.addAll(population!);
        }
      case 'measureScore':
        if (measureScore != null) {
          fields.add(measureScore!);
        }
      case 'stratifier':
        if (stratifier != null) {
          fields.addAll(stratifier!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'population':
        {
          if (child is List<MeasureReportPopulation>) {
            return copyWith(population: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'measureScore':
        {
          if (child is Quantity) {
            return copyWith(measureScore: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'stratifier':
        {
          if (child is List<MeasureReportStratifier>) {
            return copyWith(stratifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MeasureReportGroup(
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
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      population: population
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.population',
                ),
              )
              .toList() ??
          this.population,
      measureScore: measureScore?.copyWith(
            objectPath: '$newObjectPath.measureScore',
          ) ??
          this.measureScore,
      stratifier: stratifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.stratifier',
                ),
              )
              .toList() ??
          this.stratifier,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureReportGroup) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!listEquals<MeasureReportPopulation>(
      population,
      o.population,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(measureScore, o.measureScore)) {
      return false;
    }
    if (!listEquals<MeasureReportStratifier>(
      stratifier,
      o.stratifier,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'MeasureReport.group.population',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MeasureReportPopulation.empty() => const MeasureReportPopulation();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportPopulation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MeasureReport.group.population';
    return MeasureReportPopulation(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      count: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'count',
        FhirInteger.fromJson,
        '$objectPath.count',
      ),
      subjectResults: JsonParser.parseObject<Reference>(
        json,
        'subjectResults',
        Reference.fromJson,
        '$objectPath.subjectResults',
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
    if (json is Map<String, dynamic>) {
      return MeasureReportPopulation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'count',
      'subjectResults',
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'count':
        if (count != null) {
          fields.add(count!);
        }
      case 'subjectResults':
        if (subjectResults != null) {
          fields.add(subjectResults!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'count':
        {
          if (child is FhirInteger) {
            return copyWith(count: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subjectResults':
        {
          if (child is Reference) {
            return copyWith(subjectResults: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MeasureReportPopulation(
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
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      count: count?.copyWith(
            objectPath: '$newObjectPath.count',
          ) ??
          this.count,
      subjectResults: subjectResults?.copyWith(
            objectPath: '$newObjectPath.subjectResults',
          ) ??
          this.subjectResults,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureReportPopulation) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(count, o.count)) {
      return false;
    }
    if (!equalsDeepWithNull(subjectResults, o.subjectResults)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'MeasureReport.group.stratifier',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MeasureReportStratifier.empty() => const MeasureReportStratifier();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportStratifier.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MeasureReport.group.stratifier';
    return MeasureReportStratifier(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      stratum: (json['stratum'] as List<dynamic>?)
          ?.map<MeasureReportStratum>(
            (v) => MeasureReportStratum.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.stratum',
              },
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
    if (json is Map<String, dynamic>) {
      return MeasureReportStratifier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'stratum',
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'stratum':
        if (stratum != null) {
          fields.addAll(stratum!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'stratum':
        {
          if (child is List<MeasureReportStratum>) {
            return copyWith(stratum: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MeasureReportStratifier(
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
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      code: code
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.code',
                ),
              )
              .toList() ??
          this.code,
      stratum: stratum
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.stratum',
                ),
              )
              .toList() ??
          this.stratum,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureReportStratifier) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<MeasureReportStratum>(
      stratum,
      o.stratum,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'MeasureReport.group.stratifier.stratum',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MeasureReportStratum.empty() => const MeasureReportStratum();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportStratum.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MeasureReport.group.stratifier.stratum';
    return MeasureReportStratum(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      value: JsonParser.parseObject<CodeableConcept>(
        json,
        'value',
        CodeableConcept.fromJson,
        '$objectPath.value',
      ),
      component: (json['component'] as List<dynamic>?)
          ?.map<MeasureReportComponent>(
            (v) => MeasureReportComponent.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.component',
              },
            ),
          )
          .toList(),
      population: (json['population'] as List<dynamic>?)
          ?.map<MeasureReportPopulation>(
            (v) => MeasureReportPopulation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.population',
              },
            ),
          )
          .toList(),
      measureScore: JsonParser.parseObject<Quantity>(
        json,
        'measureScore',
        Quantity.fromJson,
        '$objectPath.measureScore',
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
    if (json is Map<String, dynamic>) {
      return MeasureReportStratum.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'value',
      'component',
      'population',
      'measureScore',
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
        }
      case 'component':
        if (component != null) {
          fields.addAll(component!);
        }
      case 'population':
        if (population != null) {
          fields.addAll(population!);
        }
      case 'measureScore':
        if (measureScore != null) {
          fields.add(measureScore!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'value':
        {
          if (child is CodeableConcept) {
            return copyWith(value: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'component':
        {
          if (child is List<MeasureReportComponent>) {
            return copyWith(component: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'population':
        {
          if (child is List<MeasureReportPopulation>) {
            return copyWith(population: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'measureScore':
        {
          if (child is Quantity) {
            return copyWith(measureScore: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MeasureReportStratum(
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
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
      component: component
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.component',
                ),
              )
              .toList() ??
          this.component,
      population: population
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.population',
                ),
              )
              .toList() ??
          this.population,
      measureScore: measureScore?.copyWith(
            objectPath: '$newObjectPath.measureScore',
          ) ??
          this.measureScore,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureReportStratum) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(value, o.value)) {
      return false;
    }
    if (!listEquals<MeasureReportComponent>(
      component,
      o.component,
    )) {
      return false;
    }
    if (!listEquals<MeasureReportPopulation>(
      population,
      o.population,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(measureScore, o.measureScore)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'MeasureReport.group.stratifier.stratum.component',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MeasureReportComponent.empty() => MeasureReportComponent(
        code: CodeableConcept.empty(),
        value: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportComponent.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MeasureReport.group.stratifier.stratum.component';
    return MeasureReportComponent(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      )!,
      value: JsonParser.parseObject<CodeableConcept>(
        json,
        'value',
        CodeableConcept.fromJson,
        '$objectPath.value',
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
    if (json is Map<String, dynamic>) {
      return MeasureReportComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'value',
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'code':
        fields.add(code);
      case 'value':
        fields.add(value);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'value':
        {
          if (child is CodeableConcept) {
            return copyWith(value: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MeasureReportComponent(
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
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureReportComponent) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(value, o.value)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'MeasureReport.group.stratifier.stratum.population',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MeasureReportPopulation1.empty() => const MeasureReportPopulation1();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MeasureReportPopulation1.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MeasureReport.group.stratifier.stratum.population';
    return MeasureReportPopulation1(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      count: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'count',
        FhirInteger.fromJson,
        '$objectPath.count',
      ),
      subjectResults: JsonParser.parseObject<Reference>(
        json,
        'subjectResults',
        Reference.fromJson,
        '$objectPath.subjectResults',
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
    if (json is Map<String, dynamic>) {
      return MeasureReportPopulation1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'count',
      'subjectResults',
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'count':
        if (count != null) {
          fields.add(count!);
        }
      case 'subjectResults':
        if (subjectResults != null) {
          fields.add(subjectResults!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'count':
        {
          if (child is FhirInteger) {
            return copyWith(count: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subjectResults':
        {
          if (child is Reference) {
            return copyWith(subjectResults: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MeasureReportPopulation1(
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
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      count: count?.copyWith(
            objectPath: '$newObjectPath.count',
          ) ??
          this.count,
      subjectResults: subjectResults?.copyWith(
            objectPath: '$newObjectPath.subjectResults',
          ) ??
          this.subjectResults,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MeasureReportPopulation1) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(count, o.count)) {
      return false;
    }
    if (!equalsDeepWithNull(subjectResults, o.subjectResults)) {
      return false;
    }
    return true;
  }
}
