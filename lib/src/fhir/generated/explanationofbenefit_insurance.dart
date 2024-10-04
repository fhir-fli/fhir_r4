import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ExplanationOfBenefitInsurance {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirBoolean focal;
  final PrimitiveElement Focal;
  final Reference coverage;
  final List<String> preAuthRef;
  final List<PrimitiveElement> PreAuthRef;
  const ExplanationOfBenefitInsurance({
    this.id,
    this.extension,
    this.modifierExtension,
    this.focal,
    this.Focal,
    required this.coverage,
    this.preAuthRef,
    this.PreAuthRef,
  });
}
