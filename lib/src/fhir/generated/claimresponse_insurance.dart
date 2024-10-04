import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClaimResponseInsurance {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
  final FhirBoolean focal;
  final PrimitiveElement Focal;
  final Reference coverage;
  final String businessArrangement;
  final PrimitiveElement BusinessArrangement;
  final Reference claimResponse;
  const ClaimResponseInsurance({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.Sequence,
    this.focal,
    this.Focal,
    required this.coverage,
    this.businessArrangement,
    this.BusinessArrangement,
    this.claimResponse,
  });
}
