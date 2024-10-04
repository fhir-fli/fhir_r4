import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EvidenceVariableTimeFromStart {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final Quantity quantity;
  final Range range;
  final List<Annotation> note;
  const EvidenceVariableTimeFromStart({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.Description,
    this.quantity,
    this.range,
    this.note,
  });
}
