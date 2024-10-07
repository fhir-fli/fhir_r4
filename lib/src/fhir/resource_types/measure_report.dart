import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class MeasureReport extends DomainResource {
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
  final List<BackboneElement>? group;
  final List<BackboneElement>? population;
  final List<BackboneElement>? stratifier;
  final List<BackboneElement>? stratum;
  final List<BackboneElement>? component;
  final List<BackboneElement>? population;
  final List<Reference>? evaluatedResource;

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
    this.population,
    this.stratifier,
    this.stratum,
    this.component,
    this.population,
    this.evaluatedResource,
  }) : super(resourceType: R4ResourceType.MeasureReport);

@override
MeasureReport clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MeasureReportGroup extends BackboneElement {
  final CodeableConcept? code;
  final Quantity? measureScore;

  MeasureReportGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.measureScore,
  });

@override
MeasureReportGroup clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MeasureReportPopulation extends BackboneElement {
  final CodeableConcept? code;
  final FhirInteger? count;
  final Element? countElement;
  final Reference? subjectResults;

  MeasureReportPopulation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.count,
this.countElement,
    this.subjectResults,
  });

@override
MeasureReportPopulation clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MeasureReportStratifier extends BackboneElement {
  final List<CodeableConcept>? code;

  MeasureReportStratifier({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
  });

@override
MeasureReportStratifier clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MeasureReportStratum extends BackboneElement {
  final CodeableConcept? value;
  final Quantity? measureScore;

  MeasureReportStratum({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.value,
    this.measureScore,
  });

@override
MeasureReportStratum clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MeasureReportComponent extends BackboneElement {
  final CodeableConcept code;
  final CodeableConcept value;

  MeasureReportComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.value,
  });

@override
MeasureReportComponent clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MeasureReportPopulation extends BackboneElement {
  final CodeableConcept? code;
  final FhirInteger? count;
  final Element? countElement;
  final Reference? subjectResults;

  MeasureReportPopulation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.count,
this.countElement,
    this.subjectResults,
  });

@override
MeasureReportPopulation clone() => throw UnimplementedError();
}

