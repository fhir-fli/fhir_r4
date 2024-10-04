import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubstanceDefinitionRepresentation {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final String representation;
  final PrimitiveElement Representation;
  final CodeableConcept format;
  final Reference document;
  const SubstanceDefinitionRepresentation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.representation,
    this.Representation,
    this.format,
    this.document,
  });
}
