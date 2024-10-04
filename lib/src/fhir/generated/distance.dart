import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Distance {
  final String id;
  final List<FhirExtension> extension;
  final FhirDecimal value;
  final PrimitiveElement Value;
  final dynamic comparator;
  final PrimitiveElement Comparator;
  final String unit;
  final PrimitiveElement Unit;
  final FhirUri system;
  final PrimitiveElement System;
  final FhirCode code;
  final PrimitiveElement Code;
}


