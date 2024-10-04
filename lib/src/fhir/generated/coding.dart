import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Coding {
  final String id;
  final List<FhirExtension> extension_;
  final FhirUri system;
  final PrimitiveElement systemElement;
  final String version;
  final PrimitiveElement versionElement;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final String display;
  final PrimitiveElement displayElement;
  final FhirBoolean userSelected;
  final PrimitiveElement userSelectedElement;
  const Coding({
    required this.id,
    required this.extension_,
    required this.system,
    required this.systemElement,
    required this.version,
    required this.versionElement,
    required this.code,
    required this.codeElement,
    required this.display,
    required this.displayElement,
    required this.userSelected,
    required this.userSelectedElement,
  });
}


