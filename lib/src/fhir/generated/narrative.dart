import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Narrative {
  final String id;
  final List<FhirExtension> extension_;
  final dynamic status;
  final PrimitiveElement statusElement;
  final FhirMarkdown div;
}


