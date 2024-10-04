import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class InsurancePlanCost {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept applicability;
  final List<CodeableConcept> qualifiers;
  final Quantity value;
  const InsurancePlanCost({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    this.applicability,
    this.qualifiers,
    this.value,
  });
}
