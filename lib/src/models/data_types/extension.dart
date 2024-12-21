// ignore_for_file: lines_longer_than_80_chars

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
                                                                                  : json['valueAddress'] != null || json['_valueAddress'] != null
                                                                                      ? Address.fromJson({
                                                                                          'value': json['valueAddress'],
                                                                                          '_value': json['_valueAddress'],
                                                                                        })
                                                                                      : json['valueAge'] != null || json['_valueAge'] != null
                                                                                          ? Age.fromJson({
                                                                                              'value': json['valueAge'],
                                                                                              '_value': json['_valueAge'],
                                                                                            })
                                                                                          : json['valueAnnotation'] != null || json['_valueAnnotation'] != null
                                                                                              ? Annotation.fromJson({
                                                                                                  'value': json['valueAnnotation'],
                                                                                                  '_value': json['_valueAnnotation'],
                                                                                                })
                                                                                              : json['valueAttachment'] != null || json['_valueAttachment'] != null
                                                                                                  ? Attachment.fromJson({
                                                                                                      'value': json['valueAttachment'],
                                                                                                      '_value': json['_valueAttachment'],
                                                                                                    })
                                                                                                  : json['valueCodeableConcept'] != null || json['_valueCodeableConcept'] != null
                                                                                                      ? CodeableConcept.fromJson({
                                                                                                          'value': json['valueCodeableConcept'],
                                                                                                          '_value': json['_valueCodeableConcept'],
                                                                                                        })
                                                                                                      : json['valueCodeableReference'] != null || json['_valueCodeableReference'] != null
                                                                                                          ? CodeableReference.fromJson({
                                                                                                              'value': json['valueCodeableReference'],
                                                                                                              '_value': json['_valueCodeableReference'],
                                                                                                            })
                                                                                                          : json['valueCoding'] != null || json['_valueCoding'] != null
                                                                                                              ? Coding.fromJson({
                                                                                                                  'value': json['valueCoding'],
                                                                                                                  '_value': json['_valueCoding'],
                                                                                                                })
                                                                                                              : json['valueContactPoint'] != null || json['_valueContactPoint'] != null
                                                                                                                  ? ContactPoint.fromJson({
                                                                                                                      'value': json['valueContactPoint'],
                                                                                                                      '_value': json['_valueContactPoint'],
                                                                                                                    })
                                                                                                                  : json['valueCount'] != null || json['_valueCount'] != null
                                                                                                                      ? Count.fromJson({
                                                                                                                          'value': json['valueCount'],
                                                                                                                          '_value': json['_valueCount'],
                                                                                                                        })
                                                                                                                      : json['valueDistance'] != null || json['_valueDistance'] != null
                                                                                                                          ? Distance.fromJson({
                                                                                                                              'value': json['valueDistance'],
                                                                                                                              '_value': json['_valueDistance'],
                                                                                                                            })
                                                                                                                          : json['valueDuration'] != null || json['_valueDuration'] != null
                                                                                                                              ? FhirDuration.fromJson({
                                                                                                                                  'value': json['valueDuration'],
                                                                                                                                  '_value': json['_valueDuration'],
                                                                                                                                })
                                                                                                                              : json['valueHumanName'] != null || json['_valueHumanName'] != null
                                                                                                                                  ? HumanName.fromJson({
                                                                                                                                      'value': json['valueHumanName'],
                                                                                                                                      '_value': json['_valueHumanName'],
                                                                                                                                    })
                                                                                                                                  : json['valueIdentifier'] != null || json['_valueIdentifier'] != null
                                                                                                                                      ? Identifier.fromJson({
                                                                                                                                          'value': json['valueIdentifier'],
                                                                                                                                          '_value': json['_valueIdentifier'],
                                                                                                                                        })
                                                                                                                                      : json['valueMoney'] != null || json['_valueMoney'] != null
                                                                                                                                          ? Money.fromJson({
                                                                                                                                              'value': json['valueMoney'],
                                                                                                                                              '_value': json['_valueMoney'],
                                                                                                                                            })
                                                                                                                                          : json['valuePeriod'] != null || json['_valuePeriod'] != null
                                                                                                                                              ? Period.fromJson({
                                                                                                                                                  'value': json['valuePeriod'],
                                                                                                                                                  '_value': json['_valuePeriod'],
                                                                                                                                                })
                                                                                                                                              : json['valueQuantity'] != null || json['_valueQuantity'] != null
                                                                                                                                                  ? Quantity.fromJson({
                                                                                                                                                      'value': json['valueQuantity'],
                                                                                                                                                      '_value': json['_valueQuantity'],
                                                                                                                                                    })
                                                                                                                                                  : json['valueRange'] != null || json['_valueRange'] != null
                                                                                                                                                      ? Range.fromJson({
                                                                                                                                                          'value': json['valueRange'],
                                                                                                                                                          '_value': json['_valueRange'],
                                                                                                                                                        })
                                                                                                                                                      : json['valueRatio'] != null || json['_valueRatio'] != null
                                                                                                                                                          ? Ratio.fromJson({
                                                                                                                                                              'value': json['valueRatio'],
                                                                                                                                                              '_value': json['_valueRatio'],
                                                                                                                                                            })
                                                                                                                                                          : json['valueRatioRange'] != null || json['_valueRatioRange'] != null
                                                                                                                                                              ? RatioRange.fromJson({
                                                                                                                                                                  'value': json['valueRatioRange'],
                                                                                                                                                                  '_value': json['_valueRatioRange'],
                                                                                                                                                                })
                                                                                                                                                              : json['valueReference'] != null || json['_valueReference'] != null
                                                                                                                                                                  ? Reference.fromJson({
                                                                                                                                                                      'value': json['valueReference'],
                                                                                                                                                                      '_value': json['_valueReference'],
                                                                                                                                                                    })
                                                                                                                                                                  : json['valueSampledData'] != null || json['_valueSampledData'] != null
                                                                                                                                                                      ? SampledData.fromJson({
                                                                                                                                                                          'value': json['valueSampledData'],
                                                                                                                                                                          '_value': json['_valueSampledData'],
                                                                                                                                                                        })
                                                                                                                                                                      : json['valueSignature'] != null || json['_valueSignature'] != null
                                                                                                                                                                          ? Signature.fromJson({
                                                                                                                                                                              'value': json['valueSignature'],
                                                                                                                                                                              '_value': json['_valueSignature'],
                                                                                                                                                                            })
                                                                                                                                                                          : json['valueTiming'] != null || json['_valueTiming'] != null
                                                                                                                                                                              ? Timing.fromJson({
                                                                                                                                                                                  'value': json['valueTiming'],
                                                                                                                                                                                  '_value': json['_valueTiming'],
                                                                                                                                                                                })
                                                                                                                                                                              : json['valueContactDetail'] != null || json['_valueContactDetail'] != null
                                                                                                                                                                                  ? ContactDetail.fromJson({
                                                                                                                                                                                      'value': json['valueContactDetail'],
                                                                                                                                                                                      '_value': json['_valueContactDetail'],
                                                                                                                                                                                    })
                                                                                                                                                                                  : json['valueContributor'] != null || json['_valueContributor'] != null
                                                                                                                                                                                      ? Contributor.fromJson({
                                                                                                                                                                                          'value': json['valueContributor'],
                                                                                                                                                                                          '_value': json['_valueContributor'],
                                                                                                                                                                                        })
                                                                                                                                                                                      : json['valueDataRequirement'] != null || json['_valueDataRequirement'] != null
                                                                                                                                                                                          ? DataRequirement.fromJson({
                                                                                                                                                                                              'value': json['valueDataRequirement'],
                                                                                                                                                                                              '_value': json['_valueDataRequirement'],
                                                                                                                                                                                            })
                                                                                                                                                                                          : json['valueExpression'] != null || json['_valueExpression'] != null
                                                                                                                                                                                              ? FhirExpression.fromJson({
                                                                                                                                                                                                  'value': json['valueExpression'],
                                                                                                                                                                                                  '_value': json['_valueExpression'],
                                                                                                                                                                                                })
                                                                                                                                                                                              : json['valueParameterDefinition'] != null || json['_valueParameterDefinition'] != null
                                                                                                                                                                                                  ? ParameterDefinition.fromJson({
                                                                                                                                                                                                      'value': json['valueParameterDefinition'],
                                                                                                                                                                                                      '_value': json['_valueParameterDefinition'],
                                                                                                                                                                                                    })
                                                                                                                                                                                                  : json['valueRelatedArtifact'] != null || json['_valueRelatedArtifact'] != null
                                                                                                                                                                                                      ? RelatedArtifact.fromJson({
                                                                                                                                                                                                          'value': json['valueRelatedArtifact'],
                                                                                                                                                                                                          '_value': json['_valueRelatedArtifact'],
                                                                                                                                                                                                        })
                                                                                                                                                                                                      : json['valueTriggerDefinition'] != null || json['_valueTriggerDefinition'] != null
                                                                                                                                                                                                          ? TriggerDefinition.fromJson({
                                                                                                                                                                                                              'value': json['valueTriggerDefinition'],
                                                                                                                                                                                                              '_value': json['_valueTriggerDefinition'],
                                                                                                                                                                                                            })
                                                                                                                                                                                                          : json['valueUsageContext'] != null || json['_valueUsageContext'] != null
                                                                                                                                                                                                              ? UsageContext.fromJson({
                                                                                                                                                                                                                  'value': json['valueUsageContext'],
                                                                                                                                                                                                                  '_value': json['_valueUsageContext'],
                                                                                                                                                                                                                })
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
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('url', url);
    addField('valueX', valueX);
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
