import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        yamlMapToJson,
        yamlToJson,
        R4ResourceType,
        StringExtensionForFHIR,
        ClinicalUseDefinition,
        ClinicalUseDefinitionContraindication,
        ClinicalUseDefinitionOtherTherapy,
        ClinicalUseDefinitionIndication,
        ClinicalUseDefinitionInteraction,
        ClinicalUseDefinitionInteractant,
        ClinicalUseDefinitionUndesirableEffect,
        ClinicalUseDefinitionWarning;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [ClinicalUseDefinitionBuilder]
/// A single issue - either an indication, contraindication, interaction or
/// an undesirable effect for a medicinal product, medication, device or
/// procedure.
class ClinicalUseDefinitionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ClinicalUseDefinitionBuilder]

  ClinicalUseDefinitionBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.category,
    this.subject,
    this.status,
    this.contraindication,
    this.indication,
    this.interaction,
    this.population,
    this.undesirableEffect,
    this.warning,
  }) : super(
          objectPath: 'ClinicalUseDefinition',
          resourceType: R4ResourceType.ClinicalUseDefinition,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClinicalUseDefinitionBuilder.empty() =>
      ClinicalUseDefinitionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClinicalUseDefinition';
    return ClinicalUseDefinitionBuilder(
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
      type: JsonParser.parsePrimitive<ClinicalUseDefinitionTypeBuilder>(
        json,
        'type',
        ClinicalUseDefinitionTypeBuilder.fromJson,
        '$objectPath.type',
      ),
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
      subject: (json['subject'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subject',
              },
            ),
          )
          .toList(),
      status: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'status',
        CodeableConceptBuilder.fromJson,
        '$objectPath.status',
      ),
      contraindication:
          JsonParser.parseObject<ClinicalUseDefinitionContraindicationBuilder>(
        json,
        'contraindication',
        ClinicalUseDefinitionContraindicationBuilder.fromJson,
        '$objectPath.contraindication',
      ),
      indication:
          JsonParser.parseObject<ClinicalUseDefinitionIndicationBuilder>(
        json,
        'indication',
        ClinicalUseDefinitionIndicationBuilder.fromJson,
        '$objectPath.indication',
      ),
      interaction:
          JsonParser.parseObject<ClinicalUseDefinitionInteractionBuilder>(
        json,
        'interaction',
        ClinicalUseDefinitionInteractionBuilder.fromJson,
        '$objectPath.interaction',
      ),
      population: (json['population'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.population',
              },
            ),
          )
          .toList(),
      undesirableEffect:
          JsonParser.parseObject<ClinicalUseDefinitionUndesirableEffectBuilder>(
        json,
        'undesirableEffect',
        ClinicalUseDefinitionUndesirableEffectBuilder.fromJson,
        '$objectPath.undesirableEffect',
      ),
      warning: JsonParser.parseObject<ClinicalUseDefinitionWarningBuilder>(
        json,
        'warning',
        ClinicalUseDefinitionWarningBuilder.fromJson,
        '$objectPath.warning',
      ),
    );
  }

  /// Deserialize [ClinicalUseDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory ClinicalUseDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalUseDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalUseDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalUseDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalUseDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClinicalUseDefinitionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClinicalUseDefinition';

  /// [identifier]
  /// Business identifier for this issue.
  List<IdentifierBuilder>? identifier;

  /// [type]
  /// indication | contraindication | interaction | undesirable-effect |
  /// warning.
  ClinicalUseDefinitionTypeBuilder? type;

  /// [category]
  /// A categorisation of the issue, primarily for dividing warnings into
  /// subject heading areas such as "Pregnancy and Lactation", "Overdose",
  /// "Effects on Ability to Drive and Use Machines".
  List<CodeableConceptBuilder>? category;

  /// [subject]
  /// The medication or procedure for which this is an indication.
  List<ReferenceBuilder>? subject;

  /// [status]
  /// Whether this is a current issue or one that has been retired etc.
  CodeableConceptBuilder? status;

  /// [contraindication]
  /// Specifics for when this is a contraindication.
  ClinicalUseDefinitionContraindicationBuilder? contraindication;

  /// [indication]
  /// Specifics for when this is an indication.
  ClinicalUseDefinitionIndicationBuilder? indication;

  /// [interaction]
  /// Specifics for when this is an interaction.
  ClinicalUseDefinitionInteractionBuilder? interaction;

  /// [population]
  /// The population group to which this applies.
  List<ReferenceBuilder>? population;

  /// [undesirableEffect]
  /// Describe the possible undesirable effects (negative outcomes) from the
  /// use of the medicinal product as treatment.
  ClinicalUseDefinitionUndesirableEffectBuilder? undesirableEffect;

  /// [warning]
  /// A critical piece of information about environmental, health or physical
  /// risks or hazards that serve as caution to the user. For example 'Do not
  /// operate heavy machinery', 'May cause drowsiness', or 'Get medical
  /// advice/attention if you feel unwell'.
  ClinicalUseDefinitionWarningBuilder? warning;

  /// Converts a [ClinicalUseDefinitionBuilder]
  /// to [ClinicalUseDefinition]
  @override
  ClinicalUseDefinition build() => ClinicalUseDefinition.fromJson(toJson());

  /// Converts a [ClinicalUseDefinitionBuilder]
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
    addField('type', type);
    addField('category', category);
    addField('subject', subject);
    addField('status', status);
    addField('contraindication', contraindication);
    addField('indication', indication);
    addField('interaction', interaction);
    addField('population', population);
    addField('undesirableEffect', undesirableEffect);
    addField('warning', warning);
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
      'type',
      'category',
      'subject',
      'status',
      'contraindication',
      'indication',
      'interaction',
      'population',
      'undesirableEffect',
      'warning',
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
          fields.addAll(identifier!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'subject':
        if (subject != null) {
          fields.addAll(subject!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'contraindication':
        if (contraindication != null) {
          fields.add(contraindication!);
        }
      case 'indication':
        if (indication != null) {
          fields.add(indication!);
        }
      case 'interaction':
        if (interaction != null) {
          fields.add(interaction!);
        }
      case 'population':
        if (population != null) {
          fields.addAll(population!);
        }
      case 'undesirableEffect':
        if (undesirableEffect != null) {
          fields.add(undesirableEffect!);
        }
      case 'warning':
        if (warning != null) {
          fields.add(warning!);
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
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [...(identifier ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is ClinicalUseDefinitionTypeBuilder) {
            type = child;
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
            category = [...(category ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subject':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            subject = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            subject = [...(subject ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is CodeableConceptBuilder) {
            status = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contraindication':
        {
          if (child is ClinicalUseDefinitionContraindicationBuilder) {
            contraindication = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'indication':
        {
          if (child is ClinicalUseDefinitionIndicationBuilder) {
            indication = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'interaction':
        {
          if (child is ClinicalUseDefinitionInteractionBuilder) {
            interaction = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'population':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            population = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            population = [...(population ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'undesirableEffect':
        {
          if (child is ClinicalUseDefinitionUndesirableEffectBuilder) {
            undesirableEffect = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'warning':
        {
          if (child is ClinicalUseDefinitionWarningBuilder) {
            warning = child;
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
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'status':
        return ['CodeableConceptBuilder'];
      case 'contraindication':
        return ['ClinicalUseDefinitionContraindicationBuilder'];
      case 'indication':
        return ['ClinicalUseDefinitionIndicationBuilder'];
      case 'interaction':
        return ['ClinicalUseDefinitionInteractionBuilder'];
      case 'population':
        return ['ReferenceBuilder'];
      case 'undesirableEffect':
        return ['ClinicalUseDefinitionUndesirableEffectBuilder'];
      case 'warning':
        return ['ClinicalUseDefinitionWarningBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClinicalUseDefinitionBuilder]
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
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'type':
        {
          type = ClinicalUseDefinitionTypeBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'subject':
        {
          subject = <ReferenceBuilder>[];
          return;
        }
      case 'status':
        {
          status = CodeableConceptBuilder.empty();
          return;
        }
      case 'contraindication':
        {
          contraindication =
              ClinicalUseDefinitionContraindicationBuilder.empty();
          return;
        }
      case 'indication':
        {
          indication = ClinicalUseDefinitionIndicationBuilder.empty();
          return;
        }
      case 'interaction':
        {
          interaction = ClinicalUseDefinitionInteractionBuilder.empty();
          return;
        }
      case 'population':
        {
          population = <ReferenceBuilder>[];
          return;
        }
      case 'undesirableEffect':
        {
          undesirableEffect =
              ClinicalUseDefinitionUndesirableEffectBuilder.empty();
          return;
        }
      case 'warning':
        {
          warning = ClinicalUseDefinitionWarningBuilder.empty();
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
    bool type = false,
    bool category = false,
    bool subject = false,
    bool status = false,
    bool contraindication = false,
    bool indication = false,
    bool interaction = false,
    bool population = false,
    bool undesirableEffect = false,
    bool warning = false,
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
    if (type) this.type = null;
    if (category) this.category = null;
    if (subject) this.subject = null;
    if (status) this.status = null;
    if (contraindication) this.contraindication = null;
    if (indication) this.indication = null;
    if (interaction) this.interaction = null;
    if (population) this.population = null;
    if (undesirableEffect) this.undesirableEffect = null;
    if (warning) this.warning = null;
  }

  @override
  ClinicalUseDefinitionBuilder clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    ClinicalUseDefinitionTypeBuilder? type,
    List<CodeableConceptBuilder>? category,
    List<ReferenceBuilder>? subject,
    CodeableConceptBuilder? status,
    ClinicalUseDefinitionContraindicationBuilder? contraindication,
    ClinicalUseDefinitionIndicationBuilder? indication,
    ClinicalUseDefinitionInteractionBuilder? interaction,
    List<ReferenceBuilder>? population,
    ClinicalUseDefinitionUndesirableEffectBuilder? undesirableEffect,
    ClinicalUseDefinitionWarningBuilder? warning,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ClinicalUseDefinitionBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      category: category ?? this.category,
      subject: subject ?? this.subject,
      status: status ?? this.status,
      contraindication: contraindication ?? this.contraindication,
      indication: indication ?? this.indication,
      interaction: interaction ?? this.interaction,
      population: population ?? this.population,
      undesirableEffect: undesirableEffect ?? this.undesirableEffect,
      warning: warning ?? this.warning,
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
    if (o is! ClinicalUseDefinitionBuilder) {
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
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contraindication,
      o.contraindication,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      indication,
      o.indication,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      interaction,
      o.interaction,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      population,
      o.population,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      undesirableEffect,
      o.undesirableEffect,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      warning,
      o.warning,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClinicalUseDefinitionContraindicationBuilder]
/// Specifics for when this is a contraindication.
class ClinicalUseDefinitionContraindicationBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClinicalUseDefinitionContraindicationBuilder]

  ClinicalUseDefinitionContraindicationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.indication,
    this.otherTherapy,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClinicalUseDefinition.contraindication',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClinicalUseDefinitionContraindicationBuilder.empty() =>
      ClinicalUseDefinitionContraindicationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionContraindicationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClinicalUseDefinition.contraindication';
    return ClinicalUseDefinitionContraindicationBuilder(
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
      diseaseSymptomProcedure: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'diseaseSymptomProcedure',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.diseaseSymptomProcedure',
      ),
      diseaseStatus: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'diseaseStatus',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.diseaseStatus',
      ),
      comorbidity: (json['comorbidity'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.comorbidity',
              },
            ),
          )
          .toList(),
      indication: (json['indication'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.indication',
              },
            ),
          )
          .toList(),
      otherTherapy: (json['otherTherapy'] as List<dynamic>?)
          ?.map<ClinicalUseDefinitionOtherTherapyBuilder>(
            (v) => ClinicalUseDefinitionOtherTherapyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.otherTherapy',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClinicalUseDefinitionContraindicationBuilder]
  /// from a [String] or [YamlMap] object
  factory ClinicalUseDefinitionContraindicationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalUseDefinitionContraindicationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalUseDefinitionContraindicationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalUseDefinitionContraindicationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalUseDefinitionContraindicationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionContraindicationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClinicalUseDefinitionContraindicationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClinicalUseDefinitionContraindication';

  /// [diseaseSymptomProcedure]
  /// The situation that is being documented as contraindicating against this
  /// item.
  CodeableReferenceBuilder? diseaseSymptomProcedure;

  /// [diseaseStatus]
  /// The status of the disease or symptom for the contraindication, for
  /// example "chronic" or "metastatic".
  CodeableReferenceBuilder? diseaseStatus;

  /// [comorbidity]
  /// A comorbidity (concurrent condition) or coinfection.
  List<CodeableReferenceBuilder>? comorbidity;

  /// [indication]
  /// The indication which this is a contraidication for.
  List<ReferenceBuilder>? indication;

  /// [otherTherapy]
  /// Information about the use of the medicinal product in relation to other
  /// therapies described as part of the contraindication.
  List<ClinicalUseDefinitionOtherTherapyBuilder>? otherTherapy;

  /// Converts a [ClinicalUseDefinitionContraindicationBuilder]
  /// to [ClinicalUseDefinitionContraindication]
  @override
  ClinicalUseDefinitionContraindication build() =>
      ClinicalUseDefinitionContraindication.fromJson(toJson());

  /// Converts a [ClinicalUseDefinitionContraindicationBuilder]
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
    addField('diseaseSymptomProcedure', diseaseSymptomProcedure);
    addField('diseaseStatus', diseaseStatus);
    addField('comorbidity', comorbidity);
    addField('indication', indication);
    addField('otherTherapy', otherTherapy);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'diseaseSymptomProcedure',
      'diseaseStatus',
      'comorbidity',
      'indication',
      'otherTherapy',
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
      case 'diseaseSymptomProcedure':
        if (diseaseSymptomProcedure != null) {
          fields.add(diseaseSymptomProcedure!);
        }
      case 'diseaseStatus':
        if (diseaseStatus != null) {
          fields.add(diseaseStatus!);
        }
      case 'comorbidity':
        if (comorbidity != null) {
          fields.addAll(comorbidity!);
        }
      case 'indication':
        if (indication != null) {
          fields.addAll(indication!);
        }
      case 'otherTherapy':
        if (otherTherapy != null) {
          fields.addAll(otherTherapy!);
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
      case 'diseaseSymptomProcedure':
        {
          if (child is CodeableReferenceBuilder) {
            diseaseSymptomProcedure = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'diseaseStatus':
        {
          if (child is CodeableReferenceBuilder) {
            diseaseStatus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'comorbidity':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            comorbidity = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            comorbidity = [...(comorbidity ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'indication':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            indication = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            indication = [...(indication ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'otherTherapy':
        {
          if (child is List<ClinicalUseDefinitionOtherTherapyBuilder>) {
            // Replace or create new list
            otherTherapy = child;
            return;
          } else if (child is ClinicalUseDefinitionOtherTherapyBuilder) {
            // Add single element to existing list or create new list
            otherTherapy = [...(otherTherapy ?? []), child];
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
      case 'diseaseSymptomProcedure':
        return ['CodeableReferenceBuilder'];
      case 'diseaseStatus':
        return ['CodeableReferenceBuilder'];
      case 'comorbidity':
        return ['CodeableReferenceBuilder'];
      case 'indication':
        return ['ReferenceBuilder'];
      case 'otherTherapy':
        return ['ClinicalUseDefinitionOtherTherapyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClinicalUseDefinitionContraindicationBuilder]
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
      case 'diseaseSymptomProcedure':
        {
          diseaseSymptomProcedure = CodeableReferenceBuilder.empty();
          return;
        }
      case 'diseaseStatus':
        {
          diseaseStatus = CodeableReferenceBuilder.empty();
          return;
        }
      case 'comorbidity':
        {
          comorbidity = <CodeableReferenceBuilder>[];
          return;
        }
      case 'indication':
        {
          indication = <ReferenceBuilder>[];
          return;
        }
      case 'otherTherapy':
        {
          otherTherapy = <ClinicalUseDefinitionOtherTherapyBuilder>[];
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
    bool diseaseSymptomProcedure = false,
    bool diseaseStatus = false,
    bool comorbidity = false,
    bool indication = false,
    bool otherTherapy = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (diseaseSymptomProcedure) this.diseaseSymptomProcedure = null;
    if (diseaseStatus) this.diseaseStatus = null;
    if (comorbidity) this.comorbidity = null;
    if (indication) this.indication = null;
    if (otherTherapy) this.otherTherapy = null;
  }

  @override
  ClinicalUseDefinitionContraindicationBuilder clone() =>
      throw UnimplementedError();
  @override
  ClinicalUseDefinitionContraindicationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? diseaseSymptomProcedure,
    CodeableReferenceBuilder? diseaseStatus,
    List<CodeableReferenceBuilder>? comorbidity,
    List<ReferenceBuilder>? indication,
    List<ClinicalUseDefinitionOtherTherapyBuilder>? otherTherapy,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClinicalUseDefinitionContraindicationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      diseaseSymptomProcedure:
          diseaseSymptomProcedure ?? this.diseaseSymptomProcedure,
      diseaseStatus: diseaseStatus ?? this.diseaseStatus,
      comorbidity: comorbidity ?? this.comorbidity,
      indication: indication ?? this.indication,
      otherTherapy: otherTherapy ?? this.otherTherapy,
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
    if (o is! ClinicalUseDefinitionContraindicationBuilder) {
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
      diseaseSymptomProcedure,
      o.diseaseSymptomProcedure,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      diseaseStatus,
      o.diseaseStatus,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      comorbidity,
      o.comorbidity,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      indication,
      o.indication,
    )) {
      return false;
    }
    if (!listEquals<ClinicalUseDefinitionOtherTherapyBuilder>(
      otherTherapy,
      o.otherTherapy,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClinicalUseDefinitionOtherTherapyBuilder]
/// Information about the use of the medicinal product in relation to other
/// therapies described as part of the contraindication.
class ClinicalUseDefinitionOtherTherapyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClinicalUseDefinitionOtherTherapyBuilder]

  ClinicalUseDefinitionOtherTherapyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.relationshipType,
    this.therapy,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClinicalUseDefinition.contraindication.otherTherapy',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClinicalUseDefinitionOtherTherapyBuilder.empty() =>
      ClinicalUseDefinitionOtherTherapyBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionOtherTherapyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClinicalUseDefinition.contraindication.otherTherapy';
    return ClinicalUseDefinitionOtherTherapyBuilder(
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
      relationshipType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'relationshipType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.relationshipType',
      ),
      therapy: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'therapy',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.therapy',
      ),
    );
  }

  /// Deserialize [ClinicalUseDefinitionOtherTherapyBuilder]
  /// from a [String] or [YamlMap] object
  factory ClinicalUseDefinitionOtherTherapyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalUseDefinitionOtherTherapyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalUseDefinitionOtherTherapyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalUseDefinitionOtherTherapyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalUseDefinitionOtherTherapyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionOtherTherapyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClinicalUseDefinitionOtherTherapyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClinicalUseDefinitionOtherTherapy';

  /// [relationshipType]
  /// The type of relationship between the medicinal product indication or
  /// contraindication and another therapy.
  CodeableConceptBuilder? relationshipType;

  /// [therapy]
  /// Reference to a specific medication (active substance, medicinal product
  /// or class of products) as part of an indication or contraindication.
  CodeableReferenceBuilder? therapy;

  /// Converts a [ClinicalUseDefinitionOtherTherapyBuilder]
  /// to [ClinicalUseDefinitionOtherTherapy]
  @override
  ClinicalUseDefinitionOtherTherapy build() =>
      ClinicalUseDefinitionOtherTherapy.fromJson(toJson());

  /// Converts a [ClinicalUseDefinitionOtherTherapyBuilder]
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
    addField('relationshipType', relationshipType);
    addField('therapy', therapy);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'relationshipType',
      'therapy',
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
      case 'relationshipType':
        if (relationshipType != null) {
          fields.add(relationshipType!);
        }
      case 'therapy':
        if (therapy != null) {
          fields.add(therapy!);
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
      case 'relationshipType':
        {
          if (child is CodeableConceptBuilder) {
            relationshipType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'therapy':
        {
          if (child is CodeableReferenceBuilder) {
            therapy = child;
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
      case 'relationshipType':
        return ['CodeableConceptBuilder'];
      case 'therapy':
        return ['CodeableReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClinicalUseDefinitionOtherTherapyBuilder]
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
      case 'relationshipType':
        {
          relationshipType = CodeableConceptBuilder.empty();
          return;
        }
      case 'therapy':
        {
          therapy = CodeableReferenceBuilder.empty();
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
    bool relationshipType = false,
    bool therapy = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (relationshipType) this.relationshipType = null;
    if (therapy) this.therapy = null;
  }

  @override
  ClinicalUseDefinitionOtherTherapyBuilder clone() =>
      throw UnimplementedError();
  @override
  ClinicalUseDefinitionOtherTherapyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? relationshipType,
    CodeableReferenceBuilder? therapy,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClinicalUseDefinitionOtherTherapyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relationshipType: relationshipType ?? this.relationshipType,
      therapy: therapy ?? this.therapy,
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
    if (o is! ClinicalUseDefinitionOtherTherapyBuilder) {
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
      relationshipType,
      o.relationshipType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      therapy,
      o.therapy,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClinicalUseDefinitionIndicationBuilder]
/// Specifics for when this is an indication.
class ClinicalUseDefinitionIndicationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClinicalUseDefinitionIndicationBuilder]

  ClinicalUseDefinitionIndicationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.diseaseSymptomProcedure,
    this.diseaseStatus,
    this.comorbidity,
    this.intendedEffect,
    this.durationX,
    this.undesirableEffect,
    this.otherTherapy,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClinicalUseDefinition.indication',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClinicalUseDefinitionIndicationBuilder.empty() =>
      ClinicalUseDefinitionIndicationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionIndicationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClinicalUseDefinition.indication';
    return ClinicalUseDefinitionIndicationBuilder(
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
      diseaseSymptomProcedure: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'diseaseSymptomProcedure',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.diseaseSymptomProcedure',
      ),
      diseaseStatus: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'diseaseStatus',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.diseaseStatus',
      ),
      comorbidity: (json['comorbidity'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.comorbidity',
              },
            ),
          )
          .toList(),
      intendedEffect: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'intendedEffect',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.intendedEffect',
      ),
      durationX: JsonParser.parsePolymorphic<
          DurationXClinicalUseDefinitionIndicationBuilder>(
        json,
        {
          'durationRange': RangeBuilder.fromJson,
          'durationString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      undesirableEffect: (json['undesirableEffect'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.undesirableEffect',
              },
            ),
          )
          .toList(),
      otherTherapy: (json['otherTherapy'] as List<dynamic>?)
          ?.map<ClinicalUseDefinitionOtherTherapyBuilder>(
            (v) => ClinicalUseDefinitionOtherTherapyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.otherTherapy',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClinicalUseDefinitionIndicationBuilder]
  /// from a [String] or [YamlMap] object
  factory ClinicalUseDefinitionIndicationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalUseDefinitionIndicationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalUseDefinitionIndicationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalUseDefinitionIndicationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalUseDefinitionIndicationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionIndicationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClinicalUseDefinitionIndicationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClinicalUseDefinitionIndication';

  /// [diseaseSymptomProcedure]
  /// The situation that is being documented as an indicaton for this item.
  CodeableReferenceBuilder? diseaseSymptomProcedure;

  /// [diseaseStatus]
  /// The status of the disease or symptom for the indication, for example
  /// "chronic" or "metastatic".
  CodeableReferenceBuilder? diseaseStatus;

  /// [comorbidity]
  /// A comorbidity (concurrent condition) or coinfection as part of the
  /// indication.
  List<CodeableReferenceBuilder>? comorbidity;

  /// [intendedEffect]
  /// The intended effect, aim or strategy to be achieved.
  CodeableReferenceBuilder? intendedEffect;

  /// [durationX]
  /// Timing or duration information, that may be associated with use with
  /// the indicated condition e.g. Adult patients suffering from myocardial
  /// infarction (from a few days until less than 35 days), ischaemic stroke
  /// (from 7 days until less than 6 months).
  DurationXClinicalUseDefinitionIndicationBuilder? durationX;

  /// Getter for [durationRange] as a RangeBuilder
  RangeBuilder? get durationRange => durationX?.isAs<RangeBuilder>();

  /// Getter for [durationString] as a FhirStringBuilder
  FhirStringBuilder? get durationString => durationX?.isAs<FhirStringBuilder>();

  /// [undesirableEffect]
  /// An unwanted side effect or negative outcome that may happen if you use
  /// the drug (or other subject of this resource) for this indication.
  List<ReferenceBuilder>? undesirableEffect;

  /// [otherTherapy]
  /// Information about the use of the medicinal product in relation to other
  /// therapies described as part of the indication.
  List<ClinicalUseDefinitionOtherTherapyBuilder>? otherTherapy;

  /// Converts a [ClinicalUseDefinitionIndicationBuilder]
  /// to [ClinicalUseDefinitionIndication]
  @override
  ClinicalUseDefinitionIndication build() =>
      ClinicalUseDefinitionIndication.fromJson(toJson());

  /// Converts a [ClinicalUseDefinitionIndicationBuilder]
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
    addField('diseaseSymptomProcedure', diseaseSymptomProcedure);
    addField('diseaseStatus', diseaseStatus);
    addField('comorbidity', comorbidity);
    addField('intendedEffect', intendedEffect);
    if (durationX != null) {
      final fhirType = durationX!.fhirType;
      addField('duration${fhirType.capitalize()}', durationX);
    }

    addField('undesirableEffect', undesirableEffect);
    addField('otherTherapy', otherTherapy);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'diseaseSymptomProcedure',
      'diseaseStatus',
      'comorbidity',
      'intendedEffect',
      'durationX',
      'undesirableEffect',
      'otherTherapy',
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
      case 'diseaseSymptomProcedure':
        if (diseaseSymptomProcedure != null) {
          fields.add(diseaseSymptomProcedure!);
        }
      case 'diseaseStatus':
        if (diseaseStatus != null) {
          fields.add(diseaseStatus!);
        }
      case 'comorbidity':
        if (comorbidity != null) {
          fields.addAll(comorbidity!);
        }
      case 'intendedEffect':
        if (intendedEffect != null) {
          fields.add(intendedEffect!);
        }
      case 'duration':
        if (durationX != null) {
          fields.add(durationX!);
        }
      case 'durationX':
        if (durationX != null) {
          fields.add(durationX!);
        }
      case 'durationRange':
        if (durationX is RangeBuilder) {
          fields.add(durationX!);
        }
      case 'durationString':
        if (durationX is FhirStringBuilder) {
          fields.add(durationX!);
        }
      case 'undesirableEffect':
        if (undesirableEffect != null) {
          fields.addAll(undesirableEffect!);
        }
      case 'otherTherapy':
        if (otherTherapy != null) {
          fields.addAll(otherTherapy!);
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
      case 'diseaseSymptomProcedure':
        {
          if (child is CodeableReferenceBuilder) {
            diseaseSymptomProcedure = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'diseaseStatus':
        {
          if (child is CodeableReferenceBuilder) {
            diseaseStatus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'comorbidity':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            comorbidity = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            comorbidity = [...(comorbidity ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'intendedEffect':
        {
          if (child is CodeableReferenceBuilder) {
            intendedEffect = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'durationX':
        {
          if (child is DurationXClinicalUseDefinitionIndicationBuilder) {
            durationX = child;
            return;
          } else {
            if (child is RangeBuilder) {
              durationX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              durationX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'durationRange':
        {
          if (child is RangeBuilder) {
            durationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'durationString':
        {
          if (child is FhirStringBuilder) {
            durationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'undesirableEffect':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            undesirableEffect = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            undesirableEffect = [...(undesirableEffect ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'otherTherapy':
        {
          if (child is List<ClinicalUseDefinitionOtherTherapyBuilder>) {
            // Replace or create new list
            otherTherapy = child;
            return;
          } else if (child is ClinicalUseDefinitionOtherTherapyBuilder) {
            // Add single element to existing list or create new list
            otherTherapy = [...(otherTherapy ?? []), child];
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
      case 'diseaseSymptomProcedure':
        return ['CodeableReferenceBuilder'];
      case 'diseaseStatus':
        return ['CodeableReferenceBuilder'];
      case 'comorbidity':
        return ['CodeableReferenceBuilder'];
      case 'intendedEffect':
        return ['CodeableReferenceBuilder'];
      case 'duration':
      case 'durationX':
        return ['RangeBuilder', 'FhirStringBuilder'];
      case 'durationRange':
        return ['RangeBuilder'];
      case 'durationString':
        return ['FhirStringBuilder'];
      case 'undesirableEffect':
        return ['ReferenceBuilder'];
      case 'otherTherapy':
        return ['ClinicalUseDefinitionOtherTherapyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClinicalUseDefinitionIndicationBuilder]
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
      case 'diseaseSymptomProcedure':
        {
          diseaseSymptomProcedure = CodeableReferenceBuilder.empty();
          return;
        }
      case 'diseaseStatus':
        {
          diseaseStatus = CodeableReferenceBuilder.empty();
          return;
        }
      case 'comorbidity':
        {
          comorbidity = <CodeableReferenceBuilder>[];
          return;
        }
      case 'intendedEffect':
        {
          intendedEffect = CodeableReferenceBuilder.empty();
          return;
        }
      case 'duration':
      case 'durationX':
      case 'durationRange':
        {
          durationX = RangeBuilder.empty();
          return;
        }
      case 'durationString':
        {
          durationX = FhirStringBuilder.empty();
          return;
        }
      case 'undesirableEffect':
        {
          undesirableEffect = <ReferenceBuilder>[];
          return;
        }
      case 'otherTherapy':
        {
          otherTherapy = <ClinicalUseDefinitionOtherTherapyBuilder>[];
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
    bool diseaseSymptomProcedure = false,
    bool diseaseStatus = false,
    bool comorbidity = false,
    bool intendedEffect = false,
    bool duration = false,
    bool undesirableEffect = false,
    bool otherTherapy = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (diseaseSymptomProcedure) this.diseaseSymptomProcedure = null;
    if (diseaseStatus) this.diseaseStatus = null;
    if (comorbidity) this.comorbidity = null;
    if (intendedEffect) this.intendedEffect = null;
    if (duration) this.durationX = null;
    if (undesirableEffect) this.undesirableEffect = null;
    if (otherTherapy) this.otherTherapy = null;
  }

  @override
  ClinicalUseDefinitionIndicationBuilder clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionIndicationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? diseaseSymptomProcedure,
    CodeableReferenceBuilder? diseaseStatus,
    List<CodeableReferenceBuilder>? comorbidity,
    CodeableReferenceBuilder? intendedEffect,
    DurationXClinicalUseDefinitionIndicationBuilder? durationX,
    List<ReferenceBuilder>? undesirableEffect,
    List<ClinicalUseDefinitionOtherTherapyBuilder>? otherTherapy,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClinicalUseDefinitionIndicationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      diseaseSymptomProcedure:
          diseaseSymptomProcedure ?? this.diseaseSymptomProcedure,
      diseaseStatus: diseaseStatus ?? this.diseaseStatus,
      comorbidity: comorbidity ?? this.comorbidity,
      intendedEffect: intendedEffect ?? this.intendedEffect,
      durationX: durationX ?? this.durationX,
      undesirableEffect: undesirableEffect ?? this.undesirableEffect,
      otherTherapy: otherTherapy ?? this.otherTherapy,
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
    if (o is! ClinicalUseDefinitionIndicationBuilder) {
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
      diseaseSymptomProcedure,
      o.diseaseSymptomProcedure,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      diseaseStatus,
      o.diseaseStatus,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      comorbidity,
      o.comorbidity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      intendedEffect,
      o.intendedEffect,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      durationX,
      o.durationX,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      undesirableEffect,
      o.undesirableEffect,
    )) {
      return false;
    }
    if (!listEquals<ClinicalUseDefinitionOtherTherapyBuilder>(
      otherTherapy,
      o.otherTherapy,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClinicalUseDefinitionInteractionBuilder]
/// Specifics for when this is an interaction.
class ClinicalUseDefinitionInteractionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClinicalUseDefinitionInteractionBuilder]

  ClinicalUseDefinitionInteractionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.interactant,
    this.type,
    this.effect,
    this.incidence,
    this.management,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClinicalUseDefinition.interaction',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClinicalUseDefinitionInteractionBuilder.empty() =>
      ClinicalUseDefinitionInteractionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionInteractionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClinicalUseDefinition.interaction';
    return ClinicalUseDefinitionInteractionBuilder(
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
      interactant: (json['interactant'] as List<dynamic>?)
          ?.map<ClinicalUseDefinitionInteractantBuilder>(
            (v) => ClinicalUseDefinitionInteractantBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.interactant',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      effect: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'effect',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.effect',
      ),
      incidence: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'incidence',
        CodeableConceptBuilder.fromJson,
        '$objectPath.incidence',
      ),
      management: (json['management'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.management',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClinicalUseDefinitionInteractionBuilder]
  /// from a [String] or [YamlMap] object
  factory ClinicalUseDefinitionInteractionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalUseDefinitionInteractionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalUseDefinitionInteractionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalUseDefinitionInteractionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalUseDefinitionInteractionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionInteractionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClinicalUseDefinitionInteractionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClinicalUseDefinitionInteraction';

  /// [interactant]
  /// The specific medication, food, substance or laboratory test that
  /// interacts.
  List<ClinicalUseDefinitionInteractantBuilder>? interactant;

  /// [type]
  /// The type of the interaction e.g. drug-drug interaction, drug-food
  /// interaction, drug-lab test interaction.
  CodeableConceptBuilder? type;

  /// [effect]
  /// The effect of the interaction, for example "reduced gastric absorption
  /// of primary medication".
  CodeableReferenceBuilder? effect;

  /// [incidence]
  /// The incidence of the interaction, e.g. theoretical, observed.
  CodeableConceptBuilder? incidence;

  /// [management]
  /// Actions for managing the interaction.
  List<CodeableConceptBuilder>? management;

  /// Converts a [ClinicalUseDefinitionInteractionBuilder]
  /// to [ClinicalUseDefinitionInteraction]
  @override
  ClinicalUseDefinitionInteraction build() =>
      ClinicalUseDefinitionInteraction.fromJson(toJson());

  /// Converts a [ClinicalUseDefinitionInteractionBuilder]
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
    addField('interactant', interactant);
    addField('type', type);
    addField('effect', effect);
    addField('incidence', incidence);
    addField('management', management);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'interactant',
      'type',
      'effect',
      'incidence',
      'management',
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
      case 'interactant':
        if (interactant != null) {
          fields.addAll(interactant!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'effect':
        if (effect != null) {
          fields.add(effect!);
        }
      case 'incidence':
        if (incidence != null) {
          fields.add(incidence!);
        }
      case 'management':
        if (management != null) {
          fields.addAll(management!);
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
      case 'interactant':
        {
          if (child is List<ClinicalUseDefinitionInteractantBuilder>) {
            // Replace or create new list
            interactant = child;
            return;
          } else if (child is ClinicalUseDefinitionInteractantBuilder) {
            // Add single element to existing list or create new list
            interactant = [...(interactant ?? []), child];
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
      case 'effect':
        {
          if (child is CodeableReferenceBuilder) {
            effect = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'incidence':
        {
          if (child is CodeableConceptBuilder) {
            incidence = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'management':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            management = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            management = [...(management ?? []), child];
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
      case 'interactant':
        return ['ClinicalUseDefinitionInteractantBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'effect':
        return ['CodeableReferenceBuilder'];
      case 'incidence':
        return ['CodeableConceptBuilder'];
      case 'management':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClinicalUseDefinitionInteractionBuilder]
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
      case 'interactant':
        {
          interactant = <ClinicalUseDefinitionInteractantBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'effect':
        {
          effect = CodeableReferenceBuilder.empty();
          return;
        }
      case 'incidence':
        {
          incidence = CodeableConceptBuilder.empty();
          return;
        }
      case 'management':
        {
          management = <CodeableConceptBuilder>[];
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
    bool interactant = false,
    bool type = false,
    bool effect = false,
    bool incidence = false,
    bool management = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (interactant) this.interactant = null;
    if (type) this.type = null;
    if (effect) this.effect = null;
    if (incidence) this.incidence = null;
    if (management) this.management = null;
  }

  @override
  ClinicalUseDefinitionInteractionBuilder clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionInteractionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<ClinicalUseDefinitionInteractantBuilder>? interactant,
    CodeableConceptBuilder? type,
    CodeableReferenceBuilder? effect,
    CodeableConceptBuilder? incidence,
    List<CodeableConceptBuilder>? management,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClinicalUseDefinitionInteractionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      interactant: interactant ?? this.interactant,
      type: type ?? this.type,
      effect: effect ?? this.effect,
      incidence: incidence ?? this.incidence,
      management: management ?? this.management,
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
    if (o is! ClinicalUseDefinitionInteractionBuilder) {
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
    if (!listEquals<ClinicalUseDefinitionInteractantBuilder>(
      interactant,
      o.interactant,
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
      effect,
      o.effect,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      incidence,
      o.incidence,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      management,
      o.management,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClinicalUseDefinitionInteractantBuilder]
/// The specific medication, food, substance or laboratory test that
/// interacts.
class ClinicalUseDefinitionInteractantBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClinicalUseDefinitionInteractantBuilder]

  ClinicalUseDefinitionInteractantBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClinicalUseDefinition.interaction.interactant',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClinicalUseDefinitionInteractantBuilder.empty() =>
      ClinicalUseDefinitionInteractantBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionInteractantBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClinicalUseDefinition.interaction.interactant';
    return ClinicalUseDefinitionInteractantBuilder(
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
      itemX: JsonParser.parsePolymorphic<
          ItemXClinicalUseDefinitionInteractantBuilder>(
        json,
        {
          'itemReference': ReferenceBuilder.fromJson,
          'itemCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ClinicalUseDefinitionInteractantBuilder]
  /// from a [String] or [YamlMap] object
  factory ClinicalUseDefinitionInteractantBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalUseDefinitionInteractantBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalUseDefinitionInteractantBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalUseDefinitionInteractantBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalUseDefinitionInteractantBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionInteractantBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClinicalUseDefinitionInteractantBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClinicalUseDefinitionInteractant';

  /// [itemX]
  /// The specific medication, food or laboratory test that interacts.
  ItemXClinicalUseDefinitionInteractantBuilder? itemX;

  /// Getter for [itemReference] as a ReferenceBuilder
  ReferenceBuilder? get itemReference => itemX?.isAs<ReferenceBuilder>();

  /// Getter for [itemCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get itemCodeableConcept =>
      itemX?.isAs<CodeableConceptBuilder>();

  /// Converts a [ClinicalUseDefinitionInteractantBuilder]
  /// to [ClinicalUseDefinitionInteractant]
  @override
  ClinicalUseDefinitionInteractant build() =>
      ClinicalUseDefinitionInteractant.fromJson(toJson());

  /// Converts a [ClinicalUseDefinitionInteractantBuilder]
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
    if (itemX != null) {
      final fhirType = itemX!.fhirType;
      addField('item${fhirType.capitalize()}', itemX);
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
      'itemX',
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
      case 'item':
        if (itemX != null) {
          fields.add(itemX!);
        }
      case 'itemX':
        if (itemX != null) {
          fields.add(itemX!);
        }
      case 'itemReference':
        if (itemX is ReferenceBuilder) {
          fields.add(itemX!);
        }
      case 'itemCodeableConcept':
        if (itemX is CodeableConceptBuilder) {
          fields.add(itemX!);
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
      case 'itemX':
        {
          if (child is ItemXClinicalUseDefinitionInteractantBuilder) {
            itemX = child;
            return;
          } else {
            if (child is ReferenceBuilder) {
              itemX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              itemX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'itemReference':
        {
          if (child is ReferenceBuilder) {
            itemX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'itemCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            itemX = child;
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
      case 'item':
      case 'itemX':
        return ['ReferenceBuilder', 'CodeableConceptBuilder'];
      case 'itemReference':
        return ['ReferenceBuilder'];
      case 'itemCodeableConcept':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClinicalUseDefinitionInteractantBuilder]
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
      case 'item':
      case 'itemX':
      case 'itemReference':
        {
          itemX = ReferenceBuilder.empty();
          return;
        }
      case 'itemCodeableConcept':
        {
          itemX = CodeableConceptBuilder.empty();
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
    bool item = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (item) this.itemX = null;
  }

  @override
  ClinicalUseDefinitionInteractantBuilder clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionInteractantBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ItemXClinicalUseDefinitionInteractantBuilder? itemX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClinicalUseDefinitionInteractantBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemX: itemX ?? this.itemX,
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
    if (o is! ClinicalUseDefinitionInteractantBuilder) {
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
      itemX,
      o.itemX,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClinicalUseDefinitionUndesirableEffectBuilder]
/// Describe the possible undesirable effects (negative outcomes) from the
/// use of the medicinal product as treatment.
class ClinicalUseDefinitionUndesirableEffectBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClinicalUseDefinitionUndesirableEffectBuilder]

  ClinicalUseDefinitionUndesirableEffectBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.symptomConditionEffect,
    this.classification,
    this.frequencyOfOccurrence,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClinicalUseDefinition.undesirableEffect',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClinicalUseDefinitionUndesirableEffectBuilder.empty() =>
      ClinicalUseDefinitionUndesirableEffectBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionUndesirableEffectBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClinicalUseDefinition.undesirableEffect';
    return ClinicalUseDefinitionUndesirableEffectBuilder(
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
      symptomConditionEffect: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'symptomConditionEffect',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.symptomConditionEffect',
      ),
      classification: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'classification',
        CodeableConceptBuilder.fromJson,
        '$objectPath.classification',
      ),
      frequencyOfOccurrence: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'frequencyOfOccurrence',
        CodeableConceptBuilder.fromJson,
        '$objectPath.frequencyOfOccurrence',
      ),
    );
  }

  /// Deserialize [ClinicalUseDefinitionUndesirableEffectBuilder]
  /// from a [String] or [YamlMap] object
  factory ClinicalUseDefinitionUndesirableEffectBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalUseDefinitionUndesirableEffectBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalUseDefinitionUndesirableEffectBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalUseDefinitionUndesirableEffectBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalUseDefinitionUndesirableEffectBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionUndesirableEffectBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClinicalUseDefinitionUndesirableEffectBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClinicalUseDefinitionUndesirableEffect';

  /// [symptomConditionEffect]
  /// The situation in which the undesirable effect may manifest.
  CodeableReferenceBuilder? symptomConditionEffect;

  /// [classification]
  /// High level classification of the effect.
  CodeableConceptBuilder? classification;

  /// [frequencyOfOccurrence]
  /// How often the effect is seen.
  CodeableConceptBuilder? frequencyOfOccurrence;

  /// Converts a [ClinicalUseDefinitionUndesirableEffectBuilder]
  /// to [ClinicalUseDefinitionUndesirableEffect]
  @override
  ClinicalUseDefinitionUndesirableEffect build() =>
      ClinicalUseDefinitionUndesirableEffect.fromJson(toJson());

  /// Converts a [ClinicalUseDefinitionUndesirableEffectBuilder]
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
    addField('symptomConditionEffect', symptomConditionEffect);
    addField('classification', classification);
    addField('frequencyOfOccurrence', frequencyOfOccurrence);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'symptomConditionEffect',
      'classification',
      'frequencyOfOccurrence',
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
      case 'symptomConditionEffect':
        if (symptomConditionEffect != null) {
          fields.add(symptomConditionEffect!);
        }
      case 'classification':
        if (classification != null) {
          fields.add(classification!);
        }
      case 'frequencyOfOccurrence':
        if (frequencyOfOccurrence != null) {
          fields.add(frequencyOfOccurrence!);
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
      case 'symptomConditionEffect':
        {
          if (child is CodeableReferenceBuilder) {
            symptomConditionEffect = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'classification':
        {
          if (child is CodeableConceptBuilder) {
            classification = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'frequencyOfOccurrence':
        {
          if (child is CodeableConceptBuilder) {
            frequencyOfOccurrence = child;
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
      case 'symptomConditionEffect':
        return ['CodeableReferenceBuilder'];
      case 'classification':
        return ['CodeableConceptBuilder'];
      case 'frequencyOfOccurrence':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClinicalUseDefinitionUndesirableEffectBuilder]
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
      case 'symptomConditionEffect':
        {
          symptomConditionEffect = CodeableReferenceBuilder.empty();
          return;
        }
      case 'classification':
        {
          classification = CodeableConceptBuilder.empty();
          return;
        }
      case 'frequencyOfOccurrence':
        {
          frequencyOfOccurrence = CodeableConceptBuilder.empty();
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
    bool symptomConditionEffect = false,
    bool classification = false,
    bool frequencyOfOccurrence = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (symptomConditionEffect) this.symptomConditionEffect = null;
    if (classification) this.classification = null;
    if (frequencyOfOccurrence) this.frequencyOfOccurrence = null;
  }

  @override
  ClinicalUseDefinitionUndesirableEffectBuilder clone() =>
      throw UnimplementedError();
  @override
  ClinicalUseDefinitionUndesirableEffectBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? symptomConditionEffect,
    CodeableConceptBuilder? classification,
    CodeableConceptBuilder? frequencyOfOccurrence,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClinicalUseDefinitionUndesirableEffectBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      symptomConditionEffect:
          symptomConditionEffect ?? this.symptomConditionEffect,
      classification: classification ?? this.classification,
      frequencyOfOccurrence:
          frequencyOfOccurrence ?? this.frequencyOfOccurrence,
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
    if (o is! ClinicalUseDefinitionUndesirableEffectBuilder) {
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
      symptomConditionEffect,
      o.symptomConditionEffect,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      classification,
      o.classification,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      frequencyOfOccurrence,
      o.frequencyOfOccurrence,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClinicalUseDefinitionWarningBuilder]
/// A critical piece of information about environmental, health or physical
/// risks or hazards that serve as caution to the user. For example 'Do not
/// operate heavy machinery', 'May cause drowsiness', or 'Get medical
/// advice/attention if you feel unwell'.
class ClinicalUseDefinitionWarningBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClinicalUseDefinitionWarningBuilder]

  ClinicalUseDefinitionWarningBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.code,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ClinicalUseDefinition.warning',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClinicalUseDefinitionWarningBuilder.empty() =>
      ClinicalUseDefinitionWarningBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionWarningBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ClinicalUseDefinition.warning';
    return ClinicalUseDefinitionWarningBuilder(
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
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
    );
  }

  /// Deserialize [ClinicalUseDefinitionWarningBuilder]
  /// from a [String] or [YamlMap] object
  factory ClinicalUseDefinitionWarningBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalUseDefinitionWarningBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalUseDefinitionWarningBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalUseDefinitionWarningBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalUseDefinitionWarningBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalUseDefinitionWarningBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClinicalUseDefinitionWarningBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClinicalUseDefinitionWarning';

  /// [description]
  /// A textual definition of this warning, with formatting.
  FhirMarkdownBuilder? description;

  /// [code]
  /// A coded or unformatted textual definition of this warning.
  CodeableConceptBuilder? code;

  /// Converts a [ClinicalUseDefinitionWarningBuilder]
  /// to [ClinicalUseDefinitionWarning]
  @override
  ClinicalUseDefinitionWarning build() =>
      ClinicalUseDefinitionWarning.fromJson(toJson());

  /// Converts a [ClinicalUseDefinitionWarningBuilder]
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
    addField('description', description);
    addField('code', code);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'description',
      'code',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
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
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
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
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
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
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClinicalUseDefinitionWarningBuilder]
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
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
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
    bool description = false,
    bool code = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (description) this.description = null;
    if (code) this.code = null;
  }

  @override
  ClinicalUseDefinitionWarningBuilder clone() => throw UnimplementedError();
  @override
  ClinicalUseDefinitionWarningBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirMarkdownBuilder? description,
    CodeableConceptBuilder? code,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClinicalUseDefinitionWarningBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      code: code ?? this.code,
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
    if (o is! ClinicalUseDefinitionWarningBuilder) {
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    return true;
  }
}
