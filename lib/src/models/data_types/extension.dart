import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [FhirExtension]
/// Optional Extension Element - found in all resources.
class FhirExtension extends DataType {
  /// Primary constructor for
  /// [FhirExtension]

  const FhirExtension({
    super.id,
    super.extension_,
    required this.url,
    this.valueX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirExtension.fromJson(
    Map<String, dynamic> json,
  ) {
    return FhirExtension(
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
      url: JsonParser.parsePrimitive<FhirString>(
        json,
        'url',
        FhirString.fromJson,
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXExtension>(json, {
        'valueBase64Binary': FhirBase64Binary.fromJson,
        'valueBoolean': FhirBoolean.fromJson,
        'valueCanonical': FhirCanonical.fromJson,
        'valueCode': FhirCode.fromJson,
        'valueDate': FhirDate.fromJson,
        'valueDateTime': FhirDateTime.fromJson,
        'valueDecimal': FhirDecimal.fromJson,
        'valueId': FhirId.fromJson,
        'valueInstant': FhirInstant.fromJson,
        'valueInteger': FhirInteger.fromJson,
        'valueMarkdown': FhirMarkdown.fromJson,
        'valueOid': FhirOid.fromJson,
        'valuePositiveInt': FhirPositiveInt.fromJson,
        'valueString': FhirString.fromJson,
        'valueTime': FhirTime.fromJson,
        'valueUnsignedInt': FhirUnsignedInt.fromJson,
        'valueUri': FhirUri.fromJson,
        'valueUrl': FhirUrl.fromJson,
        'valueUuid': FhirUuid.fromJson,
        'valueAddress': Address.fromJson,
        'valueAge': Age.fromJson,
        'valueAnnotation': Annotation.fromJson,
        'valueAttachment': Attachment.fromJson,
        'valueCodeableConcept': CodeableConcept.fromJson,
        'valueCodeableReference': CodeableReference.fromJson,
        'valueCoding': Coding.fromJson,
        'valueContactPoint': ContactPoint.fromJson,
        'valueCount': Count.fromJson,
        'valueDistance': Distance.fromJson,
        'valueDuration': FhirDuration.fromJson,
        'valueHumanName': HumanName.fromJson,
        'valueIdentifier': Identifier.fromJson,
        'valueMoney': Money.fromJson,
        'valuePeriod': Period.fromJson,
        'valueQuantity': Quantity.fromJson,
        'valueRange': Range.fromJson,
        'valueRatio': Ratio.fromJson,
        'valueRatioRange': RatioRange.fromJson,
        'valueReference': Reference.fromJson,
        'valueSampledData': SampledData.fromJson,
        'valueSignature': Signature.fromJson,
        'valueTiming': Timing.fromJson,
        'valueContactDetail': ContactDetail.fromJson,
        'valueContributor': Contributor.fromJson,
        'valueDataRequirement': DataRequirement.fromJson,
        'valueExpression': FhirExpression.fromJson,
        'valueParameterDefinition': ParameterDefinition.fromJson,
        'valueRelatedArtifact': RelatedArtifact.fromJson,
        'valueTriggerDefinition': TriggerDefinition.fromJson,
        'valueUsageContext': UsageContext.fromJson,
        'valueDosage': Dosage.fromJson,
      }),
    );
  }

  /// Deserialize [FhirExtension]
  /// from a [String] or [YamlMap] object
  factory FhirExtension.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FhirExtension.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FhirExtension.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FhirExtension '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FhirExtension]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FhirExtension.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return FhirExtension.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'FhirExtension';

  /// [url]
  /// Source of the definition for the extension code - a logical name or a
  /// URL.
  final FhirString url;

  /// [valueX]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  final ValueXExtension? valueX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('url', url);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalize()}', valueX);
    }

    return json;
  }

  @override
  FhirExtension clone() => throw UnimplementedError();
  @override
  FhirExtension copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? url,
    ValueXExtension? valueX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return FhirExtension(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      url: url ?? this.url,
      valueX: valueX ?? this.valueX,
    );
  }
}
