import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class CodeableConcept {
  final String id;
  final List<FhirExtension> extension;
  final List<Coding> coding;
  final String text;
  final PrimitiveElement Text;
}

@Data()
@JsonCodable()
class CodeableReference {
  final String id;
  final List<FhirExtension> extension;
  final CodeableConcept concept;
  final Reference reference;
}


