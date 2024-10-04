import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ContractContext {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference reference;
  final List<CodeableConcept> code;
  final String text;
  final PrimitiveElement Text;
  const ContractContext({
    this.id,
    this.extension,
    this.modifierExtension,
    this.reference,
    this.code,
    this.text,
    this.Text,
  });
}
