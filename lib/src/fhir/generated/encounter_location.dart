import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EncounterLocation {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference location;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept physicalType;
  final Period period;
  const EncounterLocation({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.location,
    this.status,
    this.Status,
    this.physicalType,
    this.period,
  });
}
