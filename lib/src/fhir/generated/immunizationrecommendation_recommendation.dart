import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ImmunizationRecommendationRecommendation {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<CodeableConcept> vaccineCode;
  final CodeableConcept targetDisease;
  final List<CodeableConcept> contraindicatedVaccineCode;
  final CodeableConcept forecastStatus;
  final List<CodeableConcept> forecastReason;
  final List<ImmunizationRecommendationDateCriterion> dateCriterion;
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
  final List<Reference> supportingImmunization;
  final List<Reference> supportingPatientInformation;
  const ImmunizationRecommendationRecommendation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.vaccineCode,
    this.targetDisease,
    this.contraindicatedVaccineCode,
    required this.forecastStatus,
    this.forecastReason,
    this.dateCriterion,
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
    this.supportingImmunization,
    this.supportingPatientInformation,
  });
}
