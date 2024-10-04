import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Ratio {
  final String id;
  final List<FhirExtension> extension_;
  final Quantity numerator;
  final Quantity denominator;
}

@Data()
@JsonCodable()
class RatioRange {
  final String id;
  final List<FhirExtension> extension_;
  final Quantity lowNumerator;
  final Quantity highNumerator;
  final Quantity denominator;
}


