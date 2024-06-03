import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SampledData] A series of measurements taken by a device, with upper
/// and lower limits. There may be more than one dimension in the data.

@freezed
class SampledData with _$SampledData {
  const SampledData._();

  const factory SampledData({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [origin] The base quantity that a measured value of zero represents. In
/// addition, this provides the units of the entire measurement series.

    @JsonKey(name: 'origin') Quantity? origin,
/// [interval] Amount of intervalUnits between samples, e.g. milliseconds
/// for time-based sampling.

    @JsonKey(name: 'interval') FhirDecimal? interval,
/// [_interval] Extensions for interval

    @JsonKey(name: '_interval') PrimitiveElement? intervalElement,
/// [intervalUnit] The measurement unit in which the sample interval is
/// expressed.

    @JsonKey(name: 'intervalUnit') FhirCode? intervalUnit,
/// [_intervalUnit] Extensions for intervalUnit

    @JsonKey(name: '_intervalUnit') PrimitiveElement? intervalUnitElement,
/// [factor] A correction factor that is applied to the sampled data points
/// before they are added to the origin.

    @JsonKey(name: 'factor') FhirDecimal? factor,
/// [_factor] Extensions for factor

    @JsonKey(name: '_factor') PrimitiveElement? factorElement,
/// [lowerLimit] The lower limit of detection of the measured points. This
/// is needed if any of the data points have the value "L" (lower than
/// detection limit).

    @JsonKey(name: 'lowerLimit') FhirDecimal? lowerLimit,
/// [_lowerLimit] Extensions for lowerLimit

    @JsonKey(name: '_lowerLimit') PrimitiveElement? lowerLimitElement,
/// [upperLimit] The upper limit of detection of the measured points. This
/// is needed if any of the data points have the value "U" (higher than
/// detection limit).

    @JsonKey(name: 'upperLimit') FhirDecimal? upperLimit,
/// [_upperLimit] Extensions for upperLimit

    @JsonKey(name: '_upperLimit') PrimitiveElement? upperLimitElement,
/// [dimensions] The number of sample points at each time point. If this
/// value is greater than one, then the dimensions will be interlaced - all the
/// sample points for a point in time will be recorded at once.

    @JsonKey(name: 'dimensions') FhirPositiveInt? dimensions,
/// [_dimensions] Extensions for dimensions

    @JsonKey(name: '_dimensions') PrimitiveElement? dimensionsElement,
/// [codeMap] Reference to ConceptMap that defines the codes used in the
/// data.

    @JsonKey(name: 'codeMap') FhirCanonical? codeMap,
/// [offsets] A series of data points which are decimal values separated by
/// a single space (character u20).  The units in which the offsets are
/// expressed are found in intervalUnit.  The absolute point at which the
/// measurements begin SHALL be conveyed outside the scope of this datatype,
/// e.g. Observation.effectiveDateTime for a timing offset.

    @JsonKey(name: 'offsets') String? offsets,
/// [_offsets] Extensions for offsets

    @JsonKey(name: '_offsets') PrimitiveElement? offsetsElement,
/// [data] A series of data points which are decimal values or codes
/// separated by a single space (character u20). The special codes "E" (error),
/// "L" (below detection limit) and "U" (above detection limit) are also
/// defined for used in place of decimal values.

    @JsonKey(name: 'data') String? data,
/// [_data] Extensions for data

    @JsonKey(name: '_data') PrimitiveElement? dataElement,
  }) = _$SampledData;

  @override
  String get fhirType => 'SampledData';

  factory SampledData.fromJson(Map<String, dynamic> json) =>
      _$SampledDataFromJson(json);

  factory SampledData.fromYaml(dynamic yaml) => yaml is String
      ? SampledData.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SampledData.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SampledData cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SampledData.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SampledDataFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
