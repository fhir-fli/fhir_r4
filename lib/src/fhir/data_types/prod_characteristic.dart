import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ProdCharacteristic extends BackboneType {
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

@override
ProdCharacteristic clone() => throw UnimplementedError();
}

