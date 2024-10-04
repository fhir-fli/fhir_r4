import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SampledData {
  final String id;
  final List<Extension> extension;
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
  const SampledData({
    this.id,
    this.extension,
    required this.origin,
    this.period,
    this.Period,
    this.factor,
    this.Factor,
    this.lowerLimit,
    this.LowerLimit,
    this.upperLimit,
    this.UpperLimit,
    this.dimensions,
    this.Dimensions,
    this.data,
    this.Data,
  });
}
