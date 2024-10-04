import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CodeableConcept {
  final String id;
  final List<Extension> extension;
  final List<Coding> coding;
  final String text;
  final PrimitiveElement Text;
  const CodeableConcept({
    this.id,
    this.extension,
    this.coding,
    this.text,
    this.Text,
  });
}
