import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class VisionPrescriptionPrism {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirDecimal amount;
  final PrimitiveElement Amount;
  final FhirCode base;
  final PrimitiveElement Base;
  const VisionPrescriptionPrism({
    this.id,
    this.extension,
    this.modifierExtension,
    this.amount,
    this.Amount,
    this.base,
    this.Base,
  });
}
