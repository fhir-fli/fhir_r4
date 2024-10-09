import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [SampledData] /// A series of measurements taken by a device, with upper and lower limits.
/// There may be more than one dimension in the data.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'SampledData';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [origin] /// The base quantity that a measured value of zero represents. In addition,
  /// this provides the units of the entire measurement series.
  @JsonKey(name: 'origin')
  final Quantity origin;

  /// [period] /// The length of time between sampling times, measured in milliseconds.
  @JsonKey(name: 'period')
  final FhirDecimal period;
  @JsonKey(name: '_period')
  final Element? periodElement;

  /// [factor] /// A correction factor that is applied to the sampled data points before they
  /// are added to the origin.
  @JsonKey(name: 'factor')
  final FhirDecimal? factor;
  @JsonKey(name: '_factor')
  final Element? factorElement;

  /// [lowerLimit] /// The lower limit of detection of the measured points. This is needed if any
  /// of the data points have the value "L" (lower than detection limit).
  @JsonKey(name: 'lowerLimit')
  final FhirDecimal? lowerLimit;
  @JsonKey(name: '_lowerLimit')
  final Element? lowerLimitElement;

  /// [upperLimit] /// The upper limit of detection of the measured points. This is needed if any
  /// of the data points have the value "U" (higher than detection limit).
  @JsonKey(name: 'upperLimit')
  final FhirDecimal? upperLimit;
  @JsonKey(name: '_upperLimit')
  final Element? upperLimitElement;

  /// [dimensions] /// The number of sample points at each time point. If this value is greater
  /// than one, then the dimensions will be interlaced - all the sample points
  /// for a point in time will be recorded at once.
  @JsonKey(name: 'dimensions')
  final FhirPositiveInt dimensions;
  @JsonKey(name: '_dimensions')
  final Element? dimensionsElement;

  /// [data] /// A series of data points which are decimal values separated by a single
  /// space (character u20). The special values "E" (error), "L" (below detection
  /// limit) and "U" (above detection limit) can also be used in place of a
  /// decimal value.
  @JsonKey(name: 'data')
  final FhirString? data;
  @JsonKey(name: '_data')
  final Element? dataElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    json['origin'] = origin.toJson();
    json['period'] = period.value;
    if (periodElement != null) {
      json['_period'] = periodElement!.toJson();
    }
    if (factor?.value != null) {
      json['factor'] = factor!.value;
    }
    if (factorElement != null) {
      json['_factor'] = factorElement!.toJson();
    }
    if (lowerLimit?.value != null) {
      json['lowerLimit'] = lowerLimit!.value;
    }
    if (lowerLimitElement != null) {
      json['_lowerLimit'] = lowerLimitElement!.toJson();
    }
    if (upperLimit?.value != null) {
      json['upperLimit'] = upperLimit!.value;
    }
    if (upperLimitElement != null) {
      json['_upperLimit'] = upperLimitElement!.toJson();
    }
    json['dimensions'] = dimensions.value;
    if (dimensionsElement != null) {
      json['_dimensions'] = dimensionsElement!.toJson();
    }
    if (data?.value != null) {
      json['data'] = data!.value;
    }
    if (dataElement != null) {
      json['_data'] = dataElement!.toJson();
    }
    return json;
  }

  factory SampledData.fromJson(Map<String, dynamic> json) {
    return SampledData(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      origin: Quantity.fromJson(json['origin'] as Map<String, dynamic>),
      period: FhirDecimal(json['period']),
      periodElement: Element.fromJson(json['_period'] as Map<String, dynamic>),
      factor: json['factor'] != null ? FhirDecimal(json['factor']) : null,
      factorElement: json['_factor'] != null
          ? Element.fromJson(json['_factor'] as Map<String, dynamic>)
          : null,
      lowerLimit:
          json['lowerLimit'] != null ? FhirDecimal(json['lowerLimit']) : null,
      lowerLimitElement: json['_lowerLimit'] != null
          ? Element.fromJson(json['_lowerLimit'] as Map<String, dynamic>)
          : null,
      upperLimit:
          json['upperLimit'] != null ? FhirDecimal(json['upperLimit']) : null,
      upperLimitElement: json['_upperLimit'] != null
          ? Element.fromJson(json['_upperLimit'] as Map<String, dynamic>)
          : null,
      dimensions: FhirPositiveInt(json['dimensions']),
      dimensionsElement:
          Element.fromJson(json['_dimensions'] as Map<String, dynamic>),
      data: json['data'] != null ? FhirString(json['data']) : null,
      dataElement: json['_data'] != null
          ? Element.fromJson(json['_data'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  SampledData clone() => throw UnimplementedError();
  @override
  SampledData copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SampledData.fromYaml(dynamic yaml) => yaml is String
      ? SampledData.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SampledData.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SampledData cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SampledData.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SampledData.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
