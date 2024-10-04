import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ObservationReferenceRange {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Quantity low;
  final Quantity high;
  final CodeableConcept type;
  final List<CodeableConcept> appliesTo;
  final Range age;
  final String text;
  final PrimitiveElement Text;
  const ObservationReferenceRange({
    this.id,
    this.extension,
    this.modifierExtension,
    this.low,
    this.high,
    this.type,
    this.appliesTo,
    this.age,
    this.text,
    this.Text,
  });
}
