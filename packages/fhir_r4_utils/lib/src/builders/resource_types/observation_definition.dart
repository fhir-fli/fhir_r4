import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        ObservationDefinition,
        ObservationDefinitionQualifiedInterval,
        ObservationDefinitionQuantitativeDetails,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [ObservationDefinitionBuilder]
/// Set of definitional characteristics for a kind of observation or
/// measurement produced or consumed by an orderable health care service.
class ObservationDefinitionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ObservationDefinitionBuilder]

  ObservationDefinitionBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.code,
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
  /// For Builder classes, no fields are required
  factory ObservationDefinitionBuilder.empty() =>
      ObservationDefinitionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ObservationDefinition';
    return ObservationDefinitionBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      permittedDataType:
          JsonParser.parsePrimitiveList<ObservationDataTypeBuilder>(
        json,
        'permittedDataType',
        ObservationDataTypeBuilder.fromJson,
        '$objectPath.permittedDataType',
      ),
      multipleResultsAllowed: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'multipleResultsAllowed',
        FhirBooleanBuilder.fromJson,
        '$objectPath.multipleResultsAllowed',
      ),
      method: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'method',
        CodeableConceptBuilder.fromJson,
        '$objectPath.method',
      ),
      preferredReportName: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'preferredReportName',
        FhirStringBuilder.fromJson,
        '$objectPath.preferredReportName',
      ),
      quantitativeDetails: JsonParser.parseObject<
          ObservationDefinitionQuantitativeDetailsBuilder>(
        json,
        'quantitativeDetails',
        ObservationDefinitionQuantitativeDetailsBuilder.fromJson,
        '$objectPath.quantitativeDetails',
      ),
      qualifiedInterval: (json['qualifiedInterval'] as List<dynamic>?)
          ?.map<ObservationDefinitionQualifiedIntervalBuilder>(
            (v) => ObservationDefinitionQualifiedIntervalBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.qualifiedInterval',
              },
            ),
          )
          .toList(),
      validCodedValueSet: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'validCodedValueSet',
        ReferenceBuilder.fromJson,
        '$objectPath.validCodedValueSet',
      ),
      normalCodedValueSet: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'normalCodedValueSet',
        ReferenceBuilder.fromJson,
        '$objectPath.normalCodedValueSet',
      ),
      abnormalCodedValueSet: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'abnormalCodedValueSet',
        ReferenceBuilder.fromJson,
        '$objectPath.abnormalCodedValueSet',
      ),
      criticalCodedValueSet: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'criticalCodedValueSet',
        ReferenceBuilder.fromJson,
        '$objectPath.criticalCodedValueSet',
      ),
    );
  }

  /// Deserialize [ObservationDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory ObservationDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ObservationDefinitionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ObservationDefinition';

  /// [category]
  /// A code that classifies the general type of observation.
  List<CodeableConceptBuilder>? category;

  /// [code]
  /// Describes what will be observed. Sometimes this is called the
  /// observation "name".
  CodeableConceptBuilder? code;

  /// [identifier]
  /// A unique identifier assigned to this ObservationDefinition artifact.
  List<IdentifierBuilder>? identifier;

  /// [permittedDataType]
  /// The data types allowed for the value element of the instance
  /// observations conforming to this ObservationDefinition.
  List<ObservationDataTypeBuilder>? permittedDataType;

  /// [multipleResultsAllowed]
  /// Multiple results allowed for observations conforming to this
  /// ObservationDefinition.
  FhirBooleanBuilder? multipleResultsAllowed;

  /// [method]
  /// The method or technique used to perform the observation.
  CodeableConceptBuilder? method;

  /// [preferredReportName]
  /// The preferred name to be used when reporting the results of
  /// observations conforming to this ObservationDefinition.
  FhirStringBuilder? preferredReportName;

  /// [quantitativeDetails]
  /// Characteristics for quantitative results of this observation.
  ObservationDefinitionQuantitativeDetailsBuilder? quantitativeDetails;

  /// [qualifiedInterval]
  /// Multiple ranges of results qualified by different contexts for ordinal
  /// or continuous observations conforming to this ObservationDefinition.
  List<ObservationDefinitionQualifiedIntervalBuilder>? qualifiedInterval;

  /// [validCodedValueSet]
  /// The set of valid coded results for the observations conforming to this
  /// ObservationDefinition.
  ReferenceBuilder? validCodedValueSet;

  /// [normalCodedValueSet]
  /// The set of normal coded results for the observations conforming to this
  /// ObservationDefinition.
  ReferenceBuilder? normalCodedValueSet;

  /// [abnormalCodedValueSet]
  /// The set of abnormal coded results for the observation conforming to
  /// this ObservationDefinition.
  ReferenceBuilder? abnormalCodedValueSet;

  /// [criticalCodedValueSet]
  /// The set of critical coded results for the observation conforming to
  /// this ObservationDefinition.
  ReferenceBuilder? criticalCodedValueSet;

  /// Converts a [ObservationDefinitionBuilder]
  /// to [ObservationDefinition]
  @override
  ObservationDefinition build() => ObservationDefinition.fromJson(toJson());

  /// Converts a [ObservationDefinitionBuilder]
  /// to a [Map<String, dynamic>]
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
        if (code != null) {
          fields.add(code!);
        }
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'category':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            category = [
              ...(category ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'permittedDataType':
        {
          if (child is List<ObservationDataTypeBuilder>) {
            // Replace or create new list
            permittedDataType = child;
            return;
          } else if (child is ObservationDataTypeBuilder) {
            // Add single element to existing list or create new list
            permittedDataType = [
              ...(permittedDataType ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <ObservationDataTypeBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For enums, try to create directly from the string value
                try {
                  final converted = ObservationDataTypeBuilder(stringValue);
                  convertedList.add(converted);
                } catch (e) {
                  // Continue if enum creation fails
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              permittedDataType = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ObservationDataTypeBuilder(stringValue);
                permittedDataType = [...(permittedDataType ?? []), converted];
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'multipleResultsAllowed':
        {
          if (child is FhirBooleanBuilder) {
            multipleResultsAllowed = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                multipleResultsAllowed = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'method':
        {
          if (child is CodeableConceptBuilder) {
            method = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'preferredReportName':
        {
          if (child is FhirStringBuilder) {
            preferredReportName = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                preferredReportName = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantitativeDetails':
        {
          if (child is ObservationDefinitionQuantitativeDetailsBuilder) {
            quantitativeDetails = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'qualifiedInterval':
        {
          if (child is List<ObservationDefinitionQualifiedIntervalBuilder>) {
            // Replace or create new list
            qualifiedInterval = child;
            return;
          } else if (child is ObservationDefinitionQualifiedIntervalBuilder) {
            // Add single element to existing list or create new list
            qualifiedInterval = [
              ...(qualifiedInterval ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'validCodedValueSet':
        {
          if (child is ReferenceBuilder) {
            validCodedValueSet = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'normalCodedValueSet':
        {
          if (child is ReferenceBuilder) {
            normalCodedValueSet = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'abnormalCodedValueSet':
        {
          if (child is ReferenceBuilder) {
            abnormalCodedValueSet = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'criticalCodedValueSet':
        {
          if (child is ReferenceBuilder) {
            criticalCodedValueSet = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'permittedDataType':
        return ['FhirCodeEnumBuilder'];
      case 'multipleResultsAllowed':
        return ['FhirBooleanBuilder'];
      case 'method':
        return ['CodeableConceptBuilder'];
      case 'preferredReportName':
        return ['FhirStringBuilder'];
      case 'quantitativeDetails':
        return ['ObservationDefinitionQuantitativeDetailsBuilder'];
      case 'qualifiedInterval':
        return ['ObservationDefinitionQualifiedIntervalBuilder'];
      case 'validCodedValueSet':
        return ['ReferenceBuilder'];
      case 'normalCodedValueSet':
        return ['ReferenceBuilder'];
      case 'abnormalCodedValueSet':
        return ['ReferenceBuilder'];
      case 'criticalCodedValueSet':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ObservationDefinitionBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'permittedDataType':
        {
          permittedDataType = <ObservationDataTypeBuilder>[];
          return;
        }
      case 'multipleResultsAllowed':
        {
          multipleResultsAllowed = FhirBooleanBuilder.empty();
          return;
        }
      case 'method':
        {
          method = CodeableConceptBuilder.empty();
          return;
        }
      case 'preferredReportName':
        {
          preferredReportName = FhirStringBuilder.empty();
          return;
        }
      case 'quantitativeDetails':
        {
          quantitativeDetails =
              ObservationDefinitionQuantitativeDetailsBuilder.empty();
          return;
        }
      case 'qualifiedInterval':
        {
          qualifiedInterval = <ObservationDefinitionQualifiedIntervalBuilder>[];
          return;
        }
      case 'validCodedValueSet':
        {
          validCodedValueSet = ReferenceBuilder.empty();
          return;
        }
      case 'normalCodedValueSet':
        {
          normalCodedValueSet = ReferenceBuilder.empty();
          return;
        }
      case 'abnormalCodedValueSet':
        {
          abnormalCodedValueSet = ReferenceBuilder.empty();
          return;
        }
      case 'criticalCodedValueSet':
        {
          criticalCodedValueSet = ReferenceBuilder.empty();
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
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool category = false,
    bool code = false,
    bool identifier = false,
    bool permittedDataType = false,
    bool multipleResultsAllowed = false,
    bool method = false,
    bool preferredReportName = false,
    bool quantitativeDetails = false,
    bool qualifiedInterval = false,
    bool validCodedValueSet = false,
    bool normalCodedValueSet = false,
    bool abnormalCodedValueSet = false,
    bool criticalCodedValueSet = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (category) this.category = null;
    if (code) this.code = null;
    if (identifier) this.identifier = null;
    if (permittedDataType) this.permittedDataType = null;
    if (multipleResultsAllowed) this.multipleResultsAllowed = null;
    if (method) this.method = null;
    if (preferredReportName) this.preferredReportName = null;
    if (quantitativeDetails) this.quantitativeDetails = null;
    if (qualifiedInterval) this.qualifiedInterval = null;
    if (validCodedValueSet) this.validCodedValueSet = null;
    if (normalCodedValueSet) this.normalCodedValueSet = null;
    if (abnormalCodedValueSet) this.abnormalCodedValueSet = null;
    if (criticalCodedValueSet) this.criticalCodedValueSet = null;
  }

  @override
  ObservationDefinitionBuilder clone() => throw UnimplementedError();
  @override
  ObservationDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<CodeableConceptBuilder>? category,
    CodeableConceptBuilder? code,
    List<IdentifierBuilder>? identifier,
    List<ObservationDataTypeBuilder>? permittedDataType,
    FhirBooleanBuilder? multipleResultsAllowed,
    CodeableConceptBuilder? method,
    FhirStringBuilder? preferredReportName,
    ObservationDefinitionQuantitativeDetailsBuilder? quantitativeDetails,
    List<ObservationDefinitionQualifiedIntervalBuilder>? qualifiedInterval,
    ReferenceBuilder? validCodedValueSet,
    ReferenceBuilder? normalCodedValueSet,
    ReferenceBuilder? abnormalCodedValueSet,
    ReferenceBuilder? criticalCodedValueSet,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ObservationDefinitionBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      code: code ?? this.code,
      identifier: identifier ?? this.identifier,
      permittedDataType: permittedDataType ?? this.permittedDataType,
      multipleResultsAllowed:
          multipleResultsAllowed ?? this.multipleResultsAllowed,
      method: method ?? this.method,
      preferredReportName: preferredReportName ?? this.preferredReportName,
      quantitativeDetails: quantitativeDetails ?? this.quantitativeDetails,
      qualifiedInterval: qualifiedInterval ?? this.qualifiedInterval,
      validCodedValueSet: validCodedValueSet ?? this.validCodedValueSet,
      normalCodedValueSet: normalCodedValueSet ?? this.normalCodedValueSet,
      abnormalCodedValueSet:
          abnormalCodedValueSet ?? this.abnormalCodedValueSet,
      criticalCodedValueSet:
          criticalCodedValueSet ?? this.criticalCodedValueSet,
    )..objectPath = newObjectPath;
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
    if (o is! ObservationDefinitionBuilder) {
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
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<ObservationDataTypeBuilder>(
      permittedDataType,
      o.permittedDataType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      multipleResultsAllowed,
      o.multipleResultsAllowed,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      method,
      o.method,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preferredReportName,
      o.preferredReportName,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantitativeDetails,
      o.quantitativeDetails,
    )) {
      return false;
    }
    if (!listEquals<ObservationDefinitionQualifiedIntervalBuilder>(
      qualifiedInterval,
      o.qualifiedInterval,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      validCodedValueSet,
      o.validCodedValueSet,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      normalCodedValueSet,
      o.normalCodedValueSet,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      abnormalCodedValueSet,
      o.abnormalCodedValueSet,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      criticalCodedValueSet,
      o.criticalCodedValueSet,
    )) {
      return false;
    }
    return true;
  }
}

/// [ObservationDefinitionQuantitativeDetailsBuilder]
/// Characteristics for quantitative results of this observation.
class ObservationDefinitionQuantitativeDetailsBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ObservationDefinitionQuantitativeDetailsBuilder]

  ObservationDefinitionQuantitativeDetailsBuilder({
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
  /// For Builder classes, no fields are required
  factory ObservationDefinitionQuantitativeDetailsBuilder.empty() =>
      ObservationDefinitionQuantitativeDetailsBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinitionQuantitativeDetailsBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ObservationDefinition.quantitativeDetails';
    return ObservationDefinitionQuantitativeDetailsBuilder(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      customaryUnit: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'customaryUnit',
        CodeableConceptBuilder.fromJson,
        '$objectPath.customaryUnit',
      ),
      unit: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'unit',
        CodeableConceptBuilder.fromJson,
        '$objectPath.unit',
      ),
      conversionFactor: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'conversionFactor',
        FhirDecimalBuilder.fromJson,
        '$objectPath.conversionFactor',
      ),
      decimalPrecision: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'decimalPrecision',
        FhirIntegerBuilder.fromJson,
        '$objectPath.decimalPrecision',
      ),
    );
  }

  /// Deserialize [ObservationDefinitionQuantitativeDetailsBuilder]
  /// from a [String] or [YamlMap] object
  factory ObservationDefinitionQuantitativeDetailsBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationDefinitionQuantitativeDetailsBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationDefinitionQuantitativeDetailsBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationDefinitionQuantitativeDetailsBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationDefinitionQuantitativeDetailsBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationDefinitionQuantitativeDetailsBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ObservationDefinitionQuantitativeDetailsBuilder.fromJson(json);
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
  CodeableConceptBuilder? customaryUnit;

  /// [unit]
  /// SI unit used to report quantitative results of observations conforming
  /// to this ObservationDefinition.
  CodeableConceptBuilder? unit;

  /// [conversionFactor]
  /// Factor for converting value expressed with SI unit to value expressed
  /// with customary unit.
  FhirDecimalBuilder? conversionFactor;

  /// [decimalPrecision]
  /// Number of digits after decimal separator when the results of such
  /// observations are of type Quantity.
  FhirIntegerBuilder? decimalPrecision;

  /// Converts a [ObservationDefinitionQuantitativeDetailsBuilder]
  /// to [ObservationDefinitionQuantitativeDetails]
  @override
  ObservationDefinitionQuantitativeDetails build() =>
      ObservationDefinitionQuantitativeDetails.fromJson(toJson());

  /// Converts a [ObservationDefinitionQuantitativeDetailsBuilder]
  /// to a [Map<String, dynamic>]
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'customaryUnit':
        {
          if (child is CodeableConceptBuilder) {
            customaryUnit = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'unit':
        {
          if (child is CodeableConceptBuilder) {
            unit = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'conversionFactor':
        {
          if (child is FhirDecimalBuilder) {
            conversionFactor = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  conversionFactor = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'decimalPrecision':
        {
          if (child is FhirIntegerBuilder) {
            decimalPrecision = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  decimalPrecision = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'customaryUnit':
        return ['CodeableConceptBuilder'];
      case 'unit':
        return ['CodeableConceptBuilder'];
      case 'conversionFactor':
        return ['FhirDecimalBuilder'];
      case 'decimalPrecision':
        return ['FhirIntegerBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ObservationDefinitionQuantitativeDetailsBuilder]
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
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'customaryUnit':
        {
          customaryUnit = CodeableConceptBuilder.empty();
          return;
        }
      case 'unit':
        {
          unit = CodeableConceptBuilder.empty();
          return;
        }
      case 'conversionFactor':
        {
          conversionFactor = FhirDecimalBuilder.empty();
          return;
        }
      case 'decimalPrecision':
        {
          decimalPrecision = FhirIntegerBuilder.empty();
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
    bool modifierExtension = false,
    bool customaryUnit = false,
    bool unit = false,
    bool conversionFactor = false,
    bool decimalPrecision = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (customaryUnit) this.customaryUnit = null;
    if (unit) this.unit = null;
    if (conversionFactor) this.conversionFactor = null;
    if (decimalPrecision) this.decimalPrecision = null;
  }

  @override
  ObservationDefinitionQuantitativeDetailsBuilder clone() =>
      throw UnimplementedError();
  @override
  ObservationDefinitionQuantitativeDetailsBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? customaryUnit,
    CodeableConceptBuilder? unit,
    FhirDecimalBuilder? conversionFactor,
    FhirIntegerBuilder? decimalPrecision,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ObservationDefinitionQuantitativeDetailsBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      customaryUnit: customaryUnit ?? this.customaryUnit,
      unit: unit ?? this.unit,
      conversionFactor: conversionFactor ?? this.conversionFactor,
      decimalPrecision: decimalPrecision ?? this.decimalPrecision,
    )..objectPath = newObjectPath;
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
    if (o is! ObservationDefinitionQuantitativeDetailsBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      customaryUnit,
      o.customaryUnit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unit,
      o.unit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      conversionFactor,
      o.conversionFactor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      decimalPrecision,
      o.decimalPrecision,
    )) {
      return false;
    }
    return true;
  }
}

/// [ObservationDefinitionQualifiedIntervalBuilder]
/// Multiple ranges of results qualified by different contexts for ordinal
/// or continuous observations conforming to this ObservationDefinition.
class ObservationDefinitionQualifiedIntervalBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ObservationDefinitionQualifiedIntervalBuilder]

  ObservationDefinitionQualifiedIntervalBuilder({
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
  /// For Builder classes, no fields are required
  factory ObservationDefinitionQualifiedIntervalBuilder.empty() =>
      ObservationDefinitionQualifiedIntervalBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinitionQualifiedIntervalBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ObservationDefinition.qualifiedInterval';
    return ObservationDefinitionQualifiedIntervalBuilder(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      category: JsonParser.parsePrimitive<ObservationRangeCategoryBuilder>(
        json,
        'category',
        ObservationRangeCategoryBuilder.fromJson,
        '$objectPath.category',
      ),
      range: JsonParser.parseObject<RangeBuilder>(
        json,
        'range',
        RangeBuilder.fromJson,
        '$objectPath.range',
      ),
      context: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'context',
        CodeableConceptBuilder.fromJson,
        '$objectPath.context',
      ),
      appliesTo: (json['appliesTo'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.appliesTo',
              },
            ),
          )
          .toList(),
      gender: JsonParser.parsePrimitive<AdministrativeGenderBuilder>(
        json,
        'gender',
        AdministrativeGenderBuilder.fromJson,
        '$objectPath.gender',
      ),
      age: JsonParser.parseObject<RangeBuilder>(
        json,
        'age',
        RangeBuilder.fromJson,
        '$objectPath.age',
      ),
      gestationalAge: JsonParser.parseObject<RangeBuilder>(
        json,
        'gestationalAge',
        RangeBuilder.fromJson,
        '$objectPath.gestationalAge',
      ),
      condition: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'condition',
        FhirStringBuilder.fromJson,
        '$objectPath.condition',
      ),
    );
  }

  /// Deserialize [ObservationDefinitionQualifiedIntervalBuilder]
  /// from a [String] or [YamlMap] object
  factory ObservationDefinitionQualifiedIntervalBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationDefinitionQualifiedIntervalBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationDefinitionQualifiedIntervalBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationDefinitionQualifiedIntervalBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationDefinitionQualifiedIntervalBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationDefinitionQualifiedIntervalBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ObservationDefinitionQualifiedIntervalBuilder.fromJson(json);
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
  ObservationRangeCategoryBuilder? category;

  /// [range]
  /// The low and high values determining the interval. There may be only one
  /// of the two.
  RangeBuilder? range;

  /// [context]
  /// Codes to indicate the health context the range applies to. For example,
  /// the normal or therapeutic range.
  CodeableConceptBuilder? context;

  /// [appliesTo]
  /// Codes to indicate the target population this reference range applies
  /// to.
  List<CodeableConceptBuilder>? appliesTo;

  /// [gender]
  /// Sex of the population the range applies to.
  AdministrativeGenderBuilder? gender;

  /// [age]
  /// The age at which this reference range is applicable. This is a neonatal
  /// age (e.g. number of weeks at term) if the meaning says so.
  RangeBuilder? age;

  /// [gestationalAge]
  /// The gestational age to which this reference range is applicable, in the
  /// context of pregnancy.
  RangeBuilder? gestationalAge;

  /// [condition]
  /// Text based condition for which the reference range is valid.
  FhirStringBuilder? condition;

  /// Converts a [ObservationDefinitionQualifiedIntervalBuilder]
  /// to [ObservationDefinitionQualifiedInterval]
  @override
  ObservationDefinitionQualifiedInterval build() =>
      ObservationDefinitionQualifiedInterval.fromJson(toJson());

  /// Converts a [ObservationDefinitionQualifiedIntervalBuilder]
  /// to a [Map<String, dynamic>]
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'category':
        {
          if (child is ObservationRangeCategoryBuilder) {
            category = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ObservationRangeCategoryBuilder(stringValue);
                category = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'range':
        {
          if (child is RangeBuilder) {
            range = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'context':
        {
          if (child is CodeableConceptBuilder) {
            context = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'appliesTo':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            appliesTo = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            appliesTo = [
              ...(appliesTo ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'gender':
        {
          if (child is AdministrativeGenderBuilder) {
            gender = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AdministrativeGenderBuilder(stringValue);
                gender = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'age':
        {
          if (child is RangeBuilder) {
            age = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'gestationalAge':
        {
          if (child is RangeBuilder) {
            gestationalAge = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'condition':
        {
          if (child is FhirStringBuilder) {
            condition = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                condition = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'category':
        return ['FhirCodeEnumBuilder'];
      case 'range':
        return ['RangeBuilder'];
      case 'context':
        return ['CodeableConceptBuilder'];
      case 'appliesTo':
        return ['CodeableConceptBuilder'];
      case 'gender':
        return ['FhirCodeEnumBuilder'];
      case 'age':
        return ['RangeBuilder'];
      case 'gestationalAge':
        return ['RangeBuilder'];
      case 'condition':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ObservationDefinitionQualifiedIntervalBuilder]
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
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'category':
        {
          category = ObservationRangeCategoryBuilder.empty();
          return;
        }
      case 'range':
        {
          range = RangeBuilder.empty();
          return;
        }
      case 'context':
        {
          context = CodeableConceptBuilder.empty();
          return;
        }
      case 'appliesTo':
        {
          appliesTo = <CodeableConceptBuilder>[];
          return;
        }
      case 'gender':
        {
          gender = AdministrativeGenderBuilder.empty();
          return;
        }
      case 'age':
        {
          age = RangeBuilder.empty();
          return;
        }
      case 'gestationalAge':
        {
          gestationalAge = RangeBuilder.empty();
          return;
        }
      case 'condition':
        {
          condition = FhirStringBuilder.empty();
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
    bool modifierExtension = false,
    bool category = false,
    bool range = false,
    bool context = false,
    bool appliesTo = false,
    bool gender = false,
    bool age = false,
    bool gestationalAge = false,
    bool condition = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (category) this.category = null;
    if (range) this.range = null;
    if (context) this.context = null;
    if (appliesTo) this.appliesTo = null;
    if (gender) this.gender = null;
    if (age) this.age = null;
    if (gestationalAge) this.gestationalAge = null;
    if (condition) this.condition = null;
  }

  @override
  ObservationDefinitionQualifiedIntervalBuilder clone() =>
      throw UnimplementedError();
  @override
  ObservationDefinitionQualifiedIntervalBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ObservationRangeCategoryBuilder? category,
    RangeBuilder? range,
    CodeableConceptBuilder? context,
    List<CodeableConceptBuilder>? appliesTo,
    AdministrativeGenderBuilder? gender,
    RangeBuilder? age,
    RangeBuilder? gestationalAge,
    FhirStringBuilder? condition,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ObservationDefinitionQualifiedIntervalBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      range: range ?? this.range,
      context: context ?? this.context,
      appliesTo: appliesTo ?? this.appliesTo,
      gender: gender ?? this.gender,
      age: age ?? this.age,
      gestationalAge: gestationalAge ?? this.gestationalAge,
      condition: condition ?? this.condition,
    )..objectPath = newObjectPath;
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
    if (o is! ObservationDefinitionQualifiedIntervalBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      range,
      o.range,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      context,
      o.context,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      appliesTo,
      o.appliesTo,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      gender,
      o.gender,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      age,
      o.age,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      gestationalAge,
      o.gestationalAge,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      condition,
      o.condition,
    )) {
      return false;
    }
    return true;
  }
}
