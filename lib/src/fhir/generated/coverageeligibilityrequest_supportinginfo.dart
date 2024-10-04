import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CoverageEligibilityRequestSupportingInfo {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
  final Reference information;
  final FhirBoolean appliesToAll;
  final PrimitiveElement AppliesToAll;
  const CoverageEligibilityRequestSupportingInfo({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.Sequence,
    required this.information,
    this.appliesToAll,
    this.AppliesToAll,
  });
}
