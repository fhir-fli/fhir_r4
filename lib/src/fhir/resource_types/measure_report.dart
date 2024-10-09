import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [MeasureReport] /// The MeasureReport resource contains the results of the calculation of a
/// measure; and optionally a reference to the resources involved in that
/// calculation.
class MeasureReport extends DomainResource {
  MeasureReport({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusElement,
    required this.type,
    this.typeElement,
    required this.measure,
    this.measureElement,
    this.subject,
    this.date,
    this.dateElement,
    this.reporter,
    required this.period,
    this.improvementNotation,
    this.group,
    this.evaluatedResource,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.MeasureReport);

  @override
  String get fhirType => 'MeasureReport';

  @Id()
  int dbId = 0;

  /// [identifier] /// A formal identifier that is used to identify this MeasureReport when it is
  /// represented in other formats or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [status] /// The MeasureReport status. No data will be available until the MeasureReport
  /// status is complete.
  final MeasureReportStatus status;
  final Element? statusElement;

  /// [type] /// The type of measure report. This may be an individual report, which
  /// provides the score for the measure for an individual member of the
  /// population; a subject-listing, which returns the list of members that meet
  /// the various criteria in the measure; a summary report, which returns a
  /// population count for each of the criteria in the measure; or a
  /// data-collection, which enables the MeasureReport to be used to exchange the
  /// data-of-interest for a quality measure.
  final MeasureReportType type;
  final Element? typeElement;

  /// [measure] /// A reference to the Measure that was calculated to produce this report.
  final FhirCanonical measure;
  final Element? measureElement;

  /// [subject] /// Optional subject identifying the individual or individuals the report is
  /// for.
  final Reference? subject;

  /// [date] /// The date this measure report was generated.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [reporter] /// The individual, location, or organization that is reporting the data.
  final Reference? reporter;

  /// [period] /// The reporting period for which the report was calculated.
  final Period period;

  /// [improvementNotation] /// Whether improvement in the measure is noted by an increase or decrease in
  /// the measure score.
  final CodeableConcept? improvementNotation;

  /// [group] /// The results of the calculation, one for each population group in the
  /// measure.
  final List<MeasureReportGroup>? group;

  /// [evaluatedResource] /// A reference to a Bundle containing the Resources that were used in the
  /// calculation of this measure.
  final List<Reference>? evaluatedResource;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    json['type'] = type.toJson();
    json['measure'] = measure.value;
    if (measureElement != null) {
      json['_measure'] = measureElement!.toJson();
    }
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.value;
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (reporter != null) {
      json['reporter'] = reporter!.toJson();
    }
    json['period'] = period.toJson();
    if (improvementNotation != null) {
      json['improvementNotation'] = improvementNotation!.toJson();
    }
    if (group != null && group!.isNotEmpty) {
      json['group'] =
          group!.map<dynamic>((MeasureReportGroup v) => v.toJson()).toList();
    }
    if (evaluatedResource != null && evaluatedResource!.isNotEmpty) {
      json['evaluatedResource'] =
          evaluatedResource!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  factory MeasureReport.fromJson(Map<String, dynamic> json) {
    return MeasureReport(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status:
          MeasureReportStatus.fromJson(json['status'] as Map<String, dynamic>),
      type: MeasureReportType.fromJson(json['type'] as Map<String, dynamic>),
      measure: FhirCanonical(json['measure']),
      measureElement:
          Element.fromJson(json['_measure'] as Map<String, dynamic>),
      subject: json['subject'] != null
          ? Reference.fromJson(json['subject'] as Map<String, dynamic>)
          : null,
      date: json['date'] != null ? FhirDateTime(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      reporter: json['reporter'] != null
          ? Reference.fromJson(json['reporter'] as Map<String, dynamic>)
          : null,
      period: Period.fromJson(json['period'] as Map<String, dynamic>),
      improvementNotation: json['improvementNotation'] != null
          ? CodeableConcept.fromJson(
              json['improvementNotation'] as Map<String, dynamic>)
          : null,
      group: json['group'] != null
          ? (json['group'] as List<dynamic>)
              .map<MeasureReportGroup>((dynamic v) =>
                  MeasureReportGroup.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      evaluatedResource: json['evaluatedResource'] != null
          ? (json['evaluatedResource'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  MeasureReport clone() => throw UnimplementedError();
  @override
  MeasureReport copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    MeasureReportStatus? status,
    Element? statusElement,
    MeasureReportType? type,
    Element? typeElement,
    FhirCanonical? measure,
    Element? measureElement,
    Reference? subject,
    FhirDateTime? date,
    Element? dateElement,
    Reference? reporter,
    Period? period,
    CodeableConcept? improvementNotation,
    List<MeasureReportGroup>? group,
    List<Reference>? evaluatedResource,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MeasureReport(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      measure: measure ?? this.measure,
      measureElement: measureElement ?? this.measureElement,
      subject: subject ?? this.subject,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      reporter: reporter ?? this.reporter,
      period: period ?? this.period,
      improvementNotation: improvementNotation ?? this.improvementNotation,
      group: group ?? this.group,
      evaluatedResource: evaluatedResource ?? this.evaluatedResource,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MeasureReport.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReport.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MeasureReport.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MeasureReport cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MeasureReport.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureReport.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MeasureReportGroup] /// The results of the calculation, one for each population group in the
/// measure.
class MeasureReportGroup extends BackboneElement {
  MeasureReportGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.population,
    this.measureScore,
    this.stratifier,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MeasureReportGroup';

  @Id()
  int dbId = 0;

  /// [code] /// The meaning of the population group as defined in the measure definition.
  final CodeableConcept? code;

  /// [population] /// The populations that make up the population group, one for each type of
  /// population appropriate for the measure.
  final List<MeasureReportPopulation>? population;

  /// [measureScore] /// The measure score for this population group, calculated as appropriate for
  /// the measure type and scoring method, and based on the contents of the
  /// populations defined in the group.
  final Quantity? measureScore;

  /// [stratifier] /// When a measure includes multiple stratifiers, there will be a stratifier
  /// group for each stratifier defined by the measure.
  final List<MeasureReportStratifier>? stratifier;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (population != null && population!.isNotEmpty) {
      json['population'] = population!
          .map<dynamic>((MeasureReportPopulation v) => v.toJson())
          .toList();
    }
    if (measureScore != null) {
      json['measureScore'] = measureScore!.toJson();
    }
    if (stratifier != null && stratifier!.isNotEmpty) {
      json['stratifier'] = stratifier!
          .map<dynamic>((MeasureReportStratifier v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory MeasureReportGroup.fromJson(Map<String, dynamic> json) {
    return MeasureReportGroup(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      population: json['population'] != null
          ? (json['population'] as List<dynamic>)
              .map<MeasureReportPopulation>((dynamic v) =>
                  MeasureReportPopulation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      measureScore: json['measureScore'] != null
          ? Quantity.fromJson(json['measureScore'] as Map<String, dynamic>)
          : null,
      stratifier: json['stratifier'] != null
          ? (json['stratifier'] as List<dynamic>)
              .map<MeasureReportStratifier>((dynamic v) =>
                  MeasureReportStratifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MeasureReportGroup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      population: population ?? this.population,
      measureScore: measureScore ?? this.measureScore,
      stratifier: stratifier ?? this.stratifier,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MeasureReportGroup.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MeasureReportGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MeasureReportGroup cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MeasureReportGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureReportGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MeasureReportPopulation] /// The populations that make up the population group, one for each type of
/// population appropriate for the measure.
class MeasureReportPopulation extends BackboneElement {
  MeasureReportPopulation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.count,
    this.countElement,
    this.subjectResults,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MeasureReportPopulation';

  @Id()
  int dbId = 0;

  /// [code] /// The type of the population.
  final CodeableConcept? code;

  /// [count] /// The number of members of the population.
  final FhirInteger? count;
  final Element? countElement;

  /// [subjectResults] /// This element refers to a List of subject level MeasureReport resources, one
  /// for each subject in this population.
  final Reference? subjectResults;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (count?.value != null) {
      json['count'] = count!.value;
    }
    if (countElement != null) {
      json['_count'] = countElement!.toJson();
    }
    if (subjectResults != null) {
      json['subjectResults'] = subjectResults!.toJson();
    }
    return json;
  }

  factory MeasureReportPopulation.fromJson(Map<String, dynamic> json) {
    return MeasureReportPopulation(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      count: json['count'] != null ? FhirInteger(json['count']) : null,
      countElement: json['_count'] != null
          ? Element.fromJson(json['_count'] as Map<String, dynamic>)
          : null,
      subjectResults: json['subjectResults'] != null
          ? Reference.fromJson(json['subjectResults'] as Map<String, dynamic>)
          : null,
    );
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
    Element? countElement,
    Reference? subjectResults,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MeasureReportPopulation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      count: count ?? this.count,
      countElement: countElement ?? this.countElement,
      subjectResults: subjectResults ?? this.subjectResults,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MeasureReportPopulation.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportPopulation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MeasureReportPopulation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MeasureReportPopulation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MeasureReportPopulation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureReportPopulation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MeasureReportStratifier] /// When a measure includes multiple stratifiers, there will be a stratifier
/// group for each stratifier defined by the measure.
class MeasureReportStratifier extends BackboneElement {
  MeasureReportStratifier({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.stratum,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MeasureReportStratifier';

  @Id()
  int dbId = 0;

  /// [code] /// The meaning of this stratifier, as defined in the measure definition.
  final List<CodeableConcept>? code;

  /// [stratum] /// This element contains the results for a single stratum within the
  /// stratifier. For example, when stratifying on administrative gender, there
  /// will be four strata, one for each possible gender value.
  final List<MeasureReportStratum>? stratum;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (code != null && code!.isNotEmpty) {
      json['code'] =
          code!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (stratum != null && stratum!.isNotEmpty) {
      json['stratum'] = stratum!
          .map<dynamic>((MeasureReportStratum v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory MeasureReportStratifier.fromJson(Map<String, dynamic> json) {
    return MeasureReportStratifier(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      stratum: json['stratum'] != null
          ? (json['stratum'] as List<dynamic>)
              .map<MeasureReportStratum>((dynamic v) =>
                  MeasureReportStratum.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MeasureReportStratifier(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      stratum: stratum ?? this.stratum,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MeasureReportStratifier.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportStratifier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MeasureReportStratifier.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MeasureReportStratifier cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MeasureReportStratifier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureReportStratifier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MeasureReportStratum] /// This element contains the results for a single stratum within the
/// stratifier. For example, when stratifying on administrative gender, there
/// will be four strata, one for each possible gender value.
class MeasureReportStratum extends BackboneElement {
  MeasureReportStratum({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.value,
    this.component,
    this.population,
    this.measureScore,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MeasureReportStratum';

  @Id()
  int dbId = 0;

  /// [value] /// The value for this stratum, expressed as a CodeableConcept. When defining
  /// stratifiers on complex values, the value must be rendered such that the
  /// value for each stratum within the stratifier is unique.
  final CodeableConcept? value;

  /// [component] /// A stratifier component value.
  final List<MeasureReportComponent>? component;

  /// [population] /// The populations that make up the stratum, one for each type of population
  /// appropriate to the measure.
  final List<MeasureReportPopulation>? population;

  /// [measureScore] /// The measure score for this stratum, calculated as appropriate for the
  /// measure type and scoring method, and based on only the members of this
  /// stratum.
  final Quantity? measureScore;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (value != null) {
      json['value'] = value!.toJson();
    }
    if (component != null && component!.isNotEmpty) {
      json['component'] = component!
          .map<dynamic>((MeasureReportComponent v) => v.toJson())
          .toList();
    }
    if (population != null && population!.isNotEmpty) {
      json['population'] = population!
          .map<dynamic>((MeasureReportPopulation v) => v.toJson())
          .toList();
    }
    if (measureScore != null) {
      json['measureScore'] = measureScore!.toJson();
    }
    return json;
  }

  factory MeasureReportStratum.fromJson(Map<String, dynamic> json) {
    return MeasureReportStratum(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      value: json['value'] != null
          ? CodeableConcept.fromJson(json['value'] as Map<String, dynamic>)
          : null,
      component: json['component'] != null
          ? (json['component'] as List<dynamic>)
              .map<MeasureReportComponent>((dynamic v) =>
                  MeasureReportComponent.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      population: json['population'] != null
          ? (json['population'] as List<dynamic>)
              .map<MeasureReportPopulation>((dynamic v) =>
                  MeasureReportPopulation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      measureScore: json['measureScore'] != null
          ? Quantity.fromJson(json['measureScore'] as Map<String, dynamic>)
          : null,
    );
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MeasureReportStratum(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      value: value ?? this.value,
      component: component ?? this.component,
      population: population ?? this.population,
      measureScore: measureScore ?? this.measureScore,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MeasureReportStratum.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportStratum.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MeasureReportStratum.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MeasureReportStratum cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MeasureReportStratum.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureReportStratum.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MeasureReportComponent] /// A stratifier component value.
class MeasureReportComponent extends BackboneElement {
  MeasureReportComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.value,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MeasureReportComponent';

  @Id()
  int dbId = 0;

  /// [code] /// The code for the stratum component value.
  final CodeableConcept code;

  /// [value] /// The stratum component value.
  final CodeableConcept value;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['code'] = code.toJson();
    json['value'] = value.toJson();
    return json;
  }

  factory MeasureReportComponent.fromJson(Map<String, dynamic> json) {
    return MeasureReportComponent(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      value: CodeableConcept.fromJson(json['value'] as Map<String, dynamic>),
    );
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MeasureReportComponent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      value: value ?? this.value,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MeasureReportComponent.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MeasureReportComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MeasureReportComponent cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MeasureReportComponent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureReportComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MeasureReportPopulation1] /// The populations that make up the stratum, one for each type of population
/// appropriate to the measure.
class MeasureReportPopulation1 extends BackboneElement {
  MeasureReportPopulation1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.count,
    this.countElement,
    this.subjectResults,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MeasureReportPopulation1';

  @Id()
  int dbId = 0;

  /// [code] /// The type of the population.
  final CodeableConcept? code;

  /// [count] /// The number of members of the population in this stratum.
  final FhirInteger? count;
  final Element? countElement;

  /// [subjectResults] /// This element refers to a List of subject level MeasureReport resources, one
  /// for each subject in this population in this stratum.
  final Reference? subjectResults;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (count?.value != null) {
      json['count'] = count!.value;
    }
    if (countElement != null) {
      json['_count'] = countElement!.toJson();
    }
    if (subjectResults != null) {
      json['subjectResults'] = subjectResults!.toJson();
    }
    return json;
  }

  factory MeasureReportPopulation1.fromJson(Map<String, dynamic> json) {
    return MeasureReportPopulation1(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      count: json['count'] != null ? FhirInteger(json['count']) : null,
      countElement: json['_count'] != null
          ? Element.fromJson(json['_count'] as Map<String, dynamic>)
          : null,
      subjectResults: json['subjectResults'] != null
          ? Reference.fromJson(json['subjectResults'] as Map<String, dynamic>)
          : null,
    );
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
    Element? countElement,
    Reference? subjectResults,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MeasureReportPopulation1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      count: count ?? this.count,
      countElement: countElement ?? this.countElement,
      subjectResults: subjectResults ?? this.subjectResults,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MeasureReportPopulation1.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReportPopulation1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MeasureReportPopulation1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MeasureReportPopulation1 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MeasureReportPopulation1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MeasureReportPopulation1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
