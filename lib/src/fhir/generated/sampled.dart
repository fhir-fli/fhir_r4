import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class SampledData {
  final String id;
  final List<FhirExtension> extension;
  final Quantity origin;
  final FhirDecimal period;
  final PrimitiveElement Period;
  final FhirDecimal factor;
  final PrimitiveElement Factor;
  final FhirDecimal lowerLimit;
  final PrimitiveElement LowerLimit;
  final FhirDecimal upperLimit;
  final PrimitiveElement UpperLimit;
  final FhirPositiveInt dimensions;
  final PrimitiveElement Dimensions;
  final String data;
  final PrimitiveElement Data;
}


