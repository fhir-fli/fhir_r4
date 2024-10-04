import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ProdCharacteristic {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Quantity height;
  final Quantity width;
  final Quantity depth;
  final Quantity weight;
  final Quantity nominalVolume;
  final Quantity externalDiameter;
  final String shape;
  final PrimitiveElement Shape;
  final List<String> color;
  final List<PrimitiveElement> Color;
  final List<String> imprint;
  final List<PrimitiveElement> Imprint;
  final List<Attachment> image;
  final CodeableConcept scoring;
  const ProdCharacteristic({
    this.id,
    this.extension,
    this.modifierExtension,
    this.height,
    this.width,
    this.depth,
    this.weight,
    this.nominalVolume,
    this.externalDiameter,
    this.shape,
    this.Shape,
    this.color,
    this.Color,
    this.imprint,
    this.Imprint,
    this.image,
    this.scoring,
  });
}
