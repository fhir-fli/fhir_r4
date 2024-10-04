import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class RiskAssessmentPrediction {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept outcome;
  final double probabilityDecimal;
  final PrimitiveElement ProbabilityDecimal;
  final Range probabilityRange;
  final CodeableConcept qualitativeRisk;
  final FhirDecimal relativeRisk;
  final PrimitiveElement RelativeRisk;
  final Period whenPeriod;
  final Range whenRange;
  final String rationale;
  final PrimitiveElement Rationale;
  const RiskAssessmentPrediction({
    this.id,
    this.extension,
    this.modifierExtension,
    this.outcome,
    this.probabilityDecimal,
    this.ProbabilityDecimal,
    this.probabilityRange,
    this.qualitativeRisk,
    this.relativeRisk,
    this.RelativeRisk,
    this.whenPeriod,
    this.whenRange,
    this.rationale,
    this.Rationale,
  });
}
