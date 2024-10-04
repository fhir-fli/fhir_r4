import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CoverageEligibilityResponseInsurance {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference coverage;
  final FhirBoolean inforce;
  final PrimitiveElement Inforce;
  final Period benefitPeriod;
  final List<CoverageEligibilityResponseItem> item;
  const CoverageEligibilityResponseInsurance({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.coverage,
    this.inforce,
    this.Inforce,
    this.benefitPeriod,
    this.item,
  });
}
