import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ProdCharacteristic {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Quantity height;
  final Quantity width;
  final Quantity depth;
  final Quantity weight;
  final Quantity nominalVolume;
  final Quantity externalDiameter;
  final String shape;
  final PrimitiveElement shapeElement;
  final List<String> color;
  final List<PrimitiveElement> colorElement;
  final List<String> imprint;
  final List<PrimitiveElement> imprintElement;
  final List<Attachment> image;
  final CodeableConcept scoring;
  const ProdCharacteristic({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.height,
    required this.width,
    required this.depth,
    required this.weight,
    required this.nominalVolume,
    required this.externalDiameter,
    required this.shape,
    required this.shapeElement,
    required this.color,
    required this.colorElement,
    required this.imprint,
    required this.imprintElement,
    required this.image,
    required this.scoring,
  });
}


