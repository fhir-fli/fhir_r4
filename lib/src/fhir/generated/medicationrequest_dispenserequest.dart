import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationRequestDispenseRequest {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final MedicationRequest_InitialFill initialFill;
  final FhirDuration dispenseInterval;
  final Period validityPeriod;
  final FhirUnsignedInt numberOfRepeatsAllowed;
  final PrimitiveElement NumberOfRepeatsAllowed;
  final Quantity quantity;
  final FhirDuration expectedSupplyDuration;
  final Reference performer;
  const MedicationRequestDispenseRequest({
    this.id,
    this.extension,
    this.modifierExtension,
    this.initialFill,
    this.dispenseInterval,
    this.validityPeriod,
    this.numberOfRepeatsAllowed,
    this.NumberOfRepeatsAllowed,
    this.quantity,
    this.expectedSupplyDuration,
    this.performer,
  });
}
