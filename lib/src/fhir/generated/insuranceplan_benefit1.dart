import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class InsurancePlanBenefit1 {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final List<InsurancePlanCost> cost;
  const InsurancePlanBenefit1({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    this.cost,
  });
}
