import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationKnowledgeCost {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final String source;
  final PrimitiveElement Source;
  final Money cost;
  const MedicationKnowledgeCost({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    this.source,
    this.Source,
    required this.cost,
  });
}
