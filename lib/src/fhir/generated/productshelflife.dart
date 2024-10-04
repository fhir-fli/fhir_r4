import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ProductShelfLife {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Identifier identifier;
  final CodeableConcept type;
  final Quantity period;
  final List<CodeableConcept> specialPrecautionsForStorage;
  const ProductShelfLife({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    required this.type,
    required this.period,
    this.specialPrecautionsForStorage,
  });
}
