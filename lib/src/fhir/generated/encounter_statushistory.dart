import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EncounterStatusHistory {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode status;
  final PrimitiveElement Status;
  final Period period;
  const EncounterStatusHistory({
    this.id,
    this.extension,
    this.modifierExtension,
    this.status,
    this.Status,
    required this.period,
  });
}
