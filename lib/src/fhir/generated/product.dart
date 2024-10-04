import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ProductShelfLife {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Identifier identifier;
  final CodeableConcept type;
  final Quantity period;
  final List<CodeableConcept> specialPrecautionsForStorage;
  const ProductShelfLife({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.type,
    required this.period,
    required this.specialPrecautionsForStorage,
  });
}


