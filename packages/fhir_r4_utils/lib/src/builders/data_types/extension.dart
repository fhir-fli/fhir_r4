import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show yamlMapToJson, yamlToJson, StringExtensionForFHIR, FhirExtension;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [FhirExtensionBuilder]
/// Optional Extension Element - found in all resources.
class FhirExtensionBuilder extends DataTypeBuilder {
  /// Primary constructor for
  /// [FhirExtensionBuilder]

  FhirExtensionBuilder({
    super.id,
    super.extension_,
    this.url,
    this.valueX,
    super.disallowExtensions,
    super.objectPath = 'FhirExtensionBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory FhirExtensionBuilder.empty() => FhirExtensionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirExtensionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'FhirExtension';
    return FhirExtensionBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'url',
        FhirStringBuilder.fromJson,
        '$objectPath.url',
      ),
      valueX: JsonParser.parsePolymorphic<ValueXExtensionBuilder>(
        json,
        {
          'valueBase64Binary': FhirBase64BinaryBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueCanonical': FhirCanonicalBuilder.fromJson,
          'valueCode': FhirCodeBuilder.fromJson,
          'valueDate': FhirDateBuilder.fromJson,
          'valueDateTime': FhirDateTimeBuilder.fromJson,
          'valueDecimal': FhirDecimalBuilder.fromJson,
          'valueId': FhirIdBuilder.fromJson,
          'valueInstant': FhirInstantBuilder.fromJson,
          'valueInteger': FhirIntegerBuilder.fromJson,
          'valueMarkdown': FhirMarkdownBuilder.fromJson,
          'valueOid': FhirOidBuilder.fromJson,
          'valuePositiveInt': FhirPositiveIntBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueTime': FhirTimeBuilder.fromJson,
          'valueUnsignedInt': FhirUnsignedIntBuilder.fromJson,
          'valueUri': FhirUriBuilder.fromJson,
          'valueUrl': FhirUrlBuilder.fromJson,
          'valueUuid': FhirUuidBuilder.fromJson,
          'valueAddress': AddressBuilder.fromJson,
          'valueAge': AgeBuilder.fromJson,
          'valueAnnotation': AnnotationBuilder.fromJson,
          'valueAttachment': AttachmentBuilder.fromJson,
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueCodeableReference': CodeableReferenceBuilder.fromJson,
          'valueCoding': CodingBuilder.fromJson,
          'valueContactPoint': ContactPointBuilder.fromJson,
          'valueCount': CountBuilder.fromJson,
          'valueDistance': DistanceBuilder.fromJson,
          'valueDuration': FhirDurationBuilder.fromJson,
          'valueHumanName': HumanNameBuilder.fromJson,
          'valueIdentifier': IdentifierBuilder.fromJson,
          'valueMoney': MoneyBuilder.fromJson,
          'valuePeriod': PeriodBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
          'valueRatio': RatioBuilder.fromJson,
          'valueRatioRange': RatioRangeBuilder.fromJson,
          'valueReference': ReferenceBuilder.fromJson,
          'valueSampledData': SampledDataBuilder.fromJson,
          'valueSignature': SignatureBuilder.fromJson,
          'valueTiming': TimingBuilder.fromJson,
          'valueContactDetail': ContactDetailBuilder.fromJson,
          'valueContributor': ContributorBuilder.fromJson,
          'valueDataRequirement': DataRequirementBuilder.fromJson,
          'valueExpression': FhirExpressionBuilder.fromJson,
          'valueParameterDefinition': ParameterDefinitionBuilder.fromJson,
          'valueRelatedArtifact': RelatedArtifactBuilder.fromJson,
          'valueTriggerDefinition': TriggerDefinitionBuilder.fromJson,
          'valueUsageContext': UsageContextBuilder.fromJson,
          'valueDosage': DosageBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [FhirExtensionBuilder]
  /// from a [String] or [YamlMap] object
  factory FhirExtensionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FhirExtensionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FhirExtensionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FhirExtensionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FhirExtensionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FhirExtensionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return FhirExtensionBuilder.fromJson(json);
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
  FhirStringBuilder? url;

  /// [valueX]
  /// Value of extension - must be one of a constrained set of the data types
  /// (see [Extensibility](extensibility.html) for a list).
  ValueXExtensionBuilder? valueX;

  /// Getter for [valueBase64Binary] as a FhirBase64BinaryBuilder
  FhirBase64BinaryBuilder? get valueBase64Binary =>
      valueX?.isAs<FhirBase64BinaryBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get valueCanonical =>
      valueX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [valueCode] as a FhirCodeBuilder
  FhirCodeBuilder? get valueCode => valueX?.isAs<FhirCodeBuilder>();

  /// Getter for [valueDate] as a FhirDateBuilder
  FhirDateBuilder? get valueDate => valueX?.isAs<FhirDateBuilder>();

  /// Getter for [valueDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get valueDateTime => valueX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [valueDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get valueDecimal => valueX?.isAs<FhirDecimalBuilder>();

  /// Getter for [valueId] as a FhirIdBuilder
  FhirIdBuilder? get valueId => valueX?.isAs<FhirIdBuilder>();

  /// Getter for [valueInstant] as a FhirInstantBuilder
  FhirInstantBuilder? get valueInstant => valueX?.isAs<FhirInstantBuilder>();

  /// Getter for [valueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get valueInteger => valueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [valueMarkdown] as a FhirMarkdownBuilder
  FhirMarkdownBuilder? get valueMarkdown => valueX?.isAs<FhirMarkdownBuilder>();

  /// Getter for [valueOid] as a FhirOidBuilder
  FhirOidBuilder? get valueOid => valueX?.isAs<FhirOidBuilder>();

  /// Getter for [valuePositiveInt] as a FhirPositiveIntBuilder
  FhirPositiveIntBuilder? get valuePositiveInt =>
      valueX?.isAs<FhirPositiveIntBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueTime] as a FhirTimeBuilder
  FhirTimeBuilder? get valueTime => valueX?.isAs<FhirTimeBuilder>();

  /// Getter for [valueUnsignedInt] as a FhirUnsignedIntBuilder
  FhirUnsignedIntBuilder? get valueUnsignedInt =>
      valueX?.isAs<FhirUnsignedIntBuilder>();

  /// Getter for [valueUri] as a FhirUriBuilder
  FhirUriBuilder? get valueUri => valueX?.isAs<FhirUriBuilder>();

  /// Getter for [valueUrl] as a FhirUrlBuilder
  FhirUrlBuilder? get valueUrl => valueX?.isAs<FhirUrlBuilder>();

  /// Getter for [valueUuid] as a FhirUuidBuilder
  FhirUuidBuilder? get valueUuid => valueX?.isAs<FhirUuidBuilder>();

  /// Getter for [valueAddress] as a AddressBuilder
  AddressBuilder? get valueAddress => valueX?.isAs<AddressBuilder>();

  /// Getter for [valueAge] as a AgeBuilder
  AgeBuilder? get valueAge => valueX?.isAs<AgeBuilder>();

  /// Getter for [valueAnnotation] as a AnnotationBuilder
  AnnotationBuilder? get valueAnnotation => valueX?.isAs<AnnotationBuilder>();

  /// Getter for [valueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get valueAttachment => valueX?.isAs<AttachmentBuilder>();

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueCodeableReference] as a CodeableReferenceBuilder
  CodeableReferenceBuilder? get valueCodeableReference =>
      valueX?.isAs<CodeableReferenceBuilder>();

  /// Getter for [valueCoding] as a CodingBuilder
  CodingBuilder? get valueCoding => valueX?.isAs<CodingBuilder>();

  /// Getter for [valueContactPoint] as a ContactPointBuilder
  ContactPointBuilder? get valueContactPoint =>
      valueX?.isAs<ContactPointBuilder>();

  /// Getter for [valueCount] as a CountBuilder
  CountBuilder? get valueCount => valueX?.isAs<CountBuilder>();

  /// Getter for [valueDistance] as a DistanceBuilder
  DistanceBuilder? get valueDistance => valueX?.isAs<DistanceBuilder>();

  /// Getter for [valueDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get valueDuration => valueX?.isAs<FhirDurationBuilder>();

  /// Getter for [valueHumanName] as a HumanNameBuilder
  HumanNameBuilder? get valueHumanName => valueX?.isAs<HumanNameBuilder>();

  /// Getter for [valueIdentifier] as a IdentifierBuilder
  IdentifierBuilder? get valueIdentifier => valueX?.isAs<IdentifierBuilder>();

  /// Getter for [valueMoney] as a MoneyBuilder
  MoneyBuilder? get valueMoney => valueX?.isAs<MoneyBuilder>();

  /// Getter for [valuePeriod] as a PeriodBuilder
  PeriodBuilder? get valuePeriod => valueX?.isAs<PeriodBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Getter for [valueRatio] as a RatioBuilder
  RatioBuilder? get valueRatio => valueX?.isAs<RatioBuilder>();

  /// Getter for [valueRatioRange] as a RatioRangeBuilder
  RatioRangeBuilder? get valueRatioRange => valueX?.isAs<RatioRangeBuilder>();

  /// Getter for [valueReference] as a ReferenceBuilder
  ReferenceBuilder? get valueReference => valueX?.isAs<ReferenceBuilder>();

  /// Getter for [valueSampledData] as a SampledDataBuilder
  SampledDataBuilder? get valueSampledData =>
      valueX?.isAs<SampledDataBuilder>();

  /// Getter for [valueSignature] as a SignatureBuilder
  SignatureBuilder? get valueSignature => valueX?.isAs<SignatureBuilder>();

  /// Getter for [valueTiming] as a TimingBuilder
  TimingBuilder? get valueTiming => valueX?.isAs<TimingBuilder>();

  /// Getter for [valueContactDetail] as a ContactDetailBuilder
  ContactDetailBuilder? get valueContactDetail =>
      valueX?.isAs<ContactDetailBuilder>();

  /// Getter for [valueContributor] as a ContributorBuilder
  ContributorBuilder? get valueContributor =>
      valueX?.isAs<ContributorBuilder>();

  /// Getter for [valueDataRequirement] as a DataRequirementBuilder
  DataRequirementBuilder? get valueDataRequirement =>
      valueX?.isAs<DataRequirementBuilder>();

  /// Getter for [valueExpression] as a FhirExpressionBuilder
  FhirExpressionBuilder? get valueExpression =>
      valueX?.isAs<FhirExpressionBuilder>();

  /// Getter for [valueParameterDefinition] as a ParameterDefinitionBuilder
  ParameterDefinitionBuilder? get valueParameterDefinition =>
      valueX?.isAs<ParameterDefinitionBuilder>();

  /// Getter for [valueRelatedArtifact] as a RelatedArtifactBuilder
  RelatedArtifactBuilder? get valueRelatedArtifact =>
      valueX?.isAs<RelatedArtifactBuilder>();

  /// Getter for [valueTriggerDefinition] as a TriggerDefinitionBuilder
  TriggerDefinitionBuilder? get valueTriggerDefinition =>
      valueX?.isAs<TriggerDefinitionBuilder>();

  /// Getter for [valueUsageContext] as a UsageContextBuilder
  UsageContextBuilder? get valueUsageContext =>
      valueX?.isAs<UsageContextBuilder>();

  /// Getter for [valueDosage] as a DosageBuilder
  DosageBuilder? get valueDosage => valueX?.isAs<DosageBuilder>();

  /// Converts a FhirExtensionBuilder to [FhirExtension]
  FhirExtension build() => FhirExtension.fromJson(toJson());

  /// Converts a [FhirExtensionBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (url != null) {
          fields.add(url!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueBase64Binary':
        if (valueX is FhirBase64BinaryBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueCanonical':
        if (valueX is FhirCanonicalBuilder) {
          fields.add(valueX!);
        }
      case 'valueCode':
        if (valueX is FhirCodeBuilder) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDateBuilder) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimalBuilder) {
          fields.add(valueX!);
        }
      case 'valueId':
        if (valueX is FhirIdBuilder) {
          fields.add(valueX!);
        }
      case 'valueInstant':
        if (valueX is FhirInstantBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirIntegerBuilder) {
          fields.add(valueX!);
        }
      case 'valueMarkdown':
        if (valueX is FhirMarkdownBuilder) {
          fields.add(valueX!);
        }
      case 'valueOid':
        if (valueX is FhirOidBuilder) {
          fields.add(valueX!);
        }
      case 'valuePositiveInt':
        if (valueX is FhirPositiveIntBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueTime':
        if (valueX is FhirTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueUnsignedInt':
        if (valueX is FhirUnsignedIntBuilder) {
          fields.add(valueX!);
        }
      case 'valueUri':
        if (valueX is FhirUriBuilder) {
          fields.add(valueX!);
        }
      case 'valueUrl':
        if (valueX is FhirUrlBuilder) {
          fields.add(valueX!);
        }
      case 'valueUuid':
        if (valueX is FhirUuidBuilder) {
          fields.add(valueX!);
        }
      case 'valueAddress':
        if (valueX is AddressBuilder) {
          fields.add(valueX!);
        }
      case 'valueAge':
        if (valueX is AgeBuilder) {
          fields.add(valueX!);
        }
      case 'valueAnnotation':
        if (valueX is AnnotationBuilder) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is AttachmentBuilder) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueCodeableReference':
        if (valueX is CodeableReferenceBuilder) {
          fields.add(valueX!);
        }
      case 'valueCoding':
        if (valueX is CodingBuilder) {
          fields.add(valueX!);
        }
      case 'valueContactPoint':
        if (valueX is ContactPointBuilder) {
          fields.add(valueX!);
        }
      case 'valueCount':
        if (valueX is CountBuilder) {
          fields.add(valueX!);
        }
      case 'valueDistance':
        if (valueX is DistanceBuilder) {
          fields.add(valueX!);
        }
      case 'valueDuration':
        if (valueX is FhirDurationBuilder) {
          fields.add(valueX!);
        }
      case 'valueHumanName':
        if (valueX is HumanNameBuilder) {
          fields.add(valueX!);
        }
      case 'valueIdentifier':
        if (valueX is IdentifierBuilder) {
          fields.add(valueX!);
        }
      case 'valueMoney':
        if (valueX is MoneyBuilder) {
          fields.add(valueX!);
        }
      case 'valuePeriod':
        if (valueX is PeriodBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is RangeBuilder) {
          fields.add(valueX!);
        }
      case 'valueRatio':
        if (valueX is RatioBuilder) {
          fields.add(valueX!);
        }
      case 'valueRatioRange':
        if (valueX is RatioRangeBuilder) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is ReferenceBuilder) {
          fields.add(valueX!);
        }
      case 'valueSampledData':
        if (valueX is SampledDataBuilder) {
          fields.add(valueX!);
        }
      case 'valueSignature':
        if (valueX is SignatureBuilder) {
          fields.add(valueX!);
        }
      case 'valueTiming':
        if (valueX is TimingBuilder) {
          fields.add(valueX!);
        }
      case 'valueContactDetail':
        if (valueX is ContactDetailBuilder) {
          fields.add(valueX!);
        }
      case 'valueContributor':
        if (valueX is ContributorBuilder) {
          fields.add(valueX!);
        }
      case 'valueDataRequirement':
        if (valueX is DataRequirementBuilder) {
          fields.add(valueX!);
        }
      case 'valueExpression':
        if (valueX is FhirExpressionBuilder) {
          fields.add(valueX!);
        }
      case 'valueParameterDefinition':
        if (valueX is ParameterDefinitionBuilder) {
          fields.add(valueX!);
        }
      case 'valueRelatedArtifact':
        if (valueX is RelatedArtifactBuilder) {
          fields.add(valueX!);
        }
      case 'valueTriggerDefinition':
        if (valueX is TriggerDefinitionBuilder) {
          fields.add(valueX!);
        }
      case 'valueUsageContext':
        if (valueX is UsageContextBuilder) {
          fields.add(valueX!);
        }
      case 'valueDosage':
        if (valueX is DosageBuilder) {
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirStringBuilder) {
            url = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueX':
        {
          if (child is ValueXExtensionBuilder) {
            valueX = child;
            return;
          } else {
            if (child is FhirBase64BinaryBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirCodeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIdBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirInstantBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirMarkdownBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirOidBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirPositiveIntBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUnsignedIntBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUrlBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUuidBuilder) {
              valueX = child;
              return;
            }
            if (child is AddressBuilder) {
              valueX = child;
              return;
            }
            if (child is AgeBuilder) {
              valueX = child;
              return;
            }
            if (child is AnnotationBuilder) {
              valueX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              valueX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is CodeableReferenceBuilder) {
              valueX = child;
              return;
            }
            if (child is CodingBuilder) {
              valueX = child;
              return;
            }
            if (child is ContactPointBuilder) {
              valueX = child;
              return;
            }
            if (child is CountBuilder) {
              valueX = child;
              return;
            }
            if (child is DistanceBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDurationBuilder) {
              valueX = child;
              return;
            }
            if (child is HumanNameBuilder) {
              valueX = child;
              return;
            }
            if (child is IdentifierBuilder) {
              valueX = child;
              return;
            }
            if (child is MoneyBuilder) {
              valueX = child;
              return;
            }
            if (child is PeriodBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is RangeBuilder) {
              valueX = child;
              return;
            }
            if (child is RatioBuilder) {
              valueX = child;
              return;
            }
            if (child is RatioRangeBuilder) {
              valueX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              valueX = child;
              return;
            }
            if (child is SampledDataBuilder) {
              valueX = child;
              return;
            }
            if (child is SignatureBuilder) {
              valueX = child;
              return;
            }
            if (child is TimingBuilder) {
              valueX = child;
              return;
            }
            if (child is ContactDetailBuilder) {
              valueX = child;
              return;
            }
            if (child is ContributorBuilder) {
              valueX = child;
              return;
            }
            if (child is DataRequirementBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirExpressionBuilder) {
              valueX = child;
              return;
            }
            if (child is ParameterDefinitionBuilder) {
              valueX = child;
              return;
            }
            if (child is RelatedArtifactBuilder) {
              valueX = child;
              return;
            }
            if (child is TriggerDefinitionBuilder) {
              valueX = child;
              return;
            }
            if (child is UsageContextBuilder) {
              valueX = child;
              return;
            }
            if (child is DosageBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueBase64Binary':
        {
          if (child is FhirBase64BinaryBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCode':
        {
          if (child is FhirCodeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDate':
        {
          if (child is FhirDateBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDecimal':
        {
          if (child is FhirDecimalBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueId':
        {
          if (child is FhirIdBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueInstant':
        {
          if (child is FhirInstantBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueInteger':
        {
          if (child is FhirIntegerBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueMarkdown':
        {
          if (child is FhirMarkdownBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueOid':
        {
          if (child is FhirOidBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valuePositiveInt':
        {
          if (child is FhirPositiveIntBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTime':
        {
          if (child is FhirTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUnsignedInt':
        {
          if (child is FhirUnsignedIntBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUri':
        {
          if (child is FhirUriBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUrl':
        {
          if (child is FhirUrlBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUuid':
        {
          if (child is FhirUuidBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAddress':
        {
          if (child is AddressBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAge':
        {
          if (child is AgeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAnnotation':
        {
          if (child is AnnotationBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAttachment':
        {
          if (child is AttachmentBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCodeableReference':
        {
          if (child is CodeableReferenceBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCoding':
        {
          if (child is CodingBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueContactPoint':
        {
          if (child is ContactPointBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCount':
        {
          if (child is CountBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDistance':
        {
          if (child is DistanceBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDuration':
        {
          if (child is FhirDurationBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueHumanName':
        {
          if (child is HumanNameBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueIdentifier':
        {
          if (child is IdentifierBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueMoney':
        {
          if (child is MoneyBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valuePeriod':
        {
          if (child is PeriodBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is RangeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRatio':
        {
          if (child is RatioBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRatioRange':
        {
          if (child is RatioRangeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueReference':
        {
          if (child is ReferenceBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueSampledData':
        {
          if (child is SampledDataBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueSignature':
        {
          if (child is SignatureBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTiming':
        {
          if (child is TimingBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueContactDetail':
        {
          if (child is ContactDetailBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueContributor':
        {
          if (child is ContributorBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDataRequirement':
        {
          if (child is DataRequirementBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueExpression':
        {
          if (child is FhirExpressionBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueParameterDefinition':
        {
          if (child is ParameterDefinitionBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRelatedArtifact':
        {
          if (child is RelatedArtifactBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueTriggerDefinition':
        {
          if (child is TriggerDefinitionBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUsageContext':
        {
          if (child is UsageContextBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDosage':
        {
          if (child is DosageBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'url':
        return ['FhirStringBuilder'];
      case 'value':
      case 'valueX':
        return [
          'FhirBase64BinaryBuilder',
          'FhirBooleanBuilder',
          'FhirCanonicalBuilder',
          'FhirCodeBuilder',
          'FhirDateBuilder',
          'FhirDateTimeBuilder',
          'FhirDecimalBuilder',
          'FhirIdBuilder',
          'FhirInstantBuilder',
          'FhirIntegerBuilder',
          'FhirMarkdownBuilder',
          'FhirOidBuilder',
          'FhirPositiveIntBuilder',
          'FhirStringBuilder',
          'FhirTimeBuilder',
          'FhirUnsignedIntBuilder',
          'FhirUriBuilder',
          'FhirUrlBuilder',
          'FhirUuidBuilder',
          'AddressBuilder',
          'AgeBuilder',
          'AnnotationBuilder',
          'AttachmentBuilder',
          'CodeableConceptBuilder',
          'CodeableReferenceBuilder',
          'CodingBuilder',
          'ContactPointBuilder',
          'CountBuilder',
          'DistanceBuilder',
          'FhirDurationBuilder',
          'HumanNameBuilder',
          'IdentifierBuilder',
          'MoneyBuilder',
          'PeriodBuilder',
          'QuantityBuilder',
          'RangeBuilder',
          'RatioBuilder',
          'RatioRangeBuilder',
          'ReferenceBuilder',
          'SampledDataBuilder',
          'SignatureBuilder',
          'TimingBuilder',
          'ContactDetailBuilder',
          'ContributorBuilder',
          'DataRequirementBuilder',
          'FhirExpressionBuilder',
          'ParameterDefinitionBuilder',
          'RelatedArtifactBuilder',
          'TriggerDefinitionBuilder',
          'UsageContextBuilder',
          'DosageBuilder'
        ];
      case 'valueBase64Binary':
        return ['FhirBase64BinaryBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueCanonical':
        return ['FhirCanonicalBuilder'];
      case 'valueCode':
        return ['FhirCodeBuilder'];
      case 'valueDate':
        return ['FhirDateBuilder'];
      case 'valueDateTime':
        return ['FhirDateTimeBuilder'];
      case 'valueDecimal':
        return ['FhirDecimalBuilder'];
      case 'valueId':
        return ['FhirIdBuilder'];
      case 'valueInstant':
        return ['FhirInstantBuilder'];
      case 'valueInteger':
        return ['FhirIntegerBuilder'];
      case 'valueMarkdown':
        return ['FhirMarkdownBuilder'];
      case 'valueOid':
        return ['FhirOidBuilder'];
      case 'valuePositiveInt':
        return ['FhirPositiveIntBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueTime':
        return ['FhirTimeBuilder'];
      case 'valueUnsignedInt':
        return ['FhirUnsignedIntBuilder'];
      case 'valueUri':
        return ['FhirUriBuilder'];
      case 'valueUrl':
        return ['FhirUrlBuilder'];
      case 'valueUuid':
        return ['FhirUuidBuilder'];
      case 'valueAddress':
        return ['AddressBuilder'];
      case 'valueAge':
        return ['AgeBuilder'];
      case 'valueAnnotation':
        return ['AnnotationBuilder'];
      case 'valueAttachment':
        return ['AttachmentBuilder'];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueCodeableReference':
        return ['CodeableReferenceBuilder'];
      case 'valueCoding':
        return ['CodingBuilder'];
      case 'valueContactPoint':
        return ['ContactPointBuilder'];
      case 'valueCount':
        return ['CountBuilder'];
      case 'valueDistance':
        return ['DistanceBuilder'];
      case 'valueDuration':
        return ['FhirDurationBuilder'];
      case 'valueHumanName':
        return ['HumanNameBuilder'];
      case 'valueIdentifier':
        return ['IdentifierBuilder'];
      case 'valueMoney':
        return ['MoneyBuilder'];
      case 'valuePeriod':
        return ['PeriodBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      case 'valueRatio':
        return ['RatioBuilder'];
      case 'valueRatioRange':
        return ['RatioRangeBuilder'];
      case 'valueReference':
        return ['ReferenceBuilder'];
      case 'valueSampledData':
        return ['SampledDataBuilder'];
      case 'valueSignature':
        return ['SignatureBuilder'];
      case 'valueTiming':
        return ['TimingBuilder'];
      case 'valueContactDetail':
        return ['ContactDetailBuilder'];
      case 'valueContributor':
        return ['ContributorBuilder'];
      case 'valueDataRequirement':
        return ['DataRequirementBuilder'];
      case 'valueExpression':
        return ['FhirExpressionBuilder'];
      case 'valueParameterDefinition':
        return ['ParameterDefinitionBuilder'];
      case 'valueRelatedArtifact':
        return ['RelatedArtifactBuilder'];
      case 'valueTriggerDefinition':
        return ['TriggerDefinitionBuilder'];
      case 'valueUsageContext':
        return ['UsageContextBuilder'];
      case 'valueDosage':
        return ['DosageBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [FhirExtensionBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'url':
        {
          url = FhirStringBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueBase64Binary':
        {
          valueX = FhirBase64BinaryBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueCanonical':
        {
          valueX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'valueCode':
        {
          valueX = FhirCodeBuilder.empty();
          return;
        }
      case 'valueDate':
        {
          valueX = FhirDateBuilder.empty();
          return;
        }
      case 'valueDateTime':
        {
          valueX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'valueDecimal':
        {
          valueX = FhirDecimalBuilder.empty();
          return;
        }
      case 'valueId':
        {
          valueX = FhirIdBuilder.empty();
          return;
        }
      case 'valueInstant':
        {
          valueX = FhirInstantBuilder.empty();
          return;
        }
      case 'valueInteger':
        {
          valueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'valueMarkdown':
        {
          valueX = FhirMarkdownBuilder.empty();
          return;
        }
      case 'valueOid':
        {
          valueX = FhirOidBuilder.empty();
          return;
        }
      case 'valuePositiveInt':
        {
          valueX = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueTime':
        {
          valueX = FhirTimeBuilder.empty();
          return;
        }
      case 'valueUnsignedInt':
        {
          valueX = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'valueUri':
        {
          valueX = FhirUriBuilder.empty();
          return;
        }
      case 'valueUrl':
        {
          valueX = FhirUrlBuilder.empty();
          return;
        }
      case 'valueUuid':
        {
          valueX = FhirUuidBuilder.empty();
          return;
        }
      case 'valueAddress':
        {
          valueX = AddressBuilder.empty();
          return;
        }
      case 'valueAge':
        {
          valueX = AgeBuilder.empty();
          return;
        }
      case 'valueAnnotation':
        {
          valueX = AnnotationBuilder.empty();
          return;
        }
      case 'valueAttachment':
        {
          valueX = AttachmentBuilder.empty();
          return;
        }
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueCodeableReference':
        {
          valueX = CodeableReferenceBuilder.empty();
          return;
        }
      case 'valueCoding':
        {
          valueX = CodingBuilder.empty();
          return;
        }
      case 'valueContactPoint':
        {
          valueX = ContactPointBuilder.empty();
          return;
        }
      case 'valueCount':
        {
          valueX = CountBuilder.empty();
          return;
        }
      case 'valueDistance':
        {
          valueX = DistanceBuilder.empty();
          return;
        }
      case 'valueDuration':
        {
          valueX = FhirDurationBuilder.empty();
          return;
        }
      case 'valueHumanName':
        {
          valueX = HumanNameBuilder.empty();
          return;
        }
      case 'valueIdentifier':
        {
          valueX = IdentifierBuilder.empty();
          return;
        }
      case 'valueMoney':
        {
          valueX = MoneyBuilder.empty();
          return;
        }
      case 'valuePeriod':
        {
          valueX = PeriodBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueRange':
        {
          valueX = RangeBuilder.empty();
          return;
        }
      case 'valueRatio':
        {
          valueX = RatioBuilder.empty();
          return;
        }
      case 'valueRatioRange':
        {
          valueX = RatioRangeBuilder.empty();
          return;
        }
      case 'valueReference':
        {
          valueX = ReferenceBuilder.empty();
          return;
        }
      case 'valueSampledData':
        {
          valueX = SampledDataBuilder.empty();
          return;
        }
      case 'valueSignature':
        {
          valueX = SignatureBuilder.empty();
          return;
        }
      case 'valueTiming':
        {
          valueX = TimingBuilder.empty();
          return;
        }
      case 'valueContactDetail':
        {
          valueX = ContactDetailBuilder.empty();
          return;
        }
      case 'valueContributor':
        {
          valueX = ContributorBuilder.empty();
          return;
        }
      case 'valueDataRequirement':
        {
          valueX = DataRequirementBuilder.empty();
          return;
        }
      case 'valueExpression':
        {
          valueX = FhirExpressionBuilder.empty();
          return;
        }
      case 'valueParameterDefinition':
        {
          valueX = ParameterDefinitionBuilder.empty();
          return;
        }
      case 'valueRelatedArtifact':
        {
          valueX = RelatedArtifactBuilder.empty();
          return;
        }
      case 'valueTriggerDefinition':
        {
          valueX = TriggerDefinitionBuilder.empty();
          return;
        }
      case 'valueUsageContext':
        {
          valueX = UsageContextBuilder.empty();
          return;
        }
      case 'valueDosage':
        {
          valueX = DosageBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool url = false,
    bool value = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (url) this.url = null;
    if (value) this.valueX = null;
  }

  @override
  FhirExtensionBuilder clone() => throw UnimplementedError();
  @override
  FhirExtensionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirStringBuilder? url,
    ValueXExtensionBuilder? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = FhirExtensionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      url: url ?? this.url,
      valueX: valueX ?? this.valueX,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! FhirExtensionBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}
