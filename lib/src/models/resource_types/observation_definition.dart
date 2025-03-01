import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ObservationDefinition]
/// Set of definitional characteristics for a kind of observation or
/// measurement produced or consumed by an orderable health care service.
class ObservationDefinition extends DomainResource {
  /// Primary constructor for
  /// [ObservationDefinition]

  const ObservationDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.category,
    required this.code,
    this.identifier,
    this.permittedDataType,
    this.multipleResultsAllowed,
    this.method,
    this.preferredReportName,
    this.quantitativeDetails,
    this.qualifiedInterval,
    this.validCodedValueSet,
    this.normalCodedValueSet,
    this.abnormalCodedValueSet,
    this.criticalCodedValueSet,
  }) : super(
          objectPath: 'ObservationDefinition',
          resourceType: R4ResourceType.ObservationDefinition,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ObservationDefinition.empty() => ObservationDefinition(
        code: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ObservationDefinition';
    return ObservationDefinition(
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
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
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
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      )!,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      permittedDataType: JsonParser.parsePrimitiveList<ObservationDataType>(
        json,
        'permittedDataType',
        ObservationDataType.fromJson,
        '$objectPath.permittedDataType',
      ),
      multipleResultsAllowed: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'multipleResultsAllowed',
        FhirBoolean.fromJson,
        '$objectPath.multipleResultsAllowed',
      ),
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
        '$objectPath.method',
      ),
      preferredReportName: JsonParser.parsePrimitive<FhirString>(
        json,
        'preferredReportName',
        FhirString.fromJson,
        '$objectPath.preferredReportName',
      ),
      quantitativeDetails:
          JsonParser.parseObject<ObservationDefinitionQuantitativeDetails>(
        json,
        'quantitativeDetails',
        ObservationDefinitionQuantitativeDetails.fromJson,
        '$objectPath.quantitativeDetails',
      ),
      qualifiedInterval: (json['qualifiedInterval'] as List<dynamic>?)
          ?.map<ObservationDefinitionQualifiedInterval>(
            (v) => ObservationDefinitionQualifiedInterval.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.qualifiedInterval',
              },
            ),
          )
          .toList(),
      validCodedValueSet: JsonParser.parseObject<Reference>(
        json,
        'validCodedValueSet',
        Reference.fromJson,
        '$objectPath.validCodedValueSet',
      ),
      normalCodedValueSet: JsonParser.parseObject<Reference>(
        json,
        'normalCodedValueSet',
        Reference.fromJson,
        '$objectPath.normalCodedValueSet',
      ),
      abnormalCodedValueSet: JsonParser.parseObject<Reference>(
        json,
        'abnormalCodedValueSet',
        Reference.fromJson,
        '$objectPath.abnormalCodedValueSet',
      ),
      criticalCodedValueSet: JsonParser.parseObject<Reference>(
        json,
        'criticalCodedValueSet',
        Reference.fromJson,
        '$objectPath.criticalCodedValueSet',
      ),
    );
  }

  /// Deserialize [ObservationDefinition]
  /// from a [String] or [YamlMap] object
  factory ObservationDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ObservationDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ObservationDefinition';

  /// [category]
  /// A code that classifies the general type of observation.
  final List<CodeableConcept>? category;

  /// [code]
  /// Describes what will be observed. Sometimes this is called the
  /// observation "name".
  final CodeableConcept code;

  /// [identifier]
  /// A unique identifier assigned to this ObservationDefinition artifact.
  final List<Identifier>? identifier;

  /// [permittedDataType]
  /// The data types allowed for the value element of the instance
  /// observations conforming to this ObservationDefinition.
  final List<ObservationDataType>? permittedDataType;

  /// [multipleResultsAllowed]
  /// Multiple results allowed for observations conforming to this
  /// ObservationDefinition.
  final FhirBoolean? multipleResultsAllowed;

  /// [method]
  /// The method or technique used to perform the observation.
  final CodeableConcept? method;

  /// [preferredReportName]
  /// The preferred name to be used when reporting the results of
  /// observations conforming to this ObservationDefinition.
  final FhirString? preferredReportName;

  /// [quantitativeDetails]
  /// Characteristics for quantitative results of this observation.
  final ObservationDefinitionQuantitativeDetails? quantitativeDetails;

  /// [qualifiedInterval]
  /// Multiple ranges of results qualified by different contexts for ordinal
  /// or continuous observations conforming to this ObservationDefinition.
  final List<ObservationDefinitionQualifiedInterval>? qualifiedInterval;

  /// [validCodedValueSet]
  /// The set of valid coded results for the observations conforming to this
  /// ObservationDefinition.
  final Reference? validCodedValueSet;

  /// [normalCodedValueSet]
  /// The set of normal coded results for the observations conforming to this
  /// ObservationDefinition.
  final Reference? normalCodedValueSet;

  /// [abnormalCodedValueSet]
  /// The set of abnormal coded results for the observation conforming to
  /// this ObservationDefinition.
  final Reference? abnormalCodedValueSet;

  /// [criticalCodedValueSet]
  /// The set of critical coded results for the observation conforming to
  /// this ObservationDefinition.
  final Reference? criticalCodedValueSet;
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
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('category', category);
    addField('code', code);
    addField('identifier', identifier);
    addField('permittedDataType', permittedDataType);
    addField('multipleResultsAllowed', multipleResultsAllowed);
    addField('method', method);
    addField('preferredReportName', preferredReportName);
    addField('quantitativeDetails', quantitativeDetails);
    addField('qualifiedInterval', qualifiedInterval);
    addField('validCodedValueSet', validCodedValueSet);
    addField('normalCodedValueSet', normalCodedValueSet);
    addField('abnormalCodedValueSet', abnormalCodedValueSet);
    addField('criticalCodedValueSet', criticalCodedValueSet);
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
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'category',
      'code',
      'identifier',
      'permittedDataType',
      'multipleResultsAllowed',
      'method',
      'preferredReportName',
      'quantitativeDetails',
      'qualifiedInterval',
      'validCodedValueSet',
      'normalCodedValueSet',
      'abnormalCodedValueSet',
      'criticalCodedValueSet',
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
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'code':
        fields.add(code);
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'permittedDataType':
        if (permittedDataType != null) {
          fields.addAll(permittedDataType!);
        }
      case 'multipleResultsAllowed':
        if (multipleResultsAllowed != null) {
          fields.add(multipleResultsAllowed!);
        }
      case 'method':
        if (method != null) {
          fields.add(method!);
        }
      case 'preferredReportName':
        if (preferredReportName != null) {
          fields.add(preferredReportName!);
        }
      case 'quantitativeDetails':
        if (quantitativeDetails != null) {
          fields.add(quantitativeDetails!);
        }
      case 'qualifiedInterval':
        if (qualifiedInterval != null) {
          fields.addAll(qualifiedInterval!);
        }
      case 'validCodedValueSet':
        if (validCodedValueSet != null) {
          fields.add(validCodedValueSet!);
        }
      case 'normalCodedValueSet':
        if (normalCodedValueSet != null) {
          fields.add(normalCodedValueSet!);
        }
      case 'abnormalCodedValueSet':
        if (abnormalCodedValueSet != null) {
          fields.add(abnormalCodedValueSet!);
        }
      case 'criticalCodedValueSet':
        if (criticalCodedValueSet != null) {
          fields.add(criticalCodedValueSet!);
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
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
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
      case 'category':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(category: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'permittedDataType':
        {
          if (child is List<ObservationDataType>) {
            return copyWith(permittedDataType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'multipleResultsAllowed':
        {
          if (child is FhirBoolean) {
            return copyWith(multipleResultsAllowed: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'method':
        {
          if (child is CodeableConcept) {
            return copyWith(method: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'preferredReportName':
        {
          if (child is FhirString) {
            return copyWith(preferredReportName: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'quantitativeDetails':
        {
          if (child is ObservationDefinitionQuantitativeDetails) {
            return copyWith(quantitativeDetails: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'qualifiedInterval':
        {
          if (child is List<ObservationDefinitionQualifiedInterval>) {
            return copyWith(qualifiedInterval: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'validCodedValueSet':
        {
          if (child is Reference) {
            return copyWith(validCodedValueSet: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'normalCodedValueSet':
        {
          if (child is Reference) {
            return copyWith(normalCodedValueSet: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'abnormalCodedValueSet':
        {
          if (child is Reference) {
            return copyWith(abnormalCodedValueSet: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'criticalCodedValueSet':
        {
          if (child is Reference) {
            return copyWith(criticalCodedValueSet: child);
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
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'category':
        return ['CodeableConcept'];
      case 'code':
        return ['CodeableConcept'];
      case 'identifier':
        return ['Identifier'];
      case 'permittedDataType':
        return ['FhirCode'];
      case 'multipleResultsAllowed':
        return ['FhirBoolean'];
      case 'method':
        return ['CodeableConcept'];
      case 'preferredReportName':
        return ['FhirString'];
      case 'quantitativeDetails':
        return ['ObservationDefinitionQuantitativeDetails'];
      case 'qualifiedInterval':
        return ['ObservationDefinitionQualifiedInterval'];
      case 'validCodedValueSet':
        return ['Reference'];
      case 'normalCodedValueSet':
        return ['Reference'];
      case 'abnormalCodedValueSet':
        return ['Reference'];
      case 'criticalCodedValueSet':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  @override
  ObservationDefinition clone() => throw UnimplementedError();
  @override
  ObservationDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    List<Identifier>? identifier,
    List<ObservationDataType>? permittedDataType,
    FhirBoolean? multipleResultsAllowed,
    CodeableConcept? method,
    FhirString? preferredReportName,
    ObservationDefinitionQuantitativeDetails? quantitativeDetails,
    List<ObservationDefinitionQualifiedInterval>? qualifiedInterval,
    Reference? validCodedValueSet,
    Reference? normalCodedValueSet,
    Reference? abnormalCodedValueSet,
    Reference? criticalCodedValueSet,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return ObservationDefinition(
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
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
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
      category: category
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.category',
                ),
              )
              .toList() ??
          this.category,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      permittedDataType: permittedDataType
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.permittedDataType',
                ),
              )
              .toList() ??
          this.permittedDataType,
      multipleResultsAllowed: multipleResultsAllowed?.copyWith(
            objectPath: '$newObjectPath.multipleResultsAllowed',
          ) ??
          this.multipleResultsAllowed,
      method: method?.copyWith(
            objectPath: '$newObjectPath.method',
          ) ??
          this.method,
      preferredReportName: preferredReportName?.copyWith(
            objectPath: '$newObjectPath.preferredReportName',
          ) ??
          this.preferredReportName,
      quantitativeDetails: quantitativeDetails?.copyWith(
            objectPath: '$newObjectPath.quantitativeDetails',
          ) ??
          this.quantitativeDetails,
      qualifiedInterval: qualifiedInterval
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.qualifiedInterval',
                ),
              )
              .toList() ??
          this.qualifiedInterval,
      validCodedValueSet: validCodedValueSet?.copyWith(
            objectPath: '$newObjectPath.validCodedValueSet',
          ) ??
          this.validCodedValueSet,
      normalCodedValueSet: normalCodedValueSet?.copyWith(
            objectPath: '$newObjectPath.normalCodedValueSet',
          ) ??
          this.normalCodedValueSet,
      abnormalCodedValueSet: abnormalCodedValueSet?.copyWith(
            objectPath: '$newObjectPath.abnormalCodedValueSet',
          ) ??
          this.abnormalCodedValueSet,
      criticalCodedValueSet: criticalCodedValueSet?.copyWith(
            objectPath: '$newObjectPath.criticalCodedValueSet',
          ) ??
          this.criticalCodedValueSet,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ObservationDefinition) {
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
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
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
    if (!listEquals<CodeableConcept>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<ObservationDataType>(
      permittedDataType,
      o.permittedDataType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(multipleResultsAllowed, o.multipleResultsAllowed)) {
      return false;
    }
    if (!equalsDeepWithNull(method, o.method)) {
      return false;
    }
    if (!equalsDeepWithNull(preferredReportName, o.preferredReportName)) {
      return false;
    }
    if (!equalsDeepWithNull(quantitativeDetails, o.quantitativeDetails)) {
      return false;
    }
    if (!listEquals<ObservationDefinitionQualifiedInterval>(
      qualifiedInterval,
      o.qualifiedInterval,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(validCodedValueSet, o.validCodedValueSet)) {
      return false;
    }
    if (!equalsDeepWithNull(normalCodedValueSet, o.normalCodedValueSet)) {
      return false;
    }
    if (!equalsDeepWithNull(abnormalCodedValueSet, o.abnormalCodedValueSet)) {
      return false;
    }
    if (!equalsDeepWithNull(criticalCodedValueSet, o.criticalCodedValueSet)) {
      return false;
    }
    return true;
  }
}

/// [ObservationDefinitionQuantitativeDetails]
/// Characteristics for quantitative results of this observation.
class ObservationDefinitionQuantitativeDetails extends BackboneElement {
  /// Primary constructor for
  /// [ObservationDefinitionQuantitativeDetails]

  const ObservationDefinitionQuantitativeDetails({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.customaryUnit,
    this.unit,
    this.conversionFactor,
    this.decimalPrecision,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ObservationDefinition.quantitativeDetails',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ObservationDefinitionQuantitativeDetails.empty() =>
      const ObservationDefinitionQuantitativeDetails();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinitionQuantitativeDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ObservationDefinition.quantitativeDetails';
    return ObservationDefinitionQuantitativeDetails(
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
      customaryUnit: JsonParser.parseObject<CodeableConcept>(
        json,
        'customaryUnit',
        CodeableConcept.fromJson,
        '$objectPath.customaryUnit',
      ),
      unit: JsonParser.parseObject<CodeableConcept>(
        json,
        'unit',
        CodeableConcept.fromJson,
        '$objectPath.unit',
      ),
      conversionFactor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'conversionFactor',
        FhirDecimal.fromJson,
        '$objectPath.conversionFactor',
      ),
      decimalPrecision: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'decimalPrecision',
        FhirInteger.fromJson,
        '$objectPath.decimalPrecision',
      ),
    );
  }

  /// Deserialize [ObservationDefinitionQuantitativeDetails]
  /// from a [String] or [YamlMap] object
  factory ObservationDefinitionQuantitativeDetails.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationDefinitionQuantitativeDetails.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationDefinitionQuantitativeDetails.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationDefinitionQuantitativeDetails '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationDefinitionQuantitativeDetails]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationDefinitionQuantitativeDetails.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ObservationDefinitionQuantitativeDetails.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ObservationDefinitionQuantitativeDetails';

  /// [customaryUnit]
  /// Customary unit used to report quantitative results of observations
  /// conforming to this ObservationDefinition.
  final CodeableConcept? customaryUnit;

  /// [unit]
  /// SI unit used to report quantitative results of observations conforming
  /// to this ObservationDefinition.
  final CodeableConcept? unit;

  /// [conversionFactor]
  /// Factor for converting value expressed with SI unit to value expressed
  /// with customary unit.
  final FhirDecimal? conversionFactor;

  /// [decimalPrecision]
  /// Number of digits after decimal separator when the results of such
  /// observations are of type Quantity.
  final FhirInteger? decimalPrecision;
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
    addField('customaryUnit', customaryUnit);
    addField('unit', unit);
    addField('conversionFactor', conversionFactor);
    addField('decimalPrecision', decimalPrecision);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'customaryUnit',
      'unit',
      'conversionFactor',
      'decimalPrecision',
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
      case 'customaryUnit':
        if (customaryUnit != null) {
          fields.add(customaryUnit!);
        }
      case 'unit':
        if (unit != null) {
          fields.add(unit!);
        }
      case 'conversionFactor':
        if (conversionFactor != null) {
          fields.add(conversionFactor!);
        }
      case 'decimalPrecision':
        if (decimalPrecision != null) {
          fields.add(decimalPrecision!);
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
      case 'customaryUnit':
        {
          if (child is CodeableConcept) {
            return copyWith(customaryUnit: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'unit':
        {
          if (child is CodeableConcept) {
            return copyWith(unit: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'conversionFactor':
        {
          if (child is FhirDecimal) {
            return copyWith(conversionFactor: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'decimalPrecision':
        {
          if (child is FhirInteger) {
            return copyWith(decimalPrecision: child);
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
      case 'customaryUnit':
        return ['CodeableConcept'];
      case 'unit':
        return ['CodeableConcept'];
      case 'conversionFactor':
        return ['FhirDecimal'];
      case 'decimalPrecision':
        return ['FhirInteger'];
      default:
        return <String>[];
    }
  }

  @override
  ObservationDefinitionQuantitativeDetails clone() =>
      throw UnimplementedError();
  @override
  ObservationDefinitionQuantitativeDetails copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? customaryUnit,
    CodeableConcept? unit,
    FhirDecimal? conversionFactor,
    FhirInteger? decimalPrecision,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ObservationDefinitionQuantitativeDetails(
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
      customaryUnit: customaryUnit?.copyWith(
            objectPath: '$newObjectPath.customaryUnit',
          ) ??
          this.customaryUnit,
      unit: unit?.copyWith(
            objectPath: '$newObjectPath.unit',
          ) ??
          this.unit,
      conversionFactor: conversionFactor?.copyWith(
            objectPath: '$newObjectPath.conversionFactor',
          ) ??
          this.conversionFactor,
      decimalPrecision: decimalPrecision?.copyWith(
            objectPath: '$newObjectPath.decimalPrecision',
          ) ??
          this.decimalPrecision,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ObservationDefinitionQuantitativeDetails) {
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
    if (!equalsDeepWithNull(customaryUnit, o.customaryUnit)) {
      return false;
    }
    if (!equalsDeepWithNull(unit, o.unit)) {
      return false;
    }
    if (!equalsDeepWithNull(conversionFactor, o.conversionFactor)) {
      return false;
    }
    if (!equalsDeepWithNull(decimalPrecision, o.decimalPrecision)) {
      return false;
    }
    return true;
  }
}

/// [ObservationDefinitionQualifiedInterval]
/// Multiple ranges of results qualified by different contexts for ordinal
/// or continuous observations conforming to this ObservationDefinition.
class ObservationDefinitionQualifiedInterval extends BackboneElement {
  /// Primary constructor for
  /// [ObservationDefinitionQualifiedInterval]

  const ObservationDefinitionQualifiedInterval({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.range,
    this.context,
    this.appliesTo,
    this.gender,
    this.age,
    this.gestationalAge,
    this.condition,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ObservationDefinition.qualifiedInterval',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ObservationDefinitionQualifiedInterval.empty() =>
      const ObservationDefinitionQualifiedInterval();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinitionQualifiedInterval.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ObservationDefinition.qualifiedInterval';
    return ObservationDefinitionQualifiedInterval(
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
      category: JsonParser.parsePrimitive<ObservationRangeCategory>(
        json,
        'category',
        ObservationRangeCategory.fromJson,
        '$objectPath.category',
      ),
      range: JsonParser.parseObject<Range>(
        json,
        'range',
        Range.fromJson,
        '$objectPath.range',
      ),
      context: JsonParser.parseObject<CodeableConcept>(
        json,
        'context',
        CodeableConcept.fromJson,
        '$objectPath.context',
      ),
      appliesTo: (json['appliesTo'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.appliesTo',
              },
            ),
          )
          .toList(),
      gender: JsonParser.parsePrimitive<AdministrativeGender>(
        json,
        'gender',
        AdministrativeGender.fromJson,
        '$objectPath.gender',
      ),
      age: JsonParser.parseObject<Range>(
        json,
        'age',
        Range.fromJson,
        '$objectPath.age',
      ),
      gestationalAge: JsonParser.parseObject<Range>(
        json,
        'gestationalAge',
        Range.fromJson,
        '$objectPath.gestationalAge',
      ),
      condition: JsonParser.parsePrimitive<FhirString>(
        json,
        'condition',
        FhirString.fromJson,
        '$objectPath.condition',
      ),
    );
  }

  /// Deserialize [ObservationDefinitionQualifiedInterval]
  /// from a [String] or [YamlMap] object
  factory ObservationDefinitionQualifiedInterval.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationDefinitionQualifiedInterval.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationDefinitionQualifiedInterval.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationDefinitionQualifiedInterval '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationDefinitionQualifiedInterval]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationDefinitionQualifiedInterval.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ObservationDefinitionQualifiedInterval.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ObservationDefinitionQualifiedInterval';

  /// [category]
  /// The category of interval of values for continuous or ordinal
  /// observations conforming to this ObservationDefinition.
  final ObservationRangeCategory? category;

  /// [range]
  /// The low and high values determining the interval. There may be only one
  /// of the two.
  final Range? range;

  /// [context]
  /// Codes to indicate the health context the range applies to. For example,
  /// the normal or therapeutic range.
  final CodeableConcept? context;

  /// [appliesTo]
  /// Codes to indicate the target population this reference range applies
  /// to.
  final List<CodeableConcept>? appliesTo;

  /// [gender]
  /// Sex of the population the range applies to.
  final AdministrativeGender? gender;

  /// [age]
  /// The age at which this reference range is applicable. This is a neonatal
  /// age (e.g. number of weeks at term) if the meaning says so.
  final Range? age;

  /// [gestationalAge]
  /// The gestational age to which this reference range is applicable, in the
  /// context of pregnancy.
  final Range? gestationalAge;

  /// [condition]
  /// Text based condition for which the reference range is valid.
  final FhirString? condition;
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
    addField('category', category);
    addField('range', range);
    addField('context', context);
    addField('appliesTo', appliesTo);
    addField('gender', gender);
    addField('age', age);
    addField('gestationalAge', gestationalAge);
    addField('condition', condition);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'category',
      'range',
      'context',
      'appliesTo',
      'gender',
      'age',
      'gestationalAge',
      'condition',
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
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'range':
        if (range != null) {
          fields.add(range!);
        }
      case 'context':
        if (context != null) {
          fields.add(context!);
        }
      case 'appliesTo':
        if (appliesTo != null) {
          fields.addAll(appliesTo!);
        }
      case 'gender':
        if (gender != null) {
          fields.add(gender!);
        }
      case 'age':
        if (age != null) {
          fields.add(age!);
        }
      case 'gestationalAge':
        if (gestationalAge != null) {
          fields.add(gestationalAge!);
        }
      case 'condition':
        if (condition != null) {
          fields.add(condition!);
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
      case 'category':
        {
          if (child is ObservationRangeCategory) {
            return copyWith(category: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'range':
        {
          if (child is Range) {
            return copyWith(range: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'context':
        {
          if (child is CodeableConcept) {
            return copyWith(context: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'appliesTo':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(appliesTo: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'gender':
        {
          if (child is AdministrativeGender) {
            return copyWith(gender: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'age':
        {
          if (child is Range) {
            return copyWith(age: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'gestationalAge':
        {
          if (child is Range) {
            return copyWith(gestationalAge: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'condition':
        {
          if (child is FhirString) {
            return copyWith(condition: child);
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
      case 'category':
        return ['FhirCode'];
      case 'range':
        return ['Range'];
      case 'context':
        return ['CodeableConcept'];
      case 'appliesTo':
        return ['CodeableConcept'];
      case 'gender':
        return ['FhirCode'];
      case 'age':
        return ['Range'];
      case 'gestationalAge':
        return ['Range'];
      case 'condition':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  @override
  ObservationDefinitionQualifiedInterval clone() => throw UnimplementedError();
  @override
  ObservationDefinitionQualifiedInterval copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ObservationRangeCategory? category,
    Range? range,
    CodeableConcept? context,
    List<CodeableConcept>? appliesTo,
    AdministrativeGender? gender,
    Range? age,
    Range? gestationalAge,
    FhirString? condition,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ObservationDefinitionQualifiedInterval(
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
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      range: range?.copyWith(
            objectPath: '$newObjectPath.range',
          ) ??
          this.range,
      context: context?.copyWith(
            objectPath: '$newObjectPath.context',
          ) ??
          this.context,
      appliesTo: appliesTo
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.appliesTo',
                ),
              )
              .toList() ??
          this.appliesTo,
      gender: gender?.copyWith(
            objectPath: '$newObjectPath.gender',
          ) ??
          this.gender,
      age: age?.copyWith(
            objectPath: '$newObjectPath.age',
          ) ??
          this.age,
      gestationalAge: gestationalAge?.copyWith(
            objectPath: '$newObjectPath.gestationalAge',
          ) ??
          this.gestationalAge,
      condition: condition?.copyWith(
            objectPath: '$newObjectPath.condition',
          ) ??
          this.condition,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ObservationDefinitionQualifiedInterval) {
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
    if (!equalsDeepWithNull(category, o.category)) {
      return false;
    }
    if (!equalsDeepWithNull(range, o.range)) {
      return false;
    }
    if (!equalsDeepWithNull(context, o.context)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      appliesTo,
      o.appliesTo,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(gender, o.gender)) {
      return false;
    }
    if (!equalsDeepWithNull(age, o.age)) {
      return false;
    }
    if (!equalsDeepWithNull(gestationalAge, o.gestationalAge)) {
      return false;
    }
    if (!equalsDeepWithNull(condition, o.condition)) {
      return false;
    }
    return true;
  }
}
