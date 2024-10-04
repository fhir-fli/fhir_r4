import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class InsurancePlanLimit {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Quantity value;
  final CodeableConcept code;
  const InsurancePlanLimit({
    this.id,
    this.extension,
    this.modifierExtension,
    this.value,
    this.code,
  });
}
