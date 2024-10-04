import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CarePlanActivity {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<CodeableConcept> outcomeCodeableConcept;
  final List<Reference> outcomeReference;
  final List<Annotation> progress;
  final Reference reference;
  final CarePlan_Detail detail;
  const CarePlanActivity({
    this.id,
    this.extension,
    this.modifierExtension,
    this.outcomeCodeableConcept,
    this.outcomeReference,
    this.progress,
    this.reference,
    this.detail,
  });
}
