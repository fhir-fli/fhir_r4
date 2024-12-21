import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ElementDefinition]
/// Captures constraints on each element within the resource, profile, or
/// extension.
class ElementDefinition extends BackboneType {
  /// Primary constructor for
  /// [ElementDefinition]

  const ElementDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.path,
    this.representation,
    this.sliceName,
    this.sliceIsConstraining,
    this.label,
    this.code,
    this.slicing,
    this.short,
    this.definition,
    this.comment,
    this.requirements,
    this.alias,
    this.min,
    this.max,
    this.base,
    this.contentReference,
    this.type,
    this.defaultValueXElementDefinition,
    this.meaningWhenMissing,
    this.orderMeaning,
    this.fixedXElementDefinition,
    this.patternXElementDefinition,
    this.example,
    this.minValueXElementDefinition,
    this.maxValueXElementDefinition,
    this.maxLength,
    this.condition,
    this.constraint,
    this.mustSupport,
    this.isModifier,
    this.isModifierReason,
    this.isSummary,
    this.binding,
    this.mapping,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinition(
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
      path: FhirString.fromJson({
        'value': json['path'],
        '_value': json['_path'],
      }),
      representation: parsePrimitiveList<PropertyRepresentation>(
        json['representation'] as List<dynamic>?,
        json['_representation'] as List<dynamic>?,
        fromJson: PropertyRepresentation.fromJson,
      ),
      sliceName: (json['sliceName'] != null || json['_sliceName'] != null)
          ? FhirString.fromJson({
              'value': json['sliceName'],
              '_value': json['_sliceName'],
            })
          : null,
      sliceIsConstraining: (json['sliceIsConstraining'] != null ||
              json['_sliceIsConstraining'] != null)
          ? FhirBoolean.fromJson({
              'value': json['sliceIsConstraining'],
              '_value': json['_sliceIsConstraining'],
            })
          : null,
      label: (json['label'] != null || json['_label'] != null)
          ? FhirString.fromJson({
              'value': json['label'],
              '_value': json['_label'],
            })
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      slicing: json['slicing'] != null
          ? ElementDefinitionSlicing.fromJson(
              json['slicing'] as Map<String, dynamic>,
            )
          : null,
      short: (json['short'] != null || json['_short'] != null)
          ? FhirString.fromJson({
              'value': json['short'],
              '_value': json['_short'],
            })
          : null,
      definition: (json['definition'] != null || json['_definition'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['definition'],
              '_value': json['_definition'],
            })
          : null,
      comment: (json['comment'] != null || json['_comment'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['comment'],
              '_value': json['_comment'],
            })
          : null,
      requirements:
          (json['requirements'] != null || json['_requirements'] != null)
              ? FhirMarkdown.fromJson({
                  'value': json['requirements'],
                  '_value': json['_requirements'],
                })
              : null,
      alias: parsePrimitiveList<FhirString>(
        json['alias'] as List<dynamic>?,
        json['_alias'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
      ),
      min: (json['min'] != null || json['_min'] != null)
          ? FhirUnsignedInt.fromJson({
              'value': json['min'],
              '_value': json['_min'],
            })
          : null,
      max: (json['max'] != null || json['_max'] != null)
          ? FhirString.fromJson({
              'value': json['max'],
              '_value': json['_max'],
            })
          : null,
      base: json['base'] != null
          ? ElementDefinitionBase.fromJson(
              json['base'] as Map<String, dynamic>,
            )
          : null,
      contentReference: (json['contentReference'] != null ||
              json['_contentReference'] != null)
          ? FhirUri.fromJson({
              'value': json['contentReference'],
              '_value': json['_contentReference'],
            })
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<ElementDefinitionType>(
                (v) => ElementDefinitionType.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      defaultValueXElementDefinition: json['defaultValueBase64Binary'] != null ||
              json['_defaultValueBase64Binary'] != null
          ? FhirBase64Binary.fromJson({
              'value': json['defaultValueBase64Binary'],
              '_value': json['_defaultValueBase64Binary'],
            })
          : json['defaultValueBoolean'] != null ||
                  json['_defaultValueBoolean'] != null
              ? FhirBoolean.fromJson({
                  'value': json['defaultValueBoolean'],
                  '_value': json['_defaultValueBoolean'],
                })
              : json['defaultValueCanonical'] != null ||
                      json['_defaultValueCanonical'] != null
                  ? FhirCanonical.fromJson({
                      'value': json['defaultValueCanonical'],
                      '_value': json['_defaultValueCanonical'],
                    })
                  : json['defaultValueCode'] != null ||
                          json['_defaultValueCode'] != null
                      ? FhirCode.fromJson({
                          'value': json['defaultValueCode'],
                          '_value': json['_defaultValueCode'],
                        })
                      : json['defaultValueDate'] != null ||
                              json['_defaultValueDate'] != null
                          ? FhirDate.fromJson({
                              'value': json['defaultValueDate'],
                              '_value': json['_defaultValueDate'],
                            })
                          : json['defaultValueDateTime'] != null ||
                                  json['_defaultValueDateTime'] != null
                              ? FhirDateTime.fromJson({
                                  'value': json['defaultValueDateTime'],
                                  '_value': json['_defaultValueDateTime'],
                                })
                              : json['defaultValueDecimal'] != null ||
                                      json['_defaultValueDecimal'] != null
                                  ? FhirDecimal.fromJson({
                                      'value': json['defaultValueDecimal'],
                                      '_value': json['_defaultValueDecimal'],
                                    })
                                  : json['defaultValueId'] != null ||
                                          json['_defaultValueId'] != null
                                      ? FhirId.fromJson({
                                          'value': json['defaultValueId'],
                                          '_value': json['_defaultValueId'],
                                        })
                                      : json['defaultValueInstant'] != null ||
                                              json['_defaultValueInstant'] !=
                                                  null
                                          ? FhirInstant.fromJson({
                                              'value':
                                                  json['defaultValueInstant'],
                                              '_value':
                                                  json['_defaultValueInstant'],
                                            })
                                          : json['defaultValueInteger'] != null ||
                                                  json['_defaultValueInteger'] !=
                                                      null
                                              ? FhirInteger.fromJson({
                                                  'value': json[
                                                      'defaultValueInteger'],
                                                  '_value': json[
                                                      '_defaultValueInteger'],
                                                })
                                              : json['defaultValueMarkdown'] !=
                                                          null ||
                                                      json['_defaultValueMarkdown'] !=
                                                          null
                                                  ? FhirMarkdown.fromJson({
                                                      'value': json[
                                                          'defaultValueMarkdown'],
                                                      '_value': json[
                                                          '_defaultValueMarkdown'],
                                                    })
                                                  : json['defaultValueOid'] !=
                                                              null ||
                                                          json['_defaultValueOid'] !=
                                                              null
                                                      ? FhirOid.fromJson({
                                                          'value': json[
                                                              'defaultValueOid'],
                                                          '_value': json[
                                                              '_defaultValueOid'],
                                                        })
                                                      : json['defaultValuePositiveInt'] !=
                                                                  null ||
                                                              json['_defaultValuePositiveInt'] !=
                                                                  null
                                                          ? FhirPositiveInt.fromJson({
                                                              'value': json[
                                                                  'defaultValuePositiveInt'],
                                                              '_value': json[
                                                                  '_defaultValuePositiveInt'],
                                                            })
                                                          : json['defaultValueString'] !=
                                                                      null ||
                                                                  json['_defaultValueString'] != null
                                                              ? FhirString.fromJson({
                                                                  'value': json[
                                                                      'defaultValueString'],
                                                                  '_value': json[
                                                                      '_defaultValueString'],
                                                                })
                                                              : json['defaultValueTime'] != null || json['_defaultValueTime'] != null
                                                                  ? FhirTime.fromJson({
                                                                      'value': json[
                                                                          'defaultValueTime'],
                                                                      '_value':
                                                                          json[
                                                                              '_defaultValueTime'],
                                                                    })
                                                                  : json['defaultValueUnsignedInt'] != null || json['_defaultValueUnsignedInt'] != null
                                                                      ? FhirUnsignedInt.fromJson({
                                                                          'value':
                                                                              json['defaultValueUnsignedInt'],
                                                                          '_value':
                                                                              json['_defaultValueUnsignedInt'],
                                                                        })
                                                                      : json['defaultValueUri'] != null || json['_defaultValueUri'] != null
                                                                          ? FhirUri.fromJson({
                                                                              'value': json['defaultValueUri'],
                                                                              '_value': json['_defaultValueUri'],
                                                                            })
                                                                          : json['defaultValueUrl'] != null || json['_defaultValueUrl'] != null
                                                                              ? FhirUrl.fromJson({
                                                                                  'value': json['defaultValueUrl'],
                                                                                  '_value': json['_defaultValueUrl'],
                                                                                })
                                                                              : json['defaultValueUuid'] != null || json['_defaultValueUuid'] != null
                                                                                  ? FhirUuid.fromJson({
                                                                                      'value': json['defaultValueUuid'],
                                                                                      '_value': json['_defaultValueUuid'],
                                                                                    })
                                                                                  : json['defaultValueAddress'] != null || json['_defaultValueAddress'] != null
                                                                                      ? Address.fromJson({
                                                                                          'value': json['defaultValueAddress'],
                                                                                          '_value': json['_defaultValueAddress'],
                                                                                        })
                                                                                      : json['defaultValueAge'] != null || json['_defaultValueAge'] != null
                                                                                          ? Age.fromJson({
                                                                                              'value': json['defaultValueAge'],
                                                                                              '_value': json['_defaultValueAge'],
                                                                                            })
                                                                                          : json['defaultValueAnnotation'] != null || json['_defaultValueAnnotation'] != null
                                                                                              ? Annotation.fromJson({
                                                                                                  'value': json['defaultValueAnnotation'],
                                                                                                  '_value': json['_defaultValueAnnotation'],
                                                                                                })
                                                                                              : json['defaultValueAttachment'] != null || json['_defaultValueAttachment'] != null
                                                                                                  ? Attachment.fromJson({
                                                                                                      'value': json['defaultValueAttachment'],
                                                                                                      '_value': json['_defaultValueAttachment'],
                                                                                                    })
                                                                                                  : json['defaultValueCodeableConcept'] != null || json['_defaultValueCodeableConcept'] != null
                                                                                                      ? CodeableConcept.fromJson({
                                                                                                          'value': json['defaultValueCodeableConcept'],
                                                                                                          '_value': json['_defaultValueCodeableConcept'],
                                                                                                        })
                                                                                                      : json['defaultValueCodeableReference'] != null || json['_defaultValueCodeableReference'] != null
                                                                                                          ? CodeableReference.fromJson({
                                                                                                              'value': json['defaultValueCodeableReference'],
                                                                                                              '_value': json['_defaultValueCodeableReference'],
                                                                                                            })
                                                                                                          : json['defaultValueCoding'] != null || json['_defaultValueCoding'] != null
                                                                                                              ? Coding.fromJson({
                                                                                                                  'value': json['defaultValueCoding'],
                                                                                                                  '_value': json['_defaultValueCoding'],
                                                                                                                })
                                                                                                              : json['defaultValueContactPoint'] != null || json['_defaultValueContactPoint'] != null
                                                                                                                  ? ContactPoint.fromJson({
                                                                                                                      'value': json['defaultValueContactPoint'],
                                                                                                                      '_value': json['_defaultValueContactPoint'],
                                                                                                                    })
                                                                                                                  : json['defaultValueCount'] != null || json['_defaultValueCount'] != null
                                                                                                                      ? Count.fromJson({
                                                                                                                          'value': json['defaultValueCount'],
                                                                                                                          '_value': json['_defaultValueCount'],
                                                                                                                        })
                                                                                                                      : json['defaultValueDistance'] != null || json['_defaultValueDistance'] != null
                                                                                                                          ? Distance.fromJson({
                                                                                                                              'value': json['defaultValueDistance'],
                                                                                                                              '_value': json['_defaultValueDistance'],
                                                                                                                            })
                                                                                                                          : json['defaultValueDuration'] != null || json['_defaultValueDuration'] != null
                                                                                                                              ? FhirDuration.fromJson({
                                                                                                                                  'value': json['defaultValueDuration'],
                                                                                                                                  '_value': json['_defaultValueDuration'],
                                                                                                                                })
                                                                                                                              : json['defaultValueHumanName'] != null || json['_defaultValueHumanName'] != null
                                                                                                                                  ? HumanName.fromJson({
                                                                                                                                      'value': json['defaultValueHumanName'],
                                                                                                                                      '_value': json['_defaultValueHumanName'],
                                                                                                                                    })
                                                                                                                                  : json['defaultValueIdentifier'] != null || json['_defaultValueIdentifier'] != null
                                                                                                                                      ? Identifier.fromJson({
                                                                                                                                          'value': json['defaultValueIdentifier'],
                                                                                                                                          '_value': json['_defaultValueIdentifier'],
                                                                                                                                        })
                                                                                                                                      : json['defaultValueMoney'] != null || json['_defaultValueMoney'] != null
                                                                                                                                          ? Money.fromJson({
                                                                                                                                              'value': json['defaultValueMoney'],
                                                                                                                                              '_value': json['_defaultValueMoney'],
                                                                                                                                            })
                                                                                                                                          : json['defaultValuePeriod'] != null || json['_defaultValuePeriod'] != null
                                                                                                                                              ? Period.fromJson({
                                                                                                                                                  'value': json['defaultValuePeriod'],
                                                                                                                                                  '_value': json['_defaultValuePeriod'],
                                                                                                                                                })
                                                                                                                                              : json['defaultValueQuantity'] != null || json['_defaultValueQuantity'] != null
                                                                                                                                                  ? Quantity.fromJson({
                                                                                                                                                      'value': json['defaultValueQuantity'],
                                                                                                                                                      '_value': json['_defaultValueQuantity'],
                                                                                                                                                    })
                                                                                                                                                  : json['defaultValueRange'] != null || json['_defaultValueRange'] != null
                                                                                                                                                      ? Range.fromJson({
                                                                                                                                                          'value': json['defaultValueRange'],
                                                                                                                                                          '_value': json['_defaultValueRange'],
                                                                                                                                                        })
                                                                                                                                                      : json['defaultValueRatio'] != null || json['_defaultValueRatio'] != null
                                                                                                                                                          ? Ratio.fromJson({
                                                                                                                                                              'value': json['defaultValueRatio'],
                                                                                                                                                              '_value': json['_defaultValueRatio'],
                                                                                                                                                            })
                                                                                                                                                          : json['defaultValueRatioRange'] != null || json['_defaultValueRatioRange'] != null
                                                                                                                                                              ? RatioRange.fromJson({
                                                                                                                                                                  'value': json['defaultValueRatioRange'],
                                                                                                                                                                  '_value': json['_defaultValueRatioRange'],
                                                                                                                                                                })
                                                                                                                                                              : json['defaultValueReference'] != null || json['_defaultValueReference'] != null
                                                                                                                                                                  ? Reference.fromJson({
                                                                                                                                                                      'value': json['defaultValueReference'],
                                                                                                                                                                      '_value': json['_defaultValueReference'],
                                                                                                                                                                    })
                                                                                                                                                                  : json['defaultValueSampledData'] != null || json['_defaultValueSampledData'] != null
                                                                                                                                                                      ? SampledData.fromJson({
                                                                                                                                                                          'value': json['defaultValueSampledData'],
                                                                                                                                                                          '_value': json['_defaultValueSampledData'],
                                                                                                                                                                        })
                                                                                                                                                                      : json['defaultValueSignature'] != null || json['_defaultValueSignature'] != null
                                                                                                                                                                          ? Signature.fromJson({
                                                                                                                                                                              'value': json['defaultValueSignature'],
                                                                                                                                                                              '_value': json['_defaultValueSignature'],
                                                                                                                                                                            })
                                                                                                                                                                          : json['defaultValueTiming'] != null || json['_defaultValueTiming'] != null
                                                                                                                                                                              ? Timing.fromJson({
                                                                                                                                                                                  'value': json['defaultValueTiming'],
                                                                                                                                                                                  '_value': json['_defaultValueTiming'],
                                                                                                                                                                                })
                                                                                                                                                                              : json['defaultValueContactDetail'] != null || json['_defaultValueContactDetail'] != null
                                                                                                                                                                                  ? ContactDetail.fromJson({
                                                                                                                                                                                      'value': json['defaultValueContactDetail'],
                                                                                                                                                                                      '_value': json['_defaultValueContactDetail'],
                                                                                                                                                                                    })
                                                                                                                                                                                  : json['defaultValueContributor'] != null || json['_defaultValueContributor'] != null
                                                                                                                                                                                      ? Contributor.fromJson({
                                                                                                                                                                                          'value': json['defaultValueContributor'],
                                                                                                                                                                                          '_value': json['_defaultValueContributor'],
                                                                                                                                                                                        })
                                                                                                                                                                                      : json['defaultValueDataRequirement'] != null || json['_defaultValueDataRequirement'] != null
                                                                                                                                                                                          ? DataRequirement.fromJson({
                                                                                                                                                                                              'value': json['defaultValueDataRequirement'],
                                                                                                                                                                                              '_value': json['_defaultValueDataRequirement'],
                                                                                                                                                                                            })
                                                                                                                                                                                          : json['defaultValueExpression'] != null || json['_defaultValueExpression'] != null
                                                                                                                                                                                              ? FhirExpression.fromJson({
                                                                                                                                                                                                  'value': json['defaultValueExpression'],
                                                                                                                                                                                                  '_value': json['_defaultValueExpression'],
                                                                                                                                                                                                })
                                                                                                                                                                                              : json['defaultValueParameterDefinition'] != null || json['_defaultValueParameterDefinition'] != null
                                                                                                                                                                                                  ? ParameterDefinition.fromJson({
                                                                                                                                                                                                      'value': json['defaultValueParameterDefinition'],
                                                                                                                                                                                                      '_value': json['_defaultValueParameterDefinition'],
                                                                                                                                                                                                    })
                                                                                                                                                                                                  : json['defaultValueRelatedArtifact'] != null || json['_defaultValueRelatedArtifact'] != null
                                                                                                                                                                                                      ? RelatedArtifact.fromJson({
                                                                                                                                                                                                          'value': json['defaultValueRelatedArtifact'],
                                                                                                                                                                                                          '_value': json['_defaultValueRelatedArtifact'],
                                                                                                                                                                                                        })
                                                                                                                                                                                                      : json['defaultValueTriggerDefinition'] != null || json['_defaultValueTriggerDefinition'] != null
                                                                                                                                                                                                          ? TriggerDefinition.fromJson({
                                                                                                                                                                                                              'value': json['defaultValueTriggerDefinition'],
                                                                                                                                                                                                              '_value': json['_defaultValueTriggerDefinition'],
                                                                                                                                                                                                            })
                                                                                                                                                                                                          : json['defaultValueUsageContext'] != null || json['_defaultValueUsageContext'] != null
                                                                                                                                                                                                              ? UsageContext.fromJson({
                                                                                                                                                                                                                  'value': json['defaultValueUsageContext'],
                                                                                                                                                                                                                  '_value': json['_defaultValueUsageContext'],
                                                                                                                                                                                                                })
                                                                                                                                                                                                              : json['defaultValueDosage'] != null
                                                                                                                                                                                                                  ? Dosage.fromJson(
                                                                                                                                                                                                                      json['defaultValueDosage'] as Map<String, dynamic>,
                                                                                                                                                                                                                    )
                                                                                                                                                                                                                  : null,
      meaningWhenMissing: (json['meaningWhenMissing'] != null ||
              json['_meaningWhenMissing'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['meaningWhenMissing'],
              '_value': json['_meaningWhenMissing'],
            })
          : null,
      orderMeaning:
          (json['orderMeaning'] != null || json['_orderMeaning'] != null)
              ? FhirString.fromJson({
                  'value': json['orderMeaning'],
                  '_value': json['_orderMeaning'],
                })
              : null,
      fixedXElementDefinition: json['fixedBase64Binary'] != null ||
              json['_fixedBase64Binary'] != null
          ? FhirBase64Binary.fromJson({
              'value': json['fixedBase64Binary'],
              '_value': json['_fixedBase64Binary'],
            })
          : json['fixedBoolean'] != null || json['_fixedBoolean'] != null
              ? FhirBoolean.fromJson({
                  'value': json['fixedBoolean'],
                  '_value': json['_fixedBoolean'],
                })
              : json['fixedCanonical'] != null ||
                      json['_fixedCanonical'] != null
                  ? FhirCanonical.fromJson({
                      'value': json['fixedCanonical'],
                      '_value': json['_fixedCanonical'],
                    })
                  : json['fixedCode'] != null || json['_fixedCode'] != null
                      ? FhirCode.fromJson({
                          'value': json['fixedCode'],
                          '_value': json['_fixedCode'],
                        })
                      : json['fixedDate'] != null || json['_fixedDate'] != null
                          ? FhirDate.fromJson({
                              'value': json['fixedDate'],
                              '_value': json['_fixedDate'],
                            })
                          : json['fixedDateTime'] != null ||
                                  json['_fixedDateTime'] != null
                              ? FhirDateTime.fromJson({
                                  'value': json['fixedDateTime'],
                                  '_value': json['_fixedDateTime'],
                                })
                              : json['fixedDecimal'] != null ||
                                      json['_fixedDecimal'] != null
                                  ? FhirDecimal.fromJson({
                                      'value': json['fixedDecimal'],
                                      '_value': json['_fixedDecimal'],
                                    })
                                  : json['fixedId'] != null ||
                                          json['_fixedId'] != null
                                      ? FhirId.fromJson({
                                          'value': json['fixedId'],
                                          '_value': json['_fixedId'],
                                        })
                                      : json['fixedInstant'] != null ||
                                              json['_fixedInstant'] != null
                                          ? FhirInstant.fromJson({
                                              'value': json['fixedInstant'],
                                              '_value': json['_fixedInstant'],
                                            })
                                          : json['fixedInteger'] != null ||
                                                  json['_fixedInteger'] != null
                                              ? FhirInteger.fromJson({
                                                  'value': json['fixedInteger'],
                                                  '_value':
                                                      json['_fixedInteger'],
                                                })
                                              : json['fixedMarkdown'] != null ||
                                                      json['_fixedMarkdown'] !=
                                                          null
                                                  ? FhirMarkdown.fromJson({
                                                      'value':
                                                          json['fixedMarkdown'],
                                                      '_value': json[
                                                          '_fixedMarkdown'],
                                                    })
                                                  : json['fixedOid'] != null ||
                                                          json['_fixedOid'] !=
                                                              null
                                                      ? FhirOid.fromJson({
                                                          'value':
                                                              json['fixedOid'],
                                                          '_value':
                                                              json['_fixedOid'],
                                                        })
                                                      : json['fixedPositiveInt'] !=
                                                                  null ||
                                                              json['_fixedPositiveInt'] !=
                                                                  null
                                                          ? FhirPositiveInt.fromJson({
                                                              'value': json[
                                                                  'fixedPositiveInt'],
                                                              '_value': json[
                                                                  '_fixedPositiveInt'],
                                                            })
                                                          : json['fixedString'] !=
                                                                      null ||
                                                                  json['_fixedString'] !=
                                                                      null
                                                              ? FhirString.fromJson({
                                                                  'value': json[
                                                                      'fixedString'],
                                                                  '_value': json[
                                                                      '_fixedString'],
                                                                })
                                                              : json['fixedTime'] !=
                                                                          null ||
                                                                      json['_fixedTime'] !=
                                                                          null
                                                                  ? FhirTime.fromJson({
                                                                      'value': json[
                                                                          'fixedTime'],
                                                                      '_value':
                                                                          json[
                                                                              '_fixedTime'],
                                                                    })
                                                                  : json['fixedUnsignedInt'] !=
                                                                              null ||
                                                                          json['_fixedUnsignedInt'] !=
                                                                              null
                                                                      ? FhirUnsignedInt.fromJson({
                                                                          'value':
                                                                              json['fixedUnsignedInt'],
                                                                          '_value':
                                                                              json['_fixedUnsignedInt'],
                                                                        })
                                                                      : json['fixedUri'] != null || json['_fixedUri'] != null
                                                                          ? FhirUri.fromJson({
                                                                              'value': json['fixedUri'],
                                                                              '_value': json['_fixedUri'],
                                                                            })
                                                                          : json['fixedUrl'] != null || json['_fixedUrl'] != null
                                                                              ? FhirUrl.fromJson({
                                                                                  'value': json['fixedUrl'],
                                                                                  '_value': json['_fixedUrl'],
                                                                                })
                                                                              : json['fixedUuid'] != null || json['_fixedUuid'] != null
                                                                                  ? FhirUuid.fromJson({
                                                                                      'value': json['fixedUuid'],
                                                                                      '_value': json['_fixedUuid'],
                                                                                    })
                                                                                  : json['fixedAddress'] != null || json['_fixedAddress'] != null
                                                                                      ? Address.fromJson({
                                                                                          'value': json['fixedAddress'],
                                                                                          '_value': json['_fixedAddress'],
                                                                                        })
                                                                                      : json['fixedAge'] != null || json['_fixedAge'] != null
                                                                                          ? Age.fromJson({
                                                                                              'value': json['fixedAge'],
                                                                                              '_value': json['_fixedAge'],
                                                                                            })
                                                                                          : json['fixedAnnotation'] != null || json['_fixedAnnotation'] != null
                                                                                              ? Annotation.fromJson({
                                                                                                  'value': json['fixedAnnotation'],
                                                                                                  '_value': json['_fixedAnnotation'],
                                                                                                })
                                                                                              : json['fixedAttachment'] != null || json['_fixedAttachment'] != null
                                                                                                  ? Attachment.fromJson({
                                                                                                      'value': json['fixedAttachment'],
                                                                                                      '_value': json['_fixedAttachment'],
                                                                                                    })
                                                                                                  : json['fixedCodeableConcept'] != null || json['_fixedCodeableConcept'] != null
                                                                                                      ? CodeableConcept.fromJson({
                                                                                                          'value': json['fixedCodeableConcept'],
                                                                                                          '_value': json['_fixedCodeableConcept'],
                                                                                                        })
                                                                                                      : json['fixedCodeableReference'] != null || json['_fixedCodeableReference'] != null
                                                                                                          ? CodeableReference.fromJson({
                                                                                                              'value': json['fixedCodeableReference'],
                                                                                                              '_value': json['_fixedCodeableReference'],
                                                                                                            })
                                                                                                          : json['fixedCoding'] != null || json['_fixedCoding'] != null
                                                                                                              ? Coding.fromJson({
                                                                                                                  'value': json['fixedCoding'],
                                                                                                                  '_value': json['_fixedCoding'],
                                                                                                                })
                                                                                                              : json['fixedContactPoint'] != null || json['_fixedContactPoint'] != null
                                                                                                                  ? ContactPoint.fromJson({
                                                                                                                      'value': json['fixedContactPoint'],
                                                                                                                      '_value': json['_fixedContactPoint'],
                                                                                                                    })
                                                                                                                  : json['fixedCount'] != null || json['_fixedCount'] != null
                                                                                                                      ? Count.fromJson({
                                                                                                                          'value': json['fixedCount'],
                                                                                                                          '_value': json['_fixedCount'],
                                                                                                                        })
                                                                                                                      : json['fixedDistance'] != null || json['_fixedDistance'] != null
                                                                                                                          ? Distance.fromJson({
                                                                                                                              'value': json['fixedDistance'],
                                                                                                                              '_value': json['_fixedDistance'],
                                                                                                                            })
                                                                                                                          : json['fixedDuration'] != null || json['_fixedDuration'] != null
                                                                                                                              ? FhirDuration.fromJson({
                                                                                                                                  'value': json['fixedDuration'],
                                                                                                                                  '_value': json['_fixedDuration'],
                                                                                                                                })
                                                                                                                              : json['fixedHumanName'] != null || json['_fixedHumanName'] != null
                                                                                                                                  ? HumanName.fromJson({
                                                                                                                                      'value': json['fixedHumanName'],
                                                                                                                                      '_value': json['_fixedHumanName'],
                                                                                                                                    })
                                                                                                                                  : json['fixedIdentifier'] != null || json['_fixedIdentifier'] != null
                                                                                                                                      ? Identifier.fromJson({
                                                                                                                                          'value': json['fixedIdentifier'],
                                                                                                                                          '_value': json['_fixedIdentifier'],
                                                                                                                                        })
                                                                                                                                      : json['fixedMoney'] != null || json['_fixedMoney'] != null
                                                                                                                                          ? Money.fromJson({
                                                                                                                                              'value': json['fixedMoney'],
                                                                                                                                              '_value': json['_fixedMoney'],
                                                                                                                                            })
                                                                                                                                          : json['fixedPeriod'] != null || json['_fixedPeriod'] != null
                                                                                                                                              ? Period.fromJson({
                                                                                                                                                  'value': json['fixedPeriod'],
                                                                                                                                                  '_value': json['_fixedPeriod'],
                                                                                                                                                })
                                                                                                                                              : json['fixedQuantity'] != null || json['_fixedQuantity'] != null
                                                                                                                                                  ? Quantity.fromJson({
                                                                                                                                                      'value': json['fixedQuantity'],
                                                                                                                                                      '_value': json['_fixedQuantity'],
                                                                                                                                                    })
                                                                                                                                                  : json['fixedRange'] != null || json['_fixedRange'] != null
                                                                                                                                                      ? Range.fromJson({
                                                                                                                                                          'value': json['fixedRange'],
                                                                                                                                                          '_value': json['_fixedRange'],
                                                                                                                                                        })
                                                                                                                                                      : json['fixedRatio'] != null || json['_fixedRatio'] != null
                                                                                                                                                          ? Ratio.fromJson({
                                                                                                                                                              'value': json['fixedRatio'],
                                                                                                                                                              '_value': json['_fixedRatio'],
                                                                                                                                                            })
                                                                                                                                                          : json['fixedRatioRange'] != null || json['_fixedRatioRange'] != null
                                                                                                                                                              ? RatioRange.fromJson({
                                                                                                                                                                  'value': json['fixedRatioRange'],
                                                                                                                                                                  '_value': json['_fixedRatioRange'],
                                                                                                                                                                })
                                                                                                                                                              : json['fixedReference'] != null || json['_fixedReference'] != null
                                                                                                                                                                  ? Reference.fromJson({
                                                                                                                                                                      'value': json['fixedReference'],
                                                                                                                                                                      '_value': json['_fixedReference'],
                                                                                                                                                                    })
                                                                                                                                                                  : json['fixedSampledData'] != null || json['_fixedSampledData'] != null
                                                                                                                                                                      ? SampledData.fromJson({
                                                                                                                                                                          'value': json['fixedSampledData'],
                                                                                                                                                                          '_value': json['_fixedSampledData'],
                                                                                                                                                                        })
                                                                                                                                                                      : json['fixedSignature'] != null || json['_fixedSignature'] != null
                                                                                                                                                                          ? Signature.fromJson({
                                                                                                                                                                              'value': json['fixedSignature'],
                                                                                                                                                                              '_value': json['_fixedSignature'],
                                                                                                                                                                            })
                                                                                                                                                                          : json['fixedTiming'] != null || json['_fixedTiming'] != null
                                                                                                                                                                              ? Timing.fromJson({
                                                                                                                                                                                  'value': json['fixedTiming'],
                                                                                                                                                                                  '_value': json['_fixedTiming'],
                                                                                                                                                                                })
                                                                                                                                                                              : json['fixedContactDetail'] != null || json['_fixedContactDetail'] != null
                                                                                                                                                                                  ? ContactDetail.fromJson({
                                                                                                                                                                                      'value': json['fixedContactDetail'],
                                                                                                                                                                                      '_value': json['_fixedContactDetail'],
                                                                                                                                                                                    })
                                                                                                                                                                                  : json['fixedContributor'] != null || json['_fixedContributor'] != null
                                                                                                                                                                                      ? Contributor.fromJson({
                                                                                                                                                                                          'value': json['fixedContributor'],
                                                                                                                                                                                          '_value': json['_fixedContributor'],
                                                                                                                                                                                        })
                                                                                                                                                                                      : json['fixedDataRequirement'] != null || json['_fixedDataRequirement'] != null
                                                                                                                                                                                          ? DataRequirement.fromJson({
                                                                                                                                                                                              'value': json['fixedDataRequirement'],
                                                                                                                                                                                              '_value': json['_fixedDataRequirement'],
                                                                                                                                                                                            })
                                                                                                                                                                                          : json['fixedExpression'] != null || json['_fixedExpression'] != null
                                                                                                                                                                                              ? FhirExpression.fromJson({
                                                                                                                                                                                                  'value': json['fixedExpression'],
                                                                                                                                                                                                  '_value': json['_fixedExpression'],
                                                                                                                                                                                                })
                                                                                                                                                                                              : json['fixedParameterDefinition'] != null || json['_fixedParameterDefinition'] != null
                                                                                                                                                                                                  ? ParameterDefinition.fromJson({
                                                                                                                                                                                                      'value': json['fixedParameterDefinition'],
                                                                                                                                                                                                      '_value': json['_fixedParameterDefinition'],
                                                                                                                                                                                                    })
                                                                                                                                                                                                  : json['fixedRelatedArtifact'] != null || json['_fixedRelatedArtifact'] != null
                                                                                                                                                                                                      ? RelatedArtifact.fromJson({
                                                                                                                                                                                                          'value': json['fixedRelatedArtifact'],
                                                                                                                                                                                                          '_value': json['_fixedRelatedArtifact'],
                                                                                                                                                                                                        })
                                                                                                                                                                                                      : json['fixedTriggerDefinition'] != null || json['_fixedTriggerDefinition'] != null
                                                                                                                                                                                                          ? TriggerDefinition.fromJson({
                                                                                                                                                                                                              'value': json['fixedTriggerDefinition'],
                                                                                                                                                                                                              '_value': json['_fixedTriggerDefinition'],
                                                                                                                                                                                                            })
                                                                                                                                                                                                          : json['fixedUsageContext'] != null || json['_fixedUsageContext'] != null
                                                                                                                                                                                                              ? UsageContext.fromJson({
                                                                                                                                                                                                                  'value': json['fixedUsageContext'],
                                                                                                                                                                                                                  '_value': json['_fixedUsageContext'],
                                                                                                                                                                                                                })
                                                                                                                                                                                                              : json['fixedDosage'] != null
                                                                                                                                                                                                                  ? Dosage.fromJson(
                                                                                                                                                                                                                      json['fixedDosage'] as Map<String, dynamic>,
                                                                                                                                                                                                                    )
                                                                                                                                                                                                                  : null,
      patternXElementDefinition: json['patternBase64Binary'] != null ||
              json['_patternBase64Binary'] != null
          ? FhirBase64Binary.fromJson({
              'value': json['patternBase64Binary'],
              '_value': json['_patternBase64Binary'],
            })
          : json['patternBoolean'] != null || json['_patternBoolean'] != null
              ? FhirBoolean.fromJson({
                  'value': json['patternBoolean'],
                  '_value': json['_patternBoolean'],
                })
              : json['patternCanonical'] != null ||
                      json['_patternCanonical'] != null
                  ? FhirCanonical.fromJson({
                      'value': json['patternCanonical'],
                      '_value': json['_patternCanonical'],
                    })
                  : json['patternCode'] != null || json['_patternCode'] != null
                      ? FhirCode.fromJson({
                          'value': json['patternCode'],
                          '_value': json['_patternCode'],
                        })
                      : json['patternDate'] != null ||
                              json['_patternDate'] != null
                          ? FhirDate.fromJson({
                              'value': json['patternDate'],
                              '_value': json['_patternDate'],
                            })
                          : json['patternDateTime'] != null ||
                                  json['_patternDateTime'] != null
                              ? FhirDateTime.fromJson({
                                  'value': json['patternDateTime'],
                                  '_value': json['_patternDateTime'],
                                })
                              : json['patternDecimal'] != null ||
                                      json['_patternDecimal'] != null
                                  ? FhirDecimal.fromJson({
                                      'value': json['patternDecimal'],
                                      '_value': json['_patternDecimal'],
                                    })
                                  : json['patternId'] != null ||
                                          json['_patternId'] != null
                                      ? FhirId.fromJson({
                                          'value': json['patternId'],
                                          '_value': json['_patternId'],
                                        })
                                      : json['patternInstant'] != null ||
                                              json['_patternInstant'] != null
                                          ? FhirInstant.fromJson({
                                              'value': json['patternInstant'],
                                              '_value': json['_patternInstant'],
                                            })
                                          : json['patternInteger'] != null ||
                                                  json['_patternInteger'] !=
                                                      null
                                              ? FhirInteger.fromJson({
                                                  'value':
                                                      json['patternInteger'],
                                                  '_value':
                                                      json['_patternInteger'],
                                                })
                                              : json['patternMarkdown'] != null ||
                                                      json['_patternMarkdown'] !=
                                                          null
                                                  ? FhirMarkdown.fromJson({
                                                      'value': json[
                                                          'patternMarkdown'],
                                                      '_value': json[
                                                          '_patternMarkdown'],
                                                    })
                                                  : json['patternOid'] != null ||
                                                          json['_patternOid'] !=
                                                              null
                                                      ? FhirOid.fromJson({
                                                          'value': json[
                                                              'patternOid'],
                                                          '_value': json[
                                                              '_patternOid'],
                                                        })
                                                      : json['patternPositiveInt'] !=
                                                                  null ||
                                                              json['_patternPositiveInt'] !=
                                                                  null
                                                          ? FhirPositiveInt.fromJson({
                                                              'value': json[
                                                                  'patternPositiveInt'],
                                                              '_value': json[
                                                                  '_patternPositiveInt'],
                                                            })
                                                          : json['patternString'] !=
                                                                      null ||
                                                                  json['_patternString'] !=
                                                                      null
                                                              ? FhirString.fromJson({
                                                                  'value': json[
                                                                      'patternString'],
                                                                  '_value': json[
                                                                      '_patternString'],
                                                                })
                                                              : json['patternTime'] !=
                                                                          null ||
                                                                      json['_patternTime'] !=
                                                                          null
                                                                  ? FhirTime.fromJson({
                                                                      'value': json[
                                                                          'patternTime'],
                                                                      '_value':
                                                                          json[
                                                                              '_patternTime'],
                                                                    })
                                                                  : json['patternUnsignedInt'] != null ||
                                                                          json['_patternUnsignedInt'] != null
                                                                      ? FhirUnsignedInt.fromJson({
                                                                          'value':
                                                                              json['patternUnsignedInt'],
                                                                          '_value':
                                                                              json['_patternUnsignedInt'],
                                                                        })
                                                                      : json['patternUri'] != null || json['_patternUri'] != null
                                                                          ? FhirUri.fromJson({
                                                                              'value': json['patternUri'],
                                                                              '_value': json['_patternUri'],
                                                                            })
                                                                          : json['patternUrl'] != null || json['_patternUrl'] != null
                                                                              ? FhirUrl.fromJson({
                                                                                  'value': json['patternUrl'],
                                                                                  '_value': json['_patternUrl'],
                                                                                })
                                                                              : json['patternUuid'] != null || json['_patternUuid'] != null
                                                                                  ? FhirUuid.fromJson({
                                                                                      'value': json['patternUuid'],
                                                                                      '_value': json['_patternUuid'],
                                                                                    })
                                                                                  : json['patternAddress'] != null || json['_patternAddress'] != null
                                                                                      ? Address.fromJson({
                                                                                          'value': json['patternAddress'],
                                                                                          '_value': json['_patternAddress'],
                                                                                        })
                                                                                      : json['patternAge'] != null || json['_patternAge'] != null
                                                                                          ? Age.fromJson({
                                                                                              'value': json['patternAge'],
                                                                                              '_value': json['_patternAge'],
                                                                                            })
                                                                                          : json['patternAnnotation'] != null || json['_patternAnnotation'] != null
                                                                                              ? Annotation.fromJson({
                                                                                                  'value': json['patternAnnotation'],
                                                                                                  '_value': json['_patternAnnotation'],
                                                                                                })
                                                                                              : json['patternAttachment'] != null || json['_patternAttachment'] != null
                                                                                                  ? Attachment.fromJson({
                                                                                                      'value': json['patternAttachment'],
                                                                                                      '_value': json['_patternAttachment'],
                                                                                                    })
                                                                                                  : json['patternCodeableConcept'] != null || json['_patternCodeableConcept'] != null
                                                                                                      ? CodeableConcept.fromJson({
                                                                                                          'value': json['patternCodeableConcept'],
                                                                                                          '_value': json['_patternCodeableConcept'],
                                                                                                        })
                                                                                                      : json['patternCodeableReference'] != null || json['_patternCodeableReference'] != null
                                                                                                          ? CodeableReference.fromJson({
                                                                                                              'value': json['patternCodeableReference'],
                                                                                                              '_value': json['_patternCodeableReference'],
                                                                                                            })
                                                                                                          : json['patternCoding'] != null || json['_patternCoding'] != null
                                                                                                              ? Coding.fromJson({
                                                                                                                  'value': json['patternCoding'],
                                                                                                                  '_value': json['_patternCoding'],
                                                                                                                })
                                                                                                              : json['patternContactPoint'] != null || json['_patternContactPoint'] != null
                                                                                                                  ? ContactPoint.fromJson({
                                                                                                                      'value': json['patternContactPoint'],
                                                                                                                      '_value': json['_patternContactPoint'],
                                                                                                                    })
                                                                                                                  : json['patternCount'] != null || json['_patternCount'] != null
                                                                                                                      ? Count.fromJson({
                                                                                                                          'value': json['patternCount'],
                                                                                                                          '_value': json['_patternCount'],
                                                                                                                        })
                                                                                                                      : json['patternDistance'] != null || json['_patternDistance'] != null
                                                                                                                          ? Distance.fromJson({
                                                                                                                              'value': json['patternDistance'],
                                                                                                                              '_value': json['_patternDistance'],
                                                                                                                            })
                                                                                                                          : json['patternDuration'] != null || json['_patternDuration'] != null
                                                                                                                              ? FhirDuration.fromJson({
                                                                                                                                  'value': json['patternDuration'],
                                                                                                                                  '_value': json['_patternDuration'],
                                                                                                                                })
                                                                                                                              : json['patternHumanName'] != null || json['_patternHumanName'] != null
                                                                                                                                  ? HumanName.fromJson({
                                                                                                                                      'value': json['patternHumanName'],
                                                                                                                                      '_value': json['_patternHumanName'],
                                                                                                                                    })
                                                                                                                                  : json['patternIdentifier'] != null || json['_patternIdentifier'] != null
                                                                                                                                      ? Identifier.fromJson({
                                                                                                                                          'value': json['patternIdentifier'],
                                                                                                                                          '_value': json['_patternIdentifier'],
                                                                                                                                        })
                                                                                                                                      : json['patternMoney'] != null || json['_patternMoney'] != null
                                                                                                                                          ? Money.fromJson({
                                                                                                                                              'value': json['patternMoney'],
                                                                                                                                              '_value': json['_patternMoney'],
                                                                                                                                            })
                                                                                                                                          : json['patternPeriod'] != null || json['_patternPeriod'] != null
                                                                                                                                              ? Period.fromJson({
                                                                                                                                                  'value': json['patternPeriod'],
                                                                                                                                                  '_value': json['_patternPeriod'],
                                                                                                                                                })
                                                                                                                                              : json['patternQuantity'] != null || json['_patternQuantity'] != null
                                                                                                                                                  ? Quantity.fromJson({
                                                                                                                                                      'value': json['patternQuantity'],
                                                                                                                                                      '_value': json['_patternQuantity'],
                                                                                                                                                    })
                                                                                                                                                  : json['patternRange'] != null || json['_patternRange'] != null
                                                                                                                                                      ? Range.fromJson({
                                                                                                                                                          'value': json['patternRange'],
                                                                                                                                                          '_value': json['_patternRange'],
                                                                                                                                                        })
                                                                                                                                                      : json['patternRatio'] != null || json['_patternRatio'] != null
                                                                                                                                                          ? Ratio.fromJson({
                                                                                                                                                              'value': json['patternRatio'],
                                                                                                                                                              '_value': json['_patternRatio'],
                                                                                                                                                            })
                                                                                                                                                          : json['patternRatioRange'] != null || json['_patternRatioRange'] != null
                                                                                                                                                              ? RatioRange.fromJson({
                                                                                                                                                                  'value': json['patternRatioRange'],
                                                                                                                                                                  '_value': json['_patternRatioRange'],
                                                                                                                                                                })
                                                                                                                                                              : json['patternReference'] != null || json['_patternReference'] != null
                                                                                                                                                                  ? Reference.fromJson({
                                                                                                                                                                      'value': json['patternReference'],
                                                                                                                                                                      '_value': json['_patternReference'],
                                                                                                                                                                    })
                                                                                                                                                                  : json['patternSampledData'] != null || json['_patternSampledData'] != null
                                                                                                                                                                      ? SampledData.fromJson({
                                                                                                                                                                          'value': json['patternSampledData'],
                                                                                                                                                                          '_value': json['_patternSampledData'],
                                                                                                                                                                        })
                                                                                                                                                                      : json['patternSignature'] != null || json['_patternSignature'] != null
                                                                                                                                                                          ? Signature.fromJson({
                                                                                                                                                                              'value': json['patternSignature'],
                                                                                                                                                                              '_value': json['_patternSignature'],
                                                                                                                                                                            })
                                                                                                                                                                          : json['patternTiming'] != null || json['_patternTiming'] != null
                                                                                                                                                                              ? Timing.fromJson({
                                                                                                                                                                                  'value': json['patternTiming'],
                                                                                                                                                                                  '_value': json['_patternTiming'],
                                                                                                                                                                                })
                                                                                                                                                                              : json['patternContactDetail'] != null || json['_patternContactDetail'] != null
                                                                                                                                                                                  ? ContactDetail.fromJson({
                                                                                                                                                                                      'value': json['patternContactDetail'],
                                                                                                                                                                                      '_value': json['_patternContactDetail'],
                                                                                                                                                                                    })
                                                                                                                                                                                  : json['patternContributor'] != null || json['_patternContributor'] != null
                                                                                                                                                                                      ? Contributor.fromJson({
                                                                                                                                                                                          'value': json['patternContributor'],
                                                                                                                                                                                          '_value': json['_patternContributor'],
                                                                                                                                                                                        })
                                                                                                                                                                                      : json['patternDataRequirement'] != null || json['_patternDataRequirement'] != null
                                                                                                                                                                                          ? DataRequirement.fromJson({
                                                                                                                                                                                              'value': json['patternDataRequirement'],
                                                                                                                                                                                              '_value': json['_patternDataRequirement'],
                                                                                                                                                                                            })
                                                                                                                                                                                          : json['patternExpression'] != null || json['_patternExpression'] != null
                                                                                                                                                                                              ? FhirExpression.fromJson({
                                                                                                                                                                                                  'value': json['patternExpression'],
                                                                                                                                                                                                  '_value': json['_patternExpression'],
                                                                                                                                                                                                })
                                                                                                                                                                                              : json['patternParameterDefinition'] != null || json['_patternParameterDefinition'] != null
                                                                                                                                                                                                  ? ParameterDefinition.fromJson({
                                                                                                                                                                                                      'value': json['patternParameterDefinition'],
                                                                                                                                                                                                      '_value': json['_patternParameterDefinition'],
                                                                                                                                                                                                    })
                                                                                                                                                                                                  : json['patternRelatedArtifact'] != null || json['_patternRelatedArtifact'] != null
                                                                                                                                                                                                      ? RelatedArtifact.fromJson({
                                                                                                                                                                                                          'value': json['patternRelatedArtifact'],
                                                                                                                                                                                                          '_value': json['_patternRelatedArtifact'],
                                                                                                                                                                                                        })
                                                                                                                                                                                                      : json['patternTriggerDefinition'] != null || json['_patternTriggerDefinition'] != null
                                                                                                                                                                                                          ? TriggerDefinition.fromJson({
                                                                                                                                                                                                              'value': json['patternTriggerDefinition'],
                                                                                                                                                                                                              '_value': json['_patternTriggerDefinition'],
                                                                                                                                                                                                            })
                                                                                                                                                                                                          : json['patternUsageContext'] != null || json['_patternUsageContext'] != null
                                                                                                                                                                                                              ? UsageContext.fromJson({
                                                                                                                                                                                                                  'value': json['patternUsageContext'],
                                                                                                                                                                                                                  '_value': json['_patternUsageContext'],
                                                                                                                                                                                                                })
                                                                                                                                                                                                              : json['patternDosage'] != null
                                                                                                                                                                                                                  ? Dosage.fromJson(
                                                                                                                                                                                                                      json['patternDosage'] as Map<String, dynamic>,
                                                                                                                                                                                                                    )
                                                                                                                                                                                                                  : null,
      example: json['example'] != null
          ? (json['example'] as List<dynamic>)
              .map<ElementDefinitionExample>(
                (v) => ElementDefinitionExample.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      minValueXElementDefinition: json['minValueDate'] != null ||
              json['_minValueDate'] != null
          ? FhirDate.fromJson({
              'value': json['minValueDate'],
              '_value': json['_minValueDate'],
            })
          : json['minValueDateTime'] != null ||
                  json['_minValueDateTime'] != null
              ? FhirDateTime.fromJson({
                  'value': json['minValueDateTime'],
                  '_value': json['_minValueDateTime'],
                })
              : json['minValueInstant'] != null ||
                      json['_minValueInstant'] != null
                  ? FhirInstant.fromJson({
                      'value': json['minValueInstant'],
                      '_value': json['_minValueInstant'],
                    })
                  : json['minValueTime'] != null ||
                          json['_minValueTime'] != null
                      ? FhirTime.fromJson({
                          'value': json['minValueTime'],
                          '_value': json['_minValueTime'],
                        })
                      : json['minValueDecimal'] != null ||
                              json['_minValueDecimal'] != null
                          ? FhirDecimal.fromJson({
                              'value': json['minValueDecimal'],
                              '_value': json['_minValueDecimal'],
                            })
                          : json['minValueInteger'] != null ||
                                  json['_minValueInteger'] != null
                              ? FhirInteger.fromJson({
                                  'value': json['minValueInteger'],
                                  '_value': json['_minValueInteger'],
                                })
                              : json['minValuePositiveInt'] != null ||
                                      json['_minValuePositiveInt'] != null
                                  ? FhirPositiveInt.fromJson({
                                      'value': json['minValuePositiveInt'],
                                      '_value': json['_minValuePositiveInt'],
                                    })
                                  : json['minValueUnsignedInt'] != null ||
                                          json['_minValueUnsignedInt'] != null
                                      ? FhirUnsignedInt.fromJson({
                                          'value': json['minValueUnsignedInt'],
                                          '_value':
                                              json['_minValueUnsignedInt'],
                                        })
                                      : json['minValueQuantity'] != null
                                          ? Quantity.fromJson(
                                              json['minValueQuantity']
                                                  as Map<String, dynamic>,
                                            )
                                          : null,
      maxValueXElementDefinition: json['maxValueDate'] != null ||
              json['_maxValueDate'] != null
          ? FhirDate.fromJson({
              'value': json['maxValueDate'],
              '_value': json['_maxValueDate'],
            })
          : json['maxValueDateTime'] != null ||
                  json['_maxValueDateTime'] != null
              ? FhirDateTime.fromJson({
                  'value': json['maxValueDateTime'],
                  '_value': json['_maxValueDateTime'],
                })
              : json['maxValueInstant'] != null ||
                      json['_maxValueInstant'] != null
                  ? FhirInstant.fromJson({
                      'value': json['maxValueInstant'],
                      '_value': json['_maxValueInstant'],
                    })
                  : json['maxValueTime'] != null ||
                          json['_maxValueTime'] != null
                      ? FhirTime.fromJson({
                          'value': json['maxValueTime'],
                          '_value': json['_maxValueTime'],
                        })
                      : json['maxValueDecimal'] != null ||
                              json['_maxValueDecimal'] != null
                          ? FhirDecimal.fromJson({
                              'value': json['maxValueDecimal'],
                              '_value': json['_maxValueDecimal'],
                            })
                          : json['maxValueInteger'] != null ||
                                  json['_maxValueInteger'] != null
                              ? FhirInteger.fromJson({
                                  'value': json['maxValueInteger'],
                                  '_value': json['_maxValueInteger'],
                                })
                              : json['maxValuePositiveInt'] != null ||
                                      json['_maxValuePositiveInt'] != null
                                  ? FhirPositiveInt.fromJson({
                                      'value': json['maxValuePositiveInt'],
                                      '_value': json['_maxValuePositiveInt'],
                                    })
                                  : json['maxValueUnsignedInt'] != null ||
                                          json['_maxValueUnsignedInt'] != null
                                      ? FhirUnsignedInt.fromJson({
                                          'value': json['maxValueUnsignedInt'],
                                          '_value':
                                              json['_maxValueUnsignedInt'],
                                        })
                                      : json['maxValueQuantity'] != null
                                          ? Quantity.fromJson(
                                              json['maxValueQuantity']
                                                  as Map<String, dynamic>,
                                            )
                                          : null,
      maxLength: (json['maxLength'] != null || json['_maxLength'] != null)
          ? FhirInteger.fromJson({
              'value': json['maxLength'],
              '_value': json['_maxLength'],
            })
          : null,
      condition: parsePrimitiveList<FhirId>(
        json['condition'] as List<dynamic>?,
        json['_condition'] as List<dynamic>?,
        fromJson: FhirId.fromJson,
      ),
      constraint: json['constraint'] != null
          ? (json['constraint'] as List<dynamic>)
              .map<ElementDefinitionConstraint>(
                (v) => ElementDefinitionConstraint.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      mustSupport: (json['mustSupport'] != null || json['_mustSupport'] != null)
          ? FhirBoolean.fromJson({
              'value': json['mustSupport'],
              '_value': json['_mustSupport'],
            })
          : null,
      isModifier: (json['isModifier'] != null || json['_isModifier'] != null)
          ? FhirBoolean.fromJson({
              'value': json['isModifier'],
              '_value': json['_isModifier'],
            })
          : null,
      isModifierReason: (json['isModifierReason'] != null ||
              json['_isModifierReason'] != null)
          ? FhirString.fromJson({
              'value': json['isModifierReason'],
              '_value': json['_isModifierReason'],
            })
          : null,
      isSummary: (json['isSummary'] != null || json['_isSummary'] != null)
          ? FhirBoolean.fromJson({
              'value': json['isSummary'],
              '_value': json['_isSummary'],
            })
          : null,
      binding: json['binding'] != null
          ? ElementDefinitionBinding.fromJson(
              json['binding'] as Map<String, dynamic>,
            )
          : null,
      mapping: json['mapping'] != null
          ? (json['mapping'] as List<dynamic>)
              .map<ElementDefinitionMapping>(
                (v) => ElementDefinitionMapping.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ElementDefinition]
  /// from a [String] or [YamlMap] object
  factory ElementDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinition';

  /// [path]
  /// The path identifies the element and is expressed as a "."-separated
  /// list of ancestor elements, beginning with the name of the resource or
  /// extension.
  final FhirString path;

  /// [representation]
  /// Codes that define how this element is represented in instances, when
  /// the deviation varies from the normal case.
  final List<PropertyRepresentation>? representation;

  /// [sliceName]
  /// The name of this element definition slice, when slicing is working. The
  /// name must be a token with no dots or spaces. This is a unique name
  /// referring to a specific set of constraints applied to this element,
  /// used to provide a name to different slices of the same element.
  final FhirString? sliceName;

  /// [sliceIsConstraining]
  /// If true, indicates that this slice definition is constraining a slice
  /// definition with the same name in an inherited profile. If false, the
  /// slice is not overriding any slice in an inherited profile. If missing,
  /// the slice might or might not be overriding a slice in an inherited
  /// profile, depending on the sliceName.
  final FhirBoolean? sliceIsConstraining;

  /// [label]
  /// A single preferred label which is the text to display beside the
  /// element indicating its meaning or to use to prompt for the element in a
  /// user display or form.
  final FhirString? label;

  /// [code]
  /// A code that has the same meaning as the element in a particular
  /// terminology.
  final List<Coding>? code;

  /// [slicing]
  /// Indicates that the element is sliced into a set of alternative
  /// definitions (i.e. in a structure definition, there are multiple
  /// different constraints on a single element in the base resource).
  /// Slicing can be used in any resource that has cardinality ..* on the
  /// base resource, or any resource with a choice of types. The set of
  /// slices is any elements that come after this in the element sequence
  /// that have the same path, until a shorter path occurs (the shorter path
  /// terminates the set).
  final ElementDefinitionSlicing? slicing;

  /// [short]
  /// A concise description of what this element means (e.g. for use in
  /// autogenerated summaries).
  final FhirString? short;

  /// [definition]
  /// Provides a complete explanation of the meaning of the data element for
  /// human readability. For the case of elements derived from existing
  /// elements (e.g. constraints), the definition SHALL be consistent with
  /// the base definition, but convey the meaning of the element in the
  /// particular context of use of the resource. (Note: The text you are
  /// reading is specified in ElementDefinition.definition).
  final FhirMarkdown? definition;

  /// [comment]
  /// Explanatory notes and implementation guidance about the data element,
  /// including notes about how to use the data properly, exceptions to
  /// proper use, etc. (Note: The text you are reading is specified in
  /// ElementDefinition.comment).
  final FhirMarkdown? comment;

  /// [requirements]
  /// This element is for traceability of why the element was created and why
  /// the constraints exist as they do. This may be used to point to source
  /// materials or specifications that drove the structure of this element.
  final FhirMarkdown? requirements;

  /// [alias]
  /// Identifies additional names by which this element might also be known.
  final List<FhirString>? alias;

  /// [min]
  /// The minimum number of times this element SHALL appear in the instance.
  final FhirUnsignedInt? min;

  /// [max]
  /// The maximum number of times this element is permitted to appear in the
  /// instance.
  final FhirString? max;

  /// [base]
  /// Information about the base definition of the element, provided to make
  /// it unnecessary for tools to trace the deviation of the element through
  /// the derived and related profiles. When the element definition is not
  /// the original definition of an element - i.g. either in a constraint on
  /// another type, or for elements from a super type in a snap shot - then
  /// the information in provided in the element definition may be different
  /// to the base definition. On the original definition of the element, it
  /// will be same.
  final ElementDefinitionBase? base;

  /// [contentReference]
  /// Identifies an element defined elsewhere in the definition whose content
  /// rules should be applied to the current element. ContentReferences bring
  /// across all the rules that are in the ElementDefinition for the element,
  /// including definitions, cardinality constraints, bindings, invariants
  /// etc.
  final FhirUri? contentReference;

  /// [type]
  /// The data type or resource that the value of this element is permitted
  /// to be.
  final List<ElementDefinitionType>? type;

  /// [defaultValueXElementDefinition]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final DefaultValueXElementDefinition? defaultValueXElementDefinition;

  /// [meaningWhenMissing]
  /// The Implicit meaning that is to be understood when this element is
  /// missing (e.g. 'when this element is missing, the period is ongoing').
  final FhirMarkdown? meaningWhenMissing;

  /// [orderMeaning]
  /// If present, indicates that the order of the repeating element has
  /// meaning and describes what that meaning is. If absent, it means that
  /// the order of the element has no meaning.
  final FhirString? orderMeaning;

  /// [fixedXElementDefinition]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FixedXElementDefinition? fixedXElementDefinition;

  /// [patternXElementDefinition]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final PatternXElementDefinition? patternXElementDefinition;

  /// [example]
  /// A sample value for this element demonstrating the type of information
  /// that would typically be found in the element.
  final List<ElementDefinitionExample>? example;

  /// [minValueXElementDefinition]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final MinValueXElementDefinition? minValueXElementDefinition;

  /// [maxValueXElementDefinition]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final MaxValueXElementDefinition? maxValueXElementDefinition;

  /// [maxLength]
  /// Indicates the maximum length in characters that is permitted to be
  /// present in conformant instances and which is expected to be supported
  /// by conformant consumers that support the element.
  final FhirInteger? maxLength;

  /// [condition]
  /// A reference to an invariant that may make additional statements about
  /// the cardinality or value in the instance.
  final List<FhirId>? condition;

  /// [constraint]
  /// Formal constraints such as co-occurrence and other constraints that can
  /// be computationally evaluated within the context of the instance.
  final List<ElementDefinitionConstraint>? constraint;

  /// [mustSupport]
  /// If true, implementations that produce or consume resources SHALL
  /// provide "support" for the element in some meaningful way. If false, the
  /// element may be ignored and not supported. If false, whether to populate
  /// or use the data element in any way is at the discretion of the
  /// implementation.
  final FhirBoolean? mustSupport;

  /// [isModifier]
  /// If true, the value of this element affects the interpretation of the
  /// element or resource that contains it, and the value of the element
  /// cannot be ignored. Typically, this is used for status, negation and
  /// qualification codes. The effect of this is that the element cannot be
  /// ignored by systems: they SHALL either recognize the element and process
  /// it, and/or a pre-determination has been made that it is not relevant to
  /// their particular system.
  final FhirBoolean? isModifier;

  /// [isModifierReason]
  /// Explains how that element affects the interpretation of the resource or
  /// element that contains it.
  final FhirString? isModifierReason;

  /// [isSummary]
  /// Whether the element should be included if a client requests a search
  /// with the parameter _summary=true.
  final FhirBoolean? isSummary;

  /// [binding]
  /// Binds to a value set if this element is coded (code, Coding,
  /// CodeableConcept, Quantity), or the data types (string, uri).
  final ElementDefinitionBinding? binding;

  /// [mapping]
  /// Identifies a concept from an external specification that roughly
  /// corresponds to this element.
  final List<ElementDefinitionMapping>? mapping;
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

    addField('path', path);
    if (representation != null && representation!.isNotEmpty) {
      final fieldJson0 = representation!.map((e) => e.toJson()).toList();
      json['representation'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_representation'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    addField('sliceName', sliceName);
    addField('sliceIsConstraining', sliceIsConstraining);
    addField('label', label);
    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((e) => e.toJson()).toList();
    }

    if (slicing != null) {
      json['slicing'] = slicing!.toJson();
    }

    addField('short', short);
    addField('definition', definition);
    addField('comment', comment);
    addField('requirements', requirements);
    if (alias != null && alias!.isNotEmpty) {
      final fieldJson1 = alias!.map((e) => e.toJson()).toList();
      json['alias'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_alias'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    addField('min', min);
    addField('max', max);
    if (base != null) {
      json['base'] = base!.toJson();
    }

    addField('contentReference', contentReference);
    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map((e) => e.toJson()).toList();
    }

    addField('defaultValueXElementDefinition', defaultValueXElementDefinition);
    addField('meaningWhenMissing', meaningWhenMissing);
    addField('orderMeaning', orderMeaning);
    addField('fixedXElementDefinition', fixedXElementDefinition);
    addField('patternXElementDefinition', patternXElementDefinition);
    if (example != null && example!.isNotEmpty) {
      json['example'] = example!.map((e) => e.toJson()).toList();
    }

    addField('minValueXElementDefinition', minValueXElementDefinition);
    addField('maxValueXElementDefinition', maxValueXElementDefinition);
    addField('maxLength', maxLength);
    if (condition != null && condition!.isNotEmpty) {
      final fieldJson2 = condition!.map((e) => e.toJson()).toList();
      json['condition'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_condition'] = fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (constraint != null && constraint!.isNotEmpty) {
      json['constraint'] = constraint!.map((e) => e.toJson()).toList();
    }

    addField('mustSupport', mustSupport);
    addField('isModifier', isModifier);
    addField('isModifierReason', isModifierReason);
    addField('isSummary', isSummary);
    if (binding != null) {
      json['binding'] = binding!.toJson();
    }

    if (mapping != null && mapping!.isNotEmpty) {
      json['mapping'] = mapping!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ElementDefinition clone() => throw UnimplementedError();
  @override
  ElementDefinition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? path,
    List<PropertyRepresentation>? representation,
    FhirString? sliceName,
    FhirBoolean? sliceIsConstraining,
    FhirString? label,
    List<Coding>? code,
    ElementDefinitionSlicing? slicing,
    FhirString? short,
    FhirMarkdown? definition,
    FhirMarkdown? comment,
    FhirMarkdown? requirements,
    List<FhirString>? alias,
    FhirUnsignedInt? min,
    FhirString? max,
    ElementDefinitionBase? base,
    FhirUri? contentReference,
    List<ElementDefinitionType>? type,
    DefaultValueXElementDefinition? defaultValueXElementDefinition,
    FhirMarkdown? meaningWhenMissing,
    FhirString? orderMeaning,
    FixedXElementDefinition? fixedXElementDefinition,
    PatternXElementDefinition? patternXElementDefinition,
    List<ElementDefinitionExample>? example,
    MinValueXElementDefinition? minValueXElementDefinition,
    MaxValueXElementDefinition? maxValueXElementDefinition,
    FhirInteger? maxLength,
    List<FhirId>? condition,
    List<ElementDefinitionConstraint>? constraint,
    FhirBoolean? mustSupport,
    FhirBoolean? isModifier,
    FhirString? isModifierReason,
    FhirBoolean? isSummary,
    ElementDefinitionBinding? binding,
    List<ElementDefinitionMapping>? mapping,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      path: path ?? this.path,
      representation: representation ?? this.representation,
      sliceName: sliceName ?? this.sliceName,
      sliceIsConstraining: sliceIsConstraining ?? this.sliceIsConstraining,
      label: label ?? this.label,
      code: code ?? this.code,
      slicing: slicing ?? this.slicing,
      short: short ?? this.short,
      definition: definition ?? this.definition,
      comment: comment ?? this.comment,
      requirements: requirements ?? this.requirements,
      alias: alias ?? this.alias,
      min: min ?? this.min,
      max: max ?? this.max,
      base: base ?? this.base,
      contentReference: contentReference ?? this.contentReference,
      type: type ?? this.type,
      defaultValueXElementDefinition:
          defaultValueXElementDefinition ?? this.defaultValueXElementDefinition,
      meaningWhenMissing: meaningWhenMissing ?? this.meaningWhenMissing,
      orderMeaning: orderMeaning ?? this.orderMeaning,
      fixedXElementDefinition:
          fixedXElementDefinition ?? this.fixedXElementDefinition,
      patternXElementDefinition:
          patternXElementDefinition ?? this.patternXElementDefinition,
      example: example ?? this.example,
      minValueXElementDefinition:
          minValueXElementDefinition ?? this.minValueXElementDefinition,
      maxValueXElementDefinition:
          maxValueXElementDefinition ?? this.maxValueXElementDefinition,
      maxLength: maxLength ?? this.maxLength,
      condition: condition ?? this.condition,
      constraint: constraint ?? this.constraint,
      mustSupport: mustSupport ?? this.mustSupport,
      isModifier: isModifier ?? this.isModifier,
      isModifierReason: isModifierReason ?? this.isModifierReason,
      isSummary: isSummary ?? this.isSummary,
      binding: binding ?? this.binding,
      mapping: mapping ?? this.mapping,
    );
  }
}

/// [ElementDefinitionSlicing]
/// Indicates that the element is sliced into a set of alternative
/// definitions (i.e. in a structure definition, there are multiple
/// different constraints on a single element in the base resource).
/// Slicing can be used in any resource that has cardinality ..* on the
/// base resource, or any resource with a choice of types. The set of
/// slices is any elements that come after this in the element sequence
/// that have the same path, until a shorter path occurs (the shorter path
/// terminates the set).
class ElementDefinitionSlicing extends Element {
  /// Primary constructor for
  /// [ElementDefinitionSlicing]

  const ElementDefinitionSlicing({
    super.id,
    super.extension_,
    this.discriminator,
    this.description,
    this.ordered,
    required this.rules,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionSlicing.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinitionSlicing(
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
      discriminator: json['discriminator'] != null
          ? (json['discriminator'] as List<dynamic>)
              .map<ElementDefinitionDiscriminator>(
                (v) => ElementDefinitionDiscriminator.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      ordered: (json['ordered'] != null || json['_ordered'] != null)
          ? FhirBoolean.fromJson({
              'value': json['ordered'],
              '_value': json['_ordered'],
            })
          : null,
      rules: SlicingRules.fromJson({
        'value': json['rules'],
        '_value': json['_rules'],
      }),
    );
  }

  /// Deserialize [ElementDefinitionSlicing]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionSlicing.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionSlicing.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionSlicing.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionSlicing '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionSlicing]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionSlicing.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinitionSlicing.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionSlicing';

  /// [discriminator]
  /// Designates which child elements are used to discriminate between the
  /// slices when processing an instance. If one or more discriminators are
  /// provided, the value of the child elements in the instance data SHALL
  /// completely distinguish which slice the element in the resource matches
  /// based on the allowed values for those elements in each of the slices.
  final List<ElementDefinitionDiscriminator>? discriminator;

  /// [description]
  /// A human-readable text description of how the slicing works. If there is
  /// no discriminator, this is required to be present to provide whatever
  /// information is possible about how the slices can be differentiated.
  final FhirString? description;

  /// [ordered]
  /// If the matching elements have to occur in the same order as defined in
  /// the profile.
  final FhirBoolean? ordered;

  /// [rules]
  /// Whether additional slices are allowed or not. When the slices are
  /// ordered, profile authors can also say that additional slices are only
  /// allowed at the end.
  final SlicingRules rules;
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

    if (discriminator != null && discriminator!.isNotEmpty) {
      json['discriminator'] = discriminator!.map((e) => e.toJson()).toList();
    }

    addField('description', description);
    addField('ordered', ordered);
    addField('rules', rules);
    return json;
  }

  @override
  ElementDefinitionSlicing clone() => throw UnimplementedError();
  @override
  ElementDefinitionSlicing copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<ElementDefinitionDiscriminator>? discriminator,
    FhirString? description,
    FhirBoolean? ordered,
    SlicingRules? rules,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinitionSlicing(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      discriminator: discriminator ?? this.discriminator,
      description: description ?? this.description,
      ordered: ordered ?? this.ordered,
      rules: rules ?? this.rules,
    );
  }
}

/// [ElementDefinitionDiscriminator]
/// Designates which child elements are used to discriminate between the
/// slices when processing an instance. If one or more discriminators are
/// provided, the value of the child elements in the instance data SHALL
/// completely distinguish which slice the element in the resource matches
/// based on the allowed values for those elements in each of the slices.
class ElementDefinitionDiscriminator extends Element {
  /// Primary constructor for
  /// [ElementDefinitionDiscriminator]

  const ElementDefinitionDiscriminator({
    super.id,
    super.extension_,
    required this.type,
    required this.path,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionDiscriminator.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinitionDiscriminator(
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
      type: DiscriminatorType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      path: FhirString.fromJson({
        'value': json['path'],
        '_value': json['_path'],
      }),
    );
  }

  /// Deserialize [ElementDefinitionDiscriminator]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionDiscriminator.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionDiscriminator.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionDiscriminator.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionDiscriminator '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionDiscriminator]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionDiscriminator.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinitionDiscriminator.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionDiscriminator';

  /// [type]
  /// How the element value is interpreted when discrimination is evaluated.
  final DiscriminatorType type;

  /// [path]
  /// A FHIRPath expression, using [the simple subset of
  /// FHIRPath](fhirpath.html#simple), that is used to identify the element
  /// on which discrimination is based.
  final FhirString path;
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

    addField('type', type);
    addField('path', path);
    return json;
  }

  @override
  ElementDefinitionDiscriminator clone() => throw UnimplementedError();
  @override
  ElementDefinitionDiscriminator copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    DiscriminatorType? type,
    FhirString? path,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinitionDiscriminator(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      path: path ?? this.path,
    );
  }
}

/// [ElementDefinitionBase]
/// Information about the base definition of the element, provided to make
/// it unnecessary for tools to trace the deviation of the element through
/// the derived and related profiles. When the element definition is not
/// the original definition of an element - i.g. either in a constraint on
/// another type, or for elements from a super type in a snap shot - then
/// the information in provided in the element definition may be different
/// to the base definition. On the original definition of the element, it
/// will be same.
class ElementDefinitionBase extends Element {
  /// Primary constructor for
  /// [ElementDefinitionBase]

  const ElementDefinitionBase({
    super.id,
    super.extension_,
    required this.path,
    required this.min,
    required this.max,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionBase.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinitionBase(
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
      path: FhirString.fromJson({
        'value': json['path'],
        '_value': json['_path'],
      }),
      min: FhirUnsignedInt.fromJson({
        'value': json['min'],
        '_value': json['_min'],
      }),
      max: FhirString.fromJson({
        'value': json['max'],
        '_value': json['_max'],
      }),
    );
  }

  /// Deserialize [ElementDefinitionBase]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionBase.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionBase.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionBase.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionBase '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionBase]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionBase.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinitionBase.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionBase';

  /// [path]
  /// The Path that identifies the base element - this matches the
  /// ElementDefinition.path for that element. Across FHIR, there is only one
  /// base definition of any element - that is, an element definition on a
  /// [StructureDefinition](structuredefinition.html#) without a
  /// StructureDefinition.base.
  final FhirString path;

  /// [min]
  /// Minimum cardinality of the base element identified by the path.
  final FhirUnsignedInt min;

  /// [max]
  /// Maximum cardinality of the base element identified by the path.
  final FhirString max;
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

    addField('path', path);
    addField('min', min);
    addField('max', max);
    return json;
  }

  @override
  ElementDefinitionBase clone() => throw UnimplementedError();
  @override
  ElementDefinitionBase copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? path,
    FhirUnsignedInt? min,
    FhirString? max,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinitionBase(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      path: path ?? this.path,
      min: min ?? this.min,
      max: max ?? this.max,
    );
  }
}

/// [ElementDefinitionType]
/// The data type or resource that the value of this element is permitted
/// to be.
class ElementDefinitionType extends Element {
  /// Primary constructor for
  /// [ElementDefinitionType]

  const ElementDefinitionType({
    super.id,
    super.extension_,
    required this.code,
    this.profile,
    this.targetProfile,
    this.aggregation,
    this.versioning,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionType.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinitionType(
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
      code: FhirUri.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      profile: parsePrimitiveList<FhirCanonical>(
        json['profile'] as List<dynamic>?,
        json['_profile'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
      targetProfile: parsePrimitiveList<FhirCanonical>(
        json['targetProfile'] as List<dynamic>?,
        json['_targetProfile'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
      aggregation: parsePrimitiveList<AggregationMode>(
        json['aggregation'] as List<dynamic>?,
        json['_aggregation'] as List<dynamic>?,
        fromJson: AggregationMode.fromJson,
      ),
      versioning: (json['versioning'] != null || json['_versioning'] != null)
          ? ReferenceVersionRules.fromJson({
              'value': json['versioning'],
              '_value': json['_versioning'],
            })
          : null,
    );
  }

  /// Deserialize [ElementDefinitionType]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionType.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionType.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionType.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionType '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionType]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionType.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinitionType.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionType';

  /// [code]
  /// URL of Data type or Resource that is a(or the) type used for this
  /// element. References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
  /// allowed in logical models.
  final FhirUri code;

  /// [profile]
  /// Identifies a profile structure or implementation Guide that applies to
  /// the datatype this element refers to. If any profiles are specified,
  /// then the content must conform to at least one of them. The URL can be a
  /// local reference - to a contained StructureDefinition, or a reference to
  /// another StructureDefinition or Implementation Guide by a canonical URL.
  /// When an implementation guide is specified, the type SHALL conform to at
  /// least one profile defined in the implementation guide.
  final List<FhirCanonical>? profile;

  /// [targetProfile]
  /// Used when the type is "Reference" or "canonical", and identifies a
  /// profile structure or implementation Guide that applies to the target of
  /// the reference this element refers to. If any profiles are specified,
  /// then the content must conform to at least one of them. The URL can be a
  /// local reference - to a contained StructureDefinition, or a reference to
  /// another StructureDefinition or Implementation Guide by a canonical URL.
  /// When an implementation guide is specified, the target resource SHALL
  /// conform to at least one profile defined in the implementation guide.
  final List<FhirCanonical>? targetProfile;

  /// [aggregation]
  /// If the type is a reference to another resource, how the resource is or
  /// can be aggregated - is it a contained resource, or a reference, and if
  /// the context is a bundle, is it included in the bundle.
  final List<AggregationMode>? aggregation;

  /// [versioning]
  /// Whether this reference needs to be version specific or version
  /// independent, or whether either can be used.
  final ReferenceVersionRules? versioning;
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

    addField('code', code);
    if (profile != null && profile!.isNotEmpty) {
      final fieldJson0 = profile!.map((e) => e.toJson()).toList();
      json['profile'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_profile'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (targetProfile != null && targetProfile!.isNotEmpty) {
      final fieldJson1 = targetProfile!.map((e) => e.toJson()).toList();
      json['targetProfile'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_targetProfile'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (aggregation != null && aggregation!.isNotEmpty) {
      final fieldJson2 = aggregation!.map((e) => e.toJson()).toList();
      json['aggregation'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_aggregation'] = fieldJson2.map((e) => e['_value']).toList();
      }
    }

    addField('versioning', versioning);
    return json;
  }

  @override
  ElementDefinitionType clone() => throw UnimplementedError();
  @override
  ElementDefinitionType copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirUri? code,
    List<FhirCanonical>? profile,
    List<FhirCanonical>? targetProfile,
    List<AggregationMode>? aggregation,
    ReferenceVersionRules? versioning,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinitionType(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      code: code ?? this.code,
      profile: profile ?? this.profile,
      targetProfile: targetProfile ?? this.targetProfile,
      aggregation: aggregation ?? this.aggregation,
      versioning: versioning ?? this.versioning,
    );
  }
}

/// [ElementDefinitionExample]
/// A sample value for this element demonstrating the type of information
/// that would typically be found in the element.
class ElementDefinitionExample extends Element {
  /// Primary constructor for
  /// [ElementDefinitionExample]

  const ElementDefinitionExample({
    super.id,
    super.extension_,
    required this.label,
    required this.valueXElementDefinitionExample,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinitionExample(
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
      label: FhirString.fromJson({
        'value': json['label'],
        '_value': json['_label'],
      }),
      valueXElementDefinitionExample: json['valueBase64Binary'] != null ||
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
                                                                                                                                                                                                              : Dosage.fromJson(
                                                                                                                                                                                                                  json['valueDosage'] as Map<String, dynamic>,
                                                                                                                                                                                                                ),
    );
  }

  /// Deserialize [ElementDefinitionExample]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionExample.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionExample.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionExample.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionExample '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionExample]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionExample.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinitionExample.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionExample';

  /// [label]
  /// Describes the purpose of this example amoung the set of examples.
  final FhirString label;

  /// [valueXElementDefinitionExample]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final ValueXElementDefinitionExample valueXElementDefinitionExample;
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

    addField('label', label);
    addField('valueXElementDefinitionExample', valueXElementDefinitionExample);
    return json;
  }

  @override
  ElementDefinitionExample clone() => throw UnimplementedError();
  @override
  ElementDefinitionExample copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? label,
    ValueXElementDefinitionExample? valueXElementDefinitionExample,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinitionExample(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      label: label ?? this.label,
      valueXElementDefinitionExample:
          valueXElementDefinitionExample ?? this.valueXElementDefinitionExample,
    );
  }
}

/// [ElementDefinitionConstraint]
/// Formal constraints such as co-occurrence and other constraints that can
/// be computationally evaluated within the context of the instance.
class ElementDefinitionConstraint extends Element {
  /// Primary constructor for
  /// [ElementDefinitionConstraint]

  const ElementDefinitionConstraint({
    super.id,
    super.extension_,
    required this.key,
    this.requirements,
    required this.severity,
    required this.human,
    this.expression,
    this.xpath,
    this.source,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionConstraint.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinitionConstraint(
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
      key: FhirId.fromJson({
        'value': json['key'],
        '_value': json['_key'],
      }),
      requirements:
          (json['requirements'] != null || json['_requirements'] != null)
              ? FhirString.fromJson({
                  'value': json['requirements'],
                  '_value': json['_requirements'],
                })
              : null,
      severity: ConstraintSeverity.fromJson({
        'value': json['severity'],
        '_value': json['_severity'],
      }),
      human: FhirString.fromJson({
        'value': json['human'],
        '_value': json['_human'],
      }),
      expression: (json['expression'] != null || json['_expression'] != null)
          ? FhirString.fromJson({
              'value': json['expression'],
              '_value': json['_expression'],
            })
          : null,
      xpath: (json['xpath'] != null || json['_xpath'] != null)
          ? FhirString.fromJson({
              'value': json['xpath'],
              '_value': json['_xpath'],
            })
          : null,
      source: (json['source'] != null || json['_source'] != null)
          ? FhirCanonical.fromJson({
              'value': json['source'],
              '_value': json['_source'],
            })
          : null,
    );
  }

  /// Deserialize [ElementDefinitionConstraint]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionConstraint.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionConstraint.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionConstraint.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionConstraint '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionConstraint]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionConstraint.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinitionConstraint.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionConstraint';

  /// [key]
  /// Allows identification of which elements have their cardinalities
  /// impacted by the constraint. Will not be referenced for constraints that
  /// do not affect cardinality.
  final FhirId key;

  /// [requirements]
  /// Description of why this constraint is necessary or appropriate.
  final FhirString? requirements;

  /// [severity]
  /// Identifies the impact constraint violation has on the conformance of
  /// the instance.
  final ConstraintSeverity severity;

  /// [human]
  /// Text that can be used to describe the constraint in messages
  /// identifying that the constraint has been violated.
  final FhirString human;

  /// [expression]
  /// A [FHIRPath](fhirpath.html) expression of constraint that can be
  /// executed to see if this constraint is met.
  final FhirString? expression;

  /// [xpath]
  /// An XPath expression of constraint that can be executed to see if this
  /// constraint is met.
  final FhirString? xpath;

  /// [source]
  /// A reference to the original source of the constraint, for traceability
  /// purposes.
  final FhirCanonical? source;
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

    addField('key', key);
    addField('requirements', requirements);
    addField('severity', severity);
    addField('human', human);
    addField('expression', expression);
    addField('xpath', xpath);
    addField('source', source);
    return json;
  }

  @override
  ElementDefinitionConstraint clone() => throw UnimplementedError();
  @override
  ElementDefinitionConstraint copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirId? key,
    FhirString? requirements,
    ConstraintSeverity? severity,
    FhirString? human,
    FhirString? expression,
    FhirString? xpath,
    FhirCanonical? source,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinitionConstraint(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      key: key ?? this.key,
      requirements: requirements ?? this.requirements,
      severity: severity ?? this.severity,
      human: human ?? this.human,
      expression: expression ?? this.expression,
      xpath: xpath ?? this.xpath,
      source: source ?? this.source,
    );
  }
}

/// [ElementDefinitionBinding]
/// Binds to a value set if this element is coded (code, Coding,
/// CodeableConcept, Quantity), or the data types (string, uri).
class ElementDefinitionBinding extends Element {
  /// Primary constructor for
  /// [ElementDefinitionBinding]

  const ElementDefinitionBinding({
    super.id,
    super.extension_,
    required this.strength,
    this.description,
    this.valueSet,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionBinding.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinitionBinding(
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
      strength: BindingStrength.fromJson({
        'value': json['strength'],
        '_value': json['_strength'],
      }),
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      valueSet: (json['valueSet'] != null || json['_valueSet'] != null)
          ? FhirCanonical.fromJson({
              'value': json['valueSet'],
              '_value': json['_valueSet'],
            })
          : null,
    );
  }

  /// Deserialize [ElementDefinitionBinding]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionBinding.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionBinding.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionBinding.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionBinding '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionBinding]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionBinding.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinitionBinding.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionBinding';

  /// [strength]
  /// Indicates the degree of conformance expectations associated with this
  /// binding - that is, the degree to which the provided value set must be
  /// adhered to in the instances.
  final BindingStrength strength;

  /// [description]
  /// Describes the intended use of this particular set of codes.
  final FhirString? description;

  /// [valueSet]
  /// Refers to the value set that identifies the set of codes the binding
  /// refers to.
  final FhirCanonical? valueSet;
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

    addField('strength', strength);
    addField('description', description);
    addField('valueSet', valueSet);
    return json;
  }

  @override
  ElementDefinitionBinding clone() => throw UnimplementedError();
  @override
  ElementDefinitionBinding copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    BindingStrength? strength,
    FhirString? description,
    FhirCanonical? valueSet,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinitionBinding(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      strength: strength ?? this.strength,
      description: description ?? this.description,
      valueSet: valueSet ?? this.valueSet,
    );
  }
}

/// [ElementDefinitionMapping]
/// Identifies a concept from an external specification that roughly
/// corresponds to this element.
class ElementDefinitionMapping extends Element {
  /// Primary constructor for
  /// [ElementDefinitionMapping]

  const ElementDefinitionMapping({
    super.id,
    super.extension_,
    required this.identity,
    this.language,
    required this.map,
    this.comment,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionMapping.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElementDefinitionMapping(
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
      identity: FhirId.fromJson({
        'value': json['identity'],
        '_value': json['_identity'],
      }),
      language: (json['language'] != null || json['_language'] != null)
          ? FhirCode.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      map: FhirString.fromJson({
        'value': json['map'],
        '_value': json['_map'],
      }),
      comment: (json['comment'] != null || json['_comment'] != null)
          ? FhirString.fromJson({
              'value': json['comment'],
              '_value': json['_comment'],
            })
          : null,
    );
  }

  /// Deserialize [ElementDefinitionMapping]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionMapping.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionMapping.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionMapping.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionMapping '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionMapping]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionMapping.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinitionMapping.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionMapping';

  /// [identity]
  /// An internal reference to the definition of a mapping.
  final FhirId identity;

  /// [language]
  /// Identifies the computable language in which mapping.map is expressed.
  final FhirCode? language;

  /// [map]
  /// Expresses what part of the target specification corresponds to this
  /// element.
  final FhirString map;

  /// [comment]
  /// Comments that provide information about the mapping or its use.
  final FhirString? comment;
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

    addField('identity', identity);
    addField('language', language);
    addField('map', map);
    addField('comment', comment);
    return json;
  }

  @override
  ElementDefinitionMapping clone() => throw UnimplementedError();
  @override
  ElementDefinitionMapping copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirId? identity,
    FhirCode? language,
    FhirString? map,
    FhirString? comment,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementDefinitionMapping(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      identity: identity ?? this.identity,
      language: language ?? this.language,
      map: map ?? this.map,
      comment: comment ?? this.comment,
    );
  }
}
