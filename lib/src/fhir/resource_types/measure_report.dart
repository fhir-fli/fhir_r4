import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
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

  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final FhirCode type;
  final Element? typeElement;
  final FhirCanonical measure;
  final Element? measureElement;
  final Reference? subject;
  final FhirDateTime? date;
  final Element? dateElement;
  final Reference? reporter;
  final Period period;
  final CodeableConcept? improvementNotation;
  final List<MeasureReportGroup>? group;
  final List<Reference>? evaluatedResource;
  @override
  MeasureReport clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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

  final CodeableConcept? code;
  final List<MeasureReportPopulation>? population;
  final Quantity? measureScore;
  final List<MeasureReportStratifier>? stratifier;
  @override
  MeasureReportGroup clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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

  final CodeableConcept? code;
  final FhirInteger? count;
  final Element? countElement;
  final Reference? subjectResults;
  @override
  MeasureReportPopulation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class MeasureReportStratifier extends BackboneElement {
  MeasureReportStratifier({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.stratum,
  });

  final List<CodeableConcept>? code;
  final List<MeasureReportStratum>? stratum;
  @override
  MeasureReportStratifier clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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

  final CodeableConcept? value;
  final List<MeasureReportComponent>? component;
  final List<MeasureReportPopulation>? population;
  final Quantity? measureScore;
  @override
  MeasureReportStratum clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class MeasureReportComponent extends BackboneElement {
  MeasureReportComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.value,
  });

  final CodeableConcept code;
  final CodeableConcept value;
  @override
  MeasureReportComponent clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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

  final CodeableConcept? code;
  final FhirInteger? count;
  final Element? countElement;
  final Reference? subjectResults;
  @override
  MeasureReportPopulation1 clone() => throw UnimplementedError();
}
