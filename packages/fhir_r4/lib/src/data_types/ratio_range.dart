import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'ratio_range.g.dart';

/// [RatioRange]
/// A range of ratios expressed as a low and high numerator and a
/// denominator.
class RatioRange extends DataType
    implements
        PresentationXIngredientStrength,
        ConcentrationXIngredientStrength,
        StrengthXIngredientReferenceStrength,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [RatioRange]

  const RatioRange({
    super.id,
    super.extension_,
    this.lowNumerator,
    this.highNumerator,
    this.denominator,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RatioRange.fromJson(
    Map<String, dynamic> json,
  ) {
    return RatioRange(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      lowNumerator: JsonParser.parseObject<Quantity>(
        json,
        'lowNumerator',
        Quantity.fromJson,
      ),
      highNumerator: JsonParser.parseObject<Quantity>(
        json,
        'highNumerator',
        Quantity.fromJson,
      ),
      denominator: JsonParser.parseObject<Quantity>(
        json,
        'denominator',
        Quantity.fromJson,
      ),
    );
  }

  /// Deserialize [RatioRange]
  /// from a [String] or [YamlMap] object
  factory RatioRange.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RatioRange.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RatioRange.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RatioRange '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RatioRange]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RatioRange.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RatioRange.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RatioRange';

  /// [lowNumerator]
  /// The value of the low limit numerator.
  final Quantity? lowNumerator;

  /// [highNumerator]
  /// The value of the high limit numerator.
  final Quantity? highNumerator;

  /// [denominator]
  /// The value of the denominator.
  final Quantity? denominator;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'lowNumerator',
      lowNumerator,
    );
    addField(
      'highNumerator',
      highNumerator,
    );
    addField(
      'denominator',
      denominator,
    );
    return json;
  }

  @override
  RatioRange clone() => copyWith();

  /// Copy function for [RatioRange]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $RatioRangeCopyWith<RatioRange> get copyWith =>
      _$RatioRangeCopyWithImpl<RatioRange>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! RatioRange) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lowNumerator,
      o.lowNumerator,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      highNumerator,
      o.highNumerator,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      denominator,
      o.denominator,
    )) {
      return false;
    }
    return true;
  }
}
