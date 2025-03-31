import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        R4ResourceType,
        SpecimenDefinition,
        SpecimenDefinitionAdditive,
        SpecimenDefinitionContainer,
        SpecimenDefinitionHandling,
        SpecimenDefinitionTypeTested,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [SpecimenDefinitionBuilder]
/// A kind of specimen with associated set of requirements.
class SpecimenDefinitionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [SpecimenDefinitionBuilder]

  SpecimenDefinitionBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.typeCollected,
    this.patientPreparation,
    this.timeAspect,
    this.collection,
    this.typeTested,
  }) : super(
          objectPath: 'SpecimenDefinition',
          resourceType: R4ResourceType.SpecimenDefinition,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SpecimenDefinitionBuilder.empty() => SpecimenDefinitionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SpecimenDefinition';
    return SpecimenDefinitionBuilder(
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
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
      typeCollected: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'typeCollected',
        CodeableConceptBuilder.fromJson,
        '$objectPath.typeCollected',
      ),
      patientPreparation: (json['patientPreparation'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.patientPreparation',
              },
            ),
          )
          .toList(),
      timeAspect: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'timeAspect',
        FhirStringBuilder.fromJson,
        '$objectPath.timeAspect',
      ),
      collection: (json['collection'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.collection',
              },
            ),
          )
          .toList(),
      typeTested: (json['typeTested'] as List<dynamic>?)
          ?.map<SpecimenDefinitionTypeTestedBuilder>(
            (v) => SpecimenDefinitionTypeTestedBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.typeTested',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SpecimenDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinition';

  /// [identifier]
  /// A business identifier associated with the kind of specimen.
  IdentifierBuilder? identifier;

  /// [typeCollected]
  /// The kind of material to be collected.
  CodeableConceptBuilder? typeCollected;

  /// [patientPreparation]
  /// Preparation of the patient for specimen collection.
  List<CodeableConceptBuilder>? patientPreparation;

  /// [timeAspect]
  /// Time aspect of specimen collection (duration or offset).
  FhirStringBuilder? timeAspect;

  /// [collection]
  /// The action to be performed for collecting the specimen.
  List<CodeableConceptBuilder>? collection;

  /// [typeTested]
  /// Specimen conditioned in a container as expected by the testing
  /// laboratory.
  List<SpecimenDefinitionTypeTestedBuilder>? typeTested;

  /// Converts a [SpecimenDefinitionBuilder]
  /// to [SpecimenDefinition]
  @override
  SpecimenDefinition build() => SpecimenDefinition.fromJson(toJson());

  /// Converts a [SpecimenDefinitionBuilder]
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
    addField('identifier', identifier);
    addField('typeCollected', typeCollected);
    addField('patientPreparation', patientPreparation);
    addField('timeAspect', timeAspect);
    addField('collection', collection);
    addField('typeTested', typeTested);
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
      'identifier',
      'typeCollected',
      'patientPreparation',
      'timeAspect',
      'collection',
      'typeTested',
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
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'typeCollected':
        if (typeCollected != null) {
          fields.add(typeCollected!);
        }
      case 'patientPreparation':
        if (patientPreparation != null) {
          fields.addAll(patientPreparation!);
        }
      case 'timeAspect':
        if (timeAspect != null) {
          fields.add(timeAspect!);
        }
      case 'collection':
        if (collection != null) {
          fields.addAll(collection!);
        }
      case 'typeTested':
        if (typeTested != null) {
          fields.addAll(typeTested!);
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
            contained = [...(contained ?? []), child];
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
            extension_ = [...(extension_ ?? []), child];
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
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is IdentifierBuilder) {
            identifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'typeCollected':
        {
          if (child is CodeableConceptBuilder) {
            typeCollected = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'patientPreparation':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            patientPreparation = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            patientPreparation = [...(patientPreparation ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timeAspect':
        {
          if (child is FhirStringBuilder) {
            timeAspect = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                timeAspect = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'collection':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            collection = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            collection = [...(collection ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'typeTested':
        {
          if (child is List<SpecimenDefinitionTypeTestedBuilder>) {
            // Replace or create new list
            typeTested = child;
            return;
          } else if (child is SpecimenDefinitionTypeTestedBuilder) {
            // Add single element to existing list or create new list
            typeTested = [...(typeTested ?? []), child];
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
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'typeCollected':
        return ['CodeableConceptBuilder'];
      case 'patientPreparation':
        return ['CodeableConceptBuilder'];
      case 'timeAspect':
        return ['FhirStringBuilder'];
      case 'collection':
        return ['CodeableConceptBuilder'];
      case 'typeTested':
        return ['SpecimenDefinitionTypeTestedBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenDefinitionBuilder]
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
      case 'identifier':
        {
          identifier = IdentifierBuilder.empty();
          return;
        }
      case 'typeCollected':
        {
          typeCollected = CodeableConceptBuilder.empty();
          return;
        }
      case 'patientPreparation':
        {
          patientPreparation = <CodeableConceptBuilder>[];
          return;
        }
      case 'timeAspect':
        {
          timeAspect = FhirStringBuilder.empty();
          return;
        }
      case 'collection':
        {
          collection = <CodeableConceptBuilder>[];
          return;
        }
      case 'typeTested':
        {
          typeTested = <SpecimenDefinitionTypeTestedBuilder>[];
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
    bool identifier = false,
    bool typeCollected = false,
    bool patientPreparation = false,
    bool timeAspect = false,
    bool collection = false,
    bool typeTested = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (typeCollected) this.typeCollected = null;
    if (patientPreparation) this.patientPreparation = null;
    if (timeAspect) this.timeAspect = null;
    if (collection) this.collection = null;
    if (typeTested) this.typeTested = null;
  }

  @override
  SpecimenDefinitionBuilder clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    IdentifierBuilder? identifier,
    CodeableConceptBuilder? typeCollected,
    List<CodeableConceptBuilder>? patientPreparation,
    FhirStringBuilder? timeAspect,
    List<CodeableConceptBuilder>? collection,
    List<SpecimenDefinitionTypeTestedBuilder>? typeTested,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = SpecimenDefinitionBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      typeCollected: typeCollected ?? this.typeCollected,
      patientPreparation: patientPreparation ?? this.patientPreparation,
      timeAspect: timeAspect ?? this.timeAspect,
      collection: collection ?? this.collection,
      typeTested: typeTested ?? this.typeTested,
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
    if (o is! SpecimenDefinitionBuilder) {
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
    if (!equalsDeepWithNull(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      typeCollected,
      o.typeCollected,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      patientPreparation,
      o.patientPreparation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timeAspect,
      o.timeAspect,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      collection,
      o.collection,
    )) {
      return false;
    }
    if (!listEquals<SpecimenDefinitionTypeTestedBuilder>(
      typeTested,
      o.typeTested,
    )) {
      return false;
    }
    return true;
  }
}

/// [SpecimenDefinitionTypeTestedBuilder]
/// Specimen conditioned in a container as expected by the testing
/// laboratory.
class SpecimenDefinitionTypeTestedBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SpecimenDefinitionTypeTestedBuilder]

  SpecimenDefinitionTypeTestedBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.isDerived,
    this.type,
    this.preference,
    this.container,
    this.requirement,
    this.retentionTime,
    this.rejectionCriterion,
    this.handling,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SpecimenDefinition.typeTested',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SpecimenDefinitionTypeTestedBuilder.empty() =>
      SpecimenDefinitionTypeTestedBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionTypeTestedBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SpecimenDefinition.typeTested';
    return SpecimenDefinitionTypeTestedBuilder(
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
      isDerived: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'isDerived',
        FhirBooleanBuilder.fromJson,
        '$objectPath.isDerived',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      preference: JsonParser.parsePrimitive<SpecimenContainedPreferenceBuilder>(
        json,
        'preference',
        SpecimenContainedPreferenceBuilder.fromJson,
        '$objectPath.preference',
      ),
      container: JsonParser.parseObject<SpecimenDefinitionContainerBuilder>(
        json,
        'container',
        SpecimenDefinitionContainerBuilder.fromJson,
        '$objectPath.container',
      ),
      requirement: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'requirement',
        FhirStringBuilder.fromJson,
        '$objectPath.requirement',
      ),
      retentionTime: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'retentionTime',
        FhirDurationBuilder.fromJson,
        '$objectPath.retentionTime',
      ),
      rejectionCriterion: (json['rejectionCriterion'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.rejectionCriterion',
              },
            ),
          )
          .toList(),
      handling: (json['handling'] as List<dynamic>?)
          ?.map<SpecimenDefinitionHandlingBuilder>(
            (v) => SpecimenDefinitionHandlingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.handling',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SpecimenDefinitionTypeTestedBuilder]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionTypeTestedBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionTypeTestedBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionTypeTestedBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionTypeTestedBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionTypeTestedBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionTypeTestedBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionTypeTestedBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinitionTypeTested';

  /// [isDerived]
  /// Primary of secondary specimen.
  FhirBooleanBuilder? isDerived;

  /// [type]
  /// The kind of specimen conditioned for testing expected by lab.
  CodeableConceptBuilder? type;

  /// [preference]
  /// The preference for this type of conditioned specimen.
  SpecimenContainedPreferenceBuilder? preference;

  /// [container]
  /// The specimen's container.
  SpecimenDefinitionContainerBuilder? container;

  /// [requirement]
  /// Requirements for delivery and special handling of this kind of
  /// conditioned specimen.
  FhirStringBuilder? requirement;

  /// [retentionTime]
  /// The usual time that a specimen of this kind is retained after the
  /// ordered tests are completed, for the purpose of additional testing.
  FhirDurationBuilder? retentionTime;

  /// [rejectionCriterion]
  /// Criterion for rejection of the specimen in its container by the
  /// laboratory.
  List<CodeableConceptBuilder>? rejectionCriterion;

  /// [handling]
  /// Set of instructions for preservation/transport of the specimen at a
  /// defined temperature interval, prior the testing process.
  List<SpecimenDefinitionHandlingBuilder>? handling;

  /// Converts a [SpecimenDefinitionTypeTestedBuilder]
  /// to [SpecimenDefinitionTypeTested]
  @override
  SpecimenDefinitionTypeTested build() =>
      SpecimenDefinitionTypeTested.fromJson(toJson());

  /// Converts a [SpecimenDefinitionTypeTestedBuilder]
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
    addField('isDerived', isDerived);
    addField('type', type);
    addField('preference', preference);
    addField('container', container);
    addField('requirement', requirement);
    addField('retentionTime', retentionTime);
    addField('rejectionCriterion', rejectionCriterion);
    addField('handling', handling);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'isDerived',
      'type',
      'preference',
      'container',
      'requirement',
      'retentionTime',
      'rejectionCriterion',
      'handling',
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
      case 'isDerived':
        if (isDerived != null) {
          fields.add(isDerived!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'preference':
        if (preference != null) {
          fields.add(preference!);
        }
      case 'container':
        if (container != null) {
          fields.add(container!);
        }
      case 'requirement':
        if (requirement != null) {
          fields.add(requirement!);
        }
      case 'retentionTime':
        if (retentionTime != null) {
          fields.add(retentionTime!);
        }
      case 'rejectionCriterion':
        if (rejectionCriterion != null) {
          fields.addAll(rejectionCriterion!);
        }
      case 'handling':
        if (handling != null) {
          fields.addAll(handling!);
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
            extension_ = [...(extension_ ?? []), child];
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
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'isDerived':
        {
          if (child is FhirBooleanBuilder) {
            isDerived = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                isDerived = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'preference':
        {
          if (child is SpecimenContainedPreferenceBuilder) {
            preference = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'container':
        {
          if (child is SpecimenDefinitionContainerBuilder) {
            container = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requirement':
        {
          if (child is FhirStringBuilder) {
            requirement = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                requirement = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'retentionTime':
        {
          if (child is FhirDurationBuilder) {
            retentionTime = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'rejectionCriterion':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            rejectionCriterion = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            rejectionCriterion = [...(rejectionCriterion ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'handling':
        {
          if (child is List<SpecimenDefinitionHandlingBuilder>) {
            // Replace or create new list
            handling = child;
            return;
          } else if (child is SpecimenDefinitionHandlingBuilder) {
            // Add single element to existing list or create new list
            handling = [...(handling ?? []), child];
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'isDerived':
        return ['FhirBooleanBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'preference':
        return ['FhirCodeEnumBuilder'];
      case 'container':
        return ['SpecimenDefinitionContainerBuilder'];
      case 'requirement':
        return ['FhirStringBuilder'];
      case 'retentionTime':
        return ['FhirDurationBuilder'];
      case 'rejectionCriterion':
        return ['CodeableConceptBuilder'];
      case 'handling':
        return ['SpecimenDefinitionHandlingBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenDefinitionTypeTestedBuilder]
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
      case 'isDerived':
        {
          isDerived = FhirBooleanBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'preference':
        {
          preference = SpecimenContainedPreferenceBuilder.empty();
          return;
        }
      case 'container':
        {
          container = SpecimenDefinitionContainerBuilder.empty();
          return;
        }
      case 'requirement':
        {
          requirement = FhirStringBuilder.empty();
          return;
        }
      case 'retentionTime':
        {
          retentionTime = FhirDurationBuilder.empty();
          return;
        }
      case 'rejectionCriterion':
        {
          rejectionCriterion = <CodeableConceptBuilder>[];
          return;
        }
      case 'handling':
        {
          handling = <SpecimenDefinitionHandlingBuilder>[];
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
    bool isDerived = false,
    bool type = false,
    bool preference = false,
    bool container = false,
    bool requirement = false,
    bool retentionTime = false,
    bool rejectionCriterion = false,
    bool handling = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (isDerived) this.isDerived = null;
    if (type) this.type = null;
    if (preference) this.preference = null;
    if (container) this.container = null;
    if (requirement) this.requirement = null;
    if (retentionTime) this.retentionTime = null;
    if (rejectionCriterion) this.rejectionCriterion = null;
    if (handling) this.handling = null;
  }

  @override
  SpecimenDefinitionTypeTestedBuilder clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionTypeTestedBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirBooleanBuilder? isDerived,
    CodeableConceptBuilder? type,
    SpecimenContainedPreferenceBuilder? preference,
    SpecimenDefinitionContainerBuilder? container,
    FhirStringBuilder? requirement,
    FhirDurationBuilder? retentionTime,
    List<CodeableConceptBuilder>? rejectionCriterion,
    List<SpecimenDefinitionHandlingBuilder>? handling,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SpecimenDefinitionTypeTestedBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      isDerived: isDerived ?? this.isDerived,
      type: type ?? this.type,
      preference: preference ?? this.preference,
      container: container ?? this.container,
      requirement: requirement ?? this.requirement,
      retentionTime: retentionTime ?? this.retentionTime,
      rejectionCriterion: rejectionCriterion ?? this.rejectionCriterion,
      handling: handling ?? this.handling,
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
    if (o is! SpecimenDefinitionTypeTestedBuilder) {
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
      isDerived,
      o.isDerived,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preference,
      o.preference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      container,
      o.container,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requirement,
      o.requirement,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      retentionTime,
      o.retentionTime,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      rejectionCriterion,
      o.rejectionCriterion,
    )) {
      return false;
    }
    if (!listEquals<SpecimenDefinitionHandlingBuilder>(
      handling,
      o.handling,
    )) {
      return false;
    }
    return true;
  }
}

/// [SpecimenDefinitionContainerBuilder]
/// The specimen's container.
class SpecimenDefinitionContainerBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SpecimenDefinitionContainerBuilder]

  SpecimenDefinitionContainerBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.material,
    this.type,
    this.cap,
    this.description,
    this.capacity,
    this.minimumVolumeX,
    this.additive,
    this.preparation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SpecimenDefinition.typeTested.container',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SpecimenDefinitionContainerBuilder.empty() =>
      SpecimenDefinitionContainerBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionContainerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SpecimenDefinition.typeTested.container';
    return SpecimenDefinitionContainerBuilder(
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
      material: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'material',
        CodeableConceptBuilder.fromJson,
        '$objectPath.material',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      cap: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'cap',
        CodeableConceptBuilder.fromJson,
        '$objectPath.cap',
      ),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      capacity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'capacity',
        QuantityBuilder.fromJson,
        '$objectPath.capacity',
      ),
      minimumVolumeX: JsonParser.parsePolymorphic<
          MinimumVolumeXSpecimenDefinitionContainerBuilder>(
        json,
        {
          'minimumVolumeQuantity': QuantityBuilder.fromJson,
          'minimumVolumeString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      additive: (json['additive'] as List<dynamic>?)
          ?.map<SpecimenDefinitionAdditiveBuilder>(
            (v) => SpecimenDefinitionAdditiveBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.additive',
              },
            ),
          )
          .toList(),
      preparation: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'preparation',
        FhirStringBuilder.fromJson,
        '$objectPath.preparation',
      ),
    );
  }

  /// Deserialize [SpecimenDefinitionContainerBuilder]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionContainerBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionContainerBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionContainerBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionContainerBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionContainerBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionContainerBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionContainerBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinitionContainer';

  /// [material]
  /// The type of material of the container.
  CodeableConceptBuilder? material;

  /// [type]
  /// The type of container used to contain this kind of specimen.
  CodeableConceptBuilder? type;

  /// [cap]
  /// Color of container cap.
  CodeableConceptBuilder? cap;

  /// [description]
  /// The textual description of the kind of container.
  FhirStringBuilder? description;

  /// [capacity]
  /// The capacity (volume or other measure) of this kind of container.
  QuantityBuilder? capacity;

  /// [minimumVolumeX]
  /// The minimum volume to be conditioned in the container.
  MinimumVolumeXSpecimenDefinitionContainerBuilder? minimumVolumeX;

  /// Getter for [minimumVolumeQuantity] as a QuantityBuilder
  QuantityBuilder? get minimumVolumeQuantity =>
      minimumVolumeX?.isAs<QuantityBuilder>();

  /// Getter for [minimumVolumeString] as a FhirStringBuilder
  FhirStringBuilder? get minimumVolumeString =>
      minimumVolumeX?.isAs<FhirStringBuilder>();

  /// [additive]
  /// Substance introduced in the kind of container to preserve, maintain or
  /// enhance the specimen. Examples: Formalin, Citrate, EDTA.
  List<SpecimenDefinitionAdditiveBuilder>? additive;

  /// [preparation]
  /// Special processing that should be applied to the container for this
  /// kind of specimen.
  FhirStringBuilder? preparation;

  /// Converts a [SpecimenDefinitionContainerBuilder]
  /// to [SpecimenDefinitionContainer]
  @override
  SpecimenDefinitionContainer build() =>
      SpecimenDefinitionContainer.fromJson(toJson());

  /// Converts a [SpecimenDefinitionContainerBuilder]
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
    addField('material', material);
    addField('type', type);
    addField('cap', cap);
    addField('description', description);
    addField('capacity', capacity);
    if (minimumVolumeX != null) {
      final fhirType = minimumVolumeX!.fhirType;
      addField('minimumVolume${fhirType.capitalize()}', minimumVolumeX);
    }

    addField('additive', additive);
    addField('preparation', preparation);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'material',
      'type',
      'cap',
      'description',
      'capacity',
      'minimumVolumeX',
      'additive',
      'preparation',
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
      case 'material':
        if (material != null) {
          fields.add(material!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'cap':
        if (cap != null) {
          fields.add(cap!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'capacity':
        if (capacity != null) {
          fields.add(capacity!);
        }
      case 'minimumVolume':
        if (minimumVolumeX != null) {
          fields.add(minimumVolumeX!);
        }
      case 'minimumVolumeX':
        if (minimumVolumeX != null) {
          fields.add(minimumVolumeX!);
        }
      case 'minimumVolumeQuantity':
        if (minimumVolumeX is QuantityBuilder) {
          fields.add(minimumVolumeX!);
        }
      case 'minimumVolumeString':
        if (minimumVolumeX is FhirStringBuilder) {
          fields.add(minimumVolumeX!);
        }
      case 'additive':
        if (additive != null) {
          fields.addAll(additive!);
        }
      case 'preparation':
        if (preparation != null) {
          fields.add(preparation!);
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
            extension_ = [...(extension_ ?? []), child];
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
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'material':
        {
          if (child is CodeableConceptBuilder) {
            material = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'cap':
        {
          if (child is CodeableConceptBuilder) {
            cap = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'capacity':
        {
          if (child is QuantityBuilder) {
            capacity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'minimumVolumeX':
        {
          if (child is MinimumVolumeXSpecimenDefinitionContainerBuilder) {
            minimumVolumeX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              minimumVolumeX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              minimumVolumeX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'minimumVolumeQuantity':
        {
          if (child is QuantityBuilder) {
            minimumVolumeX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minimumVolumeString':
        {
          if (child is FhirStringBuilder) {
            minimumVolumeX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'additive':
        {
          if (child is List<SpecimenDefinitionAdditiveBuilder>) {
            // Replace or create new list
            additive = child;
            return;
          } else if (child is SpecimenDefinitionAdditiveBuilder) {
            // Add single element to existing list or create new list
            additive = [...(additive ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'preparation':
        {
          if (child is FhirStringBuilder) {
            preparation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                preparation = converted;
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
      case 'material':
        return ['CodeableConceptBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'cap':
        return ['CodeableConceptBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'capacity':
        return ['QuantityBuilder'];
      case 'minimumVolume':
      case 'minimumVolumeX':
        return ['QuantityBuilder', 'FhirStringBuilder'];
      case 'minimumVolumeQuantity':
        return ['QuantityBuilder'];
      case 'minimumVolumeString':
        return ['FhirStringBuilder'];
      case 'additive':
        return ['SpecimenDefinitionAdditiveBuilder'];
      case 'preparation':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenDefinitionContainerBuilder]
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
      case 'material':
        {
          material = CodeableConceptBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'cap':
        {
          cap = CodeableConceptBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'capacity':
        {
          capacity = QuantityBuilder.empty();
          return;
        }
      case 'minimumVolume':
      case 'minimumVolumeX':
      case 'minimumVolumeQuantity':
        {
          minimumVolumeX = QuantityBuilder.empty();
          return;
        }
      case 'minimumVolumeString':
        {
          minimumVolumeX = FhirStringBuilder.empty();
          return;
        }
      case 'additive':
        {
          additive = <SpecimenDefinitionAdditiveBuilder>[];
          return;
        }
      case 'preparation':
        {
          preparation = FhirStringBuilder.empty();
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
    bool material = false,
    bool type = false,
    bool cap = false,
    bool description = false,
    bool capacity = false,
    bool minimumVolume = false,
    bool additive = false,
    bool preparation = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (material) this.material = null;
    if (type) this.type = null;
    if (cap) this.cap = null;
    if (description) this.description = null;
    if (capacity) this.capacity = null;
    if (minimumVolume) minimumVolumeX = null;
    if (additive) this.additive = null;
    if (preparation) this.preparation = null;
  }

  @override
  SpecimenDefinitionContainerBuilder clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionContainerBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? material,
    CodeableConceptBuilder? type,
    CodeableConceptBuilder? cap,
    FhirStringBuilder? description,
    QuantityBuilder? capacity,
    MinimumVolumeXSpecimenDefinitionContainerBuilder? minimumVolumeX,
    List<SpecimenDefinitionAdditiveBuilder>? additive,
    FhirStringBuilder? preparation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SpecimenDefinitionContainerBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      material: material ?? this.material,
      type: type ?? this.type,
      cap: cap ?? this.cap,
      description: description ?? this.description,
      capacity: capacity ?? this.capacity,
      minimumVolumeX: minimumVolumeX ?? this.minimumVolumeX,
      additive: additive ?? this.additive,
      preparation: preparation ?? this.preparation,
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
    if (o is! SpecimenDefinitionContainerBuilder) {
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
      material,
      o.material,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cap,
      o.cap,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      capacity,
      o.capacity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      minimumVolumeX,
      o.minimumVolumeX,
    )) {
      return false;
    }
    if (!listEquals<SpecimenDefinitionAdditiveBuilder>(
      additive,
      o.additive,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preparation,
      o.preparation,
    )) {
      return false;
    }
    return true;
  }
}

/// [SpecimenDefinitionAdditiveBuilder]
/// Substance introduced in the kind of container to preserve, maintain or
/// enhance the specimen. Examples: Formalin, Citrate, EDTA.
class SpecimenDefinitionAdditiveBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SpecimenDefinitionAdditiveBuilder]

  SpecimenDefinitionAdditiveBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.additiveX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SpecimenDefinition.typeTested.container.additive',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SpecimenDefinitionAdditiveBuilder.empty() =>
      SpecimenDefinitionAdditiveBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionAdditiveBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SpecimenDefinition.typeTested.container.additive';
    return SpecimenDefinitionAdditiveBuilder(
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
      additiveX: JsonParser.parsePolymorphic<
          AdditiveXSpecimenDefinitionAdditiveBuilder>(
        json,
        {
          'additiveCodeableConcept': CodeableConceptBuilder.fromJson,
          'additiveReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [SpecimenDefinitionAdditiveBuilder]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionAdditiveBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionAdditiveBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionAdditiveBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionAdditiveBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionAdditiveBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionAdditiveBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionAdditiveBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinitionAdditive';

  /// [additiveX]
  /// Substance introduced in the kind of container to preserve, maintain or
  /// enhance the specimen. Examples: Formalin, Citrate, EDTA.
  AdditiveXSpecimenDefinitionAdditiveBuilder? additiveX;

  /// Getter for [additiveCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get additiveCodeableConcept =>
      additiveX?.isAs<CodeableConceptBuilder>();

  /// Getter for [additiveReference] as a ReferenceBuilder
  ReferenceBuilder? get additiveReference =>
      additiveX?.isAs<ReferenceBuilder>();

  /// Converts a [SpecimenDefinitionAdditiveBuilder]
  /// to [SpecimenDefinitionAdditive]
  @override
  SpecimenDefinitionAdditive build() =>
      SpecimenDefinitionAdditive.fromJson(toJson());

  /// Converts a [SpecimenDefinitionAdditiveBuilder]
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
    if (additiveX != null) {
      final fhirType = additiveX!.fhirType;
      addField('additive${fhirType.capitalize()}', additiveX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'additiveX',
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
      case 'additive':
        if (additiveX != null) {
          fields.add(additiveX!);
        }
      case 'additiveX':
        if (additiveX != null) {
          fields.add(additiveX!);
        }
      case 'additiveCodeableConcept':
        if (additiveX is CodeableConceptBuilder) {
          fields.add(additiveX!);
        }
      case 'additiveReference':
        if (additiveX is ReferenceBuilder) {
          fields.add(additiveX!);
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
            extension_ = [...(extension_ ?? []), child];
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
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'additiveX':
        {
          if (child is AdditiveXSpecimenDefinitionAdditiveBuilder) {
            additiveX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              additiveX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              additiveX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'additiveCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            additiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'additiveReference':
        {
          if (child is ReferenceBuilder) {
            additiveX = child;
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
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'additive':
      case 'additiveX':
        return ['CodeableConceptBuilder', 'ReferenceBuilder'];
      case 'additiveCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'additiveReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenDefinitionAdditiveBuilder]
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
      case 'additive':
      case 'additiveX':
      case 'additiveCodeableConcept':
        {
          additiveX = CodeableConceptBuilder.empty();
          return;
        }
      case 'additiveReference':
        {
          additiveX = ReferenceBuilder.empty();
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
    bool additive = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (additive) additiveX = null;
  }

  @override
  SpecimenDefinitionAdditiveBuilder clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionAdditiveBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    AdditiveXSpecimenDefinitionAdditiveBuilder? additiveX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SpecimenDefinitionAdditiveBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      additiveX: additiveX ?? this.additiveX,
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
    if (o is! SpecimenDefinitionAdditiveBuilder) {
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
      additiveX,
      o.additiveX,
    )) {
      return false;
    }
    return true;
  }
}

/// [SpecimenDefinitionHandlingBuilder]
/// Set of instructions for preservation/transport of the specimen at a
/// defined temperature interval, prior the testing process.
class SpecimenDefinitionHandlingBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SpecimenDefinitionHandlingBuilder]

  SpecimenDefinitionHandlingBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.temperatureQualifier,
    this.temperatureRange,
    this.maxDuration,
    this.instruction,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SpecimenDefinition.typeTested.handling',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SpecimenDefinitionHandlingBuilder.empty() =>
      SpecimenDefinitionHandlingBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionHandlingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SpecimenDefinition.typeTested.handling';
    return SpecimenDefinitionHandlingBuilder(
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
      temperatureQualifier: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'temperatureQualifier',
        CodeableConceptBuilder.fromJson,
        '$objectPath.temperatureQualifier',
      ),
      temperatureRange: JsonParser.parseObject<RangeBuilder>(
        json,
        'temperatureRange',
        RangeBuilder.fromJson,
        '$objectPath.temperatureRange',
      ),
      maxDuration: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'maxDuration',
        FhirDurationBuilder.fromJson,
        '$objectPath.maxDuration',
      ),
      instruction: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'instruction',
        FhirStringBuilder.fromJson,
        '$objectPath.instruction',
      ),
    );
  }

  /// Deserialize [SpecimenDefinitionHandlingBuilder]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionHandlingBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionHandlingBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionHandlingBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionHandlingBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionHandlingBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionHandlingBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionHandlingBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinitionHandling';

  /// [temperatureQualifier]
  /// It qualifies the interval of temperature, which characterizes an
  /// occurrence of handling. Conditions that are not related to temperature
  /// may be handled in the instruction element.
  CodeableConceptBuilder? temperatureQualifier;

  /// [temperatureRange]
  /// The temperature interval for this set of handling instructions.
  RangeBuilder? temperatureRange;

  /// [maxDuration]
  /// The maximum time interval of preservation of the specimen with these
  /// conditions.
  FhirDurationBuilder? maxDuration;

  /// [instruction]
  /// Additional textual instructions for the preservation or transport of
  /// the specimen. For instance, 'Protect from light exposure'.
  FhirStringBuilder? instruction;

  /// Converts a [SpecimenDefinitionHandlingBuilder]
  /// to [SpecimenDefinitionHandling]
  @override
  SpecimenDefinitionHandling build() =>
      SpecimenDefinitionHandling.fromJson(toJson());

  /// Converts a [SpecimenDefinitionHandlingBuilder]
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
    addField('temperatureQualifier', temperatureQualifier);
    addField('temperatureRange', temperatureRange);
    addField('maxDuration', maxDuration);
    addField('instruction', instruction);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'temperatureQualifier',
      'temperatureRange',
      'maxDuration',
      'instruction',
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
      case 'temperatureQualifier':
        if (temperatureQualifier != null) {
          fields.add(temperatureQualifier!);
        }
      case 'temperatureRange':
        if (temperatureRange != null) {
          fields.add(temperatureRange!);
        }
      case 'maxDuration':
        if (maxDuration != null) {
          fields.add(maxDuration!);
        }
      case 'instruction':
        if (instruction != null) {
          fields.add(instruction!);
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
            extension_ = [...(extension_ ?? []), child];
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
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'temperatureQualifier':
        {
          if (child is CodeableConceptBuilder) {
            temperatureQualifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'temperatureRange':
        {
          if (child is RangeBuilder) {
            temperatureRange = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maxDuration':
        {
          if (child is FhirDurationBuilder) {
            maxDuration = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'instruction':
        {
          if (child is FhirStringBuilder) {
            instruction = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                instruction = converted;
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
      case 'temperatureQualifier':
        return ['CodeableConceptBuilder'];
      case 'temperatureRange':
        return ['RangeBuilder'];
      case 'maxDuration':
        return ['FhirDurationBuilder'];
      case 'instruction':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenDefinitionHandlingBuilder]
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
      case 'temperatureQualifier':
        {
          temperatureQualifier = CodeableConceptBuilder.empty();
          return;
        }
      case 'temperatureRange':
        {
          temperatureRange = RangeBuilder.empty();
          return;
        }
      case 'maxDuration':
        {
          maxDuration = FhirDurationBuilder.empty();
          return;
        }
      case 'instruction':
        {
          instruction = FhirStringBuilder.empty();
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
    bool temperatureQualifier = false,
    bool temperatureRange = false,
    bool maxDuration = false,
    bool instruction = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (temperatureQualifier) this.temperatureQualifier = null;
    if (temperatureRange) this.temperatureRange = null;
    if (maxDuration) this.maxDuration = null;
    if (instruction) this.instruction = null;
  }

  @override
  SpecimenDefinitionHandlingBuilder clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionHandlingBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? temperatureQualifier,
    RangeBuilder? temperatureRange,
    FhirDurationBuilder? maxDuration,
    FhirStringBuilder? instruction,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SpecimenDefinitionHandlingBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      temperatureQualifier: temperatureQualifier ?? this.temperatureQualifier,
      temperatureRange: temperatureRange ?? this.temperatureRange,
      maxDuration: maxDuration ?? this.maxDuration,
      instruction: instruction ?? this.instruction,
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
    if (o is! SpecimenDefinitionHandlingBuilder) {
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
      temperatureQualifier,
      o.temperatureQualifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      temperatureRange,
      o.temperatureRange,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxDuration,
      o.maxDuration,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      instruction,
      o.instruction,
    )) {
      return false;
    }
    return true;
  }
}
