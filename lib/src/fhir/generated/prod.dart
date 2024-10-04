import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ProdCharacteristic {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
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
}


