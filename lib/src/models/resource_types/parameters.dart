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
          objectPath: 'Parameters',
          resourceType: R4ResourceType.Parameters,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Parameters.empty() => const Parameters();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Parameters.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Parameters';
    return Parameters(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map<ParametersParameter>(
            (v) => ParametersParameter.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parameter',
              },
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return Parameters.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('parameter', parameter);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'parameter',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'parameter':
        if (parameter != null) {
          fields.addAll(parameter!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'parameter':
        {
          if (child is List<ParametersParameter>) {
            return copyWith(parameter: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'parameter':
        return ['ParametersParameter'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Parameters]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Parameters createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'meta':
        {
          return copyWith(meta: FhirMeta.empty());
        }
      case 'implicitRules':
        {
          return copyWith(implicitRules: FhirUri.empty());
        }
      case 'language':
        {
          return copyWith(language: CommonLanguages.empty());
        }
      case 'parameter':
        {
          return copyWith(parameter: <ParametersParameter>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Parameters clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool parameter = false,
  }) {
    return Parameters(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      parameter: parameter ? null : this.parameter,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Parameters(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      parameter: parameter
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.parameter',
                ),
              )
              .toList() ??
          this.parameter,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Parameters) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!listEquals<ParametersParameter>(
      parameter,
      o.parameter,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Parameters.parameter',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ParametersParameter.empty() => ParametersParameter(
        name: FhirString.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ParametersParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Parameters.parameter';
    return ParametersParameter(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXParametersParameter>(
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
          'valueMeta': FhirMeta.fromJson,
        },
        objectPath,
      ),
      resource: JsonParser.parseObject<Resource>(
        json,
        'resource',
        Resource.fromJson,
        '$objectPath.resource',
      ),
      part_: (json['part'] as List<dynamic>?)
          ?.map<ParametersParameter>(
            (v) => ParametersParameter.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.part',
              },
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return ParametersParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [valueBase64Binary] as a FhirBase64Binary
  FhirBase64Binary? get valueBase64Binary => valueX?.isAs<FhirBase64Binary>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX?.isAs<FhirBoolean>();

  /// Getter for [valueCanonical] as a FhirCanonical
  FhirCanonical? get valueCanonical => valueX?.isAs<FhirCanonical>();

  /// Getter for [valueCode] as a FhirCode
  FhirCode? get valueCode => valueX?.isAs<FhirCode>();

  /// Getter for [valueDate] as a FhirDate
  FhirDate? get valueDate => valueX?.isAs<FhirDate>();

  /// Getter for [valueDateTime] as a FhirDateTime
  FhirDateTime? get valueDateTime => valueX?.isAs<FhirDateTime>();

  /// Getter for [valueDecimal] as a FhirDecimal
  FhirDecimal? get valueDecimal => valueX?.isAs<FhirDecimal>();

  /// Getter for [valueId] as a FhirId
  FhirId? get valueId => valueX?.isAs<FhirId>();

  /// Getter for [valueInstant] as a FhirInstant
  FhirInstant? get valueInstant => valueX?.isAs<FhirInstant>();

  /// Getter for [valueInteger] as a FhirInteger
  FhirInteger? get valueInteger => valueX?.isAs<FhirInteger>();

  /// Getter for [valueMarkdown] as a FhirMarkdown
  FhirMarkdown? get valueMarkdown => valueX?.isAs<FhirMarkdown>();

  /// Getter for [valueOid] as a FhirOid
  FhirOid? get valueOid => valueX?.isAs<FhirOid>();

  /// Getter for [valuePositiveInt] as a FhirPositiveInt
  FhirPositiveInt? get valuePositiveInt => valueX?.isAs<FhirPositiveInt>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX?.isAs<FhirString>();

  /// Getter for [valueTime] as a FhirTime
  FhirTime? get valueTime => valueX?.isAs<FhirTime>();

  /// Getter for [valueUnsignedInt] as a FhirUnsignedInt
  FhirUnsignedInt? get valueUnsignedInt => valueX?.isAs<FhirUnsignedInt>();

  /// Getter for [valueUri] as a FhirUri
  FhirUri? get valueUri => valueX?.isAs<FhirUri>();

  /// Getter for [valueUrl] as a FhirUrl
  FhirUrl? get valueUrl => valueX?.isAs<FhirUrl>();

  /// Getter for [valueUuid] as a FhirUuid
  FhirUuid? get valueUuid => valueX?.isAs<FhirUuid>();

  /// Getter for [valueAddress] as a Address
  Address? get valueAddress => valueX?.isAs<Address>();

  /// Getter for [valueAge] as a Age
  Age? get valueAge => valueX?.isAs<Age>();

  /// Getter for [valueAnnotation] as a Annotation
  Annotation? get valueAnnotation => valueX?.isAs<Annotation>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX?.isAs<Attachment>();

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueCoding] as a Coding
  Coding? get valueCoding => valueX?.isAs<Coding>();

  /// Getter for [valueContactPoint] as a ContactPoint
  ContactPoint? get valueContactPoint => valueX?.isAs<ContactPoint>();

  /// Getter for [valueCount] as a Count
  Count? get valueCount => valueX?.isAs<Count>();

  /// Getter for [valueDistance] as a Distance
  Distance? get valueDistance => valueX?.isAs<Distance>();

  /// Getter for [valueDuration] as a FhirDuration
  FhirDuration? get valueDuration => valueX?.isAs<FhirDuration>();

  /// Getter for [valueHumanName] as a HumanName
  HumanName? get valueHumanName => valueX?.isAs<HumanName>();

  /// Getter for [valueIdentifier] as a Identifier
  Identifier? get valueIdentifier => valueX?.isAs<Identifier>();

  /// Getter for [valueMoney] as a Money
  Money? get valueMoney => valueX?.isAs<Money>();

  /// Getter for [valuePeriod] as a Period
  Period? get valuePeriod => valueX?.isAs<Period>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX?.isAs<Range>();

  /// Getter for [valueRatio] as a Ratio
  Ratio? get valueRatio => valueX?.isAs<Ratio>();

  /// Getter for [valueReference] as a Reference
  Reference? get valueReference => valueX?.isAs<Reference>();

  /// Getter for [valueSampledData] as a SampledData
  SampledData? get valueSampledData => valueX?.isAs<SampledData>();

  /// Getter for [valueSignature] as a Signature
  Signature? get valueSignature => valueX?.isAs<Signature>();

  /// Getter for [valueTiming] as a Timing
  Timing? get valueTiming => valueX?.isAs<Timing>();

  /// Getter for [valueContactDetail] as a ContactDetail
  ContactDetail? get valueContactDetail => valueX?.isAs<ContactDetail>();

  /// Getter for [valueContributor] as a Contributor
  Contributor? get valueContributor => valueX?.isAs<Contributor>();

  /// Getter for [valueDataRequirement] as a DataRequirement
  DataRequirement? get valueDataRequirement => valueX?.isAs<DataRequirement>();

  /// Getter for [valueExpression] as a FhirExpression
  FhirExpression? get valueExpression => valueX?.isAs<FhirExpression>();

  /// Getter for [valueParameterDefinition] as a ParameterDefinition
  ParameterDefinition? get valueParameterDefinition =>
      valueX?.isAs<ParameterDefinition>();

  /// Getter for [valueRelatedArtifact] as a RelatedArtifact
  RelatedArtifact? get valueRelatedArtifact => valueX?.isAs<RelatedArtifact>();

  /// Getter for [valueTriggerDefinition] as a TriggerDefinition
  TriggerDefinition? get valueTriggerDefinition =>
      valueX?.isAs<TriggerDefinition>();

  /// Getter for [valueUsageContext] as a UsageContext
  UsageContext? get valueUsageContext => valueX?.isAs<UsageContext>();

  /// Getter for [valueDosage] as a Dosage
  Dosage? get valueDosage => valueX?.isAs<Dosage>();

  /// Getter for [valueMeta] as a FhirMeta
  FhirMeta? get valueMeta => valueX?.isAs<FhirMeta>();

  /// [resource]
  /// If the parameter is a whole resource.
  final Resource? resource;

  /// [part_]
  /// A named part of a multi-part parameter.
  final List<ParametersParameter>? part_;
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
    addField('modifierExtension', modifierExtension);
    addField('name', name);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalize()}', valueX);
    }

    addField('resource', resource);
    addField('part', part_);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'name',
      'valueX',
      'resource',
      'part',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'name':
        fields.add(name);
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
      case 'valueMeta':
        if (valueX is FhirMeta) {
          fields.add(valueX!);
        }
      case 'resource':
        if (resource != null) {
          fields.add(resource!);
        }
      case 'part':
        if (part_ != null) {
          fields.addAll(part_!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueX':
        {
          if (child is ValueXParametersParameter) {
            // child is e.g. SubjectX union
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirBase64Binary':
        {
          if (child is FhirBase64Binary) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirCanonical':
        {
          if (child is FhirCanonical) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirCode':
        {
          if (child is FhirCode) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirDecimal':
        {
          if (child is FhirDecimal) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirId':
        {
          if (child is FhirId) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirInstant':
        {
          if (child is FhirInstant) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirMarkdown':
        {
          if (child is FhirMarkdown) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirOid':
        {
          if (child is FhirOid) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirPositiveInt':
        {
          if (child is FhirPositiveInt) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirString':
        {
          if (child is FhirString) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirTime':
        {
          if (child is FhirTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirUnsignedInt':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirUri':
        {
          if (child is FhirUri) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirUrl':
        {
          if (child is FhirUrl) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirUuid':
        {
          if (child is FhirUuid) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueAddress':
        {
          if (child is Address) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueAge':
        {
          if (child is Age) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueAnnotation':
        {
          if (child is Annotation) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueAttachment':
        {
          if (child is Attachment) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueCoding':
        {
          if (child is Coding) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueContactPoint':
        {
          if (child is ContactPoint) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueCount':
        {
          if (child is Count) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueDistance':
        {
          if (child is Distance) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirDuration':
        {
          if (child is FhirDuration) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueHumanName':
        {
          if (child is HumanName) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueIdentifier':
        {
          if (child is Identifier) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueMoney':
        {
          if (child is Money) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valuePeriod':
        {
          if (child is Period) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueQuantity':
        {
          if (child is Quantity) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueRange':
        {
          if (child is Range) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueRatio':
        {
          if (child is Ratio) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueReference':
        {
          if (child is Reference) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueSampledData':
        {
          if (child is SampledData) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueSignature':
        {
          if (child is Signature) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueTiming':
        {
          if (child is Timing) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueContactDetail':
        {
          if (child is ContactDetail) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueContributor':
        {
          if (child is Contributor) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueDataRequirement':
        {
          if (child is DataRequirement) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirExpression':
        {
          if (child is FhirExpression) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueParameterDefinition':
        {
          if (child is ParameterDefinition) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueRelatedArtifact':
        {
          if (child is RelatedArtifact) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueTriggerDefinition':
        {
          if (child is TriggerDefinition) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueUsageContext':
        {
          if (child is UsageContext) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueDosage':
        {
          if (child is Dosage) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirMeta':
        {
          if (child is FhirMeta) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'resource':
        {
          if (child is Resource) {
            return copyWith(resource: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'part':
        {
          if (child is List<ParametersParameter>) {
            return copyWith(part_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'name':
        return ['FhirString'];
      case 'value':
      case 'valueX':
        return [
          'FhirBase64Binary',
          'FhirBoolean',
          'FhirCanonical',
          'FhirCode',
          'FhirDate',
          'FhirDateTime',
          'FhirDecimal',
          'FhirId',
          'FhirInstant',
          'FhirInteger',
          'FhirMarkdown',
          'FhirOid',
          'FhirPositiveInt',
          'FhirString',
          'FhirTime',
          'FhirUnsignedInt',
          'FhirUri',
          'FhirUrl',
          'FhirUuid',
          'Address',
          'Age',
          'Annotation',
          'Attachment',
          'CodeableConcept',
          'Coding',
          'ContactPoint',
          'Count',
          'Distance',
          'FhirDuration',
          'HumanName',
          'Identifier',
          'Money',
          'Period',
          'Quantity',
          'Range',
          'Ratio',
          'Reference',
          'SampledData',
          'Signature',
          'Timing',
          'ContactDetail',
          'Contributor',
          'DataRequirement',
          'FhirExpression',
          'ParameterDefinition',
          'RelatedArtifact',
          'TriggerDefinition',
          'UsageContext',
          'Dosage',
          'FhirMeta',
        ];
      case 'valueBase64Binary':
        return ['FhirBase64Binary'];
      case 'valueBoolean':
        return ['FhirBoolean'];
      case 'valueCanonical':
        return ['FhirCanonical'];
      case 'valueCode':
        return ['FhirCode'];
      case 'valueDate':
        return ['FhirDate'];
      case 'valueDateTime':
        return ['FhirDateTime'];
      case 'valueDecimal':
        return ['FhirDecimal'];
      case 'valueId':
        return ['FhirId'];
      case 'valueInstant':
        return ['FhirInstant'];
      case 'valueInteger':
        return ['FhirInteger'];
      case 'valueMarkdown':
        return ['FhirMarkdown'];
      case 'valueOid':
        return ['FhirOid'];
      case 'valuePositiveInt':
        return ['FhirPositiveInt'];
      case 'valueString':
        return ['FhirString'];
      case 'valueTime':
        return ['FhirTime'];
      case 'valueUnsignedInt':
        return ['FhirUnsignedInt'];
      case 'valueUri':
        return ['FhirUri'];
      case 'valueUrl':
        return ['FhirUrl'];
      case 'valueUuid':
        return ['FhirUuid'];
      case 'valueAddress':
        return ['Address'];
      case 'valueAge':
        return ['Age'];
      case 'valueAnnotation':
        return ['Annotation'];
      case 'valueAttachment':
        return ['Attachment'];
      case 'valueCodeableConcept':
        return ['CodeableConcept'];
      case 'valueCoding':
        return ['Coding'];
      case 'valueContactPoint':
        return ['ContactPoint'];
      case 'valueCount':
        return ['Count'];
      case 'valueDistance':
        return ['Distance'];
      case 'valueDuration':
        return ['FhirDuration'];
      case 'valueHumanName':
        return ['HumanName'];
      case 'valueIdentifier':
        return ['Identifier'];
      case 'valueMoney':
        return ['Money'];
      case 'valuePeriod':
        return ['Period'];
      case 'valueQuantity':
        return ['Quantity'];
      case 'valueRange':
        return ['Range'];
      case 'valueRatio':
        return ['Ratio'];
      case 'valueReference':
        return ['Reference'];
      case 'valueSampledData':
        return ['SampledData'];
      case 'valueSignature':
        return ['Signature'];
      case 'valueTiming':
        return ['Timing'];
      case 'valueContactDetail':
        return ['ContactDetail'];
      case 'valueContributor':
        return ['Contributor'];
      case 'valueDataRequirement':
        return ['DataRequirement'];
      case 'valueExpression':
        return ['FhirExpression'];
      case 'valueParameterDefinition':
        return ['ParameterDefinition'];
      case 'valueRelatedArtifact':
        return ['RelatedArtifact'];
      case 'valueTriggerDefinition':
        return ['TriggerDefinition'];
      case 'valueUsageContext':
        return ['UsageContext'];
      case 'valueDosage':
        return ['Dosage'];
      case 'valueMeta':
        return ['FhirMeta'];
      case 'resource':
        return ['Resource'];
      case 'part':
        return ['ParametersParameter'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ParametersParameter]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ParametersParameter createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'name':
        {
          return copyWith(name: FhirString.empty());
        }
      case 'value':
      case 'valueX':
      case 'valueBase64Binary':
        {
          return copyWith(valueX: FhirBase64Binary.empty());
        }
      case 'valueBoolean':
        {
          return copyWith(valueX: FhirBoolean.empty());
        }
      case 'valueCanonical':
        {
          return copyWith(valueX: FhirCanonical.empty());
        }
      case 'valueCode':
        {
          return copyWith(valueX: FhirCode.empty());
        }
      case 'valueDate':
        {
          return copyWith(valueX: FhirDate.empty());
        }
      case 'valueDateTime':
        {
          return copyWith(valueX: FhirDateTime.empty());
        }
      case 'valueDecimal':
        {
          return copyWith(valueX: FhirDecimal.empty());
        }
      case 'valueId':
        {
          return copyWith(valueX: FhirId.empty());
        }
      case 'valueInstant':
        {
          return copyWith(valueX: FhirInstant.empty());
        }
      case 'valueInteger':
        {
          return copyWith(valueX: FhirInteger.empty());
        }
      case 'valueMarkdown':
        {
          return copyWith(valueX: FhirMarkdown.empty());
        }
      case 'valueOid':
        {
          return copyWith(valueX: FhirOid.empty());
        }
      case 'valuePositiveInt':
        {
          return copyWith(valueX: FhirPositiveInt.empty());
        }
      case 'valueString':
        {
          return copyWith(valueX: FhirString.empty());
        }
      case 'valueTime':
        {
          return copyWith(valueX: FhirTime.empty());
        }
      case 'valueUnsignedInt':
        {
          return copyWith(valueX: FhirUnsignedInt.empty());
        }
      case 'valueUri':
        {
          return copyWith(valueX: FhirUri.empty());
        }
      case 'valueUrl':
        {
          return copyWith(valueX: FhirUrl.empty());
        }
      case 'valueUuid':
        {
          return copyWith(valueX: FhirUuid.empty());
        }
      case 'valueAddress':
        {
          return copyWith(valueX: Address.empty());
        }
      case 'valueAge':
        {
          return copyWith(valueX: Age.empty());
        }
      case 'valueAnnotation':
        {
          return copyWith(valueX: Annotation.empty());
        }
      case 'valueAttachment':
        {
          return copyWith(valueX: Attachment.empty());
        }
      case 'valueCodeableConcept':
        {
          return copyWith(valueX: CodeableConcept.empty());
        }
      case 'valueCoding':
        {
          return copyWith(valueX: Coding.empty());
        }
      case 'valueContactPoint':
        {
          return copyWith(valueX: ContactPoint.empty());
        }
      case 'valueCount':
        {
          return copyWith(valueX: Count.empty());
        }
      case 'valueDistance':
        {
          return copyWith(valueX: Distance.empty());
        }
      case 'valueDuration':
        {
          return copyWith(valueX: FhirDuration.empty());
        }
      case 'valueHumanName':
        {
          return copyWith(valueX: HumanName.empty());
        }
      case 'valueIdentifier':
        {
          return copyWith(valueX: Identifier.empty());
        }
      case 'valueMoney':
        {
          return copyWith(valueX: Money.empty());
        }
      case 'valuePeriod':
        {
          return copyWith(valueX: Period.empty());
        }
      case 'valueQuantity':
        {
          return copyWith(valueX: Quantity.empty());
        }
      case 'valueRange':
        {
          return copyWith(valueX: Range.empty());
        }
      case 'valueRatio':
        {
          return copyWith(valueX: Ratio.empty());
        }
      case 'valueReference':
        {
          return copyWith(valueX: Reference.empty());
        }
      case 'valueSampledData':
        {
          return copyWith(valueX: SampledData.empty());
        }
      case 'valueSignature':
        {
          return copyWith(valueX: Signature.empty());
        }
      case 'valueTiming':
        {
          return copyWith(valueX: Timing.empty());
        }
      case 'valueContactDetail':
        {
          return copyWith(valueX: ContactDetail.empty());
        }
      case 'valueContributor':
        {
          return copyWith(valueX: Contributor.empty());
        }
      case 'valueDataRequirement':
        {
          return copyWith(valueX: DataRequirement.empty());
        }
      case 'valueExpression':
        {
          return copyWith(valueX: FhirExpression.empty());
        }
      case 'valueParameterDefinition':
        {
          return copyWith(valueX: ParameterDefinition.empty());
        }
      case 'valueRelatedArtifact':
        {
          return copyWith(valueX: RelatedArtifact.empty());
        }
      case 'valueTriggerDefinition':
        {
          return copyWith(valueX: TriggerDefinition.empty());
        }
      case 'valueUsageContext':
        {
          return copyWith(valueX: UsageContext.empty());
        }
      case 'valueDosage':
        {
          return copyWith(valueX: Dosage.empty());
        }
      case 'valueMeta':
        {
          return copyWith(valueX: FhirMeta.empty());
        }
      case 'resource':
        {
          return copyWith(resource: Resource.empty());
        }
      case 'part':
        {
          return copyWith(part_: <ParametersParameter>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ParametersParameter clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool value = false,
    bool resource = false,
    bool part_ = false,
  }) {
    return ParametersParameter(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      name: name,
      valueX: value ? null : valueX,
      resource: resource ? null : this.resource,
      part_: part_ ? null : this.part_,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ParametersParameter(
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
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXParametersParameter? ??
          this.valueX,
      resource: resource ?? this.resource,
      part_: part_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.part',
                ),
              )
              .toList() ??
          this.part_,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ParametersParameter) {
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
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(valueX, o.valueX)) {
      return false;
    }
    if (!equalsDeepWithNull(resource, o.resource)) {
      return false;
    }
    if (!listEquals<ParametersParameter>(
      part_,
      o.part_,
    )) {
      return false;
    }
    return true;
  }
}
