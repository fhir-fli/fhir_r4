import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class InsurancePlanPlan {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final CodeableConcept type;
  final List<Reference> coverageArea;
  final List<Reference> network;
  final List<InsurancePlanGeneralCost> generalCost;
  final List<InsurancePlanSpecificCost> specificCost;
  const InsurancePlanPlan({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.coverageArea,
    this.network,
    this.generalCost,
    this.specificCost,
  });
}
