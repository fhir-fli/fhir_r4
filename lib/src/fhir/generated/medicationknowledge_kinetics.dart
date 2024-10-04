import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationKnowledgeKinetics {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Quantity> areaUnderCurve;
  final List<Quantity> lethalDose50;
  final FhirDuration halfLifePeriod;
  const MedicationKnowledgeKinetics({
    this.id,
    this.extension,
    this.modifierExtension,
    this.areaUnderCurve,
    this.lethalDose50,
    this.halfLifePeriod,
  });
}
