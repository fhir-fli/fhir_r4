import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class SampledData extends DataType {
  SampledData({
    super.id,
    super.extension_,
    required this.origin,
    required this.period,
    this.periodElement,
    this.factor,
    this.factorElement,
    this.lowerLimit,
    this.lowerLimitElement,
    this.upperLimit,
    this.upperLimitElement,
    required this.dimensions,
    this.dimensionsElement,
    this.data,
    this.dataElement,
  });

  final Quantity origin;
  final FhirDecimal period;
  final Element? periodElement;
  final FhirDecimal? factor;
  final Element? factorElement;
  final FhirDecimal? lowerLimit;
  final Element? lowerLimitElement;
  final FhirDecimal? upperLimit;
  final Element? upperLimitElement;
  final FhirPositiveInt dimensions;
  final Element? dimensionsElement;
  final FhirString? data;
  final Element? dataElement;
  @override
  SampledData clone() => throw UnimplementedError();
}
