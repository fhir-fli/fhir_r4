import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class HumanName {
  final String id;
  final List<FhirExtension> extension_;
  final dynamic use;
  final PrimitiveElement useElement;
  final String text;
  final PrimitiveElement textElement;
  final String family;
  final PrimitiveElement familyElement;
  final List<String> given;
  final List<PrimitiveElement> givenElement;
  final List<String> prefix;
  final List<PrimitiveElement> prefixElement;
  final List<String> suffix;
  final List<PrimitiveElement> suffixElement;
  final Period period;
}

