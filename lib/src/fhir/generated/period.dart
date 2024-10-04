import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Period {
  final String id;
  final List<FhirExtension> extension_;
  final FhirDateTime start;
  final PrimitiveElement startElement;
  final FhirDateTime end;
  final PrimitiveElement endElement;
  const Period({
    required this.id,
    required this.extension_,
    required this.start,
    required this.startElement,
    required this.end,
    required this.endElement,
  });
}


