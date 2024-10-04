import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Reference {
  final String id;
  final List<Extension> extension;
  final String reference;
  final PrimitiveElement Reference;
  final FhirUri type;
  final PrimitiveElement Type;
  final Identifier identifier;
  final String display;
  final PrimitiveElement Display;
  const Reference({
    this.id,
    this.extension,
    this.reference,
    this.Reference,
    this.type,
    this.Type,
    this.identifier,
    this.display,
    this.Display,
  });
}
