import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class SampledData {
  final String id;
  final List<FhirExtension> extension_;
  final Quantity origin;
  final FhirDecimal period;
  final PrimitiveElement periodElement;
  final FhirDecimal factor;
  final PrimitiveElement factorElement;
  final FhirDecimal lowerLimit;
  final PrimitiveElement lowerLimitElement;
  final FhirDecimal upperLimit;
  final PrimitiveElement upperLimitElement;
  final FhirPositiveInt dimensions;
  final PrimitiveElement dimensionsElement;
  final String data;
  final PrimitiveElement dataElement;
}


