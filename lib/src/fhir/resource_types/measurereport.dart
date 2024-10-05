import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class MeasureReport extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final FhirCode? type;
  final Element? typeElement;
  final FhirCanonical measure;
  final Reference? subject;
  final FhirDateTime? date;
  final Element? dateElement;
  final Reference? reporter;
  final Period period;
  final CodeableConcept? improvementNotation;
  final List<MeasureReportGroup>? group;
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
    this.status,
    this.statusElement,
    this.type,
    this.typeElement,
    required this.measure,
    this.subject,
    this.date,
    this.dateElement,
    this.reporter,
    required this.period,
    this.improvementNotation,
    this.group,
    this.evaluatedResource,
  }): super(resourceType: R4ResourceType.MeasureReport);

@override
MeasureReport clone() => this;

}


@Data()
@JsonCodable()
class MeasureReportGroup {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? code;
  final List<MeasureReportPopulation>? population;
  final Quantity? measureScore;
  final List<MeasureReportStratifier>? stratifier;

  MeasureReportGroup({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.population,
    this.measureScore,
    this.stratifier,
  });

}


@Data()
@JsonCodable()
class MeasureReportPopulation {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? code;
  final FhirInteger? count;
  final Element? countElement;
  final Reference? subjectResults;

  MeasureReportPopulation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.count,
    this.countElement,
    this.subjectResults,
  });

}


@Data()
@JsonCodable()
class MeasureReportStratifier {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<CodeableConcept>? code;
  final List<MeasureReportStratum>? stratum;

  MeasureReportStratifier({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.stratum,
  });

}


@Data()
@JsonCodable()
class MeasureReportStratum {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? value;
  final List<MeasureReportComponent>? component;
  final List<MeasureReportPopulation1>? population;
  final Quantity? measureScore;

  MeasureReportStratum({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.value,
    this.component,
    this.population,
    this.measureScore,
  });

}


@Data()
@JsonCodable()
class MeasureReportComponent {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept code;
  final CodeableConcept value;

  MeasureReportComponent({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    required this.value,
  });

}


@Data()
@JsonCodable()
class MeasureReportPopulation1 {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? code;
  final FhirInteger? count;
  final Element? countElement;
  final Reference? subjectResults;

  MeasureReportPopulation1({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.count,
    this.countElement,
    this.subjectResults,
  });

}



