import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ParameterDefinition {
  final String id;
  final List<FhirExtension> extension;
  final FhirCode name;
  final PrimitiveElement Name;
  final FhirCode use;
  final PrimitiveElement Use;
  final FhirInteger min;
  final PrimitiveElement Min;
  final String max;
  final PrimitiveElement Max;
  final String documentation;
  final PrimitiveElement Documentation;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirCanonical profile;
}


