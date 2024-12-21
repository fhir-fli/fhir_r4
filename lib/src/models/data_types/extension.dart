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
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      url: FhirString.fromJson({
        'value': json['url'],
        '_value': json['_url'],
      }),
      valueX: json['valueBase64Binary'] != null ||
              json['_valueBase64Binary'] != null
          ? FhirBase64Binary.fromJson({
              'value': json['valueBase64Binary'],
              '_value': json['_valueBase64Binary'],
            })
          : json['valueBoolean'] != null || json['_valueBoolean'] != null
              ? FhirBoolean.fromJson({
                  'value': json['valueBoolean'],
                  '_value': json['_valueBoolean'],
                })
              : json['valueCanonical'] != null ||
                      json['_valueCanonical'] != null
                  ? FhirCanonical.fromJson({
                      'value': json['valueCanonical'],
                      '_value': json['_valueCanonical'],
                    })
                  : json['valueCode'] != null || json['_valueCode'] != null
                      ? FhirCode.fromJson({
                          'value': json['valueCode'],
                          '_value': json['_valueCode'],
                        })
                      : json['valueDate'] != null || json['_valueDate'] != null
                          ? FhirDate.fromJson({
                              'value': json['valueDate'],
                              '_value': json['_valueDate'],
                            })
                          : json['valueDateTime'] != null ||
                                  json['_valueDateTime'] != null
                              ? FhirDateTime.fromJson({
                                  'value': json['valueDateTime'],
                                  '_value': json['_valueDateTime'],
                                })
                              : json['valueDecimal'] != null ||
                                      json['_valueDecimal'] != null
                                  ? FhirDecimal.fromJson({
                                      'value': json['valueDecimal'],
                                      '_value': json['_valueDecimal'],
                                    })
                                  : json['valueId'] != null ||
                                          json['_valueId'] != null
                                      ? FhirId.fromJson({
                                          'value': json['valueId'],
                                          '_value': json['_valueId'],
                                        })
                                      : json['valueInstant'] != null ||
                                              json['_valueInstant'] != null
                                          ? FhirInstant.fromJson({
                                              'value': json['valueInstant'],
                                              '_value': json['_valueInstant'],
                                            })
                                          : json['valueInteger'] != null ||
                                                  json['_valueInteger'] != null
                                              ? FhirInteger.fromJson({
                                                  'value': json['valueInteger'],
                                                  '_value':
                                                      json['_valueInteger'],
                                                })
                                              : json['valueMarkdown'] != null ||
                                                      json['_valueMarkdown'] !=
                                                          null
                                                  ? FhirMarkdown.fromJson({
                                                      'value':
                                                          json['valueMarkdown'],
                                                      '_value': json[
                                                          '_valueMarkdown'],
                                                    })
                                                  : json['valueOid'] != null ||
                                                          json['_valueOid'] !=
                                                              null
                                                      ? FhirOid.fromJson({
                                                          'value':
                                                              json['valueOid'],
                                                          '_value':
                                                              json['_valueOid'],
                                                        })
                                                      : json['valuePositiveInt'] !=
                                                                  null ||
                                                              json['_valuePositiveInt'] !=
                                                                  null
                                                          ? FhirPositiveInt.fromJson({
                                                              'value': json[
                                                                  'valuePositiveInt'],
                                                              '_value': json[
                                                                  '_valuePositiveInt'],
                                                            })
                                                          : json['valueString'] !=
                                                                      null ||
                                                                  json['_valueString'] !=
                                                                      null
                                                              ? FhirString.fromJson({
                                                                  'value': json[
                                                                      'valueString'],
                                                                  '_value': json[
                                                                      '_valueString'],
                                                                })
                                                              : json['valueTime'] !=
                                                                          null ||
                                                                      json['_valueTime'] !=
                                                                          null
                                                                  ? FhirTime.fromJson({
                                                                      'value': json[
                                                                          'valueTime'],
                                                                      '_value':
                                                                          json[
                                                                              '_valueTime'],
                                                                    })
                                                                  : json['valueUnsignedInt'] !=
                                                                              null ||
                                                                          json['_valueUnsignedInt'] !=
                                                                              null
                                                                      ? FhirUnsignedInt.fromJson({
                                                                          'value':
                                                                              json['valueUnsignedInt'],
                                                                          '_value':
                                                                              json['_valueUnsignedInt'],
                                                                        })
                                                                      : json['valueUri'] != null || json['_valueUri'] != null
                                                                          ? FhirUri.fromJson({
                                                                              'value': json['valueUri'],
                                                                              '_value': json['_valueUri'],
                                                                            })
                                                                          : json['valueUrl'] != null || json['_valueUrl'] != null
                                                                              ? FhirUrl.fromJson({
                                                                                  'value': json['valueUrl'],
                                                                                  '_value': json['_valueUrl'],
                                                                                })
                                                                              : json['valueUuid'] != null || json['_valueUuid'] != null
                                                                                  ? FhirUuid.fromJson({
                                                                                      'value': json['valueUuid'],
                                                                                      '_value': json['_valueUuid'],
                                                                                    })
                                                                                  : json['valueAddress'] != null
                                                                                      ? Address.fromJson(
                                                                                          json['valueAddress'] as Map<String, dynamic>,
                                                                                        )
                                                                                      : json['valueAge'] != null
                                                                                          ? Age.fromJson(
                                                                                              json['valueAge'] as Map<String, dynamic>,
                                                                                            )
                                                                                          : json['valueAnnotation'] != null
                                                                                              ? Annotation.fromJson(
                                                                                                  json['valueAnnotation'] as Map<String, dynamic>,
                                                                                                )
                                                                                              : json['valueAttachment'] != null
                                                                                                  ? Attachment.fromJson(
                                                                                                      json['valueAttachment'] as Map<String, dynamic>,
                                                                                                    )
                                                                                                  : json['valueCodeableConcept'] != null
                                                                                                      ? CodeableConcept.fromJson(
                                                                                                          json['valueCodeableConcept'] as Map<String, dynamic>,
                                                                                                        )
                                                                                                      : json['valueCodeableReference'] != null
                                                                                                          ? CodeableReference.fromJson(
                                                                                                              json['valueCodeableReference'] as Map<String, dynamic>,
                                                                                                            )
                                                                                                          : json['valueCoding'] != null
                                                                                                              ? Coding.fromJson(
                                                                                                                  json['valueCoding'] as Map<String, dynamic>,
                                                                                                                )
                                                                                                              : json['valueContactPoint'] != null
                                                                                                                  ? ContactPoint.fromJson(
                                                                                                                      json['valueContactPoint'] as Map<String, dynamic>,
                                                                                                                    )
                                                                                                                  : json['valueCount'] != null
                                                                                                                      ? Count.fromJson(
                                                                                                                          json['valueCount'] as Map<String, dynamic>,
                                                                                                                        )
                                                                                                                      : json['valueDistance'] != null
                                                                                                                          ? Distance.fromJson(
                                                                                                                              json['valueDistance'] as Map<String, dynamic>,
                                                                                                                            )
                                                                                                                          : json['valueDuration'] != null
                                                                                                                              ? FhirDuration.fromJson(
                                                                                                                                  json['valueDuration'] as Map<String, dynamic>,
                                                                                                                                )
                                                                                                                              : json['valueHumanName'] != null
                                                                                                                                  ? HumanName.fromJson(
                                                                                                                                      json['valueHumanName'] as Map<String, dynamic>,
                                                                                                                                    )
                                                                                                                                  : json['valueIdentifier'] != null
                                                                                                                                      ? Identifier.fromJson(
                                                                                                                                          json['valueIdentifier'] as Map<String, dynamic>,
                                                                                                                                        )
                                                                                                                                      : json['valueMoney'] != null
                                                                                                                                          ? Money.fromJson(
                                                                                                                                              json['valueMoney'] as Map<String, dynamic>,
                                                                                                                                            )
                                                                                                                                          : json['valuePeriod'] != null
                                                                                                                                              ? Period.fromJson(
                                                                                                                                                  json['valuePeriod'] as Map<String, dynamic>,
                                                                                                                                                )
                                                                                                                                              : json['valueQuantity'] != null
                                                                                                                                                  ? Quantity.fromJson(
                                                                                                                                                      json['valueQuantity'] as Map<String, dynamic>,
                                                                                                                                                    )
                                                                                                                                                  : json['valueRange'] != null
                                                                                                                                                      ? Range.fromJson(
                                                                                                                                                          json['valueRange'] as Map<String, dynamic>,
                                                                                                                                                        )
                                                                                                                                                      : json['valueRatio'] != null
                                                                                                                                                          ? Ratio.fromJson(
                                                                                                                                                              json['valueRatio'] as Map<String, dynamic>,
                                                                                                                                                            )
                                                                                                                                                          : json['valueRatioRange'] != null
                                                                                                                                                              ? RatioRange.fromJson(
                                                                                                                                                                  json['valueRatioRange'] as Map<String, dynamic>,
                                                                                                                                                                )
                                                                                                                                                              : json['valueReference'] != null
                                                                                                                                                                  ? Reference.fromJson(
                                                                                                                                                                      json['valueReference'] as Map<String, dynamic>,
                                                                                                                                                                    )
                                                                                                                                                                  : json['valueSampledData'] != null
                                                                                                                                                                      ? SampledData.fromJson(
                                                                                                                                                                          json['valueSampledData'] as Map<String, dynamic>,
                                                                                                                                                                        )
                                                                                                                                                                      : json['valueSignature'] != null
                                                                                                                                                                          ? Signature.fromJson(
                                                                                                                                                                              json['valueSignature'] as Map<String, dynamic>,
                                                                                                                                                                            )
                                                                                                                                                                          : json['valueTiming'] != null
                                                                                                                                                                              ? Timing.fromJson(
                                                                                                                                                                                  json['valueTiming'] as Map<String, dynamic>,
                                                                                                                                                                                )
                                                                                                                                                                              : json['valueContactDetail'] != null
                                                                                                                                                                                  ? ContactDetail.fromJson(
                                                                                                                                                                                      json['valueContactDetail'] as Map<String, dynamic>,
                                                                                                                                                                                    )
                                                                                                                                                                                  : json['valueContributor'] != null
                                                                                                                                                                                      ? Contributor.fromJson(
                                                                                                                                                                                          json['valueContributor'] as Map<String, dynamic>,
                                                                                                                                                                                        )
                                                                                                                                                                                      : json['valueDataRequirement'] != null
                                                                                                                                                                                          ? DataRequirement.fromJson(
                                                                                                                                                                                              json['valueDataRequirement'] as Map<String, dynamic>,
                                                                                                                                                                                            )
                                                                                                                                                                                          : json['valueExpression'] != null
                                                                                                                                                                                              ? FhirExpression.fromJson(
                                                                                                                                                                                                  json['valueExpression'] as Map<String, dynamic>,
                                                                                                                                                                                                )
                                                                                                                                                                                              : json['valueParameterDefinition'] != null
                                                                                                                                                                                                  ? ParameterDefinition.fromJson(
                                                                                                                                                                                                      json['valueParameterDefinition'] as Map<String, dynamic>,
                                                                                                                                                                                                    )
                                                                                                                                                                                                  : json['valueRelatedArtifact'] != null
                                                                                                                                                                                                      ? RelatedArtifact.fromJson(
                                                                                                                                                                                                          json['valueRelatedArtifact'] as Map<String, dynamic>,
                                                                                                                                                                                                        )
                                                                                                                                                                                                      : json['valueTriggerDefinition'] != null
                                                                                                                                                                                                          ? TriggerDefinition.fromJson(
                                                                                                                                                                                                              json['valueTriggerDefinition'] as Map<String, dynamic>,
                                                                                                                                                                                                            )
                                                                                                                                                                                                          : json['valueUsageContext'] != null
                                                                                                                                                                                                              ? UsageContext.fromJson(
                                                                                                                                                                                                                  json['valueUsageContext'] as Map<String, dynamic>,
                                                                                                                                                                                                                )
                                                                                                                                                                                                              : json['valueDosage'] != null
                                                                                                                                                                                                                  ? Dosage.fromJson(
                                                                                                                                                                                                                      json['valueDosage'] as Map<String, dynamic>,
                                                                                                                                                                                                                    )
                                                                                                                                                                                                                  : null,
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

    addField('url', url);
    if (valueX != null) {
      addField('value${valueX!.fhirType.capitalize()}', valueX);
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
