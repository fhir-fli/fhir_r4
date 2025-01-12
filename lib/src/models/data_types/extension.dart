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
    super.objectPath = 'FhirExtension',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirExtension.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'FhirExtension';
    return FhirExtension(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirString>(
        json,
        'url',
        FhirString.fromJson,
        '$objectPath.url',
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXExtension>(
        json,
        {
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
        },
        objectPath,
      ),
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
    if (json is Map<String, dynamic>) {
      return FhirExtension.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Extension';

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

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'url',
      'valueX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'url':
        fields.add(url);
      case 'value':
        fields.add(valueX!);
      case 'valueX':
        fields.add(valueX!);
      case 'valueBase64Binary':
        if (valueX is FhirBase64Binary) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX!);
        }
      case 'valueCanonical':
        if (valueX is FhirCanonical) {
          fields.add(valueX!);
        }
      case 'valueCode':
        if (valueX is FhirCode) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDate) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTime) {
          fields.add(valueX!);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimal) {
          fields.add(valueX!);
        }
      case 'valueId':
        if (valueX is FhirId) {
          fields.add(valueX!);
        }
      case 'valueInstant':
        if (valueX is FhirInstant) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirInteger) {
          fields.add(valueX!);
        }
      case 'valueMarkdown':
        if (valueX is FhirMarkdown) {
          fields.add(valueX!);
        }
      case 'valueOid':
        if (valueX is FhirOid) {
          fields.add(valueX!);
        }
      case 'valuePositiveInt':
        if (valueX is FhirPositiveInt) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX!);
        }
      case 'valueTime':
        if (valueX is FhirTime) {
          fields.add(valueX!);
        }
      case 'valueUnsignedInt':
        if (valueX is FhirUnsignedInt) {
          fields.add(valueX!);
        }
      case 'valueUri':
        if (valueX is FhirUri) {
          fields.add(valueX!);
        }
      case 'valueUrl':
        if (valueX is FhirUrl) {
          fields.add(valueX!);
        }
      case 'valueUuid':
        if (valueX is FhirUuid) {
          fields.add(valueX!);
        }
      case 'valueAddress':
        if (valueX is Address) {
          fields.add(valueX!);
        }
      case 'valueAge':
        if (valueX is Age) {
          fields.add(valueX!);
        }
      case 'valueAnnotation':
        if (valueX is Annotation) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is Attachment) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX!);
        }
      case 'valueCodeableReference':
        if (valueX is CodeableReference) {
          fields.add(valueX!);
        }
      case 'valueCoding':
        if (valueX is Coding) {
          fields.add(valueX!);
        }
      case 'valueContactPoint':
        if (valueX is ContactPoint) {
          fields.add(valueX!);
        }
      case 'valueCount':
        if (valueX is Count) {
          fields.add(valueX!);
        }
      case 'valueDistance':
        if (valueX is Distance) {
          fields.add(valueX!);
        }
      case 'valueDuration':
        if (valueX is FhirDuration) {
          fields.add(valueX!);
        }
      case 'valueHumanName':
        if (valueX is HumanName) {
          fields.add(valueX!);
        }
      case 'valueIdentifier':
        if (valueX is Identifier) {
          fields.add(valueX!);
        }
      case 'valueMoney':
        if (valueX is Money) {
          fields.add(valueX!);
        }
      case 'valuePeriod':
        if (valueX is Period) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX!);
        }
      case 'valueRatio':
        if (valueX is Ratio) {
          fields.add(valueX!);
        }
      case 'valueRatioRange':
        if (valueX is RatioRange) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is Reference) {
          fields.add(valueX!);
        }
      case 'valueSampledData':
        if (valueX is SampledData) {
          fields.add(valueX!);
        }
      case 'valueSignature':
        if (valueX is Signature) {
          fields.add(valueX!);
        }
      case 'valueTiming':
        if (valueX is Timing) {
          fields.add(valueX!);
        }
      case 'valueContactDetail':
        if (valueX is ContactDetail) {
          fields.add(valueX!);
        }
      case 'valueContributor':
        if (valueX is Contributor) {
          fields.add(valueX!);
        }
      case 'valueDataRequirement':
        if (valueX is DataRequirement) {
          fields.add(valueX!);
        }
      case 'valueExpression':
        if (valueX is FhirExpression) {
          fields.add(valueX!);
        }
      case 'valueParameterDefinition':
        if (valueX is ParameterDefinition) {
          fields.add(valueX!);
        }
      case 'valueRelatedArtifact':
        if (valueX is RelatedArtifact) {
          fields.add(valueX!);
        }
      case 'valueTriggerDefinition':
        if (valueX is TriggerDefinition) {
          fields.add(valueX!);
        }
      case 'valueUsageContext':
        if (valueX is UsageContext) {
          fields.add(valueX!);
        }
      case 'valueDosage':
        if (valueX is Dosage) {
          fields.add(valueX!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirExtension clone() => throw UnimplementedError();
  @override
  FhirExtension copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? url,
    ValueXExtension? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return FhirExtension(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXExtension? ??
          this.valueX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! FhirExtension) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(url, o.url)) {
      return false;
    }
    if (!equalsDeepWithNull(valueX, o.valueX)) {
      return false;
    }
    return true;
  }
}
