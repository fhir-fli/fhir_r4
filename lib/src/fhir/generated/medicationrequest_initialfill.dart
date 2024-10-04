import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationRequestInitialFill {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Quantity quantity;
  final FhirDuration duration;
  const MedicationRequestInitialFill({
    this.id,
    this.extension,
    this.modifierExtension,
    this.quantity,
    this.duration,
  });
}
