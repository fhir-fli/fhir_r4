import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationKnowledgeMaxDispense {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Quantity quantity;
  final FhirDuration period;
  const MedicationKnowledgeMaxDispense({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.quantity,
    this.period,
  });
}
