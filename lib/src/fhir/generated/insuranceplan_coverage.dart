import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class InsurancePlanCoverage {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final List<Reference> network;
  final List<InsurancePlanBenefit> benefit;
  const InsurancePlanCoverage({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    this.network,
    required this.benefit,
  });
}
