import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ParameterDefinition {
  final String id;
  final List<FhirExtension> extension_;
  final FhirCode name;
  final PrimitiveElement nameElement;
  final FhirCode use;
  final PrimitiveElement useElement;
  final FhirInteger min;
  final PrimitiveElement minElement;
  final String max;
  final PrimitiveElement maxElement;
  final String documentation;
  final PrimitiveElement documentationElement;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final FhirCanonical profile;
}


