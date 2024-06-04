// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'sampled_data.freezed.dart';
part 'sampled_data.g.dart';

/// [SampledData] A series of measurements taken by a device, with upper and
@freezed
class SampledData with _$SampledData implements DataType {
  /// [SampledData] A series of measurements taken by a device, with upper and
  const SampledData._();

  /// [SampledData] A series of measurements taken by a device, with upper and
  ///  lower limits. There may be more than one dimension in the data.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [origin] The base quantity that a measured value of zero represents. In
  ///  addition, this provides the units of the entire measurement series.
  ///
  /// [period] The length of time between sampling times, measured in
  ///  milliseconds.
  ///
  /// [periodElement] Extensions for period
  ///
  /// [factor] A correction factor that is applied to the sampled data points
  ///  before they are added to the origin.
  ///
  /// [factorElement] Extensions for factor
  ///
  /// [lowerLimit] The lower limit of detection of the measured points. This is
  /// needed if any of the data points have the value "L" (lower than detection
  ///  limit).
  ///
  /// [lowerLimitElement] Extensions for lowerLimit
  ///
  /// [upperLimit] The upper limit of detection of the measured points. This is
  /// needed if any of the data points have the value "U" (higher than detection
  ///  limit).
  ///
  /// [upperLimitElement] Extensions for upperLimit
  ///
  /// [dimensions] The number of sample points at each time point. If this
  /// value is greater than one, then the dimensions will be interlaced - all
  ///  the sample points for a point in time will be recorded at once.
  ///
  /// [dimensionsElement] Extensions for dimensions
  ///
  /// [data] A series of data points which are decimal values separated by a
  /// single space (character u20). The special values "E" (error), "L" (below
  /// detection limit) and "U" (above detection limit) can also be used in place
  ///  of a decimal value.
  ///
  /// [dataElement] Extensions for data
  const factory SampledData({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [origin] The base quantity that a measured value of zero represents. In
    ///  addition, this provides the units of the entire measurement series.
    required Quantity origin,

    /// [period] The length of time between sampling times, measured in
    ///  milliseconds.
    FhirDecimal? period,

    /// [periodElement] Extensions for period
    @JsonKey(name: '_period') Element? periodElement,

    /// [factor] A correction factor that is applied to the sampled data points
    ///  before they are added to the origin.
    FhirDecimal? factor,

    /// [factorElement] Extensions for factor
    @JsonKey(name: '_factor') Element? factorElement,

    /// [lowerLimit] The lower limit of detection of the measured points. This is
    /// needed if any of the data points have the value "L" (lower than detection
    ///  limit).
    FhirDecimal? lowerLimit,

    /// [lowerLimitElement] Extensions for lowerLimit
    @JsonKey(name: '_lowerLimit') Element? lowerLimitElement,

    /// [upperLimit] The upper limit of detection of the measured points. This is
    /// needed if any of the data points have the value "U" (higher than detection
    ///  limit).
    FhirDecimal? upperLimit,

    /// [upperLimitElement] Extensions for upperLimit
    @JsonKey(name: '_upperLimit') Element? upperLimitElement,

    /// [dimensions] The number of sample points at each time point. If this
    /// value is greater than one, then the dimensions will be interlaced - all
    ///  the sample points for a point in time will be recorded at once.
    FhirPositiveInt? dimensions,

    /// [dimensionsElement] Extensions for dimensions
    @JsonKey(name: '_dimensions') Element? dimensionsElement,

    /// [data] A series of data points which are decimal values separated by a
    /// single space (character u20). The special values "E" (error), "L" (below
    /// detection limit) and "U" (above detection limit) can also be used in place
    ///  of a decimal value.
    String? data,

    /// [dataElement] Extensions for data
    @JsonKey(name: '_data') Element? dataElement,
  }) = _SampledData;

  @override
  String get fhirType => 'SampledData';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SampledData.fromYaml(dynamic yaml) => yaml is String
      ? SampledData.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SampledData.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SampledData cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SampledData.fromJson(Map<String, dynamic> json) =>
      _$SampledDataFromJson(json);

  /// Acts like a constructor, returns a [SampledData], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
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

  @override
  String toYaml() => json2yaml(toJson());
}
