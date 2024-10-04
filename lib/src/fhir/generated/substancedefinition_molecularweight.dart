import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubstanceDefinitionMolecularWeight {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept method;
  final CodeableConcept type;
  final Quantity amount;
  const SubstanceDefinitionMolecularWeight({
    this.id,
    this.extension,
    this.modifierExtension,
    this.method,
    this.type,
    required this.amount,
  });
}
