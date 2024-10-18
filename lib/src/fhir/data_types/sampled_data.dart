import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [SampledData]
/// A series of measurements taken by a device, with upper and lower
/// limits. There may be more than one dimension in the data.
class SampledData extends DataType {
  /// Primary constructor for [SampledData]

  SampledData({
    super.id,
    super.extension_,
    required this.origin,
    required this.period,
    this.factor,
    this.lowerLimit,
    this.upperLimit,
    required this.dimensions,
    this.data,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SampledData.fromJson(
    Map<String, dynamic> json,
  ) {
    return SampledData(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      origin: Quantity.fromJson(
        json['origin'] as Map<String, dynamic>,
      ),
      period: FhirDecimal.fromJson({
        'value': json['period'],
        '_value': json['_period'],
      }),
      factor: json['factor'] != null
          ? FhirDecimal.fromJson({
              'value': json['factor'],
              '_value': json['_factor'],
            })
          : null,
      lowerLimit: json['lowerLimit'] != null
          ? FhirDecimal.fromJson({
              'value': json['lowerLimit'],
              '_value': json['_lowerLimit'],
            })
          : null,
      upperLimit: json['upperLimit'] != null
          ? FhirDecimal.fromJson({
              'value': json['upperLimit'],
              '_value': json['_upperLimit'],
            })
          : null,
      dimensions: FhirPositiveInt.fromJson({
        'value': json['dimensions'],
        '_value': json['_dimensions'],
      }),
      data: json['data'] != null
          ? FhirString.fromJson({
              'value': json['data'],
              '_value': json['_data'],
            })
          : null,
    );
  }

  /// Deserialize [SampledData] from a [String]
  /// or [YamlMap] object
  factory SampledData.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? SampledData.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? SampledData.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'SampledData cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [SampledData]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SampledData.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SampledData.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SampledData';

  /// [origin]
  /// The base quantity that a measured value of zero represents. In
  /// addition, this provides the units of the entire measurement series.
  final Quantity origin;

  /// [period]
  /// The length of time between sampling times, measured in milliseconds.
  final FhirDecimal period;

  /// [factor]
  /// A correction factor that is applied to the sampled data points before
  /// they are added to the origin.
  final FhirDecimal? factor;

  /// [lowerLimit]
  /// The lower limit of detection of the measured points. This is needed if
  /// any of the data points have the value "L" (lower than detection limit).
  final FhirDecimal? lowerLimit;

  /// [upperLimit]
  /// The upper limit of detection of the measured points. This is needed if
  /// any of the data points have the value "U" (higher than detection
  /// limit).
  final FhirDecimal? upperLimit;

  /// [dimensions]
  /// The number of sample points at each time point. If this value is
  /// greater than one, then the dimensions will be interlaced - all the
  /// sample points for a point in time will be recorded at once.
  final FhirPositiveInt dimensions;

  /// [data]
  /// A series of data points which are decimal values separated by a single
  /// space (character u20). The special values "E" (error), "L" (below
  /// detection limit) and "U" (above detection limit) can also be used in
  /// place of a decimal value.
  final FhirString? data;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    json['origin'] = origin.toJson();

    final fieldJson2 = period.toJson();
    json['period'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_period'] = fieldJson2['_value'];
    }

    if (factor != null) {
      final fieldJson3 = factor!.toJson();
      json['factor'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_factor'] = fieldJson3['_value'];
      }
    }

    if (lowerLimit != null) {
      final fieldJson4 = lowerLimit!.toJson();
      json['lowerLimit'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_lowerLimit'] = fieldJson4['_value'];
      }
    }

    if (upperLimit != null) {
      final fieldJson5 = upperLimit!.toJson();
      json['upperLimit'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_upperLimit'] = fieldJson5['_value'];
      }
    }

    final fieldJson6 = dimensions.toJson();
    json['dimensions'] = fieldJson6['value'];
    if (fieldJson6['_value'] != null) {
      json['_dimensions'] = fieldJson6['_value'];
    }

    if (data != null) {
      final fieldJson7 = data!.toJson();
      json['data'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_data'] = fieldJson7['_value'];
      }
    }

    return json;
  }

  @override
  SampledData clone() => throw UnimplementedError();
  @override
  SampledData copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    Quantity? origin,
    FhirDecimal? period,
    FhirDecimal? factor,
    FhirDecimal? lowerLimit,
    FhirDecimal? upperLimit,
    FhirPositiveInt? dimensions,
    FhirString? data,
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
      factor: factor ?? this.factor,
      lowerLimit: lowerLimit ?? this.lowerLimit,
      upperLimit: upperLimit ?? this.upperLimit,
      dimensions: dimensions ?? this.dimensions,
      data: data ?? this.data,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
