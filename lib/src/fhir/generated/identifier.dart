import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Identifier {
  final String id;
  final List<FhirExtension> extension;
  final dynamic use;
  final PrimitiveElement Use;
  final CodeableConcept type;
  final FhirUri system;
  final PrimitiveElement System;
  final String value;
  final PrimitiveElement Value;
  final Period period;
  final Reference assigner;
}


