import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ImmunizationEvaluation] /// Describes a comparison of an immunization event against published
/// recommendations to determine if the administration is "valid" in relation
/// to those recommendations.
class ImmunizationEvaluation extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this immunization evaluation record.
  final List<Identifier>? identifier;

  /// [status] /// Indicates the current status of the evaluation of the vaccination
  /// administration event.
  final FhirCode status;
  final Element? statusElement;

  /// [patient] /// The individual for whom the evaluation is being done.
  final Reference patient;

  /// [date] /// The date the evaluation of the vaccine administration event was performed.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [authority] /// Indicates the authority who published the protocol (e.g. ACIP).
  final Reference? authority;

  /// [targetDisease] /// The vaccine preventable disease the dose is being evaluated against.
  final CodeableConcept targetDisease;

  /// [immunizationEvent] /// The vaccine administration event being evaluated.
  final Reference immunizationEvent;

  /// [doseStatus] /// Indicates if the dose is valid or not valid with respect to the published
  /// recommendations.
  final CodeableConcept doseStatus;

  /// [doseStatusReason] /// Provides an explanation as to why the vaccine administration event is valid
  /// or not relative to the published recommendations.
  final List<CodeableConcept>? doseStatusReason;

  /// [description] /// Additional information about the evaluation.
  final FhirString? description;
  final Element? descriptionElement;

  /// [series] /// One possible path to achieve presumed immunity against a disease - within
  /// the context of an authority.
  final FhirString? series;
  final Element? seriesElement;

  /// [doseNumberPositiveInt] /// Nominal position in a series.
  final FhirPositiveInt? doseNumberPositiveInt;
  final Element? doseNumberPositiveIntElement;

  /// [doseNumberString] /// Nominal position in a series.
  final FhirString? doseNumberString;
  final Element? doseNumberStringElement;

  /// [seriesDosesPositiveInt] /// The recommended number of doses to achieve immunity.
  final FhirPositiveInt? seriesDosesPositiveInt;
  final Element? seriesDosesPositiveIntElement;

  /// [seriesDosesString] /// The recommended number of doses to achieve immunity.
  final FhirString? seriesDosesString;
  final Element? seriesDosesStringElement;
  @override
  ImmunizationEvaluation clone() => throw UnimplementedError();
  ImmunizationEvaluation copy({
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
    Reference? patient,
    FhirDateTime? date,
    Element? dateElement,
    Reference? authority,
    CodeableConcept? targetDisease,
    Reference? immunizationEvent,
    CodeableConcept? doseStatus,
    List<CodeableConcept>? doseStatusReason,
    FhirString? description,
    Element? descriptionElement,
    FhirString? series,
    Element? seriesElement,
    FhirPositiveInt? doseNumberPositiveInt,
    Element? doseNumberPositiveIntElement,
    FhirString? doseNumberString,
    Element? doseNumberStringElement,
    FhirPositiveInt? seriesDosesPositiveInt,
    Element? seriesDosesPositiveIntElement,
    FhirString? seriesDosesString,
    Element? seriesDosesStringElement,
  }) {
    return ImmunizationEvaluation(
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
      patient: patient ?? this.patient,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      authority: authority ?? this.authority,
      targetDisease: targetDisease ?? this.targetDisease,
      immunizationEvent: immunizationEvent ?? this.immunizationEvent,
      doseStatus: doseStatus ?? this.doseStatus,
      doseStatusReason: doseStatusReason ?? this.doseStatusReason,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      series: series ?? this.series,
      seriesElement: seriesElement ?? this.seriesElement,
      doseNumberPositiveInt:
          doseNumberPositiveInt ?? this.doseNumberPositiveInt,
      doseNumberPositiveIntElement:
          doseNumberPositiveIntElement ?? this.doseNumberPositiveIntElement,
      doseNumberString: doseNumberString ?? this.doseNumberString,
      doseNumberStringElement:
          doseNumberStringElement ?? this.doseNumberStringElement,
      seriesDosesPositiveInt:
          seriesDosesPositiveInt ?? this.seriesDosesPositiveInt,
      seriesDosesPositiveIntElement:
          seriesDosesPositiveIntElement ?? this.seriesDosesPositiveIntElement,
      seriesDosesString: seriesDosesString ?? this.seriesDosesString,
      seriesDosesStringElement:
          seriesDosesStringElement ?? this.seriesDosesStringElement,
    );
  }
}
