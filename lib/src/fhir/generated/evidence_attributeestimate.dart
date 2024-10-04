import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EvidenceAttributeEstimate {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final List<Annotation> note;
  final CodeableConcept type;
  final Quantity quantity;
  final FhirDecimal level;
  final PrimitiveElement Level;
  final Range range;
  final List<EvidenceAttributeEstimate> attributeEstimate;
  const EvidenceAttributeEstimate({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.Description,
    this.note,
    this.type,
    this.quantity,
    this.level,
    this.Level,
    this.range,
    this.attributeEstimate,
  });
}
