import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

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
  }) : super(resourceType: R4ResourceType.MeasureReport);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A formal identifier that is used to identify this MeasureReport when it is
  /// represented in other formats or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [status] /// The MeasureReport status. No data will be available until the MeasureReport
  /// status is complete.
  final FhirCode status;
  final Element? statusElement;

  /// [type] /// The type of measure report. This may be an individual report, which
  /// provides the score for the measure for an individual member of the
  /// population; a subject-listing, which returns the list of members that meet
  /// the various criteria in the measure; a summary report, which returns a
  /// population count for each of the criteria in the measure; or a
  /// data-collection, which enables the MeasureReport to be used to exchange the
  /// data-of-interest for a quality measure.
  final FhirCode type;
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
  MeasureReport clone() => throw UnimplementedError();
  MeasureReport copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    FhirCode? type,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  MeasureReportGroup clone() => throw UnimplementedError();
  MeasureReportGroup copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    List<MeasureReportPopulation>? population,
    Quantity? measureScore,
    List<MeasureReportStratifier>? stratifier,
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

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  MeasureReportPopulation clone() => throw UnimplementedError();
  MeasureReportPopulation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirInteger? count,
    Element? countElement,
    Reference? subjectResults,
  }) {
    return MeasureReportPopulation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      count: count ?? this.count,
      countElement: countElement ?? this.countElement,
      subjectResults: subjectResults ?? this.subjectResults,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MeasureReportStratifier] /// When a measure includes multiple stratifiers, there will be a stratifier
/// group for each stratifier defined by the measure.
class MeasureReportStratifier extends BackboneElement {
  MeasureReportStratifier({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.stratum,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The meaning of this stratifier, as defined in the measure definition.
  final List<CodeableConcept>? code;

  /// [stratum] /// This element contains the results for a single stratum within the
  /// stratifier. For example, when stratifying on administrative gender, there
  /// will be four strata, one for each possible gender value.
  final List<MeasureReportStratum>? stratum;
  @override
  MeasureReportStratifier clone() => throw UnimplementedError();
  MeasureReportStratifier copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? code,
    List<MeasureReportStratum>? stratum,
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

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  MeasureReportStratum clone() => throw UnimplementedError();
  MeasureReportStratum copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? value,
    List<MeasureReportComponent>? component,
    List<MeasureReportPopulation>? population,
    Quantity? measureScore,
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

@JsonCodable()
@Data()
@Entity()

/// [MeasureReportComponent] /// A stratifier component value.
class MeasureReportComponent extends BackboneElement {
  MeasureReportComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.value,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The code for the stratum component value.
  final CodeableConcept code;

  /// [value] /// The stratum component value.
  final CodeableConcept value;
  @override
  MeasureReportComponent clone() => throw UnimplementedError();
  MeasureReportComponent copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? value,
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

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  MeasureReportPopulation1 clone() => throw UnimplementedError();
  MeasureReportPopulation1 copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirInteger? count,
    Element? countElement,
    Reference? subjectResults,
  }) {
    return MeasureReportPopulation1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      count: count ?? this.count,
      countElement: countElement ?? this.countElement,
      subjectResults: subjectResults ?? this.subjectResults,
    );
  }
}
