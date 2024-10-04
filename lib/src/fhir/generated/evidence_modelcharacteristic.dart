import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EvidenceModelCharacteristic {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final Quantity value;
  final List<EvidenceVariable> variable;
  final List<EvidenceAttributeEstimate> attributeEstimate;
  const EvidenceModelCharacteristic({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.code,
    this.value,
    this.variable,
    this.attributeEstimate,
  });
}
