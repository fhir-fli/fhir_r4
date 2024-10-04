import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Identifier {
  final String id;
  final List<FhirExtension> extension_;
  final dynamic use;
  final PrimitiveElement useElement;
  final CodeableConcept type;
  final FhirUri system;
  final PrimitiveElement systemElement;
  final String value;
  final PrimitiveElement valueElement;
  final Period period;
  final Reference assigner;
  const Identifier({
    required this.id,
    required this.extension_,
    required this.use,
    required this.useElement,
    required this.type,
    required this.system,
    required this.systemElement,
    required this.value,
    required this.valueElement,
    required this.period,
    required this.assigner,
  });
}


