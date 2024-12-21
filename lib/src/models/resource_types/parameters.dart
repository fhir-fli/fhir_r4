// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Parameters]
/// This resource is a non-persisted resource used to pass information into
/// and back from an [operation](operations.html). It has no other use, and
/// there is no RESTful endpoint associated with it.
class Parameters extends Resource {
  /// Primary constructor for
  /// [Parameters]

  const Parameters({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    this.parameter,
  }) : super(
          resourceType: R4ResourceType.Parameters,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Parameters.fromJson(
    Map<String, dynamic> json,
  ) {
    return Parameters(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      parameter: json['parameter'] != null
          ? (json['parameter'] as List<dynamic>)
              .map<ParametersParameter>(
                (v) => ParametersParameter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Parameters]
  /// from a [String] or [YamlMap] object
  factory Parameters.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Parameters.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Parameters.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Parameters '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Parameters]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Parameters.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Parameters.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Parameters';

  /// [parameter]
  /// A parameter passed to or received from the operation.
  final List<ParametersParameter>? parameter;
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

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
    if (parameter != null && parameter!.isNotEmpty) {
      json['parameter'] = parameter!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  Parameters clone() => throw UnimplementedError();
  @override
  Parameters copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    List<ParametersParameter>? parameter,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Parameters(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      parameter: parameter ?? this.parameter,
    );
  }
}

/// [ParametersParameter]
/// A parameter passed to or received from the operation.
class ParametersParameter extends BackboneElement {
  /// Primary constructor for
  /// [ParametersParameter]

  const ParametersParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.valueX,
    this.resource,
    this.part_,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    return ParametersParameter(
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
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
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
                                                                                                                                                                                                      : json['valueDosage'] != null || json['_valueDosage'] != null
                                                                                                                                                                                                          ? Dosage.fromJson({
                                                                                                                                                                                                              'value': json['valueDosage'],
                                                                                                                                                                                                              '_value': json['_valueDosage'],
                                                                                                                                                                                                            })
                                                                                                                                                                                                          : json['valueMeta'] != null
                                                                                                                                                                                                              ? FhirMeta.fromJson(
                                                                                                                                                                                                                  json['valueMeta'] as Map<String, dynamic>,
                                                                                                                                                                                                                )
                                                                                                                                                                                                              : null,
      resource: json['resource'] != null
          ? Resource.fromJson(
              json['resource'] as Map<String, dynamic>,
            )
          : null,
      part_: json['part'] != null
          ? (json['part'] as List<dynamic>)
              .map<ParametersParameter>(
                (v) => ParametersParameter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ParametersParameter]
  /// from a [String] or [YamlMap] object
  factory ParametersParameter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ParametersParameter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ParametersParameter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ParametersParameter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ParametersParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ParametersParameter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ParametersParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ParametersParameter';

  /// [name]
  /// The name of the parameter (reference to the operation definition).
  final FhirString name;

  /// [valueX]
  /// Conveys the content if the parameter is a data type.
  final ValueXParametersParameter? valueX;

  /// [resource]
  /// If the parameter is a whole resource.
  final Resource? resource;

  /// [part_]
  /// A named part of a multi-part parameter.
  final List<ParametersParameter>? part_;
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

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('name', name);
    addField('valueX', valueX);
    if (resource != null) {
      json['resource'] = resource!.toJson();
    }

    if (part_ != null && part_!.isNotEmpty) {
      json['part'] = part_!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ParametersParameter clone() => throw UnimplementedError();
  @override
  ParametersParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    ValueXParametersParameter? valueX,
    Resource? resource,
    List<ParametersParameter>? part_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ParametersParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      valueX: valueX ?? this.valueX,
      resource: resource ?? this.resource,
      part_: part_ ?? this.part_,
    );
  }
}
