import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Annotation {
  final String id;
  final List<FhirExtension> extension_;
  final Reference authorReference;
  final String authorString;
  final PrimitiveElement authorStringElement;
  final FhirDateTime time;
  final PrimitiveElement timeElement;
  final FhirMarkdown text;
  final PrimitiveElement textElement;
}


