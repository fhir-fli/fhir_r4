import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class InsurancePlanSpecificCost {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept category;
  final List<InsurancePlanBenefit1> benefit;
  const InsurancePlanSpecificCost({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.category,
    this.benefit,
  });
}
