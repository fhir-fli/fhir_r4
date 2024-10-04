import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CoverageEligibilityRequestInsurance {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirBoolean focal;
  final PrimitiveElement Focal;
  final Reference coverage;
  final String businessArrangement;
  final PrimitiveElement BusinessArrangement;
  const CoverageEligibilityRequestInsurance({
    this.id,
    this.extension,
    this.modifierExtension,
    this.focal,
    this.Focal,
    required this.coverage,
    this.businessArrangement,
    this.BusinessArrangement,
  });
}
