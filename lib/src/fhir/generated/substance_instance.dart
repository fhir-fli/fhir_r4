import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubstanceInstance {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Identifier identifier;
  final FhirDateTime expiry;
  final PrimitiveElement Expiry;
  final Quantity quantity;
  const SubstanceInstance({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.expiry,
    this.Expiry,
    this.quantity,
  });
}
