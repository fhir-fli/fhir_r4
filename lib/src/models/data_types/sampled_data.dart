import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [SampledData]
/// A series of measurements taken by a device, with upper and lower
/// limits. There may be more than one dimension in the data.
class SampledData extends DataType
    implements
        ValueXObservation,
        ValueXObservationComponent,
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [SampledData]

  const SampledData({
    super.id,
    super.extension_,
    required this.origin,
    required this.period,
    this.factor,
    this.lowerLimit,
    this.upperLimit,
    required this.dimensions,
    this.data,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SampledData.fromJson(
    Map<String, dynamic> json,
  ) {
    return SampledData(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      origin: JsonParser.parseObject<Quantity>(
        json,
        'origin',
        Quantity.fromJson,
      )!,
      period: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'period',
        FhirDecimal.fromJson,
      )!,
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
      ),
      lowerLimit: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'lowerLimit',
        FhirDecimal.fromJson,
      ),
      upperLimit: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'upperLimit',
        FhirDecimal.fromJson,
      ),
      dimensions: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'dimensions',
        FhirPositiveInt.fromJson,
      )!,
      data: JsonParser.parsePrimitive<FhirString>(
        json,
        'data',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [SampledData]
  /// from a [String] or [YamlMap] object
  factory SampledData.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SampledData.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SampledData.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SampledData '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SampledData]
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    json['origin'] = origin.toJson();

    addField('period', period);
    if (factor != null) {
      addField('factor', factor);
    }

    if (lowerLimit != null) {
      addField('lowerLimit', lowerLimit);
    }

    if (upperLimit != null) {
      addField('upperLimit', upperLimit);
    }

    addField('dimensions', dimensions);
    if (data != null) {
      addField('data', data);
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
    );
  }
}
