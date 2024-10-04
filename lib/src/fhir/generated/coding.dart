import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Coding {
  final String id;
  final List<FhirExtension> extension;
  final FhirUri system;
  final PrimitiveElement System;
  final String version;
  final PrimitiveElement Version;
  final FhirCode code;
  final PrimitiveElement Code;
  final String display;
  final PrimitiveElement Display;
  final FhirBoolean userSelected;
  final PrimitiveElement UserSelected;
}


