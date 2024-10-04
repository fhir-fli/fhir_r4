import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class UsageContext {
  final String id;
  final List<FhirExtension> extension_;
  final Coding code;
  final CodeableConcept valueCodeableConcept;
  final Quantity valueQuantity;
  final Range valueRange;
  final Reference valueReference;
  const UsageContext({
    required this.id,
    required this.extension_,
    required this.code,
    required this.valueCodeableConcept,
    required this.valueQuantity,
    required this.valueRange,
    required this.valueReference,
  });
}


