import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class InsurancePlanBenefit {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final String requirement;
  final PrimitiveElement Requirement;
  final List<InsurancePlanLimit> limit;
  const InsurancePlanBenefit({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    this.requirement,
    this.Requirement,
    this.limit,
  });
}
