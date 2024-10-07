import 'package:dataclass/dataclass.dart';
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
  final FhirPositiveInt? doseNumberPositiveInt;
  final Element? doseNumberPositiveIntElement;
  final FhirString? doseNumberString;
  final Element? doseNumberStringElement;
  final FhirPositiveInt? seriesDosesPositiveInt;
  final Element? seriesDosesPositiveIntElement;
  final FhirString? seriesDosesString;
  final Element? seriesDosesStringElement;

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
    this.doseNumberPositiveInt,
this.doseNumberPositiveIntElement,
    this.doseNumberString,
this.doseNumberStringElement,
    this.seriesDosesPositiveInt,
this.seriesDosesPositiveIntElement,
    this.seriesDosesString,
this.seriesDosesStringElement,
  }) : super(resourceType: R4ResourceType.ImmunizationEvaluation);

@override
ImmunizationEvaluation clone() => throw UnimplementedError();
}

