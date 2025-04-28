import 'qdm.dart';

class DiagnosisActive {
  final CodeableConcept? anatomicalLocation;
  final CodeableConcept? laterality;
  final CodeableConcept? ordinality;
  final CodeableConcept? severity;

  DiagnosisActive({
    this.anatomicalLocation,
    this.laterality,
    this.severity,
    this.ordinality,
  });
}
