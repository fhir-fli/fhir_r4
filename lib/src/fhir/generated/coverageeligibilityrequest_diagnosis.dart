import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CoverageEligibilityRequestDiagnosis {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept diagnosisCodeableConcept;
  final Reference diagnosisReference;
  const CoverageEligibilityRequestDiagnosis({
    this.id,
    this.extension,
    this.modifierExtension,
    this.diagnosisCodeableConcept,
    this.diagnosisReference,
  });
}
