import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [SampledData] /// A series of measurements taken by a device, with upper and lower limits.
/// There may be more than one dimension in the data.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [origin] /// The base quantity that a measured value of zero represents. In addition,
  /// this provides the units of the entire measurement series.
  final Quantity origin;

  /// [period] /// The length of time between sampling times, measured in milliseconds.
  final FhirDecimal period;
  final Element? periodElement;

  /// [factor] /// A correction factor that is applied to the sampled data points before they
  /// are added to the origin.
  final FhirDecimal? factor;
  final Element? factorElement;

  /// [lowerLimit] /// The lower limit of detection of the measured points. This is needed if any
  /// of the data points have the value "L" (lower than detection limit).
  final FhirDecimal? lowerLimit;
  final Element? lowerLimitElement;

  /// [upperLimit] /// The upper limit of detection of the measured points. This is needed if any
  /// of the data points have the value "U" (higher than detection limit).
  final FhirDecimal? upperLimit;
  final Element? upperLimitElement;

  /// [dimensions] /// The number of sample points at each time point. If this value is greater
  /// than one, then the dimensions will be interlaced - all the sample points
  /// for a point in time will be recorded at once.
  final FhirPositiveInt dimensions;
  final Element? dimensionsElement;

  /// [data] /// A series of data points which are decimal values separated by a single
  /// space (character u20). The special values "E" (error), "L" (below detection
  /// limit) and "U" (above detection limit) can also be used in place of a
  /// decimal value.
  final FhirString? data;
  final Element? dataElement;
  @override
  SampledData clone() => throw UnimplementedError();
  SampledData copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    Quantity? origin,
    FhirDecimal? period,
    Element? periodElement,
    FhirDecimal? factor,
    Element? factorElement,
    FhirDecimal? lowerLimit,
    Element? lowerLimitElement,
    FhirDecimal? upperLimit,
    Element? upperLimitElement,
    FhirPositiveInt? dimensions,
    Element? dimensionsElement,
    FhirString? data,
    Element? dataElement,
  }) {
    return SampledData(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      origin: origin ?? this.origin,
      period: period ?? this.period,
      periodElement: periodElement ?? this.periodElement,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      lowerLimit: lowerLimit ?? this.lowerLimit,
      lowerLimitElement: lowerLimitElement ?? this.lowerLimitElement,
      upperLimit: upperLimit ?? this.upperLimit,
      upperLimitElement: upperLimitElement ?? this.upperLimitElement,
      dimensions: dimensions ?? this.dimensions,
      dimensionsElement: dimensionsElement ?? this.dimensionsElement,
      data: data ?? this.data,
      dataElement: dataElement ?? this.dataElement,
    );
  }
}
