import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationDispensePerformer {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept function;
  final Reference actor;
  const MedicationDispensePerformer({
    this.id,
    this.extension,
    this.modifierExtension,
    this.function,
    required this.actor,
  });
}
