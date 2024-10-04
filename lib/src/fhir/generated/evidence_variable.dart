import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EvidenceVariable {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference variableDefinition;
  final FhirCode handling;
  final PrimitiveElement Handling;
  final List<CodeableConcept> valueCategory;
  final List<Quantity> valueQuantity;
  final List<Range> valueRange;
  const EvidenceVariable({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.variableDefinition,
    this.handling,
    this.Handling,
    this.valueCategory,
    this.valueQuantity,
    this.valueRange,
  });
}
