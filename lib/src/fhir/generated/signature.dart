import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Signature {
  final String id;
  final List<FhirExtension> extension_;
  final List<Coding> type;
  final FhirInstant when;
  final PrimitiveElement whenElement;
  final Reference who;
  final Reference onBehalfOf;
  final FhirCode targetFormat;
  final PrimitiveElement targetFormatElement;
  final FhirCode sigFormat;
  final PrimitiveElement sigFormatElement;
  final FhirBase64Binary data;
  final PrimitiveElement dataElement;
}


