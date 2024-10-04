import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ImmunizationEvaluation {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final Reference patient;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final Reference authority;
  final CodeableConcept targetDisease;
  final Reference immunizationEvent;
  final CodeableConcept doseStatus;
  final List<CodeableConcept> doseStatusReason;
  final String description;
  final PrimitiveElement Description;
  final String series;
  final PrimitiveElement Series;
  final double doseNumberPositiveInt;
  final PrimitiveElement DoseNumberPositiveInt;
  final String doseNumberString;
  final PrimitiveElement DoseNumberString;
  final double seriesDosesPositiveInt;
  final PrimitiveElement SeriesDosesPositiveInt;
  final String seriesDosesString;
  final PrimitiveElement SeriesDosesString;
  const ImmunizationEvaluation({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.Status,
    required this.patient,
    this.date,
    this.Date,
    this.authority,
    required this.targetDisease,
    required this.immunizationEvent,
    required this.doseStatus,
    this.doseStatusReason,
    this.description,
    this.Description,
    this.series,
    this.Series,
    this.doseNumberPositiveInt,
    this.DoseNumberPositiveInt,
    this.doseNumberString,
    this.DoseNumberString,
    this.seriesDosesPositiveInt,
    this.SeriesDosesPositiveInt,
    this.seriesDosesString,
    this.SeriesDosesString,
  });
}
