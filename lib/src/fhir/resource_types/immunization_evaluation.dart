import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ImmunizationEvaluation extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final Reference patient;
  final FhirDateTime? date;
  final Element? dateElement;
  final Reference? authority;
  final CodeableConcept targetDisease;
  final Reference immunizationEvent;
  final CodeableConcept doseStatus;
  final List<CodeableConcept>? doseStatusReason;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirString? series;
  final Element? seriesElement;
  final FhirPositiveInt? doseNumberFhirPositiveInt;
  final Element? doseNumberFhirPositiveIntElement;
  final FhirString? doseNumberFhirString;
  final Element? doseNumberFhirStringElement;
  final FhirPositiveInt? seriesDosesFhirPositiveInt;
  final Element? seriesDosesFhirPositiveIntElement;
  final FhirString? seriesDosesFhirString;
  final Element? seriesDosesFhirStringElement;

  ImmunizationEvaluation({
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
    required this.patient,
    this.date,
this.dateElement,
    this.authority,
    required this.targetDisease,
    required this.immunizationEvent,
    required this.doseStatus,
    this.doseStatusReason,
    this.description,
this.descriptionElement,
    this.series,
this.seriesElement,
    this.doseNumberFhirPositiveInt,
this.doseNumberFhirPositiveIntElement,
    this.doseNumberFhirString,
this.doseNumberFhirStringElement,
    this.seriesDosesFhirPositiveInt,
this.seriesDosesFhirPositiveIntElement,
    this.seriesDosesFhirString,
this.seriesDosesFhirStringElement,
  }) : super(resourceType: R4ResourceType.ImmunizationEvaluation);

@override
ImmunizationEvaluation clone() => throw UnimplementedError();
}
