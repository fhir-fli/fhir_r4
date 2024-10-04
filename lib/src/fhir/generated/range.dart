import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Range {
  final String id;
  final List<FhirExtension> extension_;
  final Quantity low;
  final Quantity high;
}


