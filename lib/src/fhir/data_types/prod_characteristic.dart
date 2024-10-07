import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class ProdCharacteristic extends BackboneType {
  ProdCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.height,
    this.width,
    this.depth,
    this.weight,
    this.nominalVolume,
    this.externalDiameter,
    this.shape,
    this.shapeElement,
    this.color,
    this.colorElement,
    this.imprint,
    this.imprintElement,
    this.image,
    this.scoring,
  });

  final Quantity? height;
  final Quantity? width;
  final Quantity? depth;
  final Quantity? weight;
  final Quantity? nominalVolume;
  final Quantity? externalDiameter;
  final FhirString? shape;
  final Element? shapeElement;
  final List<FhirString>? color;
  final List<Element>? colorElement;
  final List<FhirString>? imprint;
  final List<Element>? imprintElement;
  final List<Attachment>? image;
  final CodeableConcept? scoring;
  @override
  ProdCharacteristic clone() => throw UnimplementedError();
}
