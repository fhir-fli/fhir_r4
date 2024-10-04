import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Signature {
  final String id;
  final List<FhirExtension> extension;
  final List<Coding> type;
  final FhirInstant when;
  final PrimitiveElement When;
  final Reference who;
  final Reference onBehalfOf;
  final FhirCode targetFormat;
  final PrimitiveElement TargetFormat;
  final FhirCode sigFormat;
  final PrimitiveElement SigFormat;
  final FhirBase64Binary data;
  final PrimitiveElement Data;
}


