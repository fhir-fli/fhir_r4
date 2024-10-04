import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClaimInsurance {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
  final FhirBoolean focal;
  final PrimitiveElement Focal;
  final Identifier identifier;
  final Reference coverage;
  final String businessArrangement;
  final PrimitiveElement BusinessArrangement;
  final List<String> preAuthRef;
  final List<PrimitiveElement> PreAuthRef;
  final Reference claimResponse;
  const ClaimInsurance({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.Sequence,
    this.focal,
    this.Focal,
    this.identifier,
    required this.coverage,
    this.businessArrangement,
    this.BusinessArrangement,
    this.preAuthRef,
    this.PreAuthRef,
    this.claimResponse,
  });
}
