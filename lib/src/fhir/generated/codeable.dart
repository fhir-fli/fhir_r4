import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class CodeableConcept {
  final String id;
  final List<FhirExtension> extension_;
  final List<Coding> coding;
  final String text;
  final PrimitiveElement textElement;
}

@Data()
@JsonCodable()
class CodeableReference {
  final String id;
  final List<FhirExtension> extension_;
  final CodeableConcept concept;
  final Reference reference;
}


