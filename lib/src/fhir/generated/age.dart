import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Age {
  final String id;
  final List<FhirExtension> extension_;
  final FhirDecimal value;
  final PrimitiveElement valueElement;
  final dynamic comparator;
  final PrimitiveElement comparatorElement;
  final String unit;
  final PrimitiveElement unitElement;
  final FhirUri system;
  final PrimitiveElement systemElement;
  final FhirCode code;
  final PrimitiveElement codeElement;
  const Age({
    required this.id,
    required this.extension_,
    required this.value,
    required this.valueElement,
    required this.comparator,
    required this.comparatorElement,
    required this.unit,
    required this.unitElement,
    required this.system,
    required this.systemElement,
    required this.code,
    required this.codeElement,
  });
}


