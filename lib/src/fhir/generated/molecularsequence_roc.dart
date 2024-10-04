import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MolecularSequenceRoc {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<FhirInteger> score;
  final List<PrimitiveElement> Score;
  final List<FhirInteger> numTP;
  final List<PrimitiveElement> NumTP;
  final List<FhirInteger> numFP;
  final List<PrimitiveElement> NumFP;
  final List<FhirInteger> numFN;
  final List<PrimitiveElement> NumFN;
  final List<FhirDecimal> precision;
  final List<PrimitiveElement> Precision;
  final List<FhirDecimal> sensitivity;
  final List<PrimitiveElement> Sensitivity;
  final List<FhirDecimal> fMeasure;
  final List<PrimitiveElement> FMeasure;
  const MolecularSequenceRoc({
    this.id,
    this.extension,
    this.modifierExtension,
    this.score,
    this.Score,
    this.numTP,
    this.NumTP,
    this.numFP,
    this.NumFP,
    this.numFN,
    this.NumFN,
    this.precision,
    this.Precision,
    this.sensitivity,
    this.Sensitivity,
    this.fMeasure,
    this.FMeasure,
  });
}
