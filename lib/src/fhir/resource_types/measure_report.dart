import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'measure_report.g.dart';

/// [MeasureReport] /// The MeasureReport resource contains the results of the calculation of a
/// measure; and optionally a reference to the resources involved in that
/// calculation.
@JsonSerializable()
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
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.MeasureReport);
  @override
  String get fhirType => 'MeasureReport';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A formal identifier that is used to identify this MeasureReport when it is
  /// represented in other formats or referenced in a specification, model,
  /// design or an instance.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The MeasureReport status. No data will be available until the MeasureReport
  /// status is complete.
  @JsonKey(name: 'status')
  final MeasureReportStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [type] /// The type of measure report. This may be an individual report, which
  /// provides the score for the measure for an individual member of the
  /// population; a subject-listing, which returns the list of members that meet
  /// the various criteria in the measure; a summary report, which returns a
  /// population count for each of the criteria in the measure; or a
  /// data-collection, which enables the MeasureReport to be used to exchange the
  /// data-of-interest for a quality measure.
  @JsonKey(name: 'type')
  final MeasureReportType type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [measure] /// A reference to the Measure that was calculated to produce this report.
  @JsonKey(name: 'measure')
  final FhirCanonical measure;
  @JsonKey(name: '_measure')
  final Element? measureElement;

  /// [subject] /// Optional subject identifying the individual or individuals the report is
  /// for.
  @JsonKey(name: 'subject')
  final Reference? subject;

  /// [date] /// The date this measure report was generated.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [reporter] /// The individual, location, or organization that is reporting the data.
  @JsonKey(name: 'reporter')
  final Reference? reporter;

  /// [period] /// The reporting period for which the report was calculated.
  @JsonKey(name: 'period')
  final Period period;

  /// [improvementNotation] /// Whether improvement in the measure is noted by an increase or decrease in
  /// the measure score.
  @JsonKey(name: 'improvementNotation')
  final MeasureImprovementNotation? improvementNotation;

  /// [group] /// The results of the calculation, one for each population group in the
  /// measure.
  @JsonKey(name: 'group')
  final List<MeasureReportGroup>? group;

  /// [evaluatedResource] /// A reference to a Bundle containing the Resources that were used in the
  /// calculation of this measure.
  @JsonKey(name: 'evaluatedResource')
  final List<Reference>? evaluatedResource;
  factory MeasureReport.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MeasureReportToJson(this);

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
    MeasureImprovementNotation? improvementNotation,
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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The meaning of the population group as defined in the measure definition.
  @JsonKey(name: 'code')
  final MeasureGroupExample? code;

  /// [population] /// The populations that make up the population group, one for each type of
  /// population appropriate for the measure.
  @JsonKey(name: 'population')
  final List<MeasureReportPopulation>? population;

  /// [measureScore] /// The measure score for this population group, calculated as appropriate for
  /// the measure type and scoring method, and based on the contents of the
  /// populations defined in the group.
  @JsonKey(name: 'measureScore')
  final Quantity? measureScore;

  /// [stratifier] /// When a measure includes multiple stratifiers, there will be a stratifier
  /// group for each stratifier defined by the measure.
  @JsonKey(name: 'stratifier')
  final List<MeasureReportStratifier>? stratifier;
  factory MeasureReportGroup.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportGroupFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MeasureReportGroupToJson(this);

  @override
  MeasureReportGroup clone() => throw UnimplementedError();
  @override
  MeasureReportGroup copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    MeasureGroupExample? code,
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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The type of the population.
  @JsonKey(name: 'code')
  final MeasurePopulationType? code;

  /// [count] /// The number of members of the population.
  @JsonKey(name: 'count')
  final FhirInteger? count;
  @JsonKey(name: '_count')
  final Element? countElement;

  /// [subjectResults] /// This element refers to a List of subject level MeasureReport resources, one
  /// for each subject in this population.
  @JsonKey(name: 'subjectResults')
  final Reference? subjectResults;
  factory MeasureReportPopulation.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportPopulationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MeasureReportPopulationToJson(this);

  @override
  MeasureReportPopulation clone() => throw UnimplementedError();
  @override
  MeasureReportPopulation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    MeasurePopulationType? code,
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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The meaning of this stratifier, as defined in the measure definition.
  @JsonKey(name: 'code')
  final List<MeasureStratifierExample>? code;

  /// [stratum] /// This element contains the results for a single stratum within the
  /// stratifier. For example, when stratifying on administrative gender, there
  /// will be four strata, one for each possible gender value.
  @JsonKey(name: 'stratum')
  final List<MeasureReportStratum>? stratum;
  factory MeasureReportStratifier.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportStratifierFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MeasureReportStratifierToJson(this);

  @override
  MeasureReportStratifier clone() => throw UnimplementedError();
  @override
  MeasureReportStratifier copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<MeasureStratifierExample>? code,
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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [value] /// The value for this stratum, expressed as a CodeableConcept. When defining
  /// stratifiers on complex values, the value must be rendered such that the
  /// value for each stratum within the stratifier is unique.
  @JsonKey(name: 'value')
  final MeasureReportStratifierValueExample? value;

  /// [component] /// A stratifier component value.
  @JsonKey(name: 'component')
  final List<MeasureReportComponent>? component;

  /// [population] /// The populations that make up the stratum, one for each type of population
  /// appropriate to the measure.
  @JsonKey(name: 'population')
  final List<MeasureReportPopulation>? population;

  /// [measureScore] /// The measure score for this stratum, calculated as appropriate for the
  /// measure type and scoring method, and based on only the members of this
  /// stratum.
  @JsonKey(name: 'measureScore')
  final Quantity? measureScore;
  factory MeasureReportStratum.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportStratumFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MeasureReportStratumToJson(this);

  @override
  MeasureReportStratum clone() => throw UnimplementedError();
  @override
  MeasureReportStratum copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    MeasureReportStratifierValueExample? value,
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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The code for the stratum component value.
  @JsonKey(name: 'code')
  final MeasureStratifierExample code;

  /// [value] /// The stratum component value.
  @JsonKey(name: 'value')
  final MeasureReportStratifierValueExample value;
  factory MeasureReportComponent.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MeasureReportComponentToJson(this);

  @override
  MeasureReportComponent clone() => throw UnimplementedError();
  @override
  MeasureReportComponent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    MeasureStratifierExample? code,
    MeasureReportStratifierValueExample? value,
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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The type of the population.
  @JsonKey(name: 'code')
  final MeasurePopulationType? code;

  /// [count] /// The number of members of the population in this stratum.
  @JsonKey(name: 'count')
  final FhirInteger? count;
  @JsonKey(name: '_count')
  final Element? countElement;

  /// [subjectResults] /// This element refers to a List of subject level MeasureReport resources, one
  /// for each subject in this population in this stratum.
  @JsonKey(name: 'subjectResults')
  final Reference? subjectResults;
  factory MeasureReportPopulation1.fromJson(Map<String, dynamic> json) =>
      _$MeasureReportPopulation1FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MeasureReportPopulation1ToJson(this);

  @override
  MeasureReportPopulation1 clone() => throw UnimplementedError();
  @override
  MeasureReportPopulation1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    MeasurePopulationType? code,
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
