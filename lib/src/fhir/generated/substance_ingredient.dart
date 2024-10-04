import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubstanceIngredient {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Ratio quantity;
  final CodeableConcept substanceCodeableConcept;
  final Reference substanceReference;
  const SubstanceIngredient({
    this.id,
    this.extension,
    this.modifierExtension,
    this.quantity,
    this.substanceCodeableConcept,
    this.substanceReference,
  });
}
