import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationBatch {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String lotNumber;
  final PrimitiveElement LotNumber;
  final FhirDateTime expirationDate;
  final PrimitiveElement ExpirationDate;
  const MedicationBatch({
    this.id,
    this.extension,
    this.modifierExtension,
    this.lotNumber,
    this.LotNumber,
    this.expirationDate,
    this.ExpirationDate,
  });
}
