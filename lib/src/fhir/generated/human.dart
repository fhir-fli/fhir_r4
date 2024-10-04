import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class HumanName {
  final String id;
  final List<FhirExtension> extension;
  final dynamic use;
  final PrimitiveElement Use;
  final String text;
  final PrimitiveElement Text;
  final String family;
  final PrimitiveElement Family;
  final List<String> given;
  final List<PrimitiveElement> Given;
  final List<String> prefix;
  final List<PrimitiveElement> Prefix;
  final List<String> suffix;
  final List<PrimitiveElement> Suffix;
  final Period period;
}


