import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Population {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Range ageRange;
  final CodeableConcept ageCodeableConcept;
  final CodeableConcept gender;
  final CodeableConcept race;
  final CodeableConcept physiologicalCondition;
}


