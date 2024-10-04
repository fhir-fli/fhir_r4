import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationPart {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final String value;
  final PrimitiveElement Value;
  final Reference baseCitation;
  const CitationPart({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.value,
    this.Value,
    this.baseCitation,
  });
}
