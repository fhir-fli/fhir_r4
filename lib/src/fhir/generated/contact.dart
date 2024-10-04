import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ContactPoint {
  final String id;
  final List<FhirExtension> extension;
  final dynamic system;
  final PrimitiveElement System;
  final String value;
  final PrimitiveElement Value;
  final dynamic use;
  final PrimitiveElement Use;
  final FhirPositiveInt rank;
  final PrimitiveElement Rank;
  final Period period;
}

@Data()
@JsonCodable()
class ContactDetail {
  final String id;
  final List<FhirExtension> extension;
  final String name;
  final PrimitiveElement Name;
  final List<ContactPoint> telecom;
}


